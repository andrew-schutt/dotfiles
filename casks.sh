#!/usr/bin/env bash

# This install GUI applications

echo "Installing applications through brew casks..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed casks
brew cask upgrade

# -------------------------------
# Casks
# -------------------------------

# Communication
brew cask install slack

# Browsers
brew cask install firefox
brew cask install google-chrome

# Media
brew cask install spotify
brew cask install vlc

# Dev Tools
brew cask install iterm2
brew cask install docker
brew cask install kaleidoscope
brew cask install postman
brew cask install visual-studio-code

# Random
brew cask install alfred
brew cask install boostnote
brew cask install dropbox
