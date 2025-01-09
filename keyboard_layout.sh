#!/bin/bash

declare -A keyboard
declare -A keyboard_rows

###### EDIT THIS FILE To change the extra-keys config for termux ####

### Special Keywords ###
# TMUX_PREFIX - tmux prefix shortcut (usually Ctrl-b).
# TMUX_NEW_WINDOW_COMMAND - Can be used to specify shell scripts to run on a key press.
# $SCRIPT_DIR - This variable holds the directory in which the scripts are placed.

## New keys can be registered in the keyboard array as below
## keyboard['equals_and_plus']=' {"key":"=","popup":"+"} '
## For reference, all keys supported by termux : https://wiki.termux.com/wiki/Touch_Keyboard

# Keys in the row 1:
keyboard['vim_write']='{"display":":w", "macro": ":w\n", "popup": {"display": ":wa", "macro": ":wa"}}'
keyboard['vim_switch_tab']=' {"key":"gt","popup":"gT"} '
keyboard['tmux_fullscreen']=' {"macro":"TMUX_PREFIX z","display":"T°"} '
keyboard['curly_and_angle_open']='{"key":"{", "popup":"<"}'
keyboard['curly_and_angle_close']=' {"key":"}","popup":">"} '
keyboard['forward_in_shell']=' {"macro":"ALT f","display":"-->"} '
keyboard['square_and_paranthesis_open']=' {"key":"[","popup":"("} '
keyboard['square_and_parantheses_close']=' {"key":"]","popup":")"} '
keyboard['equals_and_plus']=' {"key":"=","popup":"+"} '

# Keys in the row 2:
keyboard['ctrl_w_and_ctrl_c']='{"macro":"CTRL w","display":"Cw","popup":{"macro":"CTRL c","display":"Cc"}}'
keyboard['vim_left_and_right_split']=' {
        "macro":"CTRL w h",
        "display":"<V",
        "popup":{"macro":"CTRL w l","display":"V>"}
        } '
keyboard['tmux_up_and_tmux_down']=' {"macro":"TMUX_PREFIX k","display":"T↑","popup":{"macro":"TMUX_PREFIX j","display":"T↓"}} '
keyboard['backslash']=' {"key":"/","popup":"BACKSLASH"} '
keyboard['up_and_pgup']=' {"key":"UP","popup":"PGUP"} '
keyboard['backward_in_shell']=' {"macro":"ALT b","display":"<--"} '
keyboard['apostrophe_and_quote']=' {"key":"APOSTROPHE","popup":"QUOTE"} '
keyboard['ctrl_p']=' {"macro":"CTRL p","display":"↑"} '
keyboard['tmux_prefix_and_vim_cmd']=' {"macro":"TMUX_PREFIX","display":"tmux","popup":{"macro":"ESC :","display":"vim","popup":{"display":"tmux a","macro":"CTRL a"}}} '
keyboard['minus_and_underscore']=' {"key":"-","popup":"_"} '
keyboard['ctrl_r_and_ctrl_t']=' {"macro":"CTRL r","display":"CR","popup":{"macro":"CTRL t","display":"CT"}} '

# Keys in the row 3:
keyboard['vim_up_and_down_split']=' {"macro":"CTRL w k","display":"V↑","popup":{"macro":"CTRL w j","display":"V↓"}} '
keyboard['ctrl_i_and_ctrl_o']=' {"macro":"CTRL o","display":"C-o","popup":{"macro":"CTRL i","display":"Ci"}} '
keyboard['left_and_home']=' {"key":"LEFT","popup":"HOME"} '
keyboard['down_and_pgdn']=' {"key":"DOWN","popup":"PGDN"} '
keyboard['right_and_end']=' {"key":"RIGHT","popup":"END"} '
keyboard['tmux_next_window']=' {"macro":"TMUX_PREFIX n","display":"T>","popup":{"macro":"TMUX_PREFIX p","display":"<T"}} '
keyboard['ctrl_n']=' {"macro":"CTRL n","display":"↓"} '
keyboard['exit']=' {"display":"exit","macro":"exit\n"} '
keyboard['tmux_cmd_new_window']=" {\"macro\":\"TMUX_NEW_WINDOW_COMMAND $SCRIPT_DIR/default\"} "


# All keyboard rows
keyboard_rows['row1']='TAB vim_write vim_switch_tab tmux_fullscreen curly_and_angle_open curly_and_angle_close forward_in_shell square_and_paranthesis_open square_and_parantheses_close equals_and_plus ESC'
keyboard_rows['row2']='ctrl_w_and_ctrl_c vim_left_and_right_split tmux_up_and_tmux_down backslash up_and_pgup backward_in_shell apostrophe_and_quote ctrl_p tmux_prefix_and_vim_cmd minus_and_underscore ctrl_r_and_ctrl_t'
keyboard_rows['row3']='vim_up_and_down_split ctrl_i_and_ctrl_o ALT left_and_home down_and_pgdn right_and_end tmux_next_window ctrl_n CTRL exit tmux_cmd_new_window'


# Register the keyboard rows, separated by space
rows='row1 row2 row3'

