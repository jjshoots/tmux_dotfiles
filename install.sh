#!/bin/bash

# check if tmux exists
if ! command -v tmux &> /dev/null
then
  echo "tmux not found, installing from apt..."
  sudo apt update
  sudo apt install tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
./~/.config/tmux/plugins/tpm/scripts/install_plugins.sh
