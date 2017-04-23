
if has('vim_starting')
  set nocompatible               " Be iMproved
endif

" -------------------------------------------
" Vundle settings
" -------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'

call vundle#end()            " required
filetype plugin indent on    " required


" -------------------------------------------
" Basic setup
" -------------------------------------------
"colorscheme monokai

set encoding=utf-8 nobomb
set binary
set ttyfast           
set wildmenu          " improved 
set clipboard=unnamed " get paste data from clipboard
set hidden
set history=1000      " increase history length
set undolevels=1000   " increade undo length
set t_Co=256
set noswapfile        " don't make swap file
set nobackup          " don't make backup file
set showcmd           " show last command runned
set mouse=a           " allow mouse
"set lazyredraw
set showmode

" -------------------------------------------
" Apperance settigns
" -------------------------------------------
syntax enable
set background=dark
set showmatch         " highlight matching [{()}]
set number            " show line numbers
set title             " show filename in window title
set laststatus=2
set cursorline        " show current line highlight

" -------------------------------------------
" Editor settings
" -------------------------------------------
highlight LineNr ctermfg=darkgray guifg=#050505

"set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

set ruler             " show ruler
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=black
set colorcolumn=80
highlight StatusLine ctermbg=black ctermfg=white guibg=#050505

" -------------------------------------------
" Search settings
" -------------------------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase
set smartcase


" -------------------------------------------
" Plugins settings
" -------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let mapleader=','
