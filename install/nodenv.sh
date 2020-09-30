#!/bin/sh

#
# This script configures my Node.js development setup. Note that
# nodenv is installed by the Homebrew install script.
#

if test $(which nodenv)
then
  echo "Initializing nodenv ..."

  # Init nodenv
  nodenv init
  nodenv install 14.x-next
  nodenv global 14.x-next


# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
#
# diff-so-fancy — sexy git diffs
# git-recent — Type `git recent` to see your recent local git branches
# git-open — Type `git open` to open the GitHub page or website for a repository
# packages=(
#     diff-so-fancy
#     git-recent
#     git-open
#     gulp
#     http-server
#     servedir
#     flow-bin
#     flow-typed
#     npm-check-updates
#     webpack
#     nodemon
#     svgo
#     yo
# )

packages=(
    npm-check-updates
    nodemon
)

npm install -g "${packages[@]}"
fi