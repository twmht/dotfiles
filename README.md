dotfiles
======== 

# Install

```
git clone https://github.com/twmht/dotfiles.git && cd dotfiles && ./build.sh
```

Enjoy!

## TroubleShoot

Use wsltty in windows to provide the correct color, otherwise the colorscheme in neovim won't get work properly

Most of the trobules come from the terminal application and tmux

* Checking 256 color is enabled by `:checkheath`, and see if tmux shows any errors or warnings

* Echo the following code to see if it's shown in the orange color and black background

```
echo -e "\x1b[38;2;255;100;0mTRUECOLOR\x1b[0m"
```

* Use `tmux -2` to enable 256 colors when opening a new tmux session
