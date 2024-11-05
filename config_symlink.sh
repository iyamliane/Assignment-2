#!/usr/bin/env bash

clone_dir=~/file_system_script/acit2420-as2-starting-files

if [ ! -d ~/bin ];
then
	mkdir -p ~/bin 
	ln -s $clone_dir/bin/sayhi ~/bin/sayhi
	ln -s $clone_dir/bin/install-foonts ~/bin/install-fonts
	echo "~/bin directory created + symlinks connected" 
else
	echo "~/bin directory already exists, updating symlink"
	ln -s $clone_dir/bin/sayhi ~/bin/sayhi
	ln -s $clone_dir/bin/install-fonts 
fi 

if [ ! -d ~/.config/kak/kakrc ]; 
then
	mkdir -p ~/.config/kak
	ln -s $clone_dir/config/kak/kakrc ~/.config/kak/kakrc
	echo "~/.config/kak/kakrc directory created and symlink connected"
else
	echo "~/.config/kak/kakrc already exists, updating symlink"
	ln -s $clone_dir/config/kak/kakrc ~/.config/kak/kakrc
fi

if [ ! -d ~/.config/tmux/tmux.conf ];
then
	mkdir -p ~/.config/tmux
	ln -s $clone_dir/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
	echo "~/.config/tmux/tmux.conf directory created and symlink connected"
else 
	echo "~/.config/tmux/tmux.conf already exists, updating symlink" 
	ln -s $clone_dir/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
fi

ln -s $clone_dir/home/bashrc ~/.bashrc
