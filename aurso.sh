#!/bin/sh
for var
do
cd `mktemp -d`
curl "https://aur.archlinux.org/packages/`expr substr $var 1 2`/$var/$var.tar.gz" | tar xz
cd $var
makepkg -si
done
