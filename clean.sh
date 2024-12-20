#!/bin/bash
files=(".tmux.conf" ".vimrc" ".zshrc" ".vim" ".zplug" ".oh-my-zsh")
for f in ${files[@]};
do
	rm -rf ~/$f
done

