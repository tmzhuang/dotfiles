" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Vim addons
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'vim-scripts/Rename2'
Plugin 'MarcWeber/vim-addon-mw-utils'
call vundle#end()
filetype plugin indent on

"MAPPINGS
"change mapleader from \ to ,
"let mapleader=","
"Shortcuts for opening and reloading .vimrc
nnoremap <silent> <leader>a :e $MYVIMRC<CR>
nnoremap <silent> <leader>q :so $MYVIMRC<CR>
nnoremap <silent> <leader>s :e ~/.tmux.conf<CR>
"Play macro q
nnoremap <Space> @q
"Go to folder for snippets in .vim
nnoremap <silent> <leader>ss :e ~/.vim/bundle/vim-snippets/snippets/
"Remaps ; to : so don't have to press shift
"nnoremap ; :
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
"Scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"Buffer navigation
"nmap <silent> <leader>d :bp\|bd #<CR>
"nnoremap <silent> <leader>b :ls<CR>:b 
"noremap <C-j> :bprev<CR> 	"Switch to prev buffer using ^left
"noremap <C-k> :bnext<CR> 	"Switch to next buffer using ^left
"Clear search
nnoremap <silent> <leader>] :nohlsearch<CR>
"Get sudo privilige for current file
cnoremap w!! w !sudo tee % >/dev/null

"VISUALS
"set nowrap
set wrap linebreak nolist
set showcmd 	"shows commands in status bar as you type
set tabstop=2 	"number of spaces that <tab> inserts
set shiftwidth=2 "number of spaces to autoindent
set expandtab "Expand tab to spaves
set backspace=indent,eol,start "allows backspacing over given arguments
set autoindent 	"copy indent when starting new line
set number 		"shows line numbers
set shiftround 	"indent/outdent to nearest tabstops
set history=1000
set undolevels=1000
"" Enable colours and sytax highlighting
set t_Co=256
syntax on
colorscheme inkpot
"Automatically read a file that has changed on disk
set autoread
"Make the command-line completion better
set wildmenu
"Buffers
set hidden 		"Allows switching buffers w/o saving
"SEARCHING
set ignorecase 	"ignores case when performing a search
set smartcase	"overrides ignorecase if search contains uppercase
set smarttab
set hlsearch 	"highlights search
"Set working directory to be always the same as the file you are editing
set autochdir


"ADDONS
"repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
"Opens NERDTree on the right
let NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1
"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set backupdir=./.backup,/tmp
set directory=./.backup,/tmp
set nomodeline

" Scrolling with mouse
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"Git mergetool vertically instead of horizontal
set diffopt+=vertical

"Looks for a tags file in the current directory first and up and up until it finds it
set tags=./tags,tags;

"Show hidden files in CtrlP
let g:ctrlp_show_hidden=1
