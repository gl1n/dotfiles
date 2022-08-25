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


# 第三方插件
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

bindkey ',' autosuggest-accept

#命令别名
alias grep='grep --color'

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias l.='ls -d .*'

alias pc='proxychains -q'

alias e='nvim'

alias c='clear'

alias h='history'
alias ha='history 1'
alias hg='history 1 | grep'

#环境变量
export VISUAL=nvim
export LC_ALL="en_US.UTF-8" # For ranger

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
