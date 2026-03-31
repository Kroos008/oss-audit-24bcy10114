#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "^ii  $PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

case $PACKAGE in
    git) echo "Git: Distributed version control system used worldwide" ;;
    apache2) echo "Apache: Web server" ;;
    mysql) echo "MySQL: Database system" ;;
    firefox) echo "Firefox: Web browser" ;;
    *) echo "Unknown package" ;;
esac
