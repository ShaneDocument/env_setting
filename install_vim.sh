#!/bin/bash
# Program:
#   This program will install the most of the envirnment settings

read -rsp $'This install script instal vim locally. Press y to continue....\n' -n1 READ
if [ "$READ" != 'y' ]; then
    echo "**** STOP do this. ****"
    exit 1
fi

PATH=$HOME/CMake/bin:$HOME/python/bin:${PATH}
export PATH
# Install vim
cd vim 
./configure --prefix=$HOME/vim --enable-python3interp
make -j 8
make install -j 8
