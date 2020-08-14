#!/bin/sh
set -e

echo 'set runtimepath+=~/.nvim_runtime
source ~/.nvim_runtime/my_configs.vim
source ~/.nvim_runtime/my_plugins.vim
source ~/.nvim_runtime/coc_configs.vim
' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
