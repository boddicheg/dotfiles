" No Vi
set nocompatible

set tabstop=4
set shiftwidth=4

set smarttab
set softtabstop=4
set autoindent
set expandtab

set number
set hidden

set mouse=a
set bg=dark
set t_Co=256

" Disable swap
set nobackup
set noswapfile

set encoding=utf-8

set foldcolumn=1
set nu

" Python
let python_highlight_all = 1

autocmd FileType python set omnifunc=pythoncomplete#Complete

" Tab autocomplete
function InsertTabWrapper()
let col = col('.') - 1
if !col || getline('.')[col - 1] !~ '\k'
return "\"
else
return "\<c-p>"
endif
endfunction
imap <c-r> InsertTabWrapper()
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t

" Smart indents
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable Ctrl+C/Ctrl+V
vmap <C-C> "+yi
imap <C-V> "+gPi

" ====================================================================================================================================================
" Added from ru.wikibooks.org/wiki/Vim
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]

" ========== Uncomment for enabling pathogen ==========
" execute pathogen#infect()
" syntax on
" filetype plugin indent on

" Configure bundles for use of Vundle ======
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'wincent/Command-T'
Bundle 'LustyExplorer'
Bundle 'taglist.vim'
Bundle 'tpope/vim-surround'
Bundle 'AutoTag'

filetype plugin indent on " required!
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!) - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" ===========================================