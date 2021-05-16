#!/bin/bash
cd $(dirname $0)
current=$(pwd)
dest=/usr/local/bin/
sudo cp -is $current/agit $dest
