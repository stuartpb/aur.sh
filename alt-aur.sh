#!/bin/bash
d=${BUILDDIR:-$PWD}
for p in ${@##-*}
do
cd "$d"
wget -e robots=off -r -np -nH --cut-dirs 3 --reject "index.html" "http://pkgbuild.com/git/aur-mirror.git/plain/$p/"
cd "$p"
makepkg ${@##[^\-]*}
done
