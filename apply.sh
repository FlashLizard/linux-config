#!/bin/zsh

./ln-to-home.sh
git clone --depth=1 https://githubfast.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
zsh -c "$(wget https://raw.githubusercontent.com/zplug/installer/master/installer.zsh -O -)"
