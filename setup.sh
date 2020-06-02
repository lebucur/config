sudo apt update
sudo apt upgrade

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -sv config/.alias
ln -sv config/.vimrc
ln -sv config/.tmux.conf
ln -sv config/.gitconfig

sudo apt install gcc
sudo apt install clang

mkdir ~/dev/c
mkdir ~/dev/py


