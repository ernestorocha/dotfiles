# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vagrant pip brew meteor npm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias vim="/usr/local/bin/vim"

#fpath=($HOME/.zsh/func $fpath)
#typeset -U fpath
#export PATH="/usr/local/bin:$PATH"
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

#export ANDROID_HOME=/usr/local/opt/android-sdk

alias cdgr='cd "$(git rev-parse --show-toplevel)"'

# fix for <C-CR> on terminal - http://stackoverflow.com/questions/13648237/ctrls-horizontal-split-not-working-with-command-t-in-vim
stty start undef stop undef

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export VISUAL=vim
export EDITOR="$VISUAL"

export GOPATH=$HOME/go-ws
export PATH=$PATH:$GOPATH/bin
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

export ANDROID_HOME="/Users/ernesto/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
