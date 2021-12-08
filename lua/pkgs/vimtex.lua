---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    texDelim {fg = clrs.nord15.da(10)},
    texCmdItem {fg = clrs.nord11},
    texCmdPart {texCmdItem},
    texCmdEnv {fg = clrs.nord12},
    texCmd {fg = clrs.nord10},

    texStyleItal {fg = clrs.nord8, gui = spec.italic},
    texStyleBold {fg = clrs.nord8, gui = spec.italic},

    texEnvArgName {fg = clrs.nord13, gui = spec.bold},
    texEnvOpt {fg = clrs.nord7},
    texPartArgTitle {fg = base.String.fg, gui = spec.bold .. ',' .. spec.italic},
    -- FIX: Why doesn't this work? <08-12-21, kunzaatko> --
    texArg {fg = clrs.nord7},
    texTitleArg {
      fg = texPartArgTitle.fg,
      gui = spec.bold .. ',' .. spec.italic .. ',' .. spec.underline,
    },
    texRefArg {fg = texPartArgTitle.fg, gui = spec.italic},
    texFilesOpt {texEnvOpt},

    texMathSuperSub {fg = clrs.nord11},
    texCmdGreek {fg = clrs.nord13, gui = spec.italic .. ',' .. spec.bold},
    texMathSymbol {fg = clrs.nord13},
    texSIArgNumU {base.String},
    texMathZoneW {fg = clrs.nord9},
    texMathDelim {fg = clrs.nord11.da(20), gui = spec.bold},
    texMathZoneXX {fg = clrs.nord12},
    texMathOper {fg = clrs.nord11.da(10), gui = spec.bold},
    texMathSub {texMathSuperSub},
    texMathSuper {texMathSuperSub},

    texGroup {fg = clrs.nord7},
    texTheoremEnvOpt {texPartArgTitle},
  }
end

return pkg

-- vi:nowrap
