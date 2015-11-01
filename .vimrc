" Instructions for setting up with Vundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" :BundleInstall

set nocompatible "VI is old =(

" Vundle
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
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/vim-addon-mw-utils'
"Plugin 'vim-scripts/TabBar'
"Plugin 'fholgado/minibufexpl.vim'
call vundle#end()
filetype plugin indent on

" MINTTY SPECIFIC
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"Optimize for fast terminal connections
set ttyfast

"Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
"COLORSCHEME/SYNTAX
filetype plugin indent on
"set foldmethod=indent
autocmd FileType java :set fmr=/**,*/ fdm=marker fdc=1
"set t_Co=256
"colorscheme desert
colorscheme inkpot
"colorscheme xoria256
"colorscheme vividchalk
"colorscheme wombat
"colorscheme wombat256
"colorscheme wombat256mod
"colorscheme distinguished
syntax on

"Set working directory to be always the same as the file you are editing
set autochdir
"Alternate to autochdir
"autocmd BufEnter * silent! lcd %:p:h

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
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"Autorestore session if vim called without argument
"function! RestoreSession()
"if argc() == 0 "vim called without arguments
"execute 'source ~/.vim/Session.vim'
"end
"endfunction
"autocmd VimEnter * call RestoreSession()

set pastetoggle=<leader>v

"nnoremap <silent> <leader>e :mksession! ~/.vim/ses/
"nnoremap <silent> <leader>r :source ~/.vim/ses/
"nnoremap <silent> <leader>3 :TlistUpdate<cr>
"nnoremap <silent> <leader>4 :TlistToggle<cr>
nnoremap <F5> "=strftime("%c")<CR>P
nnoremap <silent> <leader>5 :NERDTreeToggle<CR>
nmap <silent> <leader>d :bp\|bd #<CR>
"Buffer navigation
"nnoremap <silent> <leader>b :ls<CR>:b 
"noremap <C-j> :bprev<CR> 	"Switch to prev buffer using ^left
"noremap <C-k> :bnext<CR> 	"Switch to next buffer using ^left

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
"set copyindent "copy whatever characters where used on previous line
set number 		"shows line numbers
set shiftround 	"indent/outdent to nearest tabstops
set history=1000
set undolevels=1000
"set title 		"set title fo file name
"set visualbell
"set noerrorbells

"Add the unnamed register to the clipboard
"set clipboard+=unnamed

"Automatically read a file that has changed on disk
set autoread

"Make the command-line completion better
set wildmenu

"Buffers
set hidden 		"Allows switching buffers w/o saving

"Status line
set stl=[%{winnr()}] "Show window number
set stl+=%F "Show file name
set laststatus=0 "Always show status bar

"set list "how whitespace and tabs
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

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

"Taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 60
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
"let Tlist_Display_Prototype = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"Opens NERDTree on the right
let NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1
