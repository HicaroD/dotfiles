local wezterm = require 'wezterm'

local config = {}
local dimmer = { brightness = 0.5 }

config.color_scheme = 'Gruvbox Dark (Gogh)'
config.font = wezterm.font('Fantasque Sans Mono')
config.font_size = 13.8

config.default_cursor_style = 'SteadyBar'

config.background = {
  {
    source = {
      File = "/home/hicaro/Documentos/enderman.jpg",
    },
    hsb = dimmer
  }
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

return config
