mkdir -p ~/.config/nvim
ln -s `pwd`/init.lua ~/.config/nvim/init.lua
ln -s `pwd`/lua ~/.config/nvim/lua
ln -s `pwd`/.tmux.conf ~/.tmux.conf
echo "export TERM=screen-256color" >> ~/.bash_profile
echo "set bell-style none" >> ~/.inputrc
