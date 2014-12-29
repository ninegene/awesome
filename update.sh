#!/bin/bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"
git submodule update --init --recursive
git submodule foreach git pull origin master

if [ "$1" = "remote" ]; then
    git add --all
    git commit -m "Update submodule(s) to latest commit"
    git push origin master
fi
