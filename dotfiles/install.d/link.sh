#!/bin/bash

TMUXDIR=$HOME/.tmux.conf
if [ -e $TMUXDIR ]; then
	rm -r $TMUXDIR
	ln -s $DOTDIR/configs/tmux/.tmux.conf $HOME
else
	ln -s $DOTDIR/configs/tmux/.tmux.conf $HOME
fi

CONFDIR=$HOME/.config
if [ -e $CONFDIR ]; then
	rm -r $CONFDIR
	ln -s $DOTDIR/configs/fish/.config $HOME
else
	ln -s $DOTDIR/configs/fish/.config $HOME
fi


BASHPROFILEDIR=$HOME/.bash_profile
if [ -e $BASHPROFILEDIR ]; then
	rm -r $BASHPROFILEDIR
	ln -s $DOTDIR/configs/bash_profile/.bash_profile $HOME
else
	ln -s $DOTDIR/configs/bash_profile/.bash_profile $HOME
fi