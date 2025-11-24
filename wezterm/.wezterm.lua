-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
if wezterm.target_triple == 'aarch64-apple-darwin' then
	config.font_size = 14
	config.command_palette_font_size = 14
else
	config.font_size = 12
	config.command_palette_font_size = 12
end
config.color_scheme = 'Argonaut (Gogh)'

-- workspaces
wezterm.on("update-right-status", function(window, pane)
  window:set_right_status(window:active_workspace())
end)
local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")

config.keys = {
	{
		key = 'y',
		mods = 'CTRL|SHIFT',
		action = act.SwitchToWorkspace {
			name = 'default',
		},
	},
	{
		key = 'm',
		mods = 'CTRL|SHIFT',
		action = act.SwitchToWorkspace {
			name = 'monitoring',
			spawn = {
				args = { 'top' },
			},
		},
	},
	{
		key = 't',
		mods = 'CTRL|SHIFT',
		action = act.ShowLauncherArgs {
			flags = 'FUZZY|WORKSPACES',
		},
	},
	{
		key = 'z',
		mods = 'CTRL|SHIFT',
		action = act.PromptInputLine {
			description = wezterm.format {
				{ Attribute = { Intensity = 'Bold' } },
				{ Foreground = { AnsiColor = 'Fuchsia' } },
				{ Text = 'Enter new workspace name: ' },
			},
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:perform_action(
						act.SwitchToWorkspace {
							name = line,
						},
						pane
					)
				end
			end),
		},
	},
	{
		key = 's',
		mods = 'CTRL|SHIFT',
		action = workspace_switcher.switch_workspace()
	},
	{
		key = '>',
		mods = 'CTRL|SHIFT',
		action = act.SwitchWorkspaceRelative(1)
	},
	{
		key = '<',
		mods = 'CTRL|SHIFT',
		action = act.SwitchWorkspaceRelative(-1)
	},
	{
		key = ',',
		mods = 'CTRL',
		action = act.AdjustPaneSize { 'Left', 5 },
	},
	{
		key = '.',
		mods = 'CTRL',
		action = act.AdjustPaneSize { 'Right', 5 },
	},
}

-- Finally, return the configuration to wezterm:
return config
