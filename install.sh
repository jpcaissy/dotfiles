#!/bin/bash

set -x

if [ -f $HOME/.bashrc ]
then
    mv $HOME/.bashrc $HOME/.bashrc.bak
fi
if [ -f $HOME/.git-prompt.sh ]
then
    mv $HOME/.git-prompt.sh $HOME/.git-prompt.sh.bak
fi
if [ -f $HOME/.xinitrc ]
then
    mv $HOME/.xinitrc $HOME/.xinitrc.bak
fi
if [ -f $HOME/.tmux.conf ]
then
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

ln _bashrc $HOME/.bashrc
ln _git-prompt.sh $HOME/.git-prompt.sh
ln _xinitrc $HOME/.xinitrc
ln _xinitrc $HOME/.Xsession
ln _inputrc $HOME/.inputrc
ln _tmux.conf $HOME/.tmux.conf
