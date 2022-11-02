#!/usr/bin/env sh

git config --global --add safe.directory $(pwd)
git-crypt "${@}"
