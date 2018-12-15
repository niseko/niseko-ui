local L = LibStub("AceLocale-3.0"):NewLocale("FlashTaskbarLocales", "ruRU") 
if not L then return end 

L["STRING_ADD"] = "добавить"
L["STRING_ADDKEYWORD"] = "Добавить ключевое слово"
L["STRING_BACKGROUND_SOUND"] = "*Включите 'Фоновые звуки'\\nв Настройки  > Звук*"
L["STRING_BAGSFULL"] = "Сумки заполнены"
L["STRING_BAGSFULL_DESC"] = "Если вы создаёте предмет, и в ваших сумках закончилось свободное место."
L["STRING_BATTLEGROUND"] = "Завершение поля боя"
L["STRING_BATTLEGROUND_DESC"] = "Мигать, когда завершается поле боя."
L["STRING_BRAWLERS"] = "Призыв в бойцовскую гильдию"
L["STRING_BRAWLERS_DESC"] = "Когда наступает ваша очередь сражаться на бойцовской арене."
L["STRING_CAMPINGSETTINGS"] = "Настройки отслеживания"
L["STRING_CHAT_FLYPOINTENDED"] = "достигнута точка полёта."
L["STRING_CHATSCAN"] = "Сканирование чата"
L["STRING_CHATSCAN_DESC"] = "Оповещение о событиях чата."
L["STRING_CHATSCAN_ENABLED"] = "Сканирование чата включено"
L["STRING_CHATSCAN_ENABLED_DESC"] = [=[Поиск конкретных слов в чате.

Например, когда конкретный НИП что-то кричит, и вы хотите, чтобы модификация вас об этом предупредила.]=]
L["STRING_CLOSESOUNDPANEL"] = "Закрыть"
L["STRING_COMBATLOGSCAN"] = "Сканирование журнала боя"
L["STRING_COMBATLOGSCAN_DESC"] = "Оповещение о событиях журнала боя."
L["STRING_COMBATLOGSCAN_ENABLED"] = "Сканирование журнала боя включено"
L["STRING_COMBATLOGSCAN_ENABLED_DESC"] = [=[Проверка на имя цели в журнале боя.

Например, когда какой-либо конкретный НИП получает урон, и вы хотите, чтобы модификация вас об этом предупредила.]=]
L["STRING_DISCONNECT"] = "Разъединение"
L["STRING_DISCONNECT_DESC"] = [=[Когда вашего персонажа выкинуло из игры.

Важно, чтобы не потерять место в длинной очереди, когда вы АФК.]=]
L["STRING_DUELREQUEST"] = "Вызов на дуэль"
L["STRING_DUELREQUEST_DESC"] = "Когда кто-то вызывает вас на PvP или поединок питомцев."
L["STRING_ENTERCOMBAT"] = "Вступление в бой"
L["STRING_ENTERCOMBAT_DESC"] = "Когда ваш персонаж вступает в любой бой."
L["STRING_ERASEKEYWORD"] = "Стереть ключевое слово"
L["STRING_FATIGUE"] = "Усталость"
L["STRING_FATIGUE_DESC"] = "Когда ваш персонаж выходит за пределы карты и запускается 1-минутный отсчёт усталости."
L["STRING_FINDERQUEUES"] = "Подошла очередь"
L["STRING_FINDERQUEUES_DESC"] = "Мигать на панели задач при призыве в рейды, подземелья."
L["STRING_FLYPOINT"] = "Достигнута точка полёта"
L["STRING_FLYPOINT_DESC"] = "Когда ваш полёт с помощью распорядителя полетов окончен."
L["STRING_GENERALSETTINGS"] = "Основные настройки"
L["STRING_INVITEIGNORE"] = "Игнорировать авто-принятие"
L["STRING_INVITEIGNORE_DESC"] = "Если любая другая модификация автоматически принимает приглашение, мигания не будет."
L["STRING_INVITES"] = "Приглашения"
L["STRING_INVITES_DESC"] = "Когда кто-то приглашает вас в группу."
L["STRING_ONCOUNTDOWN"] = "Запуск таймера"
L["STRING_ONCOUNTDOWN_DESC"] = "Когда на экране отображается обратный отсчет."
L["STRING_ONPLAYERDEATH"] = "Игрок умер"
L["STRING_ONPLAYERDEATH_DESC"] = "Мигать, когда ваш персонаж умирает"
L["STRING_ONWHISPER"] = "При шёпоте"
L["STRING_ONWHISPER_DESC"] = "Мигать при получении шёпота"
L["STRING_OPENSOUNDPANEL"] = "Открыть настройки звука"
L["STRING_PETBATTLES"] = "Призыв на битву питомцев"
L["STRING_PETBATTLES_DESC"] = "Призыв, когда вы в очереди на битву питомцев."
L["STRING_PLAYERNAME"] = "Имя в чате"
L["STRING_PLAYERNAME_DESC"] = "Когда кто-то упоминает вашего персонажа в чате."
L["STRING_PULL"] = "Таймеры пулла"
L["STRING_PULL_DESC"] = "Когда запускается таймер на пулл: BigWigs или DBM."
L["STRING_PVPQUEUES"] = "Призыв на PvP"
L["STRING_PVPQUEUES_DESC"] = "Мигать на панели задач при призыве на поле боя и арену."
L["STRING_RARENPCSCAN"] = "Сканирование редких НИПов"
L["STRING_RARENPCSCAN_ANYNPC"] = "Любой редкий НИП"
L["STRING_RARENPCSCAN_DESC"] = "Оповещение при обнаружении редкого НИПа."
L["STRING_RARENPCSCAN_ENABLED"] = "Сканирование редких НИПов включено"
L["STRING_RARENPCSCAN_NPCNAME"] = "Имя НИПа"
L["STRING_READYCHECK"] = "При проверке готовности"
L["STRING_READYCHECK_DESC"] = "Мигать на панели задач при проверке готовности."
L["STRING_REMOVE"] = "удалить"
L["STRING_REMOVE_TITLE"] = "Удалить"
L["STRING_SOUNDSETTINGS"] = "Настройки звука"
L["STRING_SOUNDSETTINGS_DESC"] = "Вместе с миганием воспроизвести звуковой эффект"
L["STRING_SUMMON"] = "Призыв"
L["STRING_SUMMON_DESC"] = "Когда чернокнижник призывает вас."
L["STRING_TARGETLOSTHEALTH"] = "Цель теряет здоровье"
L["STRING_TARGETLOSTHEALTH_DESC"] = "Мигать, когда ваша цель теряет здоровье."
L["STRING_TARGETLOWHEALTH"] = "У цели мало здоровья"
L["STRING_TARGETLOWHEALTH_DESC"] = "Мигать, когда здорвье вашей цели опускается ниже 18%."
L["STRING_TRADE"] = "Обмен"
L["STRING_TRADE_DESC"] = "Когда кто-то запрашивает у вас обмен."
L["STRING_WORLDPVP"] = "Мировое PvP"
L["STRING_WORLDPVP_DESC"] = "Призыв на мировое PVP, например Ашран."

