#!/bin/bash

#disable special characters on press and hold - needs re-login
defaults write -g ApplePressAndHoldEnabled -bool false

#show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE
