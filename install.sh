#!/bin/sh
git submodule sync
git submodule update --init --recursive
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
mkdir -p $ZSH_CUSTOM
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] ; then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi
yes | cp -rf .bash_profile \
			.bashrc \
			.gitconfig \
			.oh-my-zsh \
			.tmux.conf \
			.clone \
			.vimrc \
			.zshrc \
			$HOME
pip install black isort
