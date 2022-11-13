---@diagnostic disable: undefined-global
local lush = require 'lush'
local v = vim.g -- this must be done, because lush is executed in a bare environment
local palette = require 'nord-palette'

local spec = palette.spec
local cfg = palette.cfg
local clrs = palette.clrs

-- Neovim Terminal Colors --
v.terminal_color_0 = clrs.nord1.hex
v.terminal_color_1 = clrs.nord11.hex
v.terminal_color_2 = clrs.nord14.hex
v.terminal_color_3 = clrs.nord13.hex
v.terminal_color_4 = clrs.nord9.hex
v.terminal_color_5 = clrs.nord15.hex
v.terminal_color_6 = clrs.nord8.hex
v.terminal_color_7 = clrs.nord5.hex
v.terminal_color_8 = clrs.nord3.hex
v.terminal_color_9 = clrs.nord11.hex
v.terminal_color_10 = clrs.nord14.hex
v.terminal_color_11 = clrs.nord13.hex
v.terminal_color_12 = clrs.nord9.hex
v.terminal_color_13 = clrs.nord15.hex
v.terminal_color_14 = clrs.nord7.hex
v.terminal_color_15 = clrs.nord6.hex

-- BaseSpec {{{
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- +---------------+
    -- + UI Components +
    -- +---------------+
    -- +-- Attributes --+
    Bold { gui = spec.bold },
    Italic { gui = spec.italic },
    Underline { gui = spec.underline },

    -- +-- Editor --+
    ColorColumn { bg = clrs.nord1 },
    Cursor { fg = clrs.nord0, bg = clrs.nord4 },
    CursorLine { bg = clrs.nord1 },
    Error { fg = clrs.nord4, bg = clrs.nord11 },
    iCursor { fg = clrs.nord0, bg = clrs.nord4 },
    LineNr { fg = clrs.nord3 },
    MatchParen { fg = clrs.nord8, bg = clrs.nord3 },
    NonText { fg = clrs.nord2 },
    Normal { fg = clrs.nord4, bg = clrs.nord0 },
    NormalFloat { bg = Normal.bg.da(20) },
    FloatBorder { fg = clrs.nord3_bright, bg = Normal.bg.da(10) },
    Pmenu { NormalFloat },
    PmenuSbar { fg = clrs.nord2, bg = clrs.nord4 },
    PmenuSel { fg = clrs.nord8, bg = clrs.nord3 },
    -- PmenuSel {fg = clrs.nord3, bg =clrs.nord8},
    PmenuThumb { fg = clrs.nord8, bg = clrs.nord3 },
    SpecialKey { fg = clrs.nord3 },
    SpellBad {
      -- fg = clrs.nord11.de(50).da(20),
      -- bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord11.de(50).da(20),
      guifg = 'NONE',
      guibg = 'NONE',
    },
    SpellCap {
      -- fg = clrs.nord13,
      -- bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord13,
      guifg = 'NONE',
      guibg = 'NONE',
    },
    SpellLocal {
      -- fg = clrs.nord5,
      -- bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord5,
      guifg = 'NONE',
      guibg = 'NONE',
    },
    SpellRare {
      -- fg = clrs.nord6,
      -- bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord6,
      guifg = 'NONE',
      guibg = 'NONE',
    },
    Visual { bg = clrs.nord2 },
    VisualNOS { bg = clrs.nord2 },

    -- +-- Gutter --+
    CursorColumn { bg = clrs.nord1 },
    CursorLineNr {
      fg = clrs.nord4.da(10),
      bg = cfg.nord_cursor_line_number_background == 1 and nil or clrs.nord1,
    },
    Folded { fg = clrs.nord3.li(7), bg = clrs.nord1, gui = spec.bold },
    FoldColumn { fg = clrs.nord14.de(50).da(30), bg = clrs.nord0 },
    SignColumn { fg = clrs.nord1.li(2), bg = clrs.nord0 },

    -- +-- Navigation --+
    Directory { fg = clrs.nord8 },

    -- +--- Prompt/Status ---+
    EndOfBuffer { fg = clrs.nord1 },
    ErrorMsg { fg = clrs.nord4.da(10), bg = clrs.nord11.da(20).de(15) },
    ModeMsg { fg = clrs.nord4 },
    MoreMsg { fg = clrs.nord8 },
    Question { fg = clrs.nord4 },
    StatusLine { bg = clrs.nord0.da(50), gui = 'NONE' },
    StatusLineNC {
      fg = clrs.nord4,
      bg = cfg.nord_uniform_status_lines == 0 and clrs.nord1 or crls.nord3,
      gui = 'NONE',
    },
    StatusLineTerm { fg = clrs.nord8, bg = clrs.nord3, gui = 'NONE' },
    StatusLineTermNC {
      fg = clrs.nord4,
      bg = cfg.nord_uniform_status_lines == 0 and clrs.nord1 or crls.nord3,
      gui = 'NONE',
    },
    WarningMsg { fg = clrs.nord0, bg = clrs.nord13.da(20).de(15) },
    WildMenu { fg = clrs.nord8, bg = clrs.nord1 },

    -- +--- Search ---+
    IncSearch { fg = clrs.nord6, bg = clrs.nord10, gui = spec.underline },
    Search { fg = clrs.nord1, bg = clrs.nord8, gui = 'NONE' },

    -- +--- Tabs ---+
    TabLine { fg = clrs.nord4, bg = clrs.nord1, gui = 'NONE' },
    TabLineFill { fg = clrs.nord4, bg = clrs.nord1, gui = 'NONE' },
    TabLineSel { fg = clrs.nord8, bg = clrs.nord3, gui = 'NONE' },

    -- +--- Window ---+
    Title { fg = clrs.nord4, gui = 'NONE' },

    VertSplit {
      fg = clrs.nord2,
      bg = cfg.nord_bold_vertical_split_line == 0 and clrs.nord0 or clrs.nord1,
      gui = 'NONE',
    },

    -- +----------------------+
    -- + Language Base Groups +
    -- +----------------------+
    Boolean { fg = clrs.nord9 },
    Character { fg = clrs.nord14 },
    Comment { fg = clrs.nord3_bright.sa(10), gui = spec.italicize_comments },
    Conditional { fg = clrs.nord9 },
    Constant { fg = clrs.nord4 },
    Define { fg = clrs.nord9 },
    Delimiter { fg = clrs.nord13.da(20) },
    Exception { fg = clrs.nord9 },
    Float { fg = clrs.nord15 },
    Function { fg = clrs.nord8 },
    Identifier { fg = clrs.nord4, gui = 'NONE' },
    Include { fg = clrs.nord9 },
    Keyword { fg = clrs.nord9 },
    Label { fg = clrs.nord9 },
    Number { fg = clrs.nord15 },
    Operator { fg = clrs.nord9, gui = 'NONE' },
    PreProc { fg = clrs.nord9, gui = 'NONE' },
    Repeat { fg = clrs.nord9 },
    Special { fg = clrs.nord4 },
    SpecialChar { fg = clrs.nord13 },
    SpecialComment { fg = clrs.nord8, gui = spec.italicize_comments },
    Statement { fg = clrs.nord9 },
    StorageClass { fg = clrs.nord9 },
    String { fg = clrs.nord14, gui = spec.italic },
    Structure { fg = clrs.nord9 },
    Tag { fg = clrs.nord4 },
    Todo { fg = clrs.nord13, bg = nil },
    Type { fg = clrs.nord9, gui = 'NONE' },
    Typedef { fg = clrs.nord9 },
    Macro { Define },
    PreCondit { PreProc },
    Conceal { bg = Normal.bg, fg = Normal.fg.ro(10) },

    -- +-----------+
    -- + Languages +
    -- +-----------+

    DiffAdd {
      fg = clrs.nord14,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffChange {
      fg = clrs.nord13,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffDelete {
      fg = clrs.nord11,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffText {
      fg = clrs.nord9,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },

    DiagnosticWarn { fg = clrs.nord13 },
    DiagnosticError { fg = clrs.nord11 },
    DiagnosticInfo { fg = clrs.nord8 },
    DiagnosticHint { fg = clrs.nord10 },

    DiagnosticVirtualTextWarn { fg = DiagnosticWarn.fg.da(20), gui = spec.italic },
    DiagnosticVirtualTextError {
      fg = DiagnosticError.fg.de(20).li(10),
      gui = spec.italic,
    },
    DiagnosticVirtualTextInfo {
      fg = DiagnosticInfo.fg.de(20).da(10),
      gui = spec.italic,
    },
    DiagnosticVirtualTextHint {
      fg = DiagnosticHint.fg.de(20).li(10),
      gui = spec.italic,
    },

    sym '@keyword.function' { fg = clrs.nord12 },
    sym '@keyword.return' { fg = clrs.nord10.sa(10), gui = spec.bold },
    sym '@keyword' { fg = clrs.nord9 },
    sym '@field' { fg = clrs.nord7 },
    sym '@function.builtin' { fg = clrs.nord13 },
    sym '@punctuation.bracket' { fg = clrs.nord15.da(10) },
    sym '@constructor' { fg = clrs.nord15.da(10) },
    sym '@puctuation.delimiter' { fg = clrs.nord13 },
    sym '@operator' { fg = clrs.nord13.da(10) },
    sym '@variable' { fg = clrs.nord11 },
    sym '@function' { fg = clrs.nord8 },
    sym '@property' { fg = clrs.nord8 },
    sym '@boolean' { fg = Boolean.fg, gui = spec.italic },
    sym '@number' { fg = Boolean.fg, gui = spec.italic },
    sym '@constant' { fg = clrs.nord8, gui = spec.bold },
    sym '@symbol' { fg = clrs.nord8, gui = spec.italic },
  }
end) -- }}}

return theme
