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

" F11 for exit with save
nmap <F11> :wq!<cr>
vmap <F11> <esc>:wq!<cr>i
imap <F11> <esc>:wq!<cr>i

" F12 for exit without save
nmap <F12> :q!<cr>
vmap <F12> <esc>:q!<cr>i
imap <F12> <esc>:q!<cr>i