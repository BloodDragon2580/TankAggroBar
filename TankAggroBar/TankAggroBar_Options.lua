-- TankAggroBar_Options.lua (Retail / TWW)

TankAggroBarDB = TankAggroBarDB or {}

-- Localization for options (common clients)
local LO = {
    enUS = {
        TITLE = "TankAggroBar",
        SUB = "Settings for the tank aggro display.",
        ENABLE = "Enable addon",
        LOCK = "Lock position",
        SHOW_COMBAT = "Show only in combat",
        TESTMODE = "Test mode (show bar)",
        SOUND = "Sound on aggro loss",
        SOUND_CHANNEL = "Sound channel",
        SCALE = "Scale",
        WIDTH = "Width",
        HEIGHT = "Height",
        ALPHA = "Opacity",
        INTERVAL = "Update interval (sec)",
        RESET = "Reset position & size",
        CENTER = "Center",
        HINT = "Tip: Use /tab unlock or enable Test mode to move the bar out of combat.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    deDE = {
        TITLE = "TankAggroBar",
        SUB = "Einstellungen für die Aggro-Anzeige (Tank).",
        ENABLE = "Addon aktivieren",
        LOCK = "Position sperren",
        SHOW_COMBAT = "Nur im Kampf anzeigen",
        TESTMODE = "Testmodus (Leiste anzeigen)",
        SOUND = "Sound bei Aggroverlust",
        SOUND_CHANNEL = "Sound-Kanal",
        SCALE = "Skalierung",
        WIDTH = "Breite",
        HEIGHT = "Höhe",
        ALPHA = "Transparenz",
        INTERVAL = "Update-Intervall (Sek.)",
        RESET = "Position & Größe zurücksetzen",
        CENTER = "Zentrieren",
        HINT = "Tipp: Nutze /tab unlock oder aktiviere den Testmodus, um die Leiste out of combat zu verschieben.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambiente",
        CHANNEL_MUSIC = "Musik",
    },
    frFR = {
        TITLE = "TankAggroBar",
        SUB = "Paramètres de l'affichage d'aggro (tank).",
        ENABLE = "Activer l'addon",
        LOCK = "Verrouiller la position",
        SHOW_COMBAT = "Afficher uniquement en combat",
        TESTMODE = "Mode test (afficher la barre)",
        SOUND = "Son en cas de perte d'aggro",
        SOUND_CHANNEL = "Canal sonore",
        SCALE = "Échelle",
        WIDTH = "Largeur",
        HEIGHT = "Hauteur",
        ALPHA = "Opacité",
        INTERVAL = "Intervalle (sec)",
        RESET = "Réinitialiser position & taille",
        CENTER = "Centrer",
        HINT = "Astuce : utilisez /tab unlock ou le mode test pour déplacer la barre hors combat.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    esES = {
        TITLE = "TankAggroBar",
        SUB = "Ajustes del indicador de agro (tanque).",
        ENABLE = "Activar addon",
        LOCK = "Bloquear posición",
        SHOW_COMBAT = "Mostrar solo en combate",
        TESTMODE = "Modo prueba (mostrar barra)",
        SOUND = "Sonido al perder agro",
        SOUND_CHANNEL = "Canal de sonido",
        SCALE = "Escala",
        WIDTH = "Ancho",
        HEIGHT = "Alto",
        ALPHA = "Opacidad",
        INTERVAL = "Intervalo (seg)",
        RESET = "Restablecer posición y tamaño",
        CENTER = "Centrar",
        HINT = "Tip: usa /tab unlock o el modo prueba para mover la barra fuera de combate.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    esMX = {
        TITLE = "TankAggroBar",
        SUB = "Ajustes del indicador de agro (tanque).",
        ENABLE = "Activar addon",
        LOCK = "Bloquear posición",
        SHOW_COMBAT = "Mostrar solo en combate",
        TESTMODE = "Modo prueba (mostrar barra)",
        SOUND = "Sonido al perder agro",
        SOUND_CHANNEL = "Canal de sonido",
        SCALE = "Escala",
        WIDTH = "Ancho",
        HEIGHT = "Alto",
        ALPHA = "Opacidad",
        INTERVAL = "Intervalo (seg)",
        RESET = "Restablecer posición y tamaño",
        CENTER = "Centrar",
        HINT = "Tip: usa /tab unlock o el modo prueba para mover la barra fuera de combate.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    itIT = {
        TITLE = "TankAggroBar",
        SUB = "Impostazioni indicatore minaccia (tank).",
        ENABLE = "Abilita addon",
        LOCK = "Blocca posizione",
        SHOW_COMBAT = "Mostra solo in combattimento",
        TESTMODE = "Modalità test (mostra barra)",
        SOUND = "Suono quando perdi aggro",
        SOUND_CHANNEL = "Canale audio",
        SCALE = "Scala",
        WIDTH = "Larghezza",
        HEIGHT = "Altezza",
        ALPHA = "Opacità",
        INTERVAL = "Intervallo (sec)",
        RESET = "Ripristina posizione e dimensione",
        CENTER = "Centra",
        HINT = "Suggerimento: usa /tab unlock o la modalità test per spostare la barra fuori combattimento.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    ptBR = {
        TITLE = "TankAggroBar",
        SUB = "Configurações do aviso de aggro (tank).",
        ENABLE = "Ativar addon",
        LOCK = "Travar posição",
        SHOW_COMBAT = "Mostrar apenas em combate",
        TESTMODE = "Modo teste (mostrar barra)",
        SOUND = "Som ao perder aggro",
        SOUND_CHANNEL = "Canal de som",
        SCALE = "Escala",
        WIDTH = "Largura",
        HEIGHT = "Altura",
        ALPHA = "Opacidade",
        INTERVAL = "Intervalo (seg)",
        RESET = "Redefinir posição e tamanho",
        CENTER = "Centralizar",
        HINT = "Dica: use /tab unlock ou o modo teste para mover a barra fora de combate.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    ruRU = {
        TITLE = "TankAggroBar",
        SUB = "Настройки индикатора аггро (танк).",
        ENABLE = "Включить аддон",
        LOCK = "Закрепить позицию",
        SHOW_COMBAT = "Показывать только в бою",
        TESTMODE = "Тестовый режим (показывать полосу)",
        SOUND = "Звук при потере аггро",
        SOUND_CHANNEL = "Звуковой канал",
        SCALE = "Масштаб",
        WIDTH = "Ширина",
        HEIGHT = "Высота",
        ALPHA = "Прозрачность",
        INTERVAL = "Интервал (сек)",
        RESET = "Сброс позиции и размера",
        CENTER = "По центру",
        HINT = "Совет: используйте /tab unlock или тестовый режим, чтобы двигать полосу вне боя.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    koKR = {
        TITLE = "TankAggroBar",
        SUB = "탱커 어그로 표시 설정.",
        ENABLE = "애드온 사용",
        LOCK = "위치 잠금",
        SHOW_COMBAT = "전투 중에만 표시",
        TESTMODE = "테스트 모드 (표시)",
        SOUND = "어그로 상실 시 소리",
        SOUND_CHANNEL = "사운드 채널",
        SCALE = "크기",
        WIDTH = "너비",
        HEIGHT = "높이",
        ALPHA = "투명도",
        INTERVAL = "갱신 간격(초)",
        RESET = "위치/크기 초기화",
        CENTER = "가운데",
        HINT = "팁: /tab unlock 또는 테스트 모드로 비전투 중 이동하세요.",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    zhCN = {
        TITLE = "TankAggroBar",
        SUB = "坦克仇恨提示设置。",
        ENABLE = "启用插件",
        LOCK = "锁定位置",
        SHOW_COMBAT = "仅战斗中显示",
        TESTMODE = "测试模式（显示）",
        SOUND = "丢仇恨时播放声音",
        SOUND_CHANNEL = "声音通道",
        SCALE = "缩放",
        WIDTH = "宽度",
        HEIGHT = "高度",
        ALPHA = "透明度",
        INTERVAL = "刷新间隔（秒）",
        RESET = "重置位置与大小",
        CENTER = "居中",
        HINT = "提示：用 /tab unlock 或测试模式在非战斗时移动。",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
    zhTW = {
        TITLE = "TankAggroBar",
        SUB = "坦克仇恨提示設定。",
        ENABLE = "啟用插件",
        LOCK = "鎖定位置",
        SHOW_COMBAT = "僅戰鬥中顯示",
        TESTMODE = "測試模式（顯示）",
        SOUND = "丟仇恨時播放聲音",
        SOUND_CHANNEL = "聲音頻道",
        SCALE = "縮放",
        WIDTH = "寬度",
        HEIGHT = "高度",
        ALPHA = "透明度",
        INTERVAL = "更新間隔（秒）",
        RESET = "重置位置與大小",
        CENTER = "置中",
        HINT = "提示：用 /tab unlock 或測試模式在非戰鬥時移動。",
        CHANNEL_MASTER = "Master",
        CHANNEL_SFX = "SFX",
        CHANNEL_DIALOG = "Dialog",
        CHANNEL_AMBIENCE = "Ambience",
        CHANNEL_MUSIC = "Music",
    },
}

local function TOpt()
    return LO[GetLocale()] or LO.enUS
end

local O = TOpt()

local defaults = {
    enabled = true,
    locked = false,
    showOnlyInCombat = true,
    testMode = false,
    x = 0, y = -200,
    scale = 1.0,
    width = 220,
    height = 22,
    alpha = 0.90,
    updateInterval = 0.30,
    sound = true,
    soundChannel = "Master",
}

local function EnsureDefaults()
    for k, v in pairs(defaults) do
        if TankAggroBarDB[k] == nil then
            TankAggroBarDB[k] = v
        end
    end
end

local function Apply()
    if TankAggroBar_ApplySettings then
        TankAggroBar_ApplySettings()
    end
end

local function CreateOptionsPanel()
    EnsureDefaults()
    O = TOpt()

    local panel = CreateFrame("Frame", "TankAggroBarOptionsPanel", UIParent)
    panel.name = O.TITLE or "TankAggroBar"

    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(O.TITLE or "TankAggroBar")

    local sub = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    sub:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -6)
    sub:SetText(O.SUB or "")

    local y = -14

local function AddCheck(text, key, onChange)
    local cb = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cb:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, y)
    cb.Text:SetText(text)

    local function Sync()
        cb:SetChecked(TankAggroBarDB[key])
    end

    Sync()

    cb:SetScript("OnClick", function(self)
        TankAggroBarDB[key] = self:GetChecked()
        if onChange then onChange(self:GetChecked()) end
        Apply()
    end)

    -- ✅ WICHTIG: bei jedem Öffnen neu setzen
    cb:SetScript("OnShow", Sync)

    y = y - 28
    return cb
end

    local enable = AddCheck(O.ENABLE, "enabled", function(v)
        if not v and TankAggroBarFrame then
            TankAggroBarFrame:Hide()
        end
    end)

    AddCheck(O.LOCK, "locked")
    AddCheck(O.SHOW_COMBAT, "showOnlyInCombat")
    AddCheck(O.TESTMODE, "testMode")
    AddCheck(O.SOUND, "sound")

    -- Dropdown: sound channel (simple)
    local ddLabel = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    ddLabel:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, y - 4)
    ddLabel:SetText(O.SOUND_CHANNEL or "Sound channel")

    local dd = CreateFrame("Frame", "TankAggroBarSoundChannelDropDown", panel, "UIDropDownMenuTemplate")
    dd:SetPoint("TOPLEFT", ddLabel, "BOTTOMLEFT", -16, -6)

    local channels = {
        { key = "Master", text = O.CHANNEL_MASTER or "Master" },
        { key = "SFX", text = O.CHANNEL_SFX or "SFX" },
        { key = "Dialog", text = O.CHANNEL_DIALOG or "Dialog" },
        { key = "Ambience", text = O.CHANNEL_AMBIENCE or "Ambience" },
        { key = "Music", text = O.CHANNEL_MUSIC or "Music" },
    }

    UIDropDownMenu_Initialize(dd, function(self, level)
        for _, c in ipairs(channels) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = c.text
            info.checked = (TankAggroBarDB.soundChannel == c.key)
            info.func = function()
                TankAggroBarDB.soundChannel = c.key
                UIDropDownMenu_SetText(dd, c.text)
                Apply()
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)

    local function SetDDText()
        local current = TankAggroBarDB.soundChannel or "Master"
        for _, c in ipairs(channels) do
            if c.key == current then
                UIDropDownMenu_SetText(dd, c.text)
                return
            end
        end
        UIDropDownMenu_SetText(dd, current)
    end

    SetDDText()
    y = y - 70

    local function AddSlider(label, key, minV, maxV, step, fmt, onChange)
        local s = CreateFrame("Slider", nil, panel, "OptionsSliderTemplate")
        s:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, y)
        s:SetMinMaxValues(minV, maxV)
        s:SetValueStep(step)
        s:SetObeyStepOnDrag(true)
        s:SetWidth(260)

        local function UpdateText(v)
            local txt = label
            if fmt then
                txt = (label .. ": " .. fmt):format(v)
            end
            s.Text:SetText(txt)
        end

        s:SetValue(TankAggroBarDB[key])
        UpdateText(s:GetValue())
        s.Low:SetText(tostring(minV))
        s.High:SetText(tostring(maxV))

        s:SetScript("OnValueChanged", function(self, value)
            TankAggroBarDB[key] = value
            UpdateText(value)
            if onChange then onChange(value) end
            Apply()
        end)

        y = y - 48
        return s
    end

    AddSlider(O.SCALE, "scale", 0.70, 1.50, 0.05, "%.2f", function(v)
        if TankAggroBarFrame then TankAggroBarFrame:SetScale(v) end
    end)

    AddSlider(O.WIDTH, "width", 120, 520, 5, "%.0f", function(v)
        if TankAggroBarFrame then
            local h = TankAggroBarDB.height or defaults.height
            TankAggroBarFrame:SetSize(v, h)
        end
    end)

    AddSlider(O.HEIGHT, "height", 14, 60, 1, "%.0f", function(v)
        if TankAggroBarFrame then
            local w = TankAggroBarDB.width or defaults.width
            TankAggroBarFrame:SetSize(w, v)
        end
    end)

    AddSlider(O.ALPHA, "alpha", 0.20, 1.00, 0.05, "%.2f")

    AddSlider(O.INTERVAL, "updateInterval", 0.05, 1.00, 0.05, "%.2f")

    -- Buttons
    local btnReset = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    btnReset:SetSize(200, 22)
    btnReset:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, y - 8)
    btnReset:SetText(O.RESET or "Reset")
    btnReset:SetScript("OnClick", function()
        TankAggroBarDB.x = defaults.x
        TankAggroBarDB.y = defaults.y
        TankAggroBarDB.scale = defaults.scale
        TankAggroBarDB.width = defaults.width
        TankAggroBarDB.height = defaults.height
        TankAggroBarDB.alpha = defaults.alpha
        TankAggroBarDB.updateInterval = defaults.updateInterval
        Apply()
    end)

    local btnCenter = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    btnCenter:SetSize(120, 22)
    btnCenter:SetPoint("LEFT", btnReset, "RIGHT", 10, 0)
    btnCenter:SetText(O.CENTER or "Center")
    btnCenter:SetScript("OnClick", function()
        TankAggroBarDB.x = 0
        TankAggroBarDB.y = -200
        Apply()
    end)

    y = y - 38

    local hint = panel:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
    hint:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, y)
    hint:SetJustifyH("LEFT")
    hint:SetWidth(520)
    hint:SetText(O.HINT or "")

    return panel
end

local panel = CreateOptionsPanel()

-- Register in modern Settings (Retail) with fallback
if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
    local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
    Settings.RegisterAddOnCategory(category)
elseif InterfaceOptions_AddCategory then
    InterfaceOptions_AddCategory(panel)
end
