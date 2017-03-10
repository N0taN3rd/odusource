#!/usr/bin/env bash
Xvfb -extension GLX -screen 0 1024x768x24
#Xvfb -ac -screen scrn 1280x2000x24 :9.0 &
#export DISPLAY=:9.0
xvfb-run node --harmony index.js --savepath=$1 --site=$2