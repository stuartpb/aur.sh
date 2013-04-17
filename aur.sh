#!/bin/sh
for p
do
cd `mktemp -d`
curl https://aur.archlinux.org/packages/${p:0:2}/$p/$p.tar.gz |tar xz
cd $p
makepkg -si
done
