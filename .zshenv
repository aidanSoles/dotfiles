# My aliases
alias rm=' rm' # Add space so it isn't added to history.
alias rmi=' rm -i' # Add space so it isn't added to history.
alias h='history | grep'
alias e='env | grep'
alias svim='vim -S'
alias xvim='vim -x'
alias cpwd='pwd | pbcopy'
alias ppwd='cd "$(pbpaste)"'
alias c='clear'
alias yamlfmt="python -c 'import yaml, sys; yaml.dump(yaml.load(sys.stdin), sys.stdout)'"
