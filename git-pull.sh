#!/bin/bash
git=".git"
for f in * ; do
  if [ -d $f ] ; then
    pushd $f > /dev/null
    if [ -e $git ] ; then
      printf "pull $f from remote\n"
      git pull
      printf "\n"
    fi
    popd > /dev/null
  fi
done
