local revision = tonumber(string.sub("$Revision: 111 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end


rss.metaBuffer = nil;
rss.metaTimestamp = nil;
rss.metaGlobalTimestamp = nil;

function rss.FillMetaBuffer(...)
	if not rss.metaBuffer then return; end
	local timestamp = select(1, ...);
	if rss.metaTimestamp then -- buffer isn't empty; check this stamp against it
		if timestamp ~= rss.metaTimestamp then -- this event has a later timestamp; process everything earlier
			rss.FlushMetaBuffer();
		end
	end
	-- put the stuff we want to see first at the beginning, everything else at the end
	local combatEvent = select(2, ...);
	local sortFlag = rss.EVENT_CODES[combatEvent] or rss.EVENTS.UNKNOWN;
	table.insert( rss.metaBuffer , { order = sortFlag , arguments = {...} });
	rss.metaTimestamp = timestamp;
	rss.metaGlobalTimestamp = GetTime();
end

function rss.FlushMetaBuffer()
	if rss.metaBuffer then
		table.sort(rss.metaBuffer, function (a, b) if a.order < b.order then return true; end return false; end);
		for i, entry in ipairs(rss.metaBuffer) do
			rss.MetaParser(unpack(entry.arguments));
		end
		rss.metaBuffer = { };
	end
	rss.metaTimestamp = nil;
	rss.metaGlobalTimestamp = nil;
end

-- This parser attempts to associate one combat event to others, eventually leading back to the original cast
-- For Haste analysis
function rss.MetaParser(...)
	local playerState = rss.playerState;
	local fight = rss.fight;
	local timestamp, combatEvent, hideCaster, 
	      sourceGUID, sourceName, sourceFlags, sourceRaidFlags, 
	      destGUID, destName, destFlags, destRaidFlags = select(1, ...);
	if sourceGUID ~= playerState.GUID and ( combatEvent ~= "UNIT_DESTROYED" or destFlags ~= rss.PLAYER_TOTEM_FLAGS ) then return; end
		
	if combatEvent == "SPELL_CAST_SUCCESS" then
		local spellId, spellName = select(12, ...);
		if rss.SpellFilter(spellId) then
			rss.AddEvent(rss.EVENTS.SPELL_CAST_SUCCESS, timestamp, destName, destGUID, spellId, 0, 0);
		end
	end
	
	if combatEvent == "UNIT_DESTROYED" and destFlags == rss.PLAYER_TOTEM_FLAGS and 
		(destName == GetSpellInfo(rss.SUMMON_HEALING_STREAM) or 
		 destName == GetSpellInfo(rss.SUMMON_HEALING_TIDE) or 
		 destName == GetSpellInfo(rss.SUMMON_SPIRIT_LINK) or 
		 destName == GetSpellInfo(rss.SUMMON_CLOUDBURST) )then
		rss.AddEvent(rss.EVENTS.UNIT_DESTROYED, timestamp, destName, destGUID, 0, 0, 0);
	end
	
	if combatEvent == "SPELL_SUMMON" then
		local spellId, spellName = select(12, ...);
		if rss.SpellFilter(spellId) then
			rss.AddEvent(rss.EVENTS.SPELL_SUMMON, timestamp, destName, destGUID, spellId, 0, 0);
		end
	end
	
	if combatEvent == "SPELL_AURA_REMOVED" then
		local spellId, spellName, _, auraType = select(12, ...);
		if auraType == "BUFF" and rss.AURAS[spellId] then
			rss.AddEvent(rss.EVENTS.SPELL_AURA_REMOVED, timestamp, destName, destGUID, spellId, 0, 0);
		end
	end
	
	if combatEvent == "SPELL_AURA_APPLIED" then
		local spellId, spellName, _, auraType, auraAmount = select(12, ...);
		if auraType == "BUFF" and rss.AURAS[spellId] then
			rss.AddEvent(rss.EVENTS.SPELL_AURA_APPLIED, timestamp, destName, destGUID, spellId, 0, 0);
		end 
	end
	
	if combatEvent == "SPELL_AURA_REFRESH" then
		local spellId, spellName, _, auraType, auraAmount = select(12, ...);
		if auraType == "BUFF" and rss.AURAS[spellId] then
			rss.AddEvent(rss.EVENTS.SPELL_AURA_REFRESH_OFF, timestamp, destName, destGUID, spellId, 0, 0);
			rss.AddEvent(rss.EVENTS.SPELL_AURA_REFRESH_ON, timestamp, destName, destGUID, spellId, 0, 0);
		end
	end
	
	if combatEvent == "SPELL_HEAL" then
		local spellId, spellName, _, amount, overhealing = select(12, ...);
		if rss.SpellFilter(spellId) then
			if rss.SPELLS[spellId] and rss.SPELLS[spellId].proc then
				-- trinket procs are not associated with a specific cast, and (fortunately) are not copied; simple scaling with haste
				rss.VaryProc(rss.fight, spellId, math.max(0, amount - overhealing));
				return;
			else
				rss.AddEvent(rss.EVENTS.SPELL_HEAL, timestamp, destName, destGUID, spellId, amount, math.max(0, amount - overhealing));
			end
		end
	end
	
	if combatEvent == "SPELL_PERIODIC_HEAL" then
		local spellId, spellName, _, amount, overhealing = select(12, ...);
		if rss.SpellFilter(spellId) then
			rss.AddEvent(rss.EVENTS.SPELL_PERIODIC_HEAL, timestamp, destName, destGUID, spellId, amount, math.max(0, amount - overhealing));
		end
	end
	
	-- Go through all unassociated events, from oldest to newest, and try to associate them with all successful casts, from newest to oldest
	rss.CorrelateEvents();

	-- attempt to clean up any old events not associated yet
	rss.PurgeEvents();
end

-- checks whether spell is one we want to monitor
function rss.SpellFilter(spellId)
	if rss.SPELLS[spellId] and not (tContains(rss.CONSUMABLES, spellId) or tContains(rss.BANDAGES, spellId)) then
		return true;
	end
	return false;
end

-- checks all casts for correlation with a given event, using the specified correlator
-- removes event from the global list and stops search when a match is found
function rss.CorrelateEventToCasts(casts, cast, event, correlator)
	if correlator(cast, event) then
		rss.events:Remove(event);
		return true;
	end
end

function rss.CorrelateAuraRemoved(cast, event)
	if cast.succeedLogTime and (event.eventType == rss.EVENTS.SPELL_AURA_REMOVED or event.eventType == rss.EVENTS.SPELL_AURA_REFRESH_OFF) and not event.cast then
		-- look for the same aura applied to the same target which has not yet been removed
		if rss.HasActiveAura(cast, event.spellId, event.destGUID) and (cast.copyAura == event.spellId or (event.spellId ~= rss.AURA_ASCENDANCE and event.spellId ~= rss.AURA_ANCESTRAL_GUIDANCE)) then
			rss.AssociateEvent(event, cast);
			rss.RemoveActiveAura(cast, event.spellId, event.destGUID);
			if event.spellId == rss.AURA_ASCENDANCE then
				rss.playerState.ascendanceCast = nil;
				if cast.copies then
					cast.copies:Visit(function (copies, copy, auraID) if rss.HasActiveAura(copy.cast, auraID, rss.playerState.GUID) then rss.RemoveActiveAura(copy.cast, auraID, rss.playerState.GUID); copies:Remove(copy); end end, event.spellId);
				end
			elseif event.spellId == rss.AURA_ANCESTRAL_GUIDANCE then
				rss.playerState.ancestralGuidanceCast = nil;
				if cast.copies then
					cast.copies:Visit(function (copies, copy, auraID) if rss.HasActiveAura(copy.cast, auraID, rss.playerState.GUID) then rss.RemoveActiveAura(copy.cast, auraID, rss.playerState.GUID); copies:Remove(copy); end end, event.spellId);
				end
			end
			return true;
		end
	end
end

function rss.CorrelateAuraApplied(cast, event)
	if cast.succeedLogTime and (event.eventType == rss.EVENTS.SPELL_AURA_APPLIED or event.eventType == rss.EVENTS.SPELL_AURA_REFRESH_ON) and not event.cast then
		
		if rss.AURAS[event.spellId] and rss.AURAS[event.spellId].cast == cast.spellID  then
			if cast.targetGUID == event.destGUID or (rss.AURAS[event.spellId].selfTarget and event.destGUID == rss.playerState.GUID) then
				rss.AssociateEvent(event, cast);
				rss.AddActiveAura(cast, event.spellId, event.destGUID);
				if event.spellId == rss.AURA_ASCENDANCE then
					rss.playerState.ascendanceCast = cast;
					cast.copyAura = event.spellId;
					cast.originalHealing = 0.0;
				elseif event.spellId == rss.AURA_ANCESTRAL_GUIDANCE then
					rss.playerState.ancestralGuidanceCast = cast;
					cast.copyAura = event.spellId;
					cast.originalHealing = 0.0;
				end
				return true;
			end
		end
	end
end

function rss.HasActiveAura(cast, spellId, destGUID)
	if not cast.activeAuras then return false; end
	local auraNode = cast.activeAuras:Start();
	while auraNode do
		if auraNode.spellId == spellId and auraNode.destGUID == destGUID then
			return true;
		end
		auraNode = auraNode.forward;
	end
	return false;
end

function rss.AddActiveAura(cast, spellId, destGUID)
	if not cast.activeAuras then
		cast.activeAuras = rss.LinkedList:Create();
	end
	cast.activeAuras:Append({ spellId = spellId , destGUID = destGUID});
end

function rss.RemoveActiveAura(cast, spellId, destGUID)
	if not cast.activeAuras then return; end
	local auraNode = cast.activeAuras:Start();
	while auraNode do
		local forward = auraNode.forward;
		if auraNode.spellId == spellId and auraNode.destGUID == destGUID then
			cast.activeAuras:Remove(auraNode);
		end
		auraNode = forward;
	end
	if cast.activeAuras:Count() == 0 then
		cast.activeAuras = nil;
	end
end

function rss.CorrelateDestroyed(cast, event)
	if cast.succeedLogTime and event.eventType == rss.EVENTS.UNIT_DESTROYED and not event.cast then
		if cast.targetGUID == event.destGUID then
			rss.AssociateEvent(event, cast);
			if cast == rss.playerState.cloudburstCast then
				rss.RemoveActiveAura(cast, cast.spellID, event.destGUID);
				if cast.copies then
					cast.copies:Visit(function (copies, copy, auraID) if rss.HasActiveAura(copy.cast, auraID, rss.playerState.GUID) then rss.RemoveActiveAura(copy.cast, auraID, rss.playerState.GUID); copies:Remove(copy); end end, cast.copyAura);
				end
				rss.playerState.cloudburstCast = nil;
			end
			return true;
		end
	end
end

function rss.CorrelateSummon(cast, event)
	if cast.succeedLogTime and event.eventType == rss.EVENTS.SPELL_SUMMON and not event.cast then
		if event.spellId == cast.spellID then
			cast.targetGUID = event.destGUID;
			rss.AssociateEvent(event, cast);
			if event.spellId == rss.SUMMON_CLOUDBURST then
				rss.AddActiveAura(cast, event.spellId, event.destGUID);			
				rss.playerState.cloudburstCast = cast;
				cast.copyAura = event.spellId;
				cast.originalHealing = 0.0;
			end
			return true;
		end
	end
end

function rss.CorrelatePeriodicHeal(cast, event)
	if cast.succeedLogTime and event.eventType == rss.EVENTS.SPELL_PERIODIC_HEAL and not event.cast then
		local spellId = event.spellId;
		local spell = rss.SPELLS[spellId];
		
		while spell.alias do
			spellId = spell.alias;
			spell = rss.SPELLS[spellId];
		end
		if spell.totem then
			spellId = spell.totem;
			spell = rss.SPELLS[spellId];
		end
		if (spell.aura and rss.HasActiveAura(cast, spell.aura, event.destGUID)) or (not spell.aura and spellId == cast.spellID) then
			rss.AssociateHealing(event, cast);
			return true;				
		end
	end
end

function rss.CorrelateHeal(cast, event)
	if cast.succeedLogTime and event.eventType == rss.EVENTS.SPELL_HEAL and not event.cast then
		local spellId = event.spellId;
		local spell = rss.SPELLS[spellId];
		while spell.alias do
			spellId = spell.alias;
			spell = rss.SPELLS[spellId];
		end

		if spell.totem then
			spellId = spell.totem;
			spell = rss.SPELLS[spellId]
		end
		
		if spell.charges then  -- Earth Shield
			if spell.aura and rss.HasActiveAura(cast, spell.aura, event.destGUID) then
				rss.AssociateHealing(event, cast);
			end
		elseif spell.copy then
			if spellId == rss.RESTORATIVE_MISTS and cast.spellID == rss.ASCENDANCE then
				rss.AssociateHealing(event, cast);
			elseif spellId == rss.ANCESTRAL_GUIDANCE and cast.spellID == rss.AURA_ANCESTRAL_GUIDANCE then
				rss.AssociateHealing(event, cast);
			elseif spellId == rss.CLOUDBURST and cast.spellID == rss.SUMMON_CLOUDBURST then
				rss.AssociateHealing(event, cast);
			end
		else
			-- simple direct heal (?)
			if spellId == cast.spellID then
				rss.AssociateHealing(event, cast);
			end
		end
		if event.cast then
			return true;
		end
	end
end

-- matches a successful cast to the corresponding combat log event
-- this match allows additional combat events to be associated with the cast
function rss.CorrelateSuccess(cast, event)
	if cast.succeedEventTime and event.eventType == rss.EVENTS.SPELL_CAST_SUCCESS and 
			not cast.succeedLogTime and not event.cast and 
			cast.spellID == event.spellId and cast.targetName == event.destName then
		cast.succeedLogTime = event.timestamp;
		cast.targetGUID = event.destGUID;
		rss.AssociateEvent(event, cast);
		return true;
	end
end

local eventDispatch = {
	[rss.EVENTS.SPELL_CAST_SUCCESS] = rss.CorrelateSuccess ,
	[rss.EVENTS.SPELL_SUMMON] = rss.CorrelateSummon ,
	[rss.EVENTS.UNIT_DESTROYED] = rss.CorrelateDestroyed ,
	[rss.EVENTS.SPELL_HEAL] = rss.CorrelateHeal ,
	[rss.EVENTS.SPELL_AURA_REMOVED] = rss.CorrelateAuraRemoved ,
	[rss.EVENTS.SPELL_AURA_APPLIED] = rss.CorrelateAuraApplied ,
	[rss.EVENTS.SPELL_AURA_REFRESH_ON] = rss.CorrelateAuraApplied ,
	[rss.EVENTS.SPELL_AURA_REFRESH_OFF] = rss.CorrelateAuraRemoved ,
	[rss.EVENTS.SPELL_PERIODIC_HEAL] = rss.CorrelatePeriodicHeal ,
}

function rss.CorrelateEvents()
	while rss.events:Count() > 0 do
		local eventCount = rss.events:Count();
		rss.events:Visit(function (events, event) rss.casts:Visit(rss.CorrelateEventToCasts, event, eventDispatch[event.eventType]); end); 
		if rss.events:Count() == eventCount then break; end
	end
end

function rss.PurgeEvents()
	if rss.events:Count() == 0 then return; end
	local now = GetTime();
	rss.events:Visit(function (self, node, now) if now - node.globalTimestamp > rss.CAST_TIMEOUT then self:Remove(node); end end , now);
end

function rss.CopyEvent(event, copyCast)
	if not event.copiedBy then
		event.copiedBy = rss.LinkedList:Create();
	end
	event.copiedBy:Append({copier = copyCast});
	copyCast.originalHealing = copyCast.originalHealing + event.amount;
	rss.AssociateCopy(event.cast, copyCast);
end

function rss.AssociateCopy(healCast, buffCast)
	if not buffCast.copies then
		buffCast.copies = rss.LinkedList:Create();
	end
	local copies = buffCast.copies;
	local current = copies:Start();
	while current do
		if current.cast == healCast then return; end --reference comparison
		current = current.forward;
	end
	copies:Append({ cast = healCast });
	rss.AddActiveAura(healCast, buffCast.copyAura, rss.playerState.GUID);
end


function rss.AssociateHealing(event, cast)
	rss.AssociateEvent(event, cast);

	if rss.playerState.ascendanceCast and not (rss.SPELLS[event.spellId].copy or rss.SPELLS[event.spellId].totem) then
		rss.CopyEvent(event, rss.playerState.ascendanceCast);
	end
	
	if rss.playerState.ancestralGuidanceCast and not (event.eventType == rss.EVENTS.SPELL_PERIODIC_HEAL or rss.SPELLS[event.spellId].copy or rss.SPELLS[event.spellId].totem) then
		rss.CopyEvent(event, rss.playerState.ancestralGuidanceCast);
	end
	
	if rss.playerState.cloudburstCast and not (rss.SPELLS[event.spellId].copy or rss.SPELLS[event.spellId].totem) then
		rss.CopyEvent(event, rss.playerState.cloudburstCast);
	end
end

function rss.AssociateEvent(event, cast)
	event.cast = cast;
	if not cast.events then
		cast.events = rss.LinkedList:Create();
	end
	cast.events:Append( { event = event } );
	cast.lastEventTime = GetTime();
end

function rss.AddEvent(eventType, timestamp, destName, destGUID, spellId, amount, healed)
	local event = {};
	event.eventType = eventType;
	event.timestamp = timestamp;
	event.globalTimestamp = GetTime();
	event.destName = destName;
	event.destGUID = destGUID;
	event.spellId = spellId;
	event.amount = amount;
	event.healed = healed;
	rss.events:Append(event);
	return event;
end
