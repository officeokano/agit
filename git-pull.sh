#!/bin/bash
files="*"
dirary=()
git=".git"
for filepath in $files; do
  if [ -d $filepath ] ; then
    dirary+=("$filepath")
  fi
done
for i in ${dirary[@]}; do
  pushd $i > /dev/null
  if [ -e $git ]; then
    printf "pull $i from remote\n"
    git pull
    printf "\n"
  fi
  popd > /dev/null
done
