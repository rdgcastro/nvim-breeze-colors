" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-breeze-colors
" License: MIT (https://opensource.org/licenses/MIT)

if has('nvim') && !has('nvim-0.8')
    lua vim.api.nvim_echo({
        \ { "breeze requires Neovim 0.8 or later.\n", "WarningMsg" },
        \ { "Please use the breeze 'legacy' branch if you can't upgrade Neovim.\n", "Normal"} },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='breeze'

" Enable terminal true-color support.
set termguicolors

let g:breezeCursorColor = get(g:, 'breezeCursorColor', v:false)
let g:breezeItalics = get(g:, 'breezeItalics', v:true)
let g:breezeNormalFloat = get(g:, 'breezeNormalFloat', v:false)
let g:breezeTerminalColors = get(g:, 'breezeTerminalColors', v:true)
let g:breezeTransparent = get(g:, 'breezeTransparent', v:false)
let g:breezeUndercurls = get(g:, 'breezeUndercurls', v:true)
let g:breezeUnderlineMatchParen = get(g:, 'breezeUnderlineMatchParen', v:false)
let g:breezeVirtualTextColor =  get(g:, 'breezeVirtualTextColor', v:false)
let g:breezeWinSeparator = get(g:, 'breezeWinSeparator', 1)

if has('nvim')
    lua require("breeze").style()
else
    call breeze#Style()
end

" breeze is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
