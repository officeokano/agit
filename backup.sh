#!/bin/bash
cd `dirname $0`
current=$(basename `pwd`)
cd ..
$current/agit.sh pull
current=$(basename `pwd`)
cd ..
if [ -e gitbackup.tar.gz ]; then
    if [ -e oldgitbackup.tar.gz ]; then
        rm oldgitbackup.tar.gz
    fi
    mv gitbackup.tar.gz oldgitbackup.tar.gz
fi
printf "starting backup...\n"
tar czf gitbackup.tar.gz --exclude='.*' $current
printf "done\n"
