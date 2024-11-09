#!/usr/bin/bash

clone_dir=~/file_system_script/acit2420-as2-starting-files

# Create ~/bin and symlink scripts
if [ ! -d ~/bin ]; then
    mkdir -p ~/bin
    echo "~/bin directory created"
fi

ln -sf $clone_dir/bin/sayhi ~/bin/sayhi
ln -sf $clone_dir/bin/install-fonts ~/bin/install-fonts
echo "Symlinks for sayhi and install-fonts created/updated in ~/bin"

# Create ~/.config/kak and symlink kakrc
if [ ! -d ~/.config/kak ]; then
    mkdir -p ~/.config/kak
    echo "~/.config/kak directory created"
fi

ln -sf $clone_dir/config/kak/kakrc ~/.config/kak/kakrc
echo "Symlink for kakrc created/updated in ~/.config/kak"

# Create ~/.config/tmux and symlink tmux.conf
if [ ! -d ~/.config/tmux ]; then
    mkdir -p ~/.config/tmux
    echo "~/.config/tmux directory created"
fi

ln -sf $clone_dir/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
echo "Symlink for tmux.conf created/updated in ~/.config/tmux"

# Backup existing .bashrc and create a symlink
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.bak
    echo "Existing .bashrc backed up to .bashrc.bak"
fi

ln -sf $clone_dir/home/bashrc ~/.bashrc
echo "Symlink for .bashrc created/updated"

echo "All symlinks have been created/updated successfully."
