#!/bin/bash

function addline {
	grep "$1" $2 > /dev/null
	if [ $? -ne 0 ]; then
		echo $1 >> $2
		echo Adding $1 to $2
	fi
}

function create_symlink {
	if [ ! -f $2 ]; then
		ln -s $1 $2
		echo Creating symlink from $1 to $2
	else
		echo File $2 already exists. Not creating symlink
	fi
}

SHELL_CONFIG_FILE=./test

echo "------Adding lines to $SHELL_CONFIG_FILE------"
addline 'alias py="python3"' "$SHELL_CONFIG_FILE"
addline 'alias mv="mv -vi"' "$SHELL_CONFIG_FILE"
addline 'alias rm="rm -vi"' "$SHELL_CONFIG_FILE"
addline 'alias vi="vim"' "$SHELL_CONFIG_FILE"

addline "export EDITOR=vim" "$SHELL_CONFIG_FILE"
addline "export VISUAL=vim" "$SHELL_CONFIG_FILE"

echo "------Creating symlinks------"
create_symlink general_setup/vimrc ./.vimrc
