#!/bin/bash
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle && git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s `pwd`/.vimrc ~/.vimrc
mkdir -p ~/.vim/ftplugin
ln -s `pwd`/ftplugin/c_.vim ~/.vim/ftplugin/c_.vim
ln -s `pwd`/ftplugin/python.vim ~/.vim/ftplugin/python.vim
