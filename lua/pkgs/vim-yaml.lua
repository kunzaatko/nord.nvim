---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- YAML
-- > stephpy/vim-yaml

local clrs = palette.clrs
local pkg = function()
  return {yamlKey {fg = clrs.nord7}}
end

return pkg

-- vi:nowrap
