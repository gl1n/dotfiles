# Linux dotfiles

保存linux自用配置文件

## 如何使用

1. 安装好zsh nvim tmux ranger

2. 拉取本项目
    `git clone https://github.com/gl1n/dotfiles.git`

3. 安装zsh插件
   
   ```
   sh install.sh
   ```

4. 创建软连接
   
    做好原有配置文件的备份，删除原有配置文件，然后执行命令
   
   ```bash
   ln -s "$PWD/zshrc" ~/.zshrc
   ln -s "$PWD/vimrc" ~/.vimrc
   ln -s "$PWD/nvim" ~/.config/nvim
   ln -s "$PWD/tmux.conf" ~/.tmux.conf
   ln -s "$PWD/gdbinit" ~/.gdbinit
   ```
