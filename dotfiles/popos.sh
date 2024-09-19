#!/bin/bash

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# essentials for broot
sudo apt install build-essential libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev -y
# clone broot
git clone https://github.com/Canop/broot.git
cd broot
cargo install --locked broot


#alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty
apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo build --release
sudo cp target/release/alacritty /usr/bin/


sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
infocmp alacritty

sudo update-alternatives --config x-terminal-emulator
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50

# add icon 
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database


#bash completions
echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc

# nerd fonts 
git clone --filter=blob:none git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts 
./install.sh


#node 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

nvm install 20

node -v

npm -v
