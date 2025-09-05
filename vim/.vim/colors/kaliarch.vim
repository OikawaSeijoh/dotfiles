" Name: KaliArch
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kaliarch"

" Base colors
hi Normal       guifg=#bbbbbb guibg=NONE       ctermfg=white ctermbg=NONE
hi NonText      guibg=NONE
hi CursorLineNr guifg=#eeeeee guibg=NONE
hi LineNr       guifg=#444444 guibg=NONE
hi VertSplit    guifg=#444444 guibg=NONE

" Syntax highlighting
hi Comment      guifg=#5f87d7 ctermfg=67       " Soft blue
hi Statement    guifg=#d4af37 ctermfg=220      " Gold (if, for, return)
hi Type         guifg=#87ff5f ctermfg=118      " Neon green (int, str, float, etc)
hi Identifier   guifg=#5fd7ff ctermfg=81       " Function / variable names (cyan blue)
hi Function     guifg=#5fd7ff ctermfg=81
hi Constant     guifg=#ff005f ctermfg=197      " Arch red (True, False, NULL, etc)
hi PreProc      guifg=#ffafaf ctermfg=210      " Preprocessor (include, import)
hi Number       guifg=#87ff5f ctermfg=118      " Numbers: greenish
hi String       guifg=#a8ff60 ctermfg=120      " Strings: pale green
hi Special      guifg=#ff87ff ctermfg=213      " Symbols and specials: magenta
hi Todo         guifg=#ff0000 guibg=NONE       ctermfg=196   ctermbg=NONE

" UI elements
hi StatusLine   guifg=#bbbbbb guibg=#202020
hi StatusLineNC guifg=#666666 guibg=#1c1c1c
hi Visual       guibg=#444444
hi Pmenu        guifg=#ffffff guibg=#1c1c1c
hi PmenuSel     guifg=#000000 guibg=#87ff5f

