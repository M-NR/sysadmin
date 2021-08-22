#!/bin/bash

echo "Fetching the newest version of Homebrew and all formulae"
brew update

echo -e "\nUpgrading outdated casks and outdated, unpinned formulae"
brew upgrade

echo -e "\nUpgrading all casks installed with homebrew"
brew upgrade --cask

echo -e "\nChecking for potential problems"
brew doctor

echo -e "\nRemoving stale lock files and outdated downloads for all formulae and casks, and remove old versions of installed formulae."
brew cleanup

