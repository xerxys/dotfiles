#!/bin/bash

dorfdelete () {
  if [ -f "$1" ] || [ -L "$1" ];
  then
    rm "$1"
  elif [ -d "$1" ];
  then
    rm -rf "$1"
  fi
}
