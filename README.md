# Linux Configure by FlashLizard

plese install :
- zsh
- oh-my-zsh: sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
- vim
- tmux
- fzf

then run:
```bash
./apply.sh
source ~/.zshrc
```

include:
- zsh:
    - theme:  "powerlevel10k/powerlevel10k"
    - keybinds:
        alt+hjkl:up down left right
    - git
        gaa = git add --all
        gcmsg = git commit -m
        ga = git add
        gst = git status
        gp = git push
    - zsh-autosuggestions
    - zsh-syntax-highlighting 
    - z 
        z dir: jump to similar dir
    - extract 
        x file.[zip|rar]: extract according to exp
    - vi-mode 
    - fzf-tab 
        origin-ability: tab to fzf completion
        now: shift-tab to fzf completion, alt+l to accept
    - gitignore 
        see gitignore template
        ```bash
        gi python > .gitignore
        ```
    - cp 
        cpv to see visual cp
    - command-not-found 
        tell you how to get the command
    - safe-paste 
        when you paste script, will not excute it automately
    - colored-man-pages 
    - sudo
        press esc twice to input the last command with sudo
- zplug:
    help to manage zsh plugs
