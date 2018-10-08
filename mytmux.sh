#!/bin/sh
#
# Setup a work space called `work` with two windows
# first window has 3 panes.
# The first pane set at 65%, split horizontally, set to api root and running vim
# pane 2 is split at 25% and running redis-server
# pane 3 is set to api root and bash prompt.
# note: `api` aliased to `cd ~/path/to/work`
#
session="work"

# set up tmux
tmux start-server

tmux set-option default-path "~/Downloads"


# clipboard settings
tmux set-option -g set-clipboard on
# create a new tmux session, starting vim from a saved session in the new window
tmux new-session -d -s $session -n vim #"vim -S ~/.vim/sessions/kittybusiness"

# Select pane 1, set dir to api, run vim
tmux selectp -t 1
tmux send-keys "vim" C-m

# create a new window called scratch
#tmux new-window -t $session:1 -n scratch
tmux new-window -t $session:2 -n docker
tmux new-window -t $session:3 -n code

# return to main vim window
tmux select-window -t $session:0

# Finished setup, attach to the tmux session!
tmux attach-session -t $session
