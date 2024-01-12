#!/bin/bash

cd ~/Templates/git/.dotfiles

rsync -av --progress ~/.vimrc ~/Templates/git/.dotfiles/.vimrc
rsync -av --progress ~/.bashrc ~/Templates/git/.dotfiles/.bashrc
rsync -av --progress --exclude 'packer_compiled.lua' ~/.config/nvim/ ~/Templates/git/.dotfiles/nvim/ 

git add .
echo "[+] Pushing to .dotfiles"
echo "[+] Commit: "
read -p "Introduce commit: " coomit
git commit -m $coomit
git push

cd -
