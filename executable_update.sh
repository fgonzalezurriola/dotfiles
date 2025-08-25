#!/usr/bin/env bash

sudo -v
echo -e "---Update.sh---"
sudo apt update && sudo apt upgrade
brew upgrade
brew update
brew cleanup
flatpak update
npm upgrade
bun upgrade
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
echo -e "---Updated---"
