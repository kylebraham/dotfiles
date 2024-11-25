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

config.color_scheme = 'Gruvbox dark, soft (base16)'
config.audible_bell="Disabled"
-- config.window_decorations = "NONE"
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
    'bash',
    'sh',
    'fish'
  }
  
return config