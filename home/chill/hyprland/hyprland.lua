hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.on("hyprland.start", function ()
    hl.exec_cmd("noctalia-shell")
end)

require("look-and-feel")
require("input")
require("keybinds")
require("rules")