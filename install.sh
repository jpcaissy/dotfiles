#!/bin/bash

set -x

if [ -f ../.bashrc ]
then
    mv ../.bashrc ../.bashrc.bak
fi
if [ -f ../.git-prompt.sh ]
then
    mv ../.git-prompt.sh ../.git-prompt.sh.bak
fi
if [ -f ../.xinitrc ]
then
    mv ../.xinitrc ../.xinitrc.bak
fi
if [ -f ../.tmux.conf ]
then
    mv ../.tmux.conf ../.tmux.conf.bak
fi

ln _bashrc ../.bashrc
ln _git-prompt.sh ../.git-prompt.sh
ln _xinitrc ../.xinitrc
ln _xinitrc ../.Xsession
ln _tmux.conf ../.tmux.conf
