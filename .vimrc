" No Vi
set nocompatible

syntax on
set cindent
set tabstop=4 shiftwidth=4
set equalprg=astyle

set smarttab
set expandtab
set number
set encoding=utf-8

set mouse=a
set bg=dark
set t_Co=256

set nobackup

" Save F2 - insert mode
imap <F2> <Esc>:w<CR>

" Added from https://git.backbone.ws/configs/home_config/source/d4bd05f2d9748cc562a6f09059f8cdc102755234:.vimrc#L31

function! CppIndent()
	setlocal shiftwidth=4
	setlocal tabstop=4
	setlocal noexpandtab
	set textwidth=119
	set tw=119
	set colorcolumn=120,160
endfunction

au FileType cpp call CppIndent()

" F9 for exit with save
nmap <F9> :wq!<cr>
vmap <F9> <esc>:wq!<cr>i
imap <F9> <esc>:wq!<cr>i

" F12 for exit without save
nmap <F12> :q!<cr>
vmap <F12> <esc>:q!<cr>i
imap <F12> <esc>:q!<cr>i

" Added from ru.wikibooks.org/wiki/Vim
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%

" ================= Vundle ========================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'Lokaltog/vim-powerline' " Turns on vim powerline which activates status line at the bottom
Plugin 'Valloric/YouCompleteMe' " YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim
Plugin 'tomasr/molokai' " TextMate like and Sublime Text like dark colorscheme for vim

call vundle#end()
filetype plugin indent on

"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!) - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" ========= YouCompleteMe options =========
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_enable_diagnostic_signs = 0


let g:snips_trigger_key = '<C-\>'