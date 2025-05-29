#!/bin/sh

# 目标目录
PLUGIN_DIR="$HOME/.zsh/plugins"

# 插件列表：格式为 "目录名 git地址"
PLUGINS="
zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting
powerlevel10k https://github.com/romkatv/powerlevel10k.git --depth=1
z https://github.com/rupa/z.git
"

mkdir -p "$PLUGIN_DIR"

echo "$PLUGINS" | while read -r name repo extra; do
  [ -z "$name" ] && continue
  dir="$PLUGIN_DIR/$name"
  if [ ! -d "$dir" ]; then
    git clone $extra "$repo" "$dir"
  else
    echo "$dir 已存在，跳过"
  fi
done

echo "全部下载完成！"
