My dotfiles for OS X and Linux
==============================

This repository holds my dotfiles I use on OS X and Linux systems. It is
heavily inspired by @holman's [dotfiles](https://github.com/holman/dotfiles).

How does it work?
-----------------

Just have a look at bin/dotfiles. Basically it links all *.symlink files to
their corresponding dotfiles in your home directory and sources all *.sh
files in ~/.bash_aliases (which should get sourced in your ~/.bashrc or
~/.bash_profile).

Install
-------

Just clone this repository somewhere into your home path (e.g. ~/.dotfiles),
change into the directory and run:

	$ bin/dotfiles update

Warning
-------

Since I wrote this for myself only, existing files will be overwritten
without further notice. However, you may run

	$ bin/dotfiles

to see a diff for all files that are about to change.
Plus ~/.bash_aliases of course.
