My dotfiles for OS X and Linux
==============================

This repository contains my dotfiles for OS X and Linux.
It's architecture is heavily inspired by
[@holman's dotfiles](https://github.com/holman/dotfiles).

How does it work?
-----------------

Just have a look at bin/dotfiles. Basically it links all *.symlink files to
their corresponding dotfiles in $HOME and sources all *.sh files in
~/.bash_aliases (which should get sourced in your ~/.bashrc or
~/.bash_profile by default).

Usage
-----

Simply clone the repository somewhere into your home path (e.g. ~/.dotfiles),
change into the new directory and run:

	$ bin/dotfiles update

Make it your own
----------------

This repository contains my setup. Chances are, you like it different.
At least in git/gitconfig.symlink. So the only action that makes sense for
someone else is probably to fork and adapt it.

Warning
-------

Since I wrote this for myself only, existing files will be __overwritten__
without further notice. I'm a daredevil. However, you may run

	$ bin/dotfiles

to see a diff for all files that are about to change.
