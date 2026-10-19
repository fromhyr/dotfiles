local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 18
config.line_height = 1.2
config.font = wezterm.font("BlexMono Nerd Font Mono")
config.color_scheme = 'catppuccin-macchiato'

config.colors = {
	cursor_bg = '#7aa2f7',
	cursor_border = '#7aa2f7'
}

config.window_decorations = 'RESIZE'
config.enable_tab_bar = false
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

config.keys = {
	{
		key = 'w',
		mods = 'CMD',
		action = wezterm.action.CloseCurrentPane { confirm = false }
	},
	{
		key = 'd',
		mods = 'CMD',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
	},
	{
		key = 'd',
		mods = 'CMD|SHIFT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
	},
	{
		key = 'k',
		mods = 'CMD',
		action = wezterm.action.SendString 'clear\n'
	},
}

return config
