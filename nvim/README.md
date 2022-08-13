# nvim
自用nvim配置
- 使用lua进行配置
- 使用packer进行插件管理
- 使用coc管理lsp
## 使用方法
1. 安装neovim
	```bash
	sudo pacman -S neovim
	```
2. 安装依赖
	```bash
	sudo pacman -S nodejs-lts-gallium yarn clang ctags fd ripgrep
	```
3. 安装配置
	```bash
	rm -rf ~/.config/nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	nvim +PackerSync
	```
4. 其他
- 一些符号只有当终端中安装了[Nerd Font](https://www.nerdfonts.com/font-downloads)才会正常显示
- 执行`nvim --startuptime <log file name>`可以查看nvim启动消耗的时间(ms)
- clangd依赖compile\_commands.json文件解析项目信息，运行cmake时添加`-DCMAKE_EXPORT_COMPILE_COMMANDS=1`参数可以自动生成该文件
