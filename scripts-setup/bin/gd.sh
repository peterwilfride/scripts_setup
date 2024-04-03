#!/bin/bash

status=$(git rev-parse -is-inside-work-tree)

if [ "$status" != "true" ]; then
	exit 1
fi
	    
file=$(git status | grep 'modified' | awk -F ' ' '{print $2}' | fzf)

git diff $file
