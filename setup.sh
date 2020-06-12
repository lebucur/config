# working folder
mkdir ~/setup; cd ~/setup

# alias file name
sed -i 's/.bash_aliases/.alias/g' ~/.bashrc 2>&1 | tee -a sed-alias
 
# links
ln -sv ~/config/.alias      ~ 2>&1 | tee -a lnsv
ln -sv ~/config/.vimrc      ~ 2>&1 | tee -a lnsv
ln -sv ~/config/.tmux.conf  ~ 2>&1 | tee -a lnsv
ln -sv ~/config/.gitconfig  ~ 2>&1 | tee -a lnsv
ln -sv /mnt/c/Users/lebucur ~ 2>&1 | tee -a lnsv

# first
sudo apt update     2>&1 | tee -a apt-update 
sudo apt upgrade -y 2>&1 | tee -a apt-upgrade
 
# packages
sudo apt install gcc         2>&1 | tee -a install-gcc
sudo apt install clang       2>&1 | tee -a install-clang
sudo apt install python3-pip 2>&1 | tee -a install-py3pip
sudo apt install tree        2>&1 | tee -a install-tree                
#sudo apt install tldr-py     2>&1 | tee -a install-tldrpy

# repositories
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2>&1 | tee -a git-clone-vundle
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm              2>&1 | tee -a git-clone-tpm
git clone https://github.com/cheat/cheatsheets ~/.cheat                        2>&1 | tee -a git-clone-cheat

# # # TLDR and TLDR++ # # #
#sudo mv /usr/bin/tldr /usr/bin/tld
# download the release page of TLDR++
curl -L https://github.com/isacikgoz/tldr/releases/ > .tldr++.htm
# extract the path of the latest version for linux64
TLDR_PATH=$(grep -m 1 _linux_amd64.tar.gz .tldr++.htm | cut -d "\"" -f2)
# remove the downloaded page
#rm .tldr++.htm
# download the archived installer
wget "https://github.com${TLDR_PATH}"
# extract the file name from its path
TLDR_FILE=$(echo ${TLDR_PATH} | cut -d "/" -f7)
# extract the gzipped archive
tar xzf $TLDR_FILE
#rm -f $TLDR_FILE
#install
#chmod u+x tldr
sudo mv tldr /usr/local/bin
# # # Done # # #

# pip helpers
sudo pip3 install cheat 2>&1 | tee -a pip-cheat
sudo pip3 install eg    2>&1 | tee -a pip-eg
sudo pip3 install manly 2>&1 | tee -a pip-manly

# dir structure template
mkdir ~/dev
mkdir ~/dev/c
mkdir ~/dev/py

# source needed scripts
source ~/.bashrc

