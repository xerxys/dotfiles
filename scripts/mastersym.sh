#!/bin/bash
#-------------------------------------------------------------------------------------------------------------------------------------
#
# Set up Enviromnemt Variables $DOTFILES and $PATH
ln -sn $HOME/dotfiles/.env.sh $HOME/.env.sh
source $HOME/.env.sh

# Read the custom functions source_if_exists and dorfdelete
source $DOTFILES/scripts/sourcefunc.sh
source $DOTFILES/scripts/dorfdelete.sh

# Iterates through the subdirectories within $DOTFILES and executes all their symlink scripts
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
