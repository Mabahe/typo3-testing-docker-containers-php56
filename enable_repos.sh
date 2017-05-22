#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

## ondrej with php 5.6
echo deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main > /etc/apt/sources.list.d/php.list

# The recv-keys part takes a bit of time, so it's faster to receive multiple keys at once.
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys \
	E5267A6C \
  #

# google-chrome
curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list

## NodeSource's Node.js repository
curl --fail -sL https://deb.nodesource.com/setup_4.x | bash -
