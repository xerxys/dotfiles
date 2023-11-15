#!/bin/bash
#-------------------------------------------------------------------------------------------------------------------------------------
#
source $DOTFILES/zsh/sourcefunc.sh

for sub in $DOTFILES/*;
do
  if [ -d $sub ];
  then
    source_if_exists $sub/symlink.sh
    if [ -r $sub/symlink.sh ]
    then
      echo "Sourced $sub\'s symlink"
    else
      echo "$sub has no symlink"
    fi
  fi
done
