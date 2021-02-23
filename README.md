# My dotfiles

Inspired by [@holman's dotfiles](https://github.com/holman/dotfiles).

This repository contains _my_
[dotfiles](https://en.wikipedia.org/wiki/dotfile) and a small bash
[script](update) that creates symbolic links for all `*.symlink` files
(and directories) in this repository in the `$HOME` directory.

The name of the directory containing a `*.symlink` file must be an executable
command on the target system. This way, only locally relevant configuration
files (or directories) are linked. This is important for me because I use
this on Linux and macOS.

## How to use it

Since this is my configuration, you should fork it first.
Then clone your fork into `$HOME/.dotfiles`:

	$ git clone git@github.com:your_account/dotfiles.git .dotfiles

Change into it and make it yours:

	$ cd .dotfiles
	$ vim git/gitconfig.symlink
	…

Then run `update` to create the symlinks:

	$ ./update

On any other machine you may just clone the repository and run `update` to
install your configuration there.

## How to update an existing repository

Call `update unwire` to clean up previously existing symlinks. Then pull
and run `update` again to install from the updated repository:

	$ cd ~/.dotfiles
	$ ./update unwire && git pull origin master && ./update

## Caution

Since I wrote this for myself, existing configuration files will be
_overwritten_ without further notice. I'm a daredevil.
