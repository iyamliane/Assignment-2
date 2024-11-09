# ACIT 2420 Assignment 2 

The purpose of this project is to develop a series of scripts which enable easy installation of essential software packages and configuration of the system using symbolic links stored in a remote Git repository. 

It also allows a new user on a Linux system with customizable options. The script allows you to specify the user's shell, home directory, group memberships, and password. It also ensures the user’s home directory is set up properly.

# Table of Contents

1. [Project 1: Configuration Setup](#project-1-configuration-setup)
   1.1 [Script Overview](#script-overview)
   1.2 [Usage](#usage)
   1.3 [Scripts Included](#scripts-included)
      - [config script](#config-script)
      - [config symlink](#config-symlink)
      - [package installer](#package-installer)
   1.4 [Setup and Symlink Creation](#setup-and-symlink-creation)
2. [Project 2: User Creation Script](#project-2-user-creation-script)
   2.1 [Script Overview](#script-overview-1)
   2.2 [Usage](#usage-1)
   2.3 [Functionality](#functionality)


## Project 1: System Setup Automation Script

### Description:
This project includes a set of scripts that automate the process of configuring a new system. It handles:
- Installing required packages.
- Creating symbolic links for configuration files 
- Ensuring that the appropriate directories are created and linked.

The scripts provided automate these tasks to set up a user-friendly environment on a new system.

### Scripts:
1. **config script**: Controls the execution of other setup scripts.
   - It can run the package installer, create symbolic links, or do both.
   
2. **config symlink**: Creates symbolic links for configuration files and directories such as `bashrc`, `tmux.conf`, and `kakrc` to appropriate locations in the user's home directory.

3. **package installer**: Installs the list of packages defined in a `packages.txt` file.

### Usage:

- To run the setup and symlink creation:
  ```bash
  ./config_script -x

  
## Project 2: User Creation Script

## Description

This script automates the process of creating new users on a Linux system. It allows the user to:
- Create a user with a specified username, shell, and home directory.
- Set a unique UID and GID for the user (with default values if not specified).
- Add the user to a primary group that matches their username.
- Add the user to additional groups as specified.
- Copy the contents of `/etc/skel` into the new user's home directory for a default setup.
- Set the user's password using the `passwd` utility.

## Features:
- Create a user with a specific shell.
- Create a home directory for the user and set proper permissions.
- Assign the user to a primary group based on the username.
- Add the user to additional groups if needed.
- Set the password for the new user.

## Usage

The script accepts the following options:

```bash
./user_creation_script.sh -u <uid> -g <gid> -h <home_directory> -s <shell> -G <group1> <group2> <username>
```

# References/Documentation

- **Bash Scripting Guide**:  
  - [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)

- **`getopts` for Command-Line Options**:  
  - [getopts documentation](https://www.gnu.org/software/bash/manual/html_node/Getopts.html)

- **`passwd` command**:  
  - [passwd man page](https://man7.org/linux/man-pages/man1/passwd.1.html)

- **`groupadd`**:  
  - [groupadd man page](https://man7.org/linux/man-pages/man8/groupadd.8.html)

- **Command-Line Options and `getopts`**:  
  - [Bash `getopts` documentation](https://www.gnu.org/software/bash/manual/html_node/Getopts.html)
  - [How to Parse Command Line Arguments in Bash](https://dev.to/itsdanny/how-to-parse-command-line-arguments-in-bash-3g5p)
  

