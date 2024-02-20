#!/bin/bash
cd $(dirname $0)
current=$(pwd)
dest=~/bin/
cp -is $current/agit $dest
