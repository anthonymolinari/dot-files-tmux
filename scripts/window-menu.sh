#!/bin/bash

# open a popup menu with a list of active windows in this session
tmux list-windows -F '#{ #{window_index} #{window_name} }'\
    | awk 'BEGIN {ORS=" "} {print $3, NR, "\"select-window -t", $1 "\""}' \
    | xargs tmux display-menu -T "Switch Window"
