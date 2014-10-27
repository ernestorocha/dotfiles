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

"Set only visible colors on dark background
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
"Enable rainbow parantheses
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

"Enable :lnext :lprev for syntastic
let g:syntastic_always_populate_loc_list = 1

"Split diffs vertically
set diffopt+=vertical

"Disabling auto comment to all files
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
