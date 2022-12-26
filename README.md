# env_setting 

This is a basic setting for vim and others.

## Plugin

* NERDTree
* buftabline
* YouCompleteMe
## Theme

* vim - one-half (dark for default) without Italic font
* tmux - tmux-power
    * It's necessary to update tmux to latest version
## Quick Install

1. execute `./install.sh`
2. If anything goes well, execute `vim` to check if the `vim` in this computer is built with python3.
    * If vim doesn't support python3, execute './install_vim.py'
    * Paste bash_setting to .bash_profile or .bashrc
3. Done!

TODO: Make a script


## Failed to Install Plugin

### YCM
vim is needed to enable python. Check by the command below:
`vim --version | grep +python`
