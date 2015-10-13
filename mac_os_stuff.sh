#!/bin/bash

#disable special characters on press and hold - needs re-login
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

#delay before the Dock appears when your mouse hits the edge of the screen
defaults write com.apple.Dock autohide-delay -float 0.5

#default delay
#defaults delete com.apple.Dock autohide-delay

#speed of the animation when the Dock slides onto the screen
defaults write com.apple.dock autohide-time-modifier -float 0.5

#disable annoying alert bounce on dock
defaults write com.apple.dock no-bouncing -bool TRUE
#defaul
#defaults delete com.apple.Dock autohide-time-modifier

# Shows only open apps on dock
defaults write com.apple.dock static-only -bool TRUE

killall Dock

defaults write com.apple.LaunchServices LSQuarantine -bool NO

killall Finder

# http://www.classicyuppie.com/what-crap-is-this-os-xs-mobilebackups/
# What Crap Is This: OS X's MobileBackups
sudo tmutil disablelocal 
