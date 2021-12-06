local lush = require('lush')
local hsl = lush.hsl
local v = vim.g -- this must be done, because lush is executed in a bare environment

M = {}

M.clrs = {
  nord0 = hsl(220, 16, 22), -- #2F3541
  nord1 = hsl(222, 16, 28), -- #3C4353
  nord2 = hsl(220, 17, 32), -- #444D5F
  nord3 = hsl(220, 16, 36), -- #4D576A
  nord3_bright = hsl(220, 17, 46), -- #616F89
  nord4 = hsl(219, 28, 88), -- #D8DEE9
  nord5 = hsl(218, 27, 92), -- #E5E9F0
  nord6 = hsl(218, 27, 94), -- #ECEFF4
  nord7 = hsl(179, 25, 65), -- #8FBCBB
  nord8 = hsl(193, 43, 67), -- #87BFCF
  nord9 = hsl(210, 34, 63), -- #81A1C1
  nord10 = hsl(213, 32, 52), -- #5D81AC
  nord11 = hsl(354, 42, 56), -- #BE6069
  nord12 = hsl(14, 51, 63), -- #D18771
  nord13 = hsl(40, 71, 73), -- #EBCA89
  nord14 = hsl(92, 28, 65), -- #A4BF8D
  nord15 = hsl(311, 20, 63), -- #B48EAD
}

M.nord3_brightened = {
  M.clrs.nord3,
  hsl(221, 17, 37), -- #4E586E
  hsl(219, 17, 38), -- #505C71
  hsl(220, 17, 39), -- #535E74
  hsl(220, 16, 40), -- #566176
  hsl(221, 16, 41), -- #586279
  hsl(221, 16, 42), -- #5A657C
  hsl(220, 17, 43), -- #5B6780
  hsl(221, 17, 44), -- #5D6983
  hsl(219, 17, 45), -- #5F6D86
  hsl(220, 17, 46), -- #616F89
  hsl(219, 17, 47), -- #63728C
  hsl(221, 16, 48), -- #67738E
  hsl(221, 16, 49), -- #697691
  hsl(220, 17, 50), -- #6A7895
  hsl(221, 16, 51), -- #6E7B96
  hsl(220, 17, 52), -- #707E99
  hsl(219, 17, 53), -- #73819C
  hsl(220, 16, 54), -- #77839C
  hsl(219, 16, 55), -- #7A879F
  hsl(219, 17, 56), -- #7C89A2
}

local cfg = {
  nord_bold = v.nord_bold or 1,
  nord_italic = v.nord_italic or 0, -- TODO: Add other conditions
  nord_underline = v.nord_underline or 0,
  nord_italic_comments = v.nord_italic_comments or 0,
  nord_uniform_status_lines = v.nord_uniform_status_lines or 0,
  nord_uniform_diff_background = v.nord_uniform_diff_background or 0,
  nord_cursor_line_number_background = v.nord_cursor_line_number_background or 0,
  nord_bold_vertical_split_line = v.nord_bold_vertical_split_line or 0,
}
M.cfg = cfg

local spec = {
  bold = cfg.nord_bold == 1 and "bold" or "",
  italic = cfg.nord_italic == 1 and "italic" or "",
  underline = cfg.nord_underline == 1 and "underline" or "",
  inverse = "inverse",
  undercurl = "undercurl",
}
spec['italicize_comments'] = cfg.nord_italic_comments == 1 and spec.italic or ""
M.spec = spec

M.gui_combine = function(gui)
  for i = 1, #gui do
    if gui[i] == "" then
      table.remove(gui, i)
    end
  end
  return table.concat(gui, ',')
end

return M
