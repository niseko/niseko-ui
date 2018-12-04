local revision = tonumber(string.sub("$Revision: 85 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

rss.LinkedList = { back = nil , forward = nil };

function rss.LinkedList:Create()
	local list = {  };
	setmetatable(list, self);
	self.__index = self;
	return list;
end

function rss.LinkedList:Start()
	return self.forward;
end

function rss.LinkedList:End()
	return self.back;
end

function rss.LinkedList:Count()
	local count = 0;
	local current = self.forward;
	while current do
		count = count + 1;
		current = current.forward;
	end
	return count;
end

function rss.LinkedList:Prepend(node)
	local first = self.forward;
	node.forward = first;
	node.back = nil;
	if first then
		first.back = node;
	else
		self.back = node;
	end
	self.forward = node;
end

function rss.LinkedList:Append(node)
	local last = self.back;
	node.forward = nil
	node.back = last;
	if last then
		last.forward = node;
	else
		self.forward = node;
	end
	self.back = node;
end

function rss.LinkedList:Remove(node)
	local back = node.back;
	local forward = node.forward;
	if back then 
		back.forward = forward; 
	else
		self.forward = forward;
	end
	if forward then 
		forward.back = back; 
	else
		self.back = back;
	end
	node.back = nil;
	node.forward = nil;
end

-- call a specified function for each element in list
-- the function can remove the current node
-- the function should not insert nodes
function rss.LinkedList:Visit(f, ...)
	local current = self.forward;
	while current do
		local following = current.forward; -- cached, so the function can remove the current node, if it wants
		local abort = f(self, current, ...);
		if abort then break; end
		current = following;
	end
	return (current == nil); -- will be true if the whole list was visited with no abort, false if aborted
end

function rss.LinkedList:Aggregate(field)
	local total = 0.0;
	local current = self.forward;
	while current do
		if current[field] then
			total = total + current[field];
		end
		current = current.forward;
	end
	return total;
end

function rss.LinkedList:Clear()
	self:Visit(function (self, node)  self:Remove(node); end);
end

function rss.TestList()
	local l = rss.LinkedList:Create();
	print("Empty count: "..l:Count());
	local bNode = { data = "b" };
	l:Append(bNode);
	l:Prepend({data = "a"});
	l:Append({data = "c"});
	print("Filled count: "..l:Count());
	print("Filled list");
	l:Visit(function (self, node) print(node.data); end);
	l:Remove(bNode);
	print("Removed item");
	l:Visit(function (self, node) print(node.data); end);
	l:Append({data = "d"});
	l:Visit(function (self, node, s) if node.data == s then self:Remove(node); return true; end end, "c");
	print("Remove parameterized item");
	l:Visit(function(self, node) print(node.data); end);
	print("Print to parameterized item");
	l:Visit(function(self, node, s) print(node.data); if node.data == s then return true; end end, "a");
	l = nil;
	l = rss.LinkedList:Create();
	l:Append({data = 1});
	l:Append({data = 2});
	l:Append({data = 3});
	print("Test of aggregation: "..l:Aggregate("data"));
end

-- create a deep copy of the argument, and return it
-- recursive, so extremely large tables (not expected) may overflow stack
-- reference: http://lua-users.org/wiki/CopyTable
function rss.Clone(orig)
    local orig_type = type(orig);
    local copy;
    if orig_type == 'table' then
        copy = {};
        for orig_key, orig_value in next, orig, nil do
            copy[rss.Clone(orig_key)] = rss.Clone(orig_value);
        end
        setmetatable(copy, rss.Clone(getmetatable(orig)));
    else -- number, string, boolean, etc
        copy = orig;
    end
    return copy;
end
