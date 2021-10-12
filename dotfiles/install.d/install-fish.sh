#!/bin/bash
APT_CMD="apt-get install -y"

# Installing fish
# For Debian: https://software.opensuse.org/download.html?project=shells%3Afish%3Arelease%3A3&package=fish
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/ /' | tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_10/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
apt-get update
$APT_CMD fish

# For Ubuntu: https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
# apt-add-repository ppa:fish-shell/release-3
# apt-get update 
# $APT_CMD fish
