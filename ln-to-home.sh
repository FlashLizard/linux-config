#!/usr/bin/env bash
files=$(ls . -a | grep -E '^\.[^.].*')
for f in $files
do
	ln -s $(pwd)/$f ~/$f
	echo ln $f to home dictory
done
