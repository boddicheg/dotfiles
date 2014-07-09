" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

set hidden

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup	" do not keep a backup file, use versions instead
else
  set backup	" keep a backup file
endif
set history=50	" keep 50 lines of command line history
set ruler	" show the cursor position all the time
set showcmd	" display incomplete commands
set incsearch	" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

" Enable file type detection. Use the default filetype settings, so that
" mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

" For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent	" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
\ | wincmd p | diffthis
endif


" Added by Daniel Abramov

set tabstop=4
set shiftwidth=4
set expandtab
set number

set mouse=a
set bg=dark
set t_Co=256

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