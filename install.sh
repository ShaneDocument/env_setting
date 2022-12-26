#!/bin/bash
# Program:
#   This program will install the most of the envirnment settings

read -rsp $'This install script will delete your .vim, .vimrc and .tmux.conf. Press y to continue....\n' -n1 READ
if [ "$READ" != 'y' ]; then
    echo "**** STOP do this. ****"
    exit 1
fi
cp -r ./.vim $HOME
cp -r ./.vimrc $HOME
cp -r ./.tmux.conf $HOME

# Install Python
cd Python-3.11.1 
./configure --prefix=$HOME/python --enable-optimizations --enable-shared
make -j 8
make install -j 8
cd ..
ls
C_INCLUDE_PATH=$HOME/Python/include/python3.11
export C_INCLUDE_PATH

PATH=$HOME/Python/bin:${PATH}
export PATH
# Install CMake
cd CMake
./bootstrap --prefix=$HOME/CMake
make -j 8
make install -j 8
cd ..
ls
PATH=$HOME/CMake/bin:${PATH}
export PATH


#Install YCM
cd $HOME/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
