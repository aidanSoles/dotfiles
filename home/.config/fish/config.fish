# start: paths

fish_add_path ~/.local/bin

# end: paths

# start: aliases

source ~/.config/fish/conf.d/aliases.fish

# end: aliases

# start: key bindings

# vim key bindings (with "jj" -> <esc>)
set -g fish_key_bindings fish_vi_key_bindings
bind -M insert -m default jj backward-char force-repaint

# remap <caps-lock> -> <ctrl>
if test -f ~/.Xmodmap
  setxkbmap && xmodmap ~/.Xmodmap > /dev/null 2>&1
end

# end: key bindings
