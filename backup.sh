#!/bin/bash
cd ..
agit/agit.sh pull
if [ -e ../gitbackup.tar.gz ]; then
    if [ -e ../oldgitbackup.tar.gz ]; then
        rm ../oldgitbackup.tar.gz
    fi
    mv ../gitbackup.tar.gz ../oldgitbackup.tar.gz
fi
tar czfv ../gitbackup.tar.gz --exclude='.*' *
