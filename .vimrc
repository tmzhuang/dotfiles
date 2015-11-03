" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Vim addons
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'vim-scripts/AutoTag'
Plugin 'vim-scripts/vim-addon-mw-utils'
call vundle#end()
filetype plugin indent on

" Enable colours
set t_Co=256

"Optimize for fast terminal connections
set ttyfast

colorscheme inkpot
syntax on

"Set working directory to be always the same as the file you are editing
set autochdir

"MAPPINGS
"change mapleader from \ to ,
let mapleader=","

"Shortcuts for opening and reloading .vimrc
nnoremap <silent> <leader>a :e $MYVIMRC<CR>
nnoremap <silent> <leader>q :so $MYVIMRC<CR>

"Go to folder for snippets in .vim
nnoremap <silent> <leader>ss :e ~/.vim/bundle/vim-snippets/snippets/

"Remaps ; to : so don't have to press shift
nnoremap ; :

"Moves down one displayed line instead of physical line
nnoremap j gj
nnoremap k gk

"Switching windows using CTRL-h,j,k,l
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k

set pastetoggle=<leader>v

nnoremap <silent> <leader>5 :NERDTreeToggle<CR>
nmap <silent> <leader>d :bp\|bd #<CR>
"Buffer navigation
nnoremap <silent> <leader>b :ls<CR>:b 
noremap <C-j> :bprev<CR> 	"Switch to prev buffer using ^left
noremap <C-k> :bnext<CR> 	"Switch to next buffer using ^left

"Clear search
nnoremap <silent> <leader>/ :nohlsearch<CR>

"Get sudo privilige for current file
cnoremap w!! w !sudo tee % >/dev/null

"VISUALS
"set nowrap
set wrap linebreak nolist
set showcmd 	"shows commands in status bar as you type
set tabstop=4 	"number of spaces that <tab> inserts
set shiftwidth=4 "number of spaces to autoindent
set backspace=indent,eol,start "allows backspacing over given arguments
set autoindent 	"copy indent when starting new line
set number 		"shows line numbers
set shiftround 	"indent/outdent to nearest tabstops
set history=1000
set undolevels=1000

"Automatically read a file that has changed on disk
set autoread

"Make the command-line completion better
set wildmenu

"Buffers
set hidden 		"Allows switching buffers w/o saving

"Status line
"set stl=[%{winnr()}] "Show window number
"set stl+=%F "Show file name
set laststatus=1 "Always show status bar

"PARENTHESES
set noshowmatch 	"do not jump to matching brace as it is inserted

"SEARCHING
set ignorecase 	"ignores case when performing a search
set smartcase	"overrides ignorecase if search contains uppercase
set fileignorecase
set smarttab
set hlsearch 	"highlights search
"set incsearch "incremental search

"repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"Opens NERDTree on the right
let NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1

