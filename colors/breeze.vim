" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-brezze-colors
" License: MIT (https://opensource.org/licenses/MIT)

if has('nvim') && !has('nvim-0.8')
    lua vim.api.nvim_echo({
        \ { "brezze requires Neovim 0.8 or later.\n", "WarningMsg" },
        \ { "Please use the brezze 'legacy' branch if you can't upgrade Neovim.\n", "Normal"} },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='brezze'

" Enable terminal true-color support.
set termguicolors

let g:brezzeCursorColor = get(g:, 'brezzeCursorColor', v:false)
let g:brezzeItalics = get(g:, 'brezzeItalics', v:true)
let g:brezzeNormalFloat = get(g:, 'brezzeNormalFloat', v:false)
let g:brezzeTerminalColors = get(g:, 'brezzeTerminalColors', v:true)
let g:brezzeTransparent = get(g:, 'brezzeTransparent', v:false)
let g:brezzeUndercurls = get(g:, 'brezzeUndercurls', v:true)
let g:brezzeUnderlineMatchParen = get(g:, 'brezzeUnderlineMatchParen', v:false)
let g:brezzeVirtualTextColor =  get(g:, 'brezzeVirtualTextColor', v:false)
let g:brezzeWinSeparator = get(g:, 'brezzeWinSeparator', 1)

if has('nvim')
    lua require("brezze").style()
else
    call brezze#Style()
end

" brezze is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
