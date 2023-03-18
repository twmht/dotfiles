#!/bin/bash
# for vim
# mkdir -p ~/.vim
# mkdir -p ~/.vim/bundle && git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# ln -s `pwd`/.vimrc ~/.vimrc
# for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim
ln -s `pwd`/init.vim ~/.config/nvim/init.vim
ln -s `pwd`/.tmux.conf ~/.tmux.conf
