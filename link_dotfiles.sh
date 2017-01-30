#!/bin/sh

# generate symbolic link
ln -s ~/.dotfiles/.emacs.d ~/.emacs.d
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zshrnv ~/.zshenv

# install emacs for mac
brew tap railwaycat/emacsmacport
brew install emacs-mac
brew linkapps

# install ricty font
brew tap sanemat/font
brew install Caskroom/cask/xquartz
brew install ricty
cp -f /usr/local/Cellar/ricty/4.0.1/share/fonts/Ricty*.ttf ~/Library/Fonts/

# install apps
brew install rmtrash
brew install wget
brew install aspell
brew install imagemagick
brew install gcc
brew install gnuplot
#pip install jupyter

# update and upgrade
brew update
brew upgrade
