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

## Reference

1. https://william-yeh.net/post/2019/04/wsltty-tmux/
2. https://stackoverflow.com/questions/41783367/tmux-tmux-true-color-is-not-working-properly
3. https://medium.com/starbugs/tpm-%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%B7%A5%E5%85%B7-%E8%AE%93%E4%BD%A0%E7%9A%84-tmux-%E6%9B%B4%E5%A5%BD%E7%94%A8-95ecd924c9d
