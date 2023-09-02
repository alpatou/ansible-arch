#!/bin/bash

# Set the source directory where your config files are located
config_dir="."
host_config_dir="$HOME/.config"

# Set the destination directory where the config files should be symlinked
i3_config_dir="$HOME/.config/i3"
polybar_config_dir="$HOME/.config/polybar"

# Check if i3 config directory exists, and create it if it doesn't
if [ ! -d "$i3_config_dir" ]; then
  mkdir -p "$i3_config_dir"
fi

# Check if polybar config directory exists, and create it if it doesn't
if [ ! -d "$polybar_config_dir" ]; then
  mkdir -p "$polybar_config_dir"
fi

# Create symbolic links for i3 config files
#ln -s "$config_dir/i3" "$i3_config_dir/config"
rm -rf "$HOME/.config/i3"
ln -s "$PWD/i3" "$host_config_dir"

# Create symbolic links for polybar config files
rm -rf "$host_config_dir/polybar"
ln -s "$PWD/polybar" "$host_config_dir"
