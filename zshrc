# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#环境变量
export EDITOR=vim

autoload -Uz compinit
compinit

# 插件目录
PLUGIN_DIR="$HOME/.zsh/plugins"
mkdir -p "$PLUGIN_DIR"
# 插件列表：格式为 "目录名 git地址 [额外参数]"
PLUGINS="
zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions --depth=1
zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting --depth=1
powerlevel10k https://github.com/romkatv/powerlevel10k.git --depth=1
zsh-z https://github.com/agkozak/zsh-z --depth=1
"
# 检查并安装插件
echo "$PLUGINS" | while read -r name repo extra; do
  [ -z "$name" ] && continue
  dir="$PLUGIN_DIR/$name"
  if [ ! -d "$dir" ]; then
    echo "正在安装 $name ..."
    git clone $extra "$repo" "$dir"
  else
    # echo "$dir 已存在，跳过"
    :
  fi
done
# 加载插件
source $PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGIN_DIR/zsh-z/zsh-z.plugin.zsh
# 插件快捷键
bindkey ',' autosuggest-accept

#history相关
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

#zsh-z相关
ZSHZ_CASE=ignore

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

alias ga='git add'
alias gc='git commit -m'
alias gs='git status'

alias rgcc='rg --g="*.cpp"'
alias rgh='rg --g="*.h"'
alias rgpb='rg --g="*.proto"'
alias rggo='rg --g="*.go"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
