#!/bin/bash
# 默认情况下不自动替换
auto_replace=false

# 检查是否存在 -y 标志
while getopts "y" opt; do
  case $opt in
    y)
      auto_replace=true
      ;;
    *)
      echo "Usage: $0 [-y]"
      exit 1
      ;;
  esac
done

files=(".tmux.conf" ".vimrc" ".zshrc" ".vim")
for f in ${files[@]};
do
  if [ -e ~/$f ]; then
    if $auto_replace; then
      # 如果 -y 标志存在，直接替换
      rm -rf ~/$f
      ln -s $(pwd)/$f ~/$f
      echo "Replaced $f in home directory"
    else
      # 询问用户是否替换
      read -p "File ~/$f already exists. Do you want to replace it? (y/n) " choice
      if [ "$choice" == "y" ]; then
        rm -rf ~/$f
        ln -s $(pwd)/$f ~/$f
        echo "Replaced $f in home directory"
      else
        echo "Skipped $f"
      fi
    fi
  else
    # 文件不存在，直接创建符号链接
    ln -s $(pwd)/$f ~/$f
    echo "Linked $f to home directory"
  fi
done
