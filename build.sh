#!/bin/sh
cd /build
apt-get update
apt-get -y install git
git clone https://git.zerfleddert.de/git/hmcfgusb
cd hmcfgusb
mk-build-deps -i
dpkg-buildpackage -b -rfakeroot -us -uc
