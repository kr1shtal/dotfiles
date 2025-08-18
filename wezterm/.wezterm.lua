local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 132
config.initial_rows = 43

config.font_size = 16
config.font = wezterm.font 'Fira Code'
config.color_scheme = 'Jellybeans'

config.use_fancy_tab_bar = false 
config.enable_tab_bar = true 
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 15

config.default_cwd = "C://Dev"

config.window_padding = {
    top = 0,
    left = 0,
    right = 0,
    bottom = 0,
}

return config