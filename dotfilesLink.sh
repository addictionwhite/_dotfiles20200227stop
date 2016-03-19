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
ln -sf ~/dotfiles/.snippets ~/.snippets

# VCS
curl -L -o ./vcscommand-1.99.47.zip http://www.vim.org/scripts/download_script.php?src_id=19809
unzip ./vcscommand-1.99.47.zip -d ~/.vim

cd ~/.vim/plugin
# ブックマーク
curl -L -o visualmark.vim https://raw.githubusercontent.com/taku-o/downloads/master/visualmark.vim
# バッファタブ
curl -L -o minibufexpl.vim http://www.vim.org/scripts/download_script.php?src_id=3640
