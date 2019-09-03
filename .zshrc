# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="aidan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
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

# vim errywhere
set -o vi

# For brew doctor
[[ ":$PATH:" =~ ":/usr/local/sbin:" ]] || PATH="$PATH:/usr/local/sbin"

# For z
. "/Users/${USER}/Documents/z/z.sh"

# Bible verses
source ~/.bible-verses

# ZSH autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# For Pulumi
[[ ":$PATH:" =~ ":$HOME/.pulumi/bin:" ]] || PATH="$PATH:$HOME/.pulumi/bin"

# For NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh" > /dev/null 2>&1 # python > javascript
npm config delete prefix # I hate node

# For golang
export GOPATH=$HOME/Documents/go

# jqi = jq "in-place"
alias jqi='jqi() { TMP_FILE="$(date +%s%3N)"; cat "$1" | jq '.' > "$TMP_FILE" && cat "$TMP_FILE" > "$1" || rm "$TMP_FILE" }; jqi'

# Mass unset variables matching parameter
alias mass-unset="mass_unset() { unset \$(env | grep \"\$1\" | awk -F '=' '{print \$1}') }; mass_unset"

# Source the rest of my aliases
source ~/.zshenv

# World clock
world_clock () {
    PT=`env TZ=US/Pacific date`
    FR=`env TZ=Europe/Paris date`
    JP=`env TZ=Asia/Tokyo date`
    UT=`env TZ=Etc/GMT date`

    echo "LA·····$PT"
    echo "Paris··$FR"
    echo "Tokyo··$JP"
    echo "UTC····$UT"
}
alias world-clock='world_clock'

# Reverse search in zsh
bindkey '^r' history-incremental-search-backward

# Forward search in zsh
bindkey '^R' history-incremental-pattern-search-backward
