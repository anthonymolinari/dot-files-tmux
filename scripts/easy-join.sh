#!/bin/bash


tmux list-panes -sF '#I #P #{pane_current_command}' \
    | awk 'BEGIN {ORS=" "} {print $1"."$2":"$3, NR, "\"join-pane -t", $1 "\""}' 


tmux list-panes -sF '#I.#P #{pane_current_command}' \
    | awk 'BEGIN {ORS=" "} {print $1":"$2, NR, "join-pane -t"}'

#tmux list-panes -sF '#I #P #{pane_current_command}'\
#   | awk 'BEGIN {ORS=" "} {print $1"."$2":"$3, NR, "\"join-pane -t", $1 "\""}' \
#   | xargs tmux display-menu -T "Easy Join (Panes)"
