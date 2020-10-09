#!/bin/sh
set -e

if [ -f ~/.vimrc ]; then
    rm -f ~/.vimrc
fi
if [ -f ~/.config/nvim/init.vim ]; then
    rm -f ~/.config/nvim/init.vim
fi
if [ -f ~/.config/nvim/coc-settings.json ]; then
    rm -f ~/.config/nvim/coc-settings.json
fi
ln -s `pwd`/init.vim ~/.vimrc
ln -s `pwd`/init.vim ~/.config/nvim/init.vim
ln -s `pwd`/coc-settings.json ~/.config/nvim/coc-settings.json

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
