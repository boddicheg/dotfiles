#/bin/sh
rm $HOME/.bashrc $HOME/.gitconfig $HOME/.vimrc
ln -s `pwd`/.bashrc $HOME/.bashrc
ln -s `pwd`/.gitconfig $HOME/.gitconfig
ln -s `pwd`/.vimrc $HOME/.vimrc