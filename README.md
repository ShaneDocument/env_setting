# env_setting 

This is a basic setting for vim and others.

## Plugin

* NERDTree
* buftabline
* YouCompleteMe
## Theme

* vim - one-half (dark for default) without Italic font
* tmux - tmux-power

## Install

1. copy .vimrc, .vim,  .tmux.conf, .tmux_theme to $HOME folder
    * Then NERDTree and buftabline is installed
2. Install Python and cmake
3. Add bash_setting to .bashrc or .bash_profile (.bash_profile recommended)
4. Install YCM
5. Done!

TODO: Make a script


## Failed to Install Plugin

### YCM
vim is needed to enable python. Check by the command below:
`vim --version | grep +python`
