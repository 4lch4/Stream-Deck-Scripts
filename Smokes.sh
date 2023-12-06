#!/usr/bin/env bash

APOLLO_ICON_PATH="/home/alcha/Development/Projects/Apollo/Assets/Img/Apollo-Portrait-Square.png"

apollo="/home/alcha/.bun/bin/bun /home/alcha/.nvm/versions/node/v20.10.0/bin/apollo"

if [[ $1 == "add" ]]; then
  # If the argument is 'add', then add a smoke from Apollo.
  $apollo smokes add
elif [[ $1 == "count" ]]; then
  # If the argument is 'count', then get the current smoke count from Apollo.
  $apollo smokes count
else
  # If the argument is not 'add' or 'count', then display an error message.
  notify-send -i $APOLLO_ICON_PATH 'Error' "Invalid argument: $1; Valid arguments: 'add', 'count'"

  echo "Invalid argument: '$1'; Valid arguments: 'add', 'count'"
fi
