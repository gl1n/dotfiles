# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1500
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PLUGIN_DIR="$HOME/.zsh/plugins"

# 第三方插件
source $PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGIN_DIR/z/z.sh

bindkey ',' autosuggest-accept

#命令别名
alias grep='grep --color'

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias l.='ls -d .*'

alias pc='proxychains -q'

alias c='clear'

alias h='history'
alias ha='history 1'
alias hg='history 1 | grep'

alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'

alias ga='git add'
alias gc='git commit -m'
alias gs='git status'

#环境变量
export EDITOR=vim
export LC_ALL="en_US.UTF-8" # For ranger
export PATH="/home/lu/.local/bin/:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
