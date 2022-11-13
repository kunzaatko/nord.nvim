set background=dark
let g:colors_name="nord"

lua package.loaded['nord-nvim'] = nil
lua require("lush")(require("nord-nvim"))
