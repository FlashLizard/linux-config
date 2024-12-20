#!/bin/zsh

./ln-to-home.sh
zsh -c "$(wget https://raw.githubusercontent.com/zplug/installer/master/installer.zsh -O -)"
