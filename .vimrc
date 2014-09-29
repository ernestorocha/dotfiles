set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

call pathogen#infect()

"Session
let g:session_autosave = 'yes'
let g:session_autoload = 'no'
let g:session_default_to_last = 'no' 

set number

"File edited elsewhere automatically reloaded
set autoread

"Identation fix whan pasting
"set paste

"Line number and column
set ruler

"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

"Enable rainbow
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
  Don't do anything
else
  let g:yankring_history_dir = '~/.vim/temp_dirs/'
endif
