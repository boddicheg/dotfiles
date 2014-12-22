dotfiles
========

1) vimrc config - put into ~/ directory
	
	F2 - save(:w)
	F11 - save & exit (:wq!)
	F12 - exit without save (:q!)
	Ctrl+j - UltiSnips Expand Trigger, UltiSnips Jump Forward
	Ctrl+k - UltiSnips Jump Backward Trigger
	F5  - new tab
	F6  - prev tab
	F7  - next tab 
	ctrl+p - use http://kien.github.io/ctrlp.vim/

	snippets:
	ctrl+l - trigger UltiSnips Expand Trigger
	ctrl+j - trigger UltiSnips jump forward trigger
	ctrl+k - trigger UltiSnips jump backward trigger
	
2) "apt.conf" and "preferences"  - Debian packages configurations
3) bashrc - *nix terminal configuration
4) gitconfig - aliases for git


YCM  instllation features:
- install libclang on Debian/Ubuntu - sudo apt-get install libclang-dev

Steps:

	git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
	cd ~/.vim/bundle/YouCompleteMe
	git submodule update --init --recursive
	./install.sh --clang-completer
