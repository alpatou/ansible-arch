#!/bin/bash

# Set the source directory where your config files are located
config_dir="."
host_config_dir="$HOME/.config"

# Set the destination directory where the config files should be symlinked
i3_config_dir="$HOME/.config/i3"
polybar_config_dir="$HOME/.config/polybar"

# Check if i3 config directory exists, and create it if it doesn't

if [ -d "$i3_config_dir" ]; then
  rm -rf "$i3_config_dir"
fi

# Create symbolic links for i3 config files
# -sf "$config_dir/i3" "$i3_config_dir/config"

if [[ ! -L "$host_config_dir/i3" ]]; then
  ln -sf "$PWD/i3" "$host_config_dir"
fi

rm -rf "$host_config_dir/i3status-rust"

if [[ ! -L "$host_config_dir/i3status-rust" ]]; then
  ln -sf "$PWD/i3status-rust" "$host_config_dir"
fi

if [ -f "$HOME/.aliases" ]; then 
  rm "$HOME/.aliases"
fi

if [[ ! -L "$HOME/.aliases" ]]; then
  ln -sf "$PWD/.aliases" "$HOME"
fi


cp .xinitrc $HOME/

sudo dnf install -y --skip-broken screenkey git neovim  redshift zsh  docker git-delta libxcb gcc gcc-c++ nodejs clang-tools-extra golang vlc light
sudo dnf copr enable atim/i3status-rust
sudo dnf install -y i3status-rust


sudo dnf copr enable varlad/helix
sudo dnf install -y helix


#sudo groupadd docker
#sudo usermod -aG docker $USER
#systemctl start docker
#newgrp docker
#docker run hello-world

#sudo systemctl enable docker.service
#sudo systemctl enable containerd.service

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install --locked broot

#solve the issue with br 


if [ -d "$host_config_dir/broot" ]; then
  rm -rf "$host_config_dir/broot"
fi

if [[ ! -L "$host_config_dir/broot" ]]; then
  ln -sf "$PWD/broot" "$host_config_dir"
fi

sudo npm install -g npx

sudo npm install -g  @ansible/ansible-language-server yaml-language-server@next dockerfile-language-server-nodejs  typescript typescript-language-server intelephense

rustup component add rust-analyzer

go install golang.org/x/tools/gopls@latest          # LSP
go install github.com/go-delve/delve/cmd/dlv@latest # Debugger
go install golang.org/x/tools/cmd/goimports@latest  # Formatter

# setup obs make it optional 

sudo dnf install snapd

if [[ ! -L "/snap" ]]; then
  sudo ln -sf /var/lib/snapd/snap /snap
fi


sudo dnf install fontawesome5-fonts-all.noarch
#sudo snap install audacity
#sudo snap install shotcut --classic

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
#sudo dnf install -y obs-studio

if [ ! -d "$HOME/code" ]; then
  mkdir -p "$HOME/code" 
fi

cd "$HOME/code"

if [ ! -d "$HOME/code/cheruvim" ]; then
	git clone git@github.com:alpatou/cheruvim.git
fi

if [  -d "$host_config_dir/nvim" ]; then
  rm -rf  "$host_config_dir/nvim"  
fi

if [[ ! -L "$host_config_dir/nvim" ]]; then
	ln -sf "$PWD/cheruvim" "$host_config_dir"
	mv "$host_config_dir/cheruvim" "$host_config_dir/nvim"
fi


if [ ! -d "$HOME/code/helix-vim" ]; then
	git clone git@github.com:alpatou/helix-vim.git
fi

if [  -d "$host_config_dir/helix" ]; then
  rm -rf  "$host_config_dir/helix" 
fi


if [[ ! -L "$host_config_dir/helix" ]]; then
	ln -sf "$PWD/helix-vim" "$host_config_dir"
	mv "$host_config_dir/helix-vim" "$host_config_dir/helix"
fi



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

if [ -d "$HOME/.oh-my-zsh" ]; then
	rm -rf "$HOME/.oh-my-zsh" 
fi


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


