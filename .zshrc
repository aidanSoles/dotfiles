# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/aiden/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Ignore commands that start with a space (for rm commands mainly)
setopt HIST_IGNORE_SPACE

# My aliases
# TODO: Need to set the path instead of hardcoding them
alias rm=' rm' # Add space so it isn't added to history.
alias rmi=' rm -i' # Add space so it isn't added to history.
alias upgrayedd='~/prog-files/terminal/upgrayedd.sh'
alias cask-upgrade='~/prog-files/terminal/cask-upgrade'
alias h='history | grep '
alias svim='vim -S '
alias new-todo='~/prog-files/terminal/new-todo'

# My source files
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# For node.js
# export PATH="/usr/local/opt/icu4c/bin:$PATH" # Results in duplicates.
[[ ":$PATH:" =~ ":/usr/local/opt/icu4c/bin:" ]] || PATH="$PATH:/usr/local/opt/icu4c/bin"
# export PATH="/usr/local/opt/icu4c/sbin:$PATH" # Results in duplicates.
[[ ":$PATH:" =~ ":/usr/local/opt/icu4c/sbin:" ]] || PATH="$PATH:/usr/local/opt/icu4c/sbin"
# For compilers to find this software you may need to set:
#     LDFLAGS:  -L/usr/local/opt/icu4c/lib
#     CPPFLAGS: -I/usr/local/opt/icu4c/include
# For pkg-config to find this software you may need to set:
#     PKG_CONFIG_PATH: /usr/local/opt/icu4c/lib/pkgconfig

# For nvm
export NVM_DIR="$HOME/.nvm" # [[ ":$PATH:" =~ ":/new-directory:" ]] || PATH="/new-directory:$PATH" # Results in duplicates.
. "/usr/local/opt/nvm/nvm.sh"
# You can set $NVM_DIR to any location, but leaving it unchanged from
# /usr/local/opt/nvm will destroy any nvm-installed Node installations
# upon upgrade/reinstall.
# Type `nvm help` for further information.

# For brew doctor
[[ ":$PATH:" =~ ":/usr/local/sbin:" ]] || PATH="$PATH:/usr/local/sbin"

# For z
. /usr/local/etc/profile.d/z.sh

# CLI vim commands
set -o vi
stty erase ^?

# Bible verses
alias matthew6:33-34='echo "But seek first the kingdom of God and his righteousness, and all these things will be added to you. Therefore do not be anxious about tomorrow, for tomorrow will be anxious for itself. Sufficient for the day is its own trouble."'
alias 1peter2:9='echo "But you are a chosen race, a royal priesthood, a holy nation, a people for his own possession, that you may proclaim the excellencies of him who called you out of darkness into his marvelous light."'
alias revelation12:11='echo "And they have conquered him by the blood of the Lamb and by the word of their testimony, for they loved not their lives even unto death."'
