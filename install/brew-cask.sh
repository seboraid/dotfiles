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
    google-backup-and-sync
    evernote
    iterm2
    visual-studio-code
    firefox
    google-chrome
    whatsapp
    spotify
    slack
    caffeine
    android-studio
    tunnelblick
    postman
    psequel
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
