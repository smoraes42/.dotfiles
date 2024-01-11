#!/bin/bash

cd ~/Templates/git/.dotfiles

rsync -av --progress ~/.vimrc ~/git/.dotfiles/.vimrc
rsync -av --progress ~/.bashrc ~/git/.dotfiles/.bashrc

git add .
echo "[+] Pushing to .dotfiles"
echo "[+] Commit: "
read -p "Introduce commit: " coomit
git commit -m $coomit
git push

cd -
