# aliases (fish shell)
alias rm=' rm' # Add space so it isn't added to history.
alias rmi=' rm -i' # Add space so it isn't added to history.
alias h='history | grep'
alias e='env | grep'
alias svim='vim -S'
alias xvim='vim -x'
alias c='clear'
alias pzi="bash -c 'echo \"\$(tmux display -pt \"\${TMUX_PANE:?}\" \"#{pane_index}\") - 1\" | bc'"
alias poi="bash -c 'echo \"\$(tmux display -pt \"\${TMUX_PANE:?}\" \"#{pane_index}\")\"'"
