#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

# xvfb and some hard dependencies of chrome
minimal_apt_get_install \
  xvfb \
  gconf2 \
  google-chrome-stable \
  #

mkdir /tmp/.X11-unix
chmod 1777 /tmp/.X11-unix
chown root /tmp/.X11-unix/
