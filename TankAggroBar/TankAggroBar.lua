-- TankAggroBar.lua (Retail / Midnight 12.x)

-- SavedVariables
TankAggroBarDB = TankAggroBarDB or {}

-- Localization (common clients)
local L = {
    enUS = {
        OK = "Aggro OK",
        UNKNOWN = "AGGRO UNKNOWN",
        LOST = "AGGRO LOST",
        ADDON = "TankAggroBar",
        CMD = "Commands",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Position locked.",
        PRINT_UNLOCKED = "Position unlocked (drag & drop).",
        PRINT_RESET = "Position/size reset.",
        PRINT_TEST_ON = "Test mode ON (bar shown).",
        PRINT_TEST_OFF = "Test mode OFF.",
        PRINT_HELP = "Commands: /tab lock | unlock | reset | test | help",
    },
    deDE = {
        OK = "Aggro OK",
        UNKNOWN = "AGGRO UNBEKANNT",
        LOST = "AGGRO VERLOREN",
        ADDON = "TankAggroBar",
        CMD = "Befehle",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Position gesperrt.",
        PRINT_UNLOCKED = "Position entsperrt (drag & drop).",
        PRINT_RESET = "Position/Größe zurückgesetzt.",
        PRINT_TEST_ON = "Testmodus AN (Leiste sichtbar).",
        PRINT_TEST_OFF = "Testmodus AUS.",
        PRINT_HELP = "Befehle: /tab lock | unlock | reset | test | help",
    },
    frFR = {
        OK = "Aggro OK",
        UNKNOWN = "AGGRO INCONNUE",
        LOST = "AGGRO PERDUE",
        ADDON = "TankAggroBar",
        CMD = "Commandes",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Position verrouillée.",
        PRINT_UNLOCKED = "Position déverrouillée (glisser-déposer).",
        PRINT_RESET = "Position/taille réinitialisées.",
        PRINT_TEST_ON = "Mode test ACTIVÉ (barre affichée).",
        PRINT_TEST_OFF = "Mode test DÉSACTIVÉ.",
        PRINT_HELP = "Commandes : /tab lock | unlock | reset | test | help",
    },
    esES = {
        OK = "Aggro OK",
        UNKNOWN = "AGRO DESCONOCIDO",
        LOST = "AGGRO PERDIDA",
        ADDON = "TankAggroBar",
        CMD = "Comandos",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Posición bloqueada.",
        PRINT_UNLOCKED = "Posición desbloqueada (arrastrar y soltar).",
        PRINT_RESET = "Posición/tamaño restablecidos.",
        PRINT_TEST_ON = "Modo prueba ACTIVADO (barra visible).",
        PRINT_TEST_OFF = "Modo prueba DESACTIVADO.",
        PRINT_HELP = "Comandos: /tab lock | unlock | reset | test | help",
    },
    esMX = {
        OK = "Aggro OK",
        UNKNOWN = "AGRO DESCONOCIDO",
        LOST = "AGGRO PERDIDA",
        ADDON = "TankAggroBar",
        CMD = "Comandos",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Posición bloqueada.",
        PRINT_UNLOCKED = "Posición desbloqueada (arrastrar y soltar).",
        PRINT_RESET = "Posición/tamaño restablecidos.",
        PRINT_TEST_ON = "Modo prueba ACTIVADO (barra visible).",
        PRINT_TEST_OFF = "Modo prueba DESACTIVADO.",
        PRINT_HELP = "Comandos: /tab lock | unlock | reset | test | help",
    },
    itIT = {
        OK = "Aggro OK",
        UNKNOWN = "AGGRO SCONOSCIUTA",
        LOST = "AGGRO PERSA",
        ADDON = "TankAggroBar",
        CMD = "Comandi",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Posizione bloccata.",
        PRINT_UNLOCKED = "Posizione sbloccata (trascina e rilascia).",
        PRINT_RESET = "Posizione/dimensione ripristinate.",
        PRINT_TEST_ON = "Modalità test ATTIVA (barra visibile).",
        PRINT_TEST_OFF = "Modalità test DISATTIVA.",
        PRINT_HELP = "Comandi: /tab lock | unlock | reset | test | help",
    },
    ptBR = {
        OK = "Aggro OK",
        UNKNOWN = "AGGRO DESCONHECIDO",
        LOST = "AGGRO PERDIDA",
        ADDON = "TankAggroBar",
        CMD = "Comandos",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Posição travada.",
        PRINT_UNLOCKED = "Posição destravada (arrastar e soltar).",
        PRINT_RESET = "Posição/tamanho redefinidos.",
        PRINT_TEST_ON = "Modo teste LIGADO (barra visível).",
        PRINT_TEST_OFF = "Modo teste DESLIGADO.",
        PRINT_HELP = "Comandos: /tab lock | unlock | reset | test | help",
    },
    ruRU = {
        OK = "Aggro OK",
        UNKNOWN = "АГРО НЕИЗВЕСТНО",
        LOST = "ПОТЕРЯ АГГРО",
        ADDON = "TankAggroBar",
        CMD = "Команды",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "Позиция закреплена.",
        PRINT_UNLOCKED = "Позиция откреплена (перетащите мышью).",
        PRINT_RESET = "Позиция/размер сброшены.",
        PRINT_TEST_ON = "Тестовый режим ВКЛ (полоса показана).",
        PRINT_TEST_OFF = "Тестовый режим ВЫКЛ.",
        PRINT_HELP = "Команды: /tab lock | unlock | reset | test | help",
    },
    koKR = {
        OK = "어그로 유지",
        UNKNOWN = "어그로 확인 불가",
        LOST = "어그로 상실",
        ADDON = "TankAggroBar",
        CMD = "명령어",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "위치 잠금.",
        PRINT_UNLOCKED = "위치 잠금 해제 (드래그).",
        PRINT_RESET = "위치/크기 초기화.",
        PRINT_TEST_ON = "테스트 모드 ON (표시됨).",
        PRINT_TEST_OFF = "테스트 모드 OFF.",
        PRINT_HELP = "명령어: /tab lock | unlock | reset | test | help",
    },
    zhCN = {
        OK = "仇恨正常",
        UNKNOWN = "仇恨状态未知",
        LOST = "仇恨丢失",
        ADDON = "TankAggroBar",
        CMD = "命令",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "位置已锁定。",
        PRINT_UNLOCKED = "位置已解锁（可拖动）。",
        PRINT_RESET = "位置/尺寸已重置。",
        PRINT_TEST_ON = "测试模式开启（显示中）。",
        PRINT_TEST_OFF = "测试模式关闭。",
        PRINT_HELP = "命令: /tab lock | unlock | reset | test | help",
    },
    zhTW = {
        OK = "仇恨正常",
        UNKNOWN = "仇恨狀態未知",
        LOST = "仇恨遺失",
        ADDON = "TankAggroBar",
        CMD = "指令",
        CMD_LOCK = "lock",
        CMD_UNLOCK = "unlock",
        CMD_RESET = "reset",
        CMD_TEST = "test",
        CMD_HELP = "help",
        PRINT_LOCKED = "位置已鎖定。",
        PRINT_UNLOCKED = "位置已解鎖（可拖曳）。",
        PRINT_RESET = "位置/尺寸已重置。",
        PRINT_TEST_ON = "測試模式開啟（顯示中）。",
        PRINT_TEST_OFF = "測試模式關閉。",
        PRINT_HELP = "指令: /tab lock | unlock | reset | test | help",
    },
}

local function GetT()
    local loc = GetLocale()
    return L[loc] or L.enUS
end

local T = GetT()

-- Defaults
local defaults = {
    enabled = true,
    locked = false,

    showOnlyInCombat = true, -- default: only show in combat
    testMode = false,        -- show bar for config/testing

    x = 0,
    y = -200,
    scale = 1.0,
    width = 220,
    height = 22,
    alpha = 0.90,

    updateInterval = 0.30,   -- seconds
    sound = true,
    soundChannel = "Master", -- Master / SFX / Dialog / Ambience / Music
    soundKit = SOUNDKIT.RAID_WARNING,

    -- ✅ NEW: debounce for big pulls (prevents false "aggro lost" flicker)
    loseDelay = 0.70,        -- seconds a mob must be <3 threat before we count it as lost
    cacheTTL  = 2.00,        -- keep recently seen mobs for a short time (nameplate/offscreen flicker)
}

local function ApplyDefaults()
    for k, v in pairs(defaults) do
        if TankAggroBarDB[k] == nil then
            TankAggroBarDB[k] = v
        end
    end
end

-- Main Frame (BackdropTemplate needed in modern Retail)
local bar = CreateFrame("Frame", "TankAggroBarFrame", UIParent, "BackdropTemplate")
bar:Hide()

bar:SetBackdrop({
    bgFile = "Interface\\TARGETINGFRAME\\UI-StatusBar",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = false,
    edgeSize = 12,
    insets = { left = 2, right = 2, top = 2, bottom = 2 },
})

local text = bar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("CENTER")

-- Dragging
bar:SetMovable(true)
bar:EnableMouse(true)
bar:RegisterForDrag("LeftButton")
bar:SetScript("OnDragStart", function()
    if not TankAggroBarDB.locked then
        bar:StartMoving()
    end
end)
bar:SetScript("OnDragStop", function()
    bar:StopMovingOrSizing()
    local _, _, _, x, y = bar:GetPoint()
    TankAggroBarDB.x = x
    TankAggroBarDB.y = y
end)

----------------------------------------------------------------
-- Threat tracking (Midnight 12.x / secret-value safe)
----------------------------------------------------------------
-- "issecurevalue" checks taint, NOT secrecy. Only issecretvalue can
-- tell us whether a WoW API result may be inspected by addon Lua.
local secretCheck = issecretvalue
local function IsSecret(value)
    return secretCheck and secretCheck(value) or false
end

local threatCache = {} -- [safe GUID or unit token] = {guid, lastSeen, threat, belowSince}

local function CleanThreatCache(now)
    local ttl = tonumber(TankAggroBarDB.cacheTTL) or defaults.cacheTTL
    for key, entry in pairs(threatCache) do
        if not entry.lastSeen or (now - entry.lastSeen) > ttl then
            threatCache[key] = nil
        end
    end
end

-- Returns false if WoW deliberately hides the threat state. Such results
-- must never be compared, converted, or used to trigger a sound.
local function TrackUnitThreat(unit, now)
    local status = UnitThreatSituation("player", unit)
    if IsSecret(status) then
        return false
    end

    -- UnitGUID(nameplate) can itself be secret in Midnight. Never use a
    -- restricted GUID as a table key or run tostring() on it.
    local rawGuid = UnitGUID(unit)
    local guid
    if not IsSecret(rawGuid) and type(rawGuid) == "string" then
        guid = rawGuid
    end

    local key = guid or unit -- unit is built locally, never a secret
    local entry = threatCache[key]
    if not entry then
        entry = {}
        threatCache[key] = entry
    end

    -- A nameplate token may be reused for a different mob. Reset a reused
    -- entry if the old and new GUIDs are both safe and disagree.
    if entry.guid and guid and entry.guid ~= guid then
        entry.threat = nil
        entry.belowSince = nil
    end

    entry.guid = guid
    entry.lastSeen = now
    entry.threat = status

    if status == nil or status == 3 then
        entry.belowSince = nil
    else
        entry.belowSince = entry.belowSince or now
    end

    return true
end

-- Returns (fullAggro, hasRestrictedData). Restricted data is UNKNOWN,
-- not positive proof of either "aggro OK" or "aggro lost".
local function HasFullAggro()
    local now = GetTime()
    local unknown = false

    for i = 1, 40 do
        local unit = "nameplate" .. i
        local exists = UnitExists(unit)
        if IsSecret(exists) then
            unknown = true
        elseif exists then
            local hostile = UnitCanAttack("player", unit)
            if IsSecret(hostile) then
                unknown = true
            elseif hostile then
                local inCombat = UnitAffectingCombat(unit)
                if IsSecret(inCombat) then
                    unknown = true
                elseif inCombat and not TrackUnitThreat(unit, now) then
                    unknown = true
                end
            end
        end
    end

    CleanThreatCache(now)
    local loseDelay = tonumber(TankAggroBarDB.loseDelay) or defaults.loseDelay

    for _, entry in pairs(threatCache) do
        -- "threat" is only cached after passing IsSecret, so comparisons are safe.
        local status = entry.threat
        if status ~= nil and status < 3 and entry.belowSince and (now - entry.belowSince) >= loseDelay then
            return false, unknown
        end
    end

    return true, unknown
end

local function PlayAggroLostSound()
    if not TankAggroBarDB.sound then return end

    local kit = TankAggroBarDB.soundKit or SOUNDKIT.RAID_WARNING
    local channel = TankAggroBarDB.soundChannel or "Master"
    PlaySound(kit, channel)
end

-- Ticker update (more efficient than OnUpdate)
local ticker
local lastAggroState = true

local function StopTicker()
    if ticker then
        ticker:Cancel()
        ticker = nil
    end
end

local function ShouldShow()
    if not TankAggroBarDB.enabled then
        return false
    end

    if TankAggroBarDB.testMode then
        return true
    end

    if TankAggroBarDB.showOnlyInCombat then
        return InCombatLockdown()
    end

    return true
end

local function UpdateBar()
    if not ShouldShow() then
        bar:Hide()
        lastAggroState = true
        return
    end

    bar:Show()

    local hasAggro, unknown = HasFullAggro()

    if not hasAggro then
        bar:SetBackdropColor(0.80, 0, 0, TankAggroBarDB.alpha or 0.90)
        text:SetText(T.LOST)
        if lastAggroState then
            PlayAggroLostSound()
        end
        lastAggroState = false
    elseif unknown then
        -- Do not report confirmed aggro or fire alerts based on secret data.
        bar:SetBackdropColor(0.85, 0.60, 0, TankAggroBarDB.alpha or 0.90)
        text:SetText(T.UNKNOWN or "AGGRO ?")
        lastAggroState = true
    else
        bar:SetBackdropColor(0, 0.80, 0, TankAggroBarDB.alpha or 0.90)
        text:SetText(T.OK)
        lastAggroState = true
    end
end

local function StartTicker()
    if ticker then return end
    local interval = tonumber(TankAggroBarDB.updateInterval) or defaults.updateInterval
    if interval < 0.05 then interval = 0.05 end
    ticker = C_Timer.NewTicker(interval, UpdateBar)
end

-- Public: apply settings from options
function TankAggroBar_ApplySettings()
    if not TankAggroBarDB then return end

    bar:SetSize(TankAggroBarDB.width or defaults.width, TankAggroBarDB.height or defaults.height)
    bar:SetScale(TankAggroBarDB.scale or defaults.scale)

    bar:ClearAllPoints()
    bar:SetPoint("CENTER", UIParent, "CENTER", TankAggroBarDB.x or defaults.x, TankAggroBarDB.y or defaults.y)

    -- force refresh ticker if interval changed
    StopTicker()
    StartTicker()

    -- update immediately (and show/hide)
    UpdateBar()
end

-- Events
local ev = CreateFrame("Frame")
ev:RegisterEvent("PLAYER_LOGIN")
ev:RegisterEvent("PLAYER_REGEN_DISABLED")
ev:RegisterEvent("PLAYER_REGEN_ENABLED")
ev:RegisterEvent("PLAYER_ENTERING_WORLD")
ev:RegisterEvent("PLAYER_LOGOUT")

ev:SetScript("OnEvent", function(_, event)
    if event == "PLAYER_LOGIN" then
        ApplyDefaults()
        T = GetT()

        TankAggroBar_ApplySettings()
        return
    end

    if TankAggroBarDB.locked == nil then
        TankAggroBarDB.locked = false
    end

    if event == "PLAYER_REGEN_DISABLED" then
        -- entering combat
        lastAggroState = true
        StartTicker()
        UpdateBar()
        return
    end

    if event == "PLAYER_REGEN_ENABLED" then
        -- leaving combat
        wipe(threatCache)
        lastAggroState = true
        UpdateBar()
        return
    end

    if event == "PLAYER_ENTERING_WORLD" then
        -- safety on reloads / zoning
        wipe(threatCache)
        lastAggroState = true
        StopTicker()
        StartTicker()
        UpdateBar()
        return
    end

    if event == "PLAYER_LOGOUT" then
        StopTicker()
        return
    end
end)

-- Slash Commands
SLASH_TANKAGGROBAR1 = "/tankaggrobar"
SLASH_TANKAGGROBAR2 = "/tab"

SlashCmdList.TANKAGGROBAR = function(msg)
    msg = (msg or ""):lower()
    local prefix = "|cffd6266c" .. (T.ADDON or "TankAggroBar") .. ":|r "

    if msg == T.CMD_LOCK or msg == "lock" then
        TankAggroBarDB.locked = true
        print(prefix .. (T.PRINT_LOCKED or "Locked."))
        return
    end

    if msg == T.CMD_UNLOCK or msg == "unlock" then
        TankAggroBarDB.locked = false
        TankAggroBarDB.testMode = true -- show for moving
        print(prefix .. (T.PRINT_UNLOCKED or "Unlocked."))
        TankAggroBar_ApplySettings()
        return
    end

    if msg == T.CMD_RESET or msg == "reset" then
        TankAggroBarDB.x = defaults.x
        TankAggroBarDB.y = defaults.y
        TankAggroBarDB.scale = defaults.scale
        TankAggroBarDB.width = defaults.width
        TankAggroBarDB.height = defaults.height
        TankAggroBarDB.alpha = defaults.alpha
        TankAggroBarDB.updateInterval = defaults.updateInterval
        TankAggroBarDB.loseDelay = defaults.loseDelay
        TankAggroBarDB.cacheTTL  = defaults.cacheTTL
        TankAggroBar_ApplySettings()
        print(prefix .. (T.PRINT_RESET or "Reset."))
        return
    end

    if msg == T.CMD_TEST or msg == "test" then
        TankAggroBarDB.testMode = not TankAggroBarDB.testMode
        print(prefix .. (TankAggroBarDB.testMode and (T.PRINT_TEST_ON or "Test ON") or (T.PRINT_TEST_OFF or "Test OFF")))
        TankAggroBar_ApplySettings()
        return
    end

    print(prefix .. (T.PRINT_HELP or "Commands: /tab lock | unlock | reset | test | help"))
end
