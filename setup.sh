#!/bin/bash

## Initialize
cd `dirname $0`
DOT_FILES=(.bashrc .screenrc .vimrc)
BACKUP_DIR=~/dotfiles_`date +%Y%m%d_%H%M%S`
cd

## Create backup directory
mkdir ${BACKUP_DIR}

## Move current dotfiles
for file in ${DOT_FILES[@]}
do
  mv $file ${BACKUP_DIR}
  ln -s ~/dotfiles/$file ~/$file
done
