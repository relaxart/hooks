#!/bin/bash

echo "Installing Git Hooks"
echo ""
echo "This will:"
echo "- Remove all hooks"
echo "- Add new hooks"
echo ""

read -p "Do you wish to continue? (y/n)"
if [ "$REPLY" != "y" ]; then
  exit 1
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
HOOKS_PATH="$DIR/../relaxart/hooks/tools/dists"
for entry in "$HOOKS_PATH"/*
do
  echo "$entry"
done
