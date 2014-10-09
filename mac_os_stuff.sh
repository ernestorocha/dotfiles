#!/bin/bash

#disable special characters on press and hold - needs re-login
defaults write -g ApplePressAndHoldEnabled -bool false

#show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

#delay before the Dock appears when your mouse hits the edge of the screen
defaults write com.apple.Dock autohide-delay -float 0.5

#default delay
#defaults delete com.apple.Dock autohide-delay

#speed of the animation when the Dock slides onto the screen
defaults write com.apple.dock autohide-time-modifier -float 0.5

#defaul
#defaults delete com.apple.Dock autohide-time-modifier

killall Dock


