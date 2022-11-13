---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- telescope.nvim
-- > nvim-telescope/telescope.nvim

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    -- Sets the highlight for selected items within the picker.
    TelescopeSelection { base.Visual },
    TelescopeSelectionCaret { TelescopeSelection },
    TelescopeMultiSelection { base.Type },
    TelescopeMultiIcon { base.Identifier },

    -- "Normal" in the floating windows created by telescope.
    TelescopeNormal { base.Normal },
    TelescopePreviewNormal { TelescopeNormal },
    TelescopePromptNormal { TelescopeNormal },
    TelescopeResultsNormal { TelescopeNormal },

    -- Border highlight groups.
    --   Use TelescopeBorder to override the default.
    --   Otherwise set them specifically
    TelescopeBorder { bg = base.Normal.bg, fg = clrs.nord12.de(20).li(20) },
    -- TelescopePromptBorder { TelescopeBorder },
    -- TelescopeResultsBorder { TelescopeBorder },
    -- TelescopePreviewBorder { TelescopeBorder },

    -- Title highlight groups.
    --   Use TelescopeTitle to override the default.
    --   Otherwise set them specifically
    TelescopeTitle { bg = TelescopeBorder.bg, fg = base.FloatBorder.fg },
    TelescopePromptTitle { bg = TelescopeBorder.bg, fg = clrs.nord11, gui = spec.bold },
    TelescopeResultsTitle { TelescopeTitle },
    TelescopePreviewTitle { TelescopeTitle },

    TelescopePromptCounter { bg = base.Normal.bg, fg = clrs.nord13 },

    -- Used for highlighting characters that you match.
    TelescopeMatching { fg = clrs.nord10, bg = 'NONE', gui = spec.bold },

    -- Used for the prompt prefix
    TelescopePromptPrefix { TelescopePromptCounter },

    -- Used for highlighting the matched line inside Previewer. Works only for (vim_buffer_ previewer)
    -- TelescopePreviewLine { Visual },
    -- TelescopePreviewMatch { Search },
    --
    -- TelescopePreviewPipe { Constant },
    -- TelescopePreviewCharDev { Constant },
    -- TelescopePreviewDirectory { Directory },
    -- TelescopePreviewBlock { Constant },
    -- TelescopePreviewLink { Special },
    -- TelescopePreviewSocket { Statement },
    -- TelescopePreviewRead { Constant },
    -- TelescopePreviewWrite { Statement },
    -- TelescopePreviewExecute { String },
    -- TelescopePreviewHyphen { NonText },
    -- TelescopePreviewSticky { Keyword },
    -- TelescopePreviewSize { String },
    -- TelescopePreviewUser { Constant },
    -- TelescopePreviewGroup { Constant },
    -- TelescopePreviewDate { Directory },
    -- TelescopePreviewMessage { TelescopePreviewNormal },
    -- TelescopePreviewMessageFillchar { TelescopePreviewMessage },

    -- Used for Picker specific Results highlighting
    -- TelescopeResultsClass { Function },
    -- TelescopeResultsConstant { Constant },
    -- TelescopeResultsField { Function },
    -- TelescopeResultsFunction { Function },
    -- TelescopeResultsMethod { Method },
    -- TelescopeResultsOperator { Operator },
    -- TelescopeResultsStruct { Struct },
    -- TelescopeResultsVariable { SpecialChar },
    --
    -- TelescopeResultsLineNr { LineNr },
    -- TelescopeResultsIdentifier { Identifier },
    -- TelescopeResultsNumber { Number },
    -- TelescopeResultsComment { Comment },
    -- TelescopeResultsSpecialComment { SpecialComment },
    -- TelescopeResultsFileIcon { Normal },

    -- Used for git status Results highlighting
    -- TelescopeResultsDiffChange { DiffChange },
    -- TelescopeResultsDiffAdd { DiffAdd },
    -- TelescopeResultsDiffDelete { DiffDelete },
    -- TelescopeResultsDiffUntracked { NonText },
  }
end

return pkg

-- vi:nowrap
