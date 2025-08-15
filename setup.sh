# working folder
mkdir ~/setup; cd ~/setup

# alias file name
cp ~/.bashrc ~/setup/.bashrc-bak
sed -i 's/.bash_aliases/.alias/g' ~/.bashrc 2>&1 | tee -a logs/sed-alias
 
# links
ln -sv ~/config/.alias      ~ 2>&1 | tee -a logs/lnsv
ln -sv ~/config/.vimrc      ~ 2>&1 | tee -a logs/lnsv
ln -sv ~/config/.tmux.conf  ~ 2>&1 | tee -a logs/lnsv
ln -sv ~/config/.gitconfig  ~ 2>&1 | tee -a logs/lnsv
#ln -sv /mnt/c/Users/lebucur ~ 2>&1 | tee -a logs/lnsv

# first
sudo apt update     2>&1 | tee -a logs/apt-update 
sudo apt upgrade -y 2>&1 | tee -a logs/apt-upgrade
 
# packages
sudo apt install git         2>&1 | tee -a logs/install-git
sudo apt install clang       2>&1 | tee -a logs/install-clang
sudo apt install python3-pip 2>&1 | tee -a logs/install-py3pip
sudo apt install tree        2>&1 | tee -a logs/install-tree                
sudo apt install tmux        2>&1 | tee -a logs/install-tmux
sudo apt install ddcutil     2>&1 | tee -a logs/install-ddcutil
sudo apt install helix       2>&1 | tee -a logs/install-helix
sudo apt install plocate     2>&1 | tee -a logs/install-plocate
sudo apt install tldr-py     2>&1 | tee -a logs/install-tldrpy

# repositories
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2>&1 | tee -a logs/git-clone-vundle
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm              2>&1 | tee -a logs/git-clone-tpm
git clone https://github.com/cheat/cheatsheets ~/.cheat                        2>&1 | tee -a logs/git-clone-cheat

# pip helpers
sudo pip3 install cheat 2>&1 | tee -a logs/pip-cheat
sudo pip3 install eg    2>&1 | tee -a logs/pip-eg
sudo pip3 install manly 2>&1 | tee -a logs/pip-manly

# dir structure template
mkdir ~/dev
mkdir ~/dev/c
mkdir ~/dev/py

# source needed scripts
source ~/.bashrc

