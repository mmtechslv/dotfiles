#!/bin/bash

which brew
if [[ $? != 0 ]] ; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    echo "Brew is already installed"
fi
