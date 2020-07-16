#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="12.1.1"

if [ "$1" != "" ]; then
    VERSION="$1"
else
    VERSION=$FALLBACK_VERSION
fi

DEBIAN_PACKAGE=ripgrep_${VERSION}_amd64.deb

# install ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/${VERSION}/$DEBIAN_PACKAGE
sudo dpkg -i $DEBIAN_PACKAGE
rm $DEBIAN_PACKAGE

echo
echo '"rg" is now on the path'
