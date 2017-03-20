#/bin/sh
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev				\
					 libgtk2.0-dev libatk1.0-dev libbonoboui2-dev				\
					 libcairo2-dev libx11-dev libxpm-dev libxt-dev				\
					 python-dev python3-dev ruby-dev lua5.1 lua5.1-dev git

sudo apt-get remove vim vim-runtime gvim

git clone https://github.com/vim/vim.git
cd vim

./configure --with-features=huge								\
			--enable-multibyte									\
			--enable-pythoninterp								\
			-with-python-config-dir=/usr/lib/python2.7/config	\
			--enable-luainterp									\
			--enable-gui=gnome3 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim80 -j8
sudo make install

# Install powerline
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install powerline-status

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

