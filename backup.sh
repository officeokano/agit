#!/bin/bash
cd `dirname $0`
current=$(basename `pwd`)
cd ..
$current/agit.sh pull
current=$(basename `pwd`)
cd ..
if [ -e ~/gitbackup.tar.gz ]; then
    if [ -e ~/gitbackup.old.tar.gz ]; then
        rm ~/gitbackup.old.tar.gz
    fi
    mv ~/gitbackup.tar.gz ~/gitbackup.old.tar.gz
fi
printf "starting backup...\n"
tar czvf ~/gitbackup.tar.gz --exclude='.*' $current
gpg -e -r h.okano@gmail.com -o ~/gitbackup.tar.gz.pgp ~/gitbackup.tar.gz
printf "done\n"
