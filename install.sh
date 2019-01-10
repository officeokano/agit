#!/bin/bash
cd $(dirname $0)
current=$(pwd)
dest=/usr/local/bin/
sudo ln -is $current/agit $dest
