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
  printf "checking directory: $i\n"
  if [ -e $git ]; then
    printf "pull from remote\n"
    git pull
  else
    printf "$i is not a git repository\n"
  fi
  printf "\n"
  popd > /dev/null
done
