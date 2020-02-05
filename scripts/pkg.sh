#!/bin/sh

sudo pkg install -y tmux py37-ansible py37-pip py37-sqlite3 npm yarn
/vagrant/bin/download_repos.sh
/vagrant/bin/devel.sh
