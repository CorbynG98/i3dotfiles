#!  /bin/bash

ws1="1: "

i3-msg "workspace $ws1; focus parent, kill"

sleep 0.5

i3-msg "workspace $ws1; append_layout ~/.i3/workspace-main.json"

sleep 0.2

# and finally we fill the containers with the programs they had
(i3-msg "exec urxvt -title neofetch  -e bash -c 'neofetch && bash'" &
 i3-msg "exec urxvt -title top  -e bash -c 'top && bash'" & 
 i3-msg "exec urxvt -title vis -e bash -c 'vis && bash'"
)
