dotfiles
========

###.vimrc
Config for vim
Steps:

1. Pull repo
2. Create symlink: ln -s workspace/dotfiles/.vimrc ~/.vimrc
3. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
4. vim +PluginInstall +qall
5. Install YCM
	* apt-get install libclang-dev  # clang support
	* git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
	* cd ~/.vim/bundle/YouCompleteMe
	* git submodule update --init --recursive
	* ./install.sh --clang-completer

####Binds
	F2 - save(:w)
	F5  - new tab
	F6  - prev tab
	F7  - next tab
	F11 - save & exit (:wq!)
	ESC - exit without save (:q!)
	Ctrl + P - use [ctrlp.vim](http://kien.github.io/ctrlp.vim/)

###Debian
	"apt.conf" and "preferences"  - Debian packages configurations

###Terminal
	.bashrc - *nix terminal configuration
	.gitconfig - aliases for git
