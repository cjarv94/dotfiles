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

# path

export PATH=$PATH:$HOME/.local/bin
