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

syntax off

let g:rainbow_active = 1

let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['darkred', 'darkyellow', 'darkcyan', 'darkmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

au VimEnter * RainbowToggle
au VimEnter * RainbowToggleOn


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

let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

nnoremap <silent> <LEADER>h :noh<CR>

"Set visualbell to disable bell when pressing esc in normal mode
set vb


"Autocolapse horizontal split
set winheight=5
set winminheight=5
set winheight=9999

"Config for unite.vim
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file,file/new,buffer,file_rec,line', 'matchers', 'matcher_fuzzy')
nnoremap <C-f> :<C-u>Unite -buffer-name=search -start-insert line<cr>

"Command-T listing
let g:CommandTFileScanner = 'git'
let g:CommandTAlwaysShowDotFiles = 1
