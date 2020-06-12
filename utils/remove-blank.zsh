#!/usr/bin/zsh

find $* -type f | grep -v .git | xargs -I {} sed -i 's/\s*$//' {}
