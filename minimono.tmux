#!/bin/sh

# Use a monochrome statusline, with host and session names on the right.
tmux set-option -g status-position top
tmux set -g status-bg black
tmux set -g status-fg white
tmux set -g status-left ''
tmux set -g status-right ' #h: #S '

# Use normal and bright monochrome colors to show a tab line on the left.
tmux set -g status-justify left
tmux set-window-option -g window-status-separator ''
tmux set-window-option -g window-status-format '#[bg=black,fg=white] #I #W '
tmux set-window-option -g window-status-current-format '#[bg=brightblack,fg=brightwhite] #I #W '

# Switching panes should change the foreground color but not border colors.
tmux set -g window-style 'bg=default,fg=white'
tmux set -g window-active-style 'bg=default,fg=brightwhite'
tmux set -g pane-border-style 'bg=default,fg=black'
tmux set -g pane-active-border-style 'bg=default,fg=black'
