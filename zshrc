# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="diz"

export EDITOR="vim"
bindkey -v

setopt AUTO_CD

export TZ=America/Chicago
export LC_TIME="en_US"

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward 

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(dircycle encode64 git git-flow github npm pip redis-cli ruby rvm screen virtualenvwrapper)

# make a .secrets file to hold private info (like github or ec2 creds)
source ~/Dropbox/.secrets
source $ZSH/oh-my-zsh.sh
alias zr="source $ZSH/oh-my-zsh.sh"

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
