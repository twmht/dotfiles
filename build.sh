#!/bin/bash
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle && git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/vimrc/.vimrc ~/.vimrc
mkdir -p ~/.vim_plugin
ln -s ~/vimrc/.vim_plugin/FuzzyFinder.vim ~/.vim_plugin/FuzzyFinder.vim
ln -s ~/vimrc/.vim_plugin/neocomplcache.vim ~/.vim_plugin/neocomplcache.vim
ln -s ~/vimrc/.vim_plugin/dbext.vim ~/.vim_plugin/dbext.vim
ln -s ~/vimrc/.vim_plugin/tabline.vim ~/.vim_plugin/tabline.vim
cp -r ~/vimrc/colors ~/.vim
mkdir -p ~/.vim/ftplugin
ln -s ~/vimrc/ftplugin/c_.vim ~/.vim/ftplugin/c_.vim
ln -s ~/vimrc/ftplugin/python.vim ~/.vim/ftplugin/python.vim
cp -r ~/vimrc/tags ~/.vim/
cp -r ~/vimrc/syntax ~/.vim/
cp ~/vimrc/.screenrc ~/.screenrc
mkdir -p ~/.fonts && cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~
