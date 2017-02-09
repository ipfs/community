#!/bin/bash
#
# This script clones all repositories for a given organization into the current directory
# It depends on https://www.npmjs.com/package/github-repositories
# To install that: npm i -g github-repositories

for i in $(github-repositories $1)
do
  if [[ $i != *"https"* ]]
  then
    git clone "https://github.com/$1/$i"
  fi
done
