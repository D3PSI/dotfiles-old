#!/bin/sh
git submodule sync
git submodule update --init --recursive
ZSH_CUSTOM = $HOME/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
yes | cp -rf .bash_profile \
			.bashrc \
			.gitconfig \
			.oh-my-zsh \
			.tmux.conf \
			.vim \
			.vimrc \
			.vim_runtime \
			.zshrc
