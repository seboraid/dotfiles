#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
# apps=(
#     1password
#     gyazo
#     dropbox
#     google-drive
#     spectacle
#     flux
#     dash
#     imagealpha
#     imageoptim
#     evernote
#     iterm2
#     atom
#     webstorm
#     firefox
#     firefoxnightly
#     google-chrome
#     google-chrome-canary
#     malwarebytes-anti-malware
#     glimmerblocker
#     hammerspoon
#     kaleidoscope
#     macdown
#     opera
#     screenflow
#     spotify
#     skype
#     slack
#     tower
#     transmit
#     elmedia-player
#     utorrent
# )

apps=(
    kindle
    google-backup-and-sync
    notion
    iterm2
    visual-studio-code
    firefox
    google-chrome
    brave-browser
    tor-browser
    protonvpn
    discord
    whatsapp
    spotify
    slack
    caffeine
    postman
    docker
    adobe-acrobat-reader
    deepl
    soapui
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
xattr -d -r com.apple.quarantine ~/Library/QuickLook
qlmanage -r

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Install the Solarized Dark theme for iTerm
open "${HOME}/dotfiles/iterm/themes/Solarized Dark.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/seboraid/dotfiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -int 1
