#!/bin/bash

# Set the source directory where your config files are located
config_dir="."
host_config_dir="$HOME/.config"

# Set the destination directory where the config files should be symlinked
i3_config_dir="$HOME/.config/i3"
polybar_config_dir="$HOME/.config/polybar"

# Check if i3 config directory exists, and create it if it doesn't
if [ ! -d "$i3_config_dir" ]; then
  mkdir -p "$i3_config_dir" fi

# Create symbolic links for i3 config files
#ln -s "$config_dir/i3" "$i3_config_dir/config"
rm -rf "$HOME/.config/i3"
ln -s "$PWD/i3" "$host_config_dir"

rm -rf "$host_config_dir/i3status-rust"
ln -s "$PWD/i3status-rust" "$host_config_dir"


if [ -f "$HOME/.aliases" ]; then 
  rm "$HOME/.aliases"
fi

ln -s "$PWD/.aliases" "$HOME/.aliases"

if [ -f "$HOME/.zshrc" ]; then 
  rm "$HOME/.zshrc"
fi

ln -s "$PWD/.zshrc" "$HOME/.zshrc"

if [ -d "$host_config_dir/broot" ]; then
  rm -rf "$host_config_dir/broot"
fi

ln -s "$PWD/broot" "$HOME/.config/broot"

cp .xinitrc $HOME/

sudo dnf install -y screenkey git neovim  redshift zsh fontawesome-fonts-all docker git-delta libxcb gcc gcc-c++ nodejs clang--tools-extra golang vlc
sudo dnf copr enable atim/i3status-rust
sudo dnf install -y i3status-rust


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh) for root and 
chsh -s /bin/zsh <username>

sudo dnf copr enable varlad/helix
sudo dnf install -y helix


sudo groupadd docker
sudo usermod -aG docker $USER
systemctl start docker
newgrp docker
#docker run hello-world

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install --locked broot

sudo npm install -g npx

npm install  @ansible/ansible-language-server yaml-language-server@next dockerfile-language-server-nodejs  typescript typescript-language-server intelephense

rustup component add rust-analyzer

go install golang.org/x/tools/gopls@latest          # LSP
go install github.com/go-delve/delve/cmd/dlv@latest # Debugger
go install golang.org/x/tools/cmd/goimports@latest  # Formatter



# setup obs make it optional 


sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install audacity
sudo snap install shotcut --classic





sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install obs-studio -y