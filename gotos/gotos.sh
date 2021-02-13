#!/bin/bash

# some fancy ideas for the next goto plugin version
# https://iridakos.com/programming/2019/04/10/shell-navigation-with-autocomplete

FILE_DIRECTORY=`dirname "$0"`

function listGotos() {
  echo "List all goto aliases"
  echo ""
  cat $FILE_DIRECTORY/resource.sh | grep -i "goto-*"
}

function instructions() {
  echo "Options:"
  echo "  -l | --list-gotos:          List all gotos"
  echo "       --help:                Show help"
  echo ""
  echo "Usage:"
  echo "  goto-md-src"
  echo ""
  echo "  Add new gotos as alias into the resource.sh file"
  echo ""
}

function error() {
  echo "Examples: goto-md-src"
  echo ""
  instructions
}

function help() {
  echo "Help"
  echo ""
  instructions
}

function executeDefaults() {
  command="$2" # second layer

  case $command in
      --list-gotos|-l)
          listGotos
          ;;
      --help)
          help
          ;;
      *)
          error
          ;;
  esac
}

executeDefaults $@
