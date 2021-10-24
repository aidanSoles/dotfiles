# if xmodmap config exists, reset key bindings with setxkbmap, and re-initialize xmodmap config
[[ -f ~/.Xmodmap ]] && setxkbmap && xmodmap ~/.Xmodmap > /dev/null 2>&1
