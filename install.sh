#!/bin/sh
git submodule sync
git submodule update --init --recursive
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
mkdir -p $ZSH_CUSTOM
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] ; then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi
mkdir -p $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
yes | cp -rf .bash_profile \
			.bashrc \
			.gitconfig \
			.oh-my-zsh \
			.tmux.conf \
			.clone \
			.vimrc \
			.zshrc \
            .ctags \
			$HOME
mkdir -p $HOME/.ctags.d
ln -s $HOME/.ctags $HOME/.ctags.d/default.ctags
pip install black isort

# C++ packages
# clangd
# cppcheck
# clangtidy
# clang-format
# ctags
