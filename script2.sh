#!/bin/bash

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."

    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi
