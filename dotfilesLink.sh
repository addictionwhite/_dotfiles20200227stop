#!/bin/sh
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
if [[ ! -e ~/.vim ]]; then
  ln -sf ~/dotfiles/.vim ~/.vim
fi
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
