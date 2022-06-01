# Neovim setup and configuration with plug.vim and plugins.
hurray
## General Description

Dear Reader,

Detail the steps I have used to install Newovim on Ubuntu.
Configure neovim using plug.vim
Provide some basic knowledge for using the plugins.
Install git, configure git as well as pluggins that use git.
Little or none of what I do here is original, but rather a composite of multiple expert sources I have learned from.
I consider these folks to be my teachers/mentors on Neovim setup and configuration.

## Sections

### Neovim Install for Ubuntu 20.0
* **Open Terminal**
* **Add The Repository**

    `$ sudo add-apt-repository ppa:neovim-ppa/unstable`

* **Update and Install**

    `$ sudo apt-get update`

    `$ sudo apt-get install neovim`

* **Install Prereqs (just incase they are not automagically installed).**

    `sudo apt-get install python-dev python-pip python3-dev python3-pip`

* **Run the following;**

    `Sudo apt install neovim`

### Configure Neovim

* **Create the following directory structure**
The file init.vim is where all other config file will be sourced.
Plugins.vim will be where each plugin is listed by plug.vim.
~/.config/nvim/autoload/plugged/ is the directory where each plugin will be 
downloaded and installed by the plug.vim program.


    `mkdir -P ~/.config/nvim`

    `cd ~/.config/nvim`

    `touch init.vim`


    `mkdir -P ~/.config/nvim/vim-plugged`

    `cd ~/.configi/nvim/vim-plug`

    `touch plugins.vim`

### Install plug.vim on Neovim



### Install Git on Your Ubuntu box.

