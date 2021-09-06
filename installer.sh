#!/bin/bash

username=$(echo $USER)

echo "Cloning vim file..."

git clone https://github.com/kostyagladkov/vim_conf

echo "Replacing your .vimrc file..."

cp ./vim_conf/.vimrc /home/$username/

echo "Installing NodeJS..."

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Everything is done!"
