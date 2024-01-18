#!/bin/bash

sudo dnf install zsh

if [ -d "$HOME/.oh-my-zsh" ]; then 
  rm -rf "$HOME/.oh-my-zsh"
fi

if [ -f "$HOME/.zshrc" ]; then 
  rm "$HOME/.zshrc"
fi



sudo chsh -s $(which zsh)  root  
chsh -s $(which zsh) $USER 

if [[ ! -L "$HOME/.zshrc" ]]; then
  ln -sf "$PWD/.zshrc" "$HOME"
fi


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
