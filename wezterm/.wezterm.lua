-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-attached', function(domain)
    -- maximize all displayed windows on startup
    local workspace = mux.get_active_workspace()
    for _, window in ipairs(mux.all_windows()) do
        if window:get_workspace() == workspace then
            window:gui_window():maximize()
        end
    end
end)

local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Gruvbox dark, soft (base16)'
config.audible_bell = "Disabled"
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
    'bash',
    'sh',
    'fish',
}

-- Key bindings
config.keys = {
    -- Split panes
    {
        key = "\\", mods = "CTRL", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "-", mods = "CTRL", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },

    -- New tab
    {
        key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },

    -- Vim-style navigation between panes
    {
        key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
        key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
        key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
        key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right"),
    },
}

return config
