export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "philips" )

plugins=(git sudo z extract zsh-autosuggestions zsh-syntax-highlighting)

bindkey ',' autosuggest-accept

source $ZSH/oh-my-zsh.sh

alias pc="proxychains -q"
alias e="nvim"
