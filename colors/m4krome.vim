" let g:colors_name = 'm4krome-moonlight'
" set background=dark
" highlight clear
"
" if exists("syntax_on")
"     syntax reset
" endif


lua package.loaded["m4krome"] = nil
lua require("m4krome").colorscheme()
