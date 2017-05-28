#!/bin/bash
files="*"
dirary=()
git=".git"
if [ ! $1 = "-h" ] && [ ! $1 = "--help" ] && [ ! $1 = "" ] ; then
  for filepath in $files; do
    if [ -d $filepath ] ; then
      dirary+=("$filepath")
    fi
  done
  for i in ${dirary[@]}; do
    pushd $i > /dev/null
#    printf "checking directory: $i\n"
    if [ -e $git ]; then
      printf "$i: git $1\n"
      git $1 $2 $3 $4 $5 $6 $7 $8 $9
      printf "\n"
#    else
#      printf "$i is not a git repository\n\n"
    fi
    popd > /dev/null
  done
else
  printf "usage: agit.sh  <command> [<args>]\n\n"
  printf "This script searches subdirectories and then executes a git command\n"
  printf "if it is a git repository.\n\n"
  printf "see 'git help' for more about git commands\n"
fi
