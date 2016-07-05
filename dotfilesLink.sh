#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ~/dotfiles/.vimrc ~/.vimrc	
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.snippets ~/.snippets

# VCS
curl -L -o ./vcscommand-1.99.47.zip http://www.vim.org/scripts/download_script.php?src_id=19809
unzip ./vcscommand-1.99.47.zip -d ~/.vim

mkdir -p ~/.vim/plugin
cd ~/.vim/plugin
# バッファタブ
# curl -L -o minibufexpl.vim http://www.vim.org/scripts/download_script.php?src_id=3640
 curl -L -o bufferlist.vim http://www.vim.org/scripts/download_script.php?src_id=4544

# パワーラインフォント
# curl -L -o fonts-master.zip  https://github.com/powerline/fonts/archive/master.zip
#  unzip fonts-master.zip
# cd fonts-master
# ./install.sh

#Vimで自動コメントアウトを解除する設定 - https://uehatsu.info/tech/archives/2015/11/commentout-autounset-on-vim.html
mkdir -p ~/.vim/after/plugin
echo 'autocmd Filetype * set formatoptions-=r' >> ~/.vim/after/plugin/common-settings.vim
echo 'autocmd Filetype * set formatoptions-=o' >> ~/.vim/after/plugin/common-settings.vim

# vimproc
# git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/plugin/vimproc.vim
# cd ~/.vim/plugin/vimproc.vim
# make
