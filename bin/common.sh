#!/bin/sh

sudo apt install -y curl git python3-pip python3-venv tmux
update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
BIN_DIR="/vagrant/bin"

curl -sL https://deb.nodesource.com/setup_13.x | bash -

sudo apt update && sudo apt upgrade -y
sudo apt install nodejs -y

$BIN_DIR/download_repos.sh
$BIN_DIR/devel.sh
