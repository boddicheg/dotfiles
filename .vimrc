" No Vi
set nocompatible

" Current user
let g:current_user = 'boddicheg'
" ======================== Vim ========================
syntax on
set cindent
set shiftwidth=2
set tabstop=2
" Google Codestyle
set colorcolumn=80

set smarttab
set expandtab
set number
set encoding=utf-8

set mouse=a
set t_Co=256
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%

set nobackup
set noswapfile
" Show characters
set list
" ======================== Binds =========================
" Save F2 - insert mode
imap <F2> <Esc>:w<CR>

" F9 for exit with save
nmap <F9> :wq!<cr>
vmap <F9> <esc>:wq!<cr>i
imap <F9> <esc>:wq!<cr>i

" Press ESC two times for exit without save
map <ESC><esc> :qa!<cr>
" ======================== Tabs =========================
:set tabpagemax=99
nmap <F5> :tabnew<cr>
imap <F5> <ESC>:tabnew<cr>
map <F7> :tabnext<cr>
nmap <F7> :tabnext<cr>
imap <F7> :tabnext<cr>
map <F6> :tabprev<cr>
nmap <F6> :tabprev<cr>
imap <F6> :tabprev<cr>

" ======================== Vundle ========================
" :BundleList - list configured bundles
" :BundleInstall(!) - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!) - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

" ================ YouCompleteMe options ================
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" ======================== CTRL-P =======================
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*.o,*.out

" ====================== Molokai =======================
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
