" nord_custom.vim - Nord-inspired colorscheme for Vim 9.1
if exists('g:colors_name') && g:colors_name ==# 'nord_custom'
  finish
endif
set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'nord_custom'

" Nord palette
let s:n0  = '#000000'
let s:n1  = '#3B4252'
let s:n2  = '#434C5E'
let s:n3  = '#4C566A'
let s:n4  = '#D8DEE9'
let s:n5  = '#E5E9F0'
let s:n6  = '#ECEFF4'
let s:n7  = '#8FBCBB'
let s:n8  = '#88C0D0'
let s:n9  = '#81A1C1'
let s:n10 = '#5E81AC'
let s:n11 = '#BF616A'
let s:n12 = '#D08770'
let s:n13 = '#EBCB8B'
let s:n14 = '#A3BE8C'
let s:n15 = '#B48EAD'

" Core UI
exe 'highlight Normal     guifg=' . s:n6  . ' guibg=' . s:n0
exe 'highlight CursorLine  guibg=' . s:n1
exe 'highlight Visual      guibg=' . s:n2
exe 'highlight LineNr      guifg=' . s:n3
exe 'highlight StatusLine  guifg=' . s:n6  . ' guibg=' . s:n1

" Syntax
exe 'highlight Comment     guifg=' . s:n3  . ' gui=italic'
exe 'highlight Constant    guifg=' . s:n13
exe 'highlight String      guifg=' . s:n14
exe 'highlight Identifier  guifg=' . s:n8
exe 'highlight Function    guifg=' . s:n8
exe 'highlight Statement   guifg=' . s:n9
exe 'highlight PreProc     guifg=' . s:n12
exe 'highlight Type        guifg=' . s:n10
exe 'highlight Special     guifg=' . s:n7
exe 'highlight Underlined  guifg=' . s:n8  . ' gui=underline'
exe 'highlight Error       guifg=' . s:n11 . ' gui=bold'
exe 'highlight Todo        guifg=' . s:n0  . ' guibg=' . s:n13

" Diff
exe 'highlight DiffAdd    guibg=' . s:n14 . ' guifg=' . s:n0
exe 'highlight DiffChange guibg=' . s:n12 . ' guifg=' . s:n0
exe 'highlight DiffDelete guibg=' . s:n11 . ' guifg=' . s:n0

" Search
exe 'highlight Search      guifg=' . s:n0  . ' guibg=' . s:n9
exe 'highlight IncSearch   guifg=' . s:n0  . ' guibg=' . s:n13

" Popup/folds
exe 'highlight Folded      guifg=' . s:n3  . ' guibg=' . s:n1
exe 'highlight Pmenu       guifg=' . s:n6  . ' guibg=' . s:n1

" End
