# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/christopher/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# variables

export DOTFILES_DIR=$HOME/dotfiles
export EDITOR='nvim'

# aliases

alias s="source  $HOME/.zshrc"

# ruby

export GEM_HOME="$(gem env user_gemhome)"

# path

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GEM_HOME

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
