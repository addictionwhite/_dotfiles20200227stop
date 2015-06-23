#!/bin/sh
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
if [[ ! -e ~/.vim ]]; then
  ln -sf ~/dotfiles/.vim ~/.vim
fi

mkdir -p ~/.vim/plugin
mv ~/dotfiles/visualmark.vim ~/.vim/plugin/visualmark.vim

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc

curl -L -o ./vcscommand-1.99.47.zip http://www.vim.org/scripts/download_script.php?src_id=19809
unzip ./vcscommand-1.99.47.zip -d ~/.vim

git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/