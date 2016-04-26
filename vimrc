" OS
let os = substitute(system('uname'), "\n", "", "")

" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set nocompatible
set backspace=2

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Include the hot stuff
runtime config/settings.vim
runtime config/plugins.vim
runtime config/functions.vim
runtime config/commands.vim
runtime config/autocmd.vim
runtime config/mappings.vim

" GUI stuff
if has('gui_running')
  runtime config/gui.vim
endif

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif
