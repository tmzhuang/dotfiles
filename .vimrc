" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
" General
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'ervandew/supertab'
Plugin 'danro/rename.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils' "Required by snipmate
Plugin 'tomtom/tlib_vim' "Required by snipmate
Plugin 'honza/vim-snippets' "Required by snipmate
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'tpope/vim-surround' " Surround pairs (quotes, brackets, etc.)
Plugin 'tpope/vim-repeat' " . support for vim-surround
Plugin 'vim-airline/vim-airline' "Status bar
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ton/vim-bufsurf' " Navivation order history
Plugin 'rakr/vim-one' " Colorscheme
" Filetype specific
" Ruby
" =================
Plugin 'kchmck/vim-coffee-script'
Plugin 'alvan/vim-closetag' "Autoclose (X)HTML tags
Plugin 'tpope/vim-endwise' "Ruby auto insert 'end' 
Plugin 'slim-template/vim-slim'
" Python
" =================
Plugin 'lepture/vim-jinja' "jinja2 highlitting
Plugin 'nvie/vim-flake8' " PEP8 linter (use F7)
Plugin 'tmhedberg/SimpylFold' "Python auto docstring folding
Plugin 'Konfekt/FastFold' "Speed up auto folding
Plugin 'vim-python/python-syntax' "f-string syntax for python
Plugin 'digitaltoad/vim-pug'
"Plugin 'tell-k/vim-autopep8'
" Java
" =================
Plugin 'vim-scripts/vim-gradle' "Gradle syntax highlighting
" Misc
" =================
"Plugin 'vim-scripts/indenthtml.vim'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'vim-scripts/csv.vim' " Syntax highliting for csv

call vundle#end()
filetype plugin indent on

"MAPPINGS
"Shortcuts for opening and reloading .vimrc
nnoremap <silent> <leader>a :e $MYVIMRC<CR>
nnoremap <silent> <leader>q :so $MYVIMRC<CR>
nnoremap <silent> <leader>s :e ~/.config/i3/config <CR>
"Play macro q
nnoremap <Space> @q
"Go to folder for snippets in .vim
nnoremap <silent> <leader>ss :e ~/.vim/bundle/vim-snippets/snippets/
"Moves down one displayed line instead of physical line
nnoremap j gj
nnoremap k gk
"Switching windows using CTRL-h,j,k,l
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
"Pastemode
set pastetoggle=<leader>v
"Nerdtreee
nnoremap <silent> <leader>5 :NERDTreeToggle<CR>
"Scrolling 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"Clear search
nnoremap <silent> <leader>] :nohlsearch<CR>
"Get sudo privilige for current file
cnoremap w!! w !sudo tee % >/dev/null
" Scrolling with mouse
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Alt mappings in vim
" http://vim.wikia.com/wiki/Get_Alt_key_to_work_in_terminal
" https://github.com/thestinger/termite/issues/168
nnoremap <leader>i :BufSurfForward<CR>
nnoremap <leader>o :BufSurfBack<CR>

"VISUALS
"set nowrap
set wrap linebreak nolist
set showcmd "shows commands in status bar as you type
set number "shows line numbers
set laststatus=2
set shiftwidth=4
set tabstop=4
set expandtab
set undolevels=1000
set t_Co=256
syntax on "enable colours and sytax highlighting
set background=dark "for the dark version
colorscheme one
"colorscheme inkpot
" FILETYPE SPECIFIC
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
"Load closetag for erb files
autocmd Filetype eruby source /home/tianming/.vim/bundle/vim-closetag/plugin/closetag.vim 

set autoread "Automatically read a file that has changed on disk
set wildmenu "Make the command-line completion better
set hidden "Allows switching buffers w/o saving
"SEARCHING
set ignorecase "ignores case when performing a search
set smartcase "overrides ignorecase if search contains uppercase
set smarttab
set hlsearch "highlights search
set autochdir "Set working directory to be always the same as the file you are editing

"ADDONS
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count) "repeat.vim
"Opens NERDTree on the right
let NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1
"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden=1 "Show hidden files in CtrlP
"python-syntax
let g:python_highlight_all = 1
au FileType python setlocal formatprg=autopep8\ -

set backupdir=./.backup,/tmp
set directory=./.backup,/tmp
set nomodeline

"Git mergetool vertically instead of horizontal
set diffopt+=vertical

"Increment contents of script tags in html files
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

hi Normal ctermbg=none

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja
let NERDTreeIgnore = ['\.pyc$', 'tags']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v(tags)|(\.(exe|so|dll|pyc|ctrlp|python-version))$',
  \ }
let g:ctrlp_root_markers = ['.ctrlp']

" Fastfold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:SimpylFold_docstring_preview = 1
