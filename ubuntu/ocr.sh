#!/bin/bash
echo "Welcome to ocr, it will ask you for different things that you can download"
echo "Select which installation do you want"
echo "1) zsh, powerlevel10k, neofetch, curl, wget, git"
echo "2) neofetch, curl, wget, git"
echo "3) neofetch, curl, git"
read choice

if [ choice = "1" ];
then
sudo apt update
sudo apt install zsh neofetch curl wget git
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "Finished installation."
fi
if [ choice = "2" ];
then 
sudo apt update
sudo apt install neofetch curl wget git
echo "Finished installation."
fi
if [ choice = "3" ];
then
sudo apt update
sudo apt install neofetch curl git
echo "Finished installation."
fi