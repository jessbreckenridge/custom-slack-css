#!/bin/bash
## Installer script for css hacks.

if [[ `uname` == "Darwin" ]]; then
  echo "Mac OS X Detected... proceeding..."
else
  echo "Non mac detected, arborting..."
  exit 1
fi

if [[ `defaults read /Applications/Slack.app/Contents/Info CFBundleShortVersionString` > 2.8 ]]; then
  echo "Version greater than 2.8 detected...."
else
  echo "Version less than 2.8 detected, cannot install"
fi


curl https://raw.githubusercontent.com/openark/custom-slack-css/master/slack-hack.js >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
