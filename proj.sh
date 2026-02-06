#!/usr/bin/env zsh

proj=$PROJ_DIR
proj_with_arg=$(echo "$PROJ_DIR$1")

# echo $proj
# echo $proj_with_arg

if [[ -z $1 ]]; then
  echo $PROJ_DIR
  exit 0
fi

echo "$PROJ_DIR$1"

