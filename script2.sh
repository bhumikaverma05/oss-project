#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="apache2"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    apache2) echo "Apache: the web server that powers the open internet" ;;
    mysql) echo "MySQL: open database used in millions of applications" ;;
    vlc) echo "VLC: multimedia player built by open community" ;;
    firefox) echo "Firefox: browser supporting open web standards" ;;
    *) echo "Unknown package" ;;
esac
