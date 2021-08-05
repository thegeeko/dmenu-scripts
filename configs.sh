#!/bin/bash

editor="code"
opts=(
	"Qtile - /home/thegeeko/.config/qtile/"
	"Fish - /home/thegeeko/.config/fish/config.fish"
	"Alacritty - /home/thegeeko/.config/alacritty/alacritty.yml"
	"Neovim - /home/thegeeko/.config/nvim/init.vim"
	"Rust Foromater - /home/thegeeko/.config/rustfmt/rustfmt.toml"
	"VS code - /home/thegeeko/.config/Code/User/settings.json"
	"Bash - /home/thegeeko/.bashrc"
	"Xmodmap - /home/thegeeko/.Xmodmap"
	"Xinitrc - /home/thegeeko/.xinitrc"
)

config=$(printf '%s\n' "${opts[@]}" | dmenu -i -l 10 -p "Config files : ")

if ["$config" == "nvm"] || ["$config" == ""]; then
	exit
fi

$editor $(echo $config | awk '{print $NF}')
