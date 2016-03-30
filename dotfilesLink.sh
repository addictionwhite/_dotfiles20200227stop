#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.snippets ~/.snippets
ln -sf ~/dotfiles/.tigrc ~/.tigrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VCS
curl -L -o ./vcscommand-1.99.47.zip http://www.vim.org/scripts/download_script.php?src_id=19809
unzip ./vcscommand-1.99.47.zip -d ~/.vim

# GENE95 辞書 (brew install lha)
mkdir -p ~/.vim/dict
cd ~/.vim/dict
curl -L -o  gene95.lzh http://www.namazu.org/~tsuchiya/sdic/data/gene95.lzh
lha e gene95.lzh
nkf -w --overwrite  gene.txt

cd ~/.vim/plugin
# バッファタブ
curl -L -o minibufexpl.vim http://www.vim.org/scripts/download_script.php?src_id=3640

#Vimで自動コメントアウトを解除する設定 - https://uehatsu.info/tech/archives/2015/11/commentout-autounset-on-vim.html
mkdir -p ~/.vim/after/plugin
echo 'autocmd Filetype * set formatoptions-=r' >> ~/.vim/after/plugin/common-settings.vim
echo 'autocmd Filetype * set formatoptions-=o' >> ~/.vim/after/plugin/common-settings.vim
