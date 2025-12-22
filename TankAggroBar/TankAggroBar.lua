-- TankAggroBar.lua (Retail / TWW)

-- SavedVariables
TankAggroBarDB = TankAggroBarDB or {}

-- Localization (common clients)
local L = {
    enUS = {
        OK = "Aggro OK",
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

-- Aggro Check: checks visible nameplates (retail supports up to 40)
local function HasFullAggro()
    for i = 1, 40 do
        local unit = "nameplate" .. i
        if UnitExists(unit) and UnitCanAttack("player", unit) then
            local s = UnitThreatSituation("player", unit)
            if s ~= 3 then
                return false
            end
        end
    end
    return true
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

    local hasAggro = HasFullAggro()

    if hasAggro then
        bar:SetBackdropColor(0, 0.80, 0, TankAggroBarDB.alpha or 0.90)
        text:SetText(T.OK)
    else
        bar:SetBackdropColor(0.80, 0, 0, TankAggroBarDB.alpha or 0.90)
        text:SetText(T.LOST)

        if lastAggroState then
            PlayAggroLostSound()
        end
    end

    lastAggroState = hasAggro
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

    if event == "PLAYER_REGEN_DISABLED" then
        -- entering combat
        lastAggroState = true
        StartTicker()
        UpdateBar()
        return
    end

    if event == "PLAYER_REGEN_ENABLED" then
        -- leaving combat
        lastAggroState = true
        UpdateBar()
        return
    end

    if event == "PLAYER_ENTERING_WORLD" then
        -- safety on reloads / zoning
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
