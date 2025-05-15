#!/bin/sh

# 目标目录
PLUGIN_DIR="$HOME/.zsh/plugins"
ZSH_AUTOSUGGESTIONS_DIR="$PLUGIN_DIR/zsh-autosuggestions"
ZSH_SYNTAX_HIGHLIGHTING_DIR="$PLUGIN_DIR/zsh-syntax-highlighting"
POWERLEVEL10K_DIR="$PLUGIN_DIR/powerlevel10k"

# 创建插件目录
mkdir -p "$PLUGIN_DIR"

# 下载zsh-autosuggestions
if [ ! -d "$ZSH_AUTOSUGGESTIONS_DIR" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_AUTOSUGGESTIONS_DIR"
else
  echo "$ZSH_AUTOSUGGESTIONS_DIR 已存在，跳过"
fi

# 下载zsh-syntax-highlighting
if [ ! -d "$ZSH_SYNTAX_HIGHLIGHTING_DIR" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_SYNTAX_HIGHLIGHTING_DIR"
else
  echo "$ZSH_SYNTAX_HIGHLIGHTING_DIR 已存在，跳过"
fi

# 下载powerlevel10k
if [ ! -d "$POWERLEVEL10K_DIR" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$POWERLEVEL10K_DIR"
else
  echo "$POWERLEVEL10K_DIR 已存在，跳过"
fi

echo "全部下载完成！"
