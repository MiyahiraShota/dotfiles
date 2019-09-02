setup:
	sh setup.sh

init:
	make set_zsh_env
	make set_zsh
	make set_vim
	make set_nvim
	make set_dein
	make set_git
	make set_tmux
	make ~/.fzf/bin/fzf

set_nvim:
	mkdir -p ~/.config/nvim
	ln -sf ~/.dotfiles/vim/vimrc ~/.config/nvim/init.vim
	ln -sf ~/.dotfiles/vim/dein.toml ~/.config/nvim/dein.toml

set_vim:
	mkdir -p ~/.vim/colors
	ln -sf ~/.dotfiles/vim/colors/hybrid.vim ~/.vim/colors/hybrid.vim
	ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc

set_zsh_env:
	cp ~/.dotfiles/zsh/zshrc.env.example ~/.dotfiles/zsh/zshrc.env
	cp ~/.dotfiles/zsh/alias.env.example ~/.dotfiles/zsh/alias.env
	cp ~/.dotfiles/zsh/zshrc.local.example ~/.dotfiles/zsh/zshrc.local

set_zsh:
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
	ln -sf ~/.dotfiles/zsh/zprofile ~/.zprofile

set_dein:
	ln -sf ~/.dotfiles/vim/dein.toml ~/dein.toml

set_git:
	cp ~/.dotfiles/git/gitconfig ~/.gitconfig

set_tmux:
	ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

~/.fzf/bin/fzf:
	~/.fzf
	yes | ~/.fzf/install

~/.fzf:
	git clone https://github.com/junegunn/fzf.git ~/.fzf

