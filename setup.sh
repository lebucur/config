# alias file name
sed -i 's/.bash_aliases/.alias/g' ~/.bashrc
 
# links
ln -sv config/.alias
ln -sv config/.vimrc
ln -sv config/.tmux.conf
ln -sv config/.gitconfig

# source needed scripts
source ~/.bashrc

# first
sudo apt update
sudo apt upgrade
 
# packages
sudo apt install gcc
sudo apt install clang
sudo apt install python3-pip
sudo apt install tree
                
# repositories
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/cheat/cheatsheets ~/.cheat

# # # TLDR and TLDR++ # # #
sudo apt install tldr
sudo mv /usr/bin/tldr /usr/bin/tld
# download the release page of TLDR++
curl -L https://github.com/isacikgoz/tldr/releases/ > .tldr++.htm
# extract the path of the latest version for linux64
TLDR_PATH=$(grep -m 1 _linux_amd64.tar.gz .tldr++.htm | cut -d "\"" -f2)
# remove the downloaded page
rm .tldr++.htm
# download the archived installer
wget "https://github.com${TLDR_PATH}"
# extract the file name from its path
TLDR_FILE=$(echo ${TLDR_PATH} | cut -d "/" -f7)
# extract the gzipped archive
tar xzf $TLDR_FILE
#install
~/tldr
# # # Done # # #

# pip helpers
sudo pip3 install cheat
sudo pip3 install eg
sudo pip3 install manly

# dir structure template
mkdir ~/dev
mkdir ~/dev/c
mkdir ~/dev/py

