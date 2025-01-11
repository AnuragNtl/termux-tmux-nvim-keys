# termux-tmux-nvim-keys
Easily setup Termux extra-Keys for Tmux and Neovim in Termux.

This is a simple script which installs and helps easily configure vim and tmux macros, and custom shell scripts as termux extra keys [termux extra keys](https://wiki.termux.com/wiki/Touch_Keyboard). 

[output.webm](https://github.com/user-attachments/assets/317e0371-903b-4059-abb4-be3f81023ebe)


It can be used to increase productivity for users of vim and tmux in termux, which use on keyboard combinations and command-modes to interact with.
This tool can help configure termux to run shell scripts, execute vim and termux combinations etc, all with the help of a single touch of extra keys.

## Installation

```
cd ~ && pkg update && pkg install -y git && git clone -b feat_keys_config https://github.com/anuragntl/termux-tmux-nvim-keys && ./termux-tmux-nvim-keys/setup
```

## Configuration

Edit the `keyboard_layout.sh` script for configuring the keys.

For example:

* Add a key which writes the current buffer in vim:

```
keyboard['vim_write']='{"display":":w", "macro": ":w\n", "popup": {"display": ":wa", "macro": ":wa"}}'
```
For reference, termux keys configuration : [Touch Keyboard](https://wiki.termux.com/wiki/Touch_Keyboard)

