" No Vi
set nocompatible

" Current user
let g:current_user = 'boddicheg'
" ======================== Vim ========================
syntax on
set cindent
set shiftwidth=4
set tabstop=4
" Google Codestyle
set colorcolumn=120

set cursorline

set smarttab
set expandtab
set number
set encoding=utf8

set mouse=a
set t_Co=256
set laststatus=2

set nobackup
set noswapfile
" Show characters
set list listchars=tab:»·,trail:·

" remove trailing whitespaces on save (.cpp)
autocmd BufWritePre  *.{cpp,h}  call StripTrailingWhite()

function! StripTrailingWhite()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction
" ======================== Binds =========================
" Save F2 - insert mode
imap <F2> <Esc>:w<CR>

" F9 for exit with save
nmap <F9> :wq!<cr>
vmap <F9> <esc>:wq!<cr>i
imap <F9> <esc>:wq!<cr>i

" Press ESC two times for exit without save
map <ESC><esc> :qa!<cr>

" move lines
nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

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
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tomasr/molokai'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/a.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
" ====================== Powerline ======================
let g:Powerline_symbols = 'fancy'

" ================ YouCompleteMe options ================
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" ======================== CTRL-P =======================
set wildignore+=*.o,*.out,*.html,*.md5,*.png,*.map,*.js
let g:ctrlp_working_path_mode = 'cra'
let g:ctrlp_cmd='CtrlP :pwd'
" ====================== Molokai =======================
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

