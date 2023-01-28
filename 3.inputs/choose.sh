#!/bin/bash
# example from 3.6

function choose {
  local yes_program=$2
  local no_program=$3
  local question=$1
  local answer

  read -p "$question " $answer

  case "$answer" in
    [yY1] ) exec $yes_program
      ;;
    [nN] ) exec $no_program
      ;;
  esac
}

choose "$@"

