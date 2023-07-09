local wezterm = require 'wezterm'

local config = {}

config.color_scheme = 'Vs Code Dark+ (Gogh)'
config.font = wezterm.font('Fantasque Sans Mono')
config.font_size = 12

local dimmer = { brightness = 0.1 }

config.background = {
  {
    source = {
      File = "/home/hicaro/Documentos/gargantua.jpg",
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


return config
