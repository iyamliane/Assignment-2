# ACIT 2420 Assignment 2 

The purpose of this project is to develop a series of scripts which enable easy installation of essential software packages and configuration of the system using symbolic links stored in a remote Git repository. 

It also allows a new user on a Linux system with customizable options. The script allows you to specify the user's shell, home directory, group memberships, and password. It also ensures the user’s home directory is set up properly.

## Project 1
This script automates the setup process for a new Linux system to install the necessary packages with proper configuration. The script contains the following tasks: 
1. *Package Installation*: Automatically installs two packages, kakoune and tmux.
2. *Configuration Management*: Copies and sets up configuration files for various applications by creating symbolic links.
3. *Directory Structure*: Ensures that important directories like ~/bin and ~/.config are preserved with symbolic links to the original directories.
4. *Remote Repository link*: Handles configuration files like ~/.bashrc by creating symbolic links to keep files organized in a remote repository.

## Project 2 

This script focuses on automating the process of adding a new user to a Linux system. The script contains the following tasks: 

1. *Creates a New User*: Adds a new user to the system with the specified username.
2. *Sets a Custom Shell*: Allows specifying a login shell for the user (default is /bin/bash).
3. *Creates Home Directory*: Automatically creates a home directory for the new user (default is /home/username), if not specified.
4. *Copies Default Config Files*: Copies the contents of /etc/skel into the user’s new home directory, setting up default configuration files.
5. *Creates Primary Group*: Automatically creates a primary group for the user with the same name as the username.
6. *Adds to Additional Groups*: Allows adding the user to additional groups if specified (e.g., -G group1,group2).
7. *Sets User Password*: Prompts for and sets a password for the new user using the passwd utility.
8. *Validates Root Privileges*: Ensures the script is run with root privileges for user creation and system modifications.