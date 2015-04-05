#!/bin/bash
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle && git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s `pwd`/.vimrc ~/.vimrc
#cp -r ~/vimrc/colors ~/.vim
mkdir -p ~/.vim/ftplugin
ln -s `pwd`/ftplugin/c_.vim ~/.vim/ftplugin/c_.vim
ln -s `pwd`/ftplugin/python.vim ~/.vim/ftplugin/python.vim
ln -s `pwd`/.tmux.conf ~/.tmux.conf
#cp -r ~/vimrc/syntax ~/.vim/
#cp ~/vimrc/.screenrc ~/.screenrc
mkdir -p ~/.fonts && cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~
