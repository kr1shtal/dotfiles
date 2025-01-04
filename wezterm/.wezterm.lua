local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18

config.enable_tab_bar = false

config.window_background_opacity = 0.9
config.macos_window_background_blur = 15


config.window_padding = {
    top = 0,
    left = 0,
    right = 0,
    bottom = 0,
}

return config
