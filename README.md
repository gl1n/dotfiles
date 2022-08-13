# linux-config
保存linux自用配置文件
## 如何使用
1. 安装好zsh nvim
2. 拉取本项目
	`git clone https://github.com/gl1n/linux-config.git`
3. 安装zsh插件
	```
	sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting zsh-theme-	powerlevel10k
	```
4. 创建软连接

	做好原有配置文件的备份，删除原有配置文件，然后执行命令
	```bash
	ln -s "$PWD/zshrc" ~/.zshrc
	ln -s "$PWD/nvim" ~/.config/nvim
	```
## 删除软连接
	```
	rm ~/.zshrc
	rm ~/.config/nvim
	```