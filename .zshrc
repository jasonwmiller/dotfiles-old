# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="diz"

# Aliases:
alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"


# Options:
export UPDATE_ZSH_DAYS=5
# disable command autocorrection
DISABLE_CORRECTION="true"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

# disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(sudo go golang git docker ansible textmate osx aws systemadmin brew brew-cask python pip zsh_reload)

# Base16 Shell
BASE16_SCHEME="monokai"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL
DEFAULT_USER="jwm"

# Includes:
source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh
source /usr/local/bin/virtualenvwrapper.sh

# Exports:
export EDITOR="atom -nw"
export PROJECT_HOME=~/projects/py
export WORKON_HOME=~/Envs
# Paths
export PATH=$PATH:/Users/$USER/bin:/usr/local/bin:/usr/bin:/bin
export PATH=$PATH:/opt/boxen/homebrew/opt/coreutils/libexec/gnubin
### Postgres cli
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
### google-cloud cli
export PATH=$PATH:/Users/jwm/google-cloud-sdk/bin
### Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
