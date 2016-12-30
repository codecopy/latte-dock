#!/bin/bash
#Author: Michail Vourlakos, Smith Ar
#Summary: Installation script for Latte Dock Panel
#This script was written and tested on openSuSe Leap 42.1
set -e

if ! [ -a build ] ; then
    mkdir build
fi

cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=RELEASE ..
make
sudo make install
