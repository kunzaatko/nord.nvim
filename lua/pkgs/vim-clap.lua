local palette = require 'nord-palette'
local base = require 'base'

-- vim-clap
-- > liuchengxu/vim-clap

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {

    ClapDir {fg = clrs.nord4},
    ClapDisplay {fg = clrs.nord4, bg = clrs.nord1},
    ClapFile {fg = clrs.nord4},
    ClapMatches {fg = clrs.nord8},
    ClapNoMatchesFound {fg = clrs.nord13},
    ClapSelected {fg = clrs.nord7, gui = spec.bold},
    ClapSelectedSign {fg = clrs.nord9},

    -- TODO: What was happening here?
    ClapFuzzyMatches {fg = clrs.nord8, bg = clrs.nord9},

    ClapCurrentSelection {base.PmenuSel},
    ClapCurrentSelectionSign {ClapSelectedSign},
    ClapInput {base.Pmenu},
    ClapPreview {base.Pmenu},
    ClapProviderAbout {ClapDisplay},
    ClapProviderColon {base.Type},
    ClapProviderId {base.Type},
  }
end

return pkg

-- vi:nowrap
