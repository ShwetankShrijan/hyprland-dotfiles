local programs = require("config.general")

local mainMod = "SUPER"

-- =========================================
-- APPLICATIONS
-- =========================================

-- Terminal
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.terminal))

-- File Manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))

-- Application Launcher
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(programs.menu))

-- Browser
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("vivaldi"))

-- hyprpicker => color picker for Hyprland
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd("hyprpicker -a"))

-- =========================================
-- WINDOW MANAGEMENT
-- =========================================

-- Close focused window
hl.bind(mainMod .. " + C", hl.dsp.window.close())

-- Toggle floating
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- Toggle pseudo tiling
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Toggle split direction
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Toogle fullscreen
hl.bind(mainMod .. " + F",hl.dsp.window.fullscreen({mode = "fullscreen"}))

-- =========================================
-- WINDOW FOCUS (WASD)
-- =========================================

hl.bind(mainMod .. " + W", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + A", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + S", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + D", hl.dsp.focus({ direction = "right" }))

-- =========================================
-- MOVE WINDOWS (SHIFT + WASD)
-- =========================================

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.window.move({ direction = "up" }))

hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.move({ direction = "left" }))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + D", hl.dsp.window.move({ direction = "right" }))

-- =========================================
-- WORKSPACE NAVIGATION
-- =========================================

-- Previous workspace
hl.bind(mainMod .. " + Left", hl.dsp.focus({ workspace = "r-1" }))

-- Next workspace
hl.bind(mainMod .. " + Right", hl.dsp.focus({ workspace = "r+1" }))

-- =========================================
-- MOVE WINDOW BETWEEN WORKSPACES
-- =========================================

-- Move window to previous workspace
hl.bind(mainMod .. " + SHIFT + Left", hl.dsp.window.move({ workspace = "r-1" }))

-- Move window to next workspace
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.move({ workspace = "r+1" }))

-- =========================================
-- MOUSE
-- =========================================

-- Move floating windows
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag({ mouse = true }))

-- Resize floating windows
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- =========================================
-- AUDIO
-- =========================================

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))

-- =========================================
-- BRIGHTNESS
-- =========================================

hl.bind("F8", hl.dsp.exec_cmd("swayosd-client --brightness raise"))

hl.bind("F7", hl.dsp.exec_cmd("swayosd-client --brightness lower"))

-- =========================================
-- SCREENSHOT
-- =========================================

-- I dont like saving screenshots
-- Area Selection to wl-clipboard
hl.bind(mainMod .. " + ALT + S", function()
    hl.exec_cmd("grim -g \"$(slurp)\" - | satty --filename -")
end)


-- Fullscreen to wl-clipboard 
hl.bind("F6", function()
    hl.exec_cmd("grim - | wl-copy")
end)

-- =========================================
-- SESSION
-- =========================================

-- Lock screen
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("wlogout"))

-- Exit Hyprland
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exit())
