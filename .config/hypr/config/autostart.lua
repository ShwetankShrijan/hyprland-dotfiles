hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper") --wallpaper
    hl.exec_cmd("mako") -- notification
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar")
    hl.exec_cmd("swayosd-server --style ~/.config/swayosd/style.css --top-margin 0.95")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("blueman-applet")
end)
