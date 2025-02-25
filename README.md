# termux-tmux-nvim-keys
Easily setup Termux extra-Keys for Tmux and Neovim in Termux.

This is a simple script which installs and helps easily configure vim and tmux macros, and custom shell scripts as termux extra keys [termux extra keys](https://wiki.termux.com/wiki/Touch_Keyboard). 

[output.webm](https://github.com/user-attachments/assets/317e0371-903b-4059-abb4-be3f81023ebe)


It can be used to increase productivity for users of vim and tmux in termux. Vim and tmux use keyboard combinations and command-modes to interact with. These combinations are not as fast in a touch-based keyboard of a handheld device, as they are in an actual keyboard.

This tool can help configure termux to run shell scripts, execute vim and tmux combinations (with changeable TMUX prefix) etc, all with the help of a single touch of extra keys.

## Installation

```
cd ~ && pkg update && pkg install -y git && git clone -b feat_keys_config https://github.com/anuragntl/termux-tmux-nvim-keys && ./termux-tmux-nvim-keys/setup
```

## Configuration

Edit the `keyboard_layout.sh` script for configuring the keys.

For example:

1. Add a key which writes the current buffer in vim (and does runs a `:wa` on swiping up the key)

```
keyboard['vim_write']='{"display":":w", "macro": ":w\n", "popup": {"display": ":wa", "macro": ":wa"}}'
```
Or, add a macro for TMUX, for example TMUX toggle fullscreen:
```
keyboard['tmux_fullscreen']=' {"macro":"TMUX_PREFIX z","display":"T°"} '
```
_For reference, termux keys configuration : [Touch Keyboard](https://wiki.termux.com/wiki/Touch_Keyboard)._

2. Then, add the key to one of the keyboard rows (keys are added left-to right, in the same order they appear)
```
keyboard_rows['row1']='TAB vim_write vim_switch_tab tmux_fullscreen ... ...'
```

3. Register the keyboard rows (leftmost row in this config would become the topmost row) - 

```
export rows='row1 row2 row3'
```

4. Finally, run `./setup` to reinstall the keys.

