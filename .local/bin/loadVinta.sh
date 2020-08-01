#!  /bin/bash

vinta="~/Documents/Programming/Vinta"
ws4="4: "

i3-msg "workspace $ws4; focus parent, kill"

sleep 0.5

i3-msg "workspace $ws4; append_layout ~/.i3/workspace-react.json"

sleep 0.2

#  and finally we fill the containers with the programs they had
kill $(sudo lsof -t -i:5001)
i3-msg "exec urxvt -title server -e bash -c 'cd $vinta/VintaBackendAPI && npm run debug && bash'"
i3-msg "exec urxvt -title react -e bash -c 'cd $vinta/VintaApp && npx react-native start && bash'"
sleep 1
i3-msg "exec urxvt -title build -e bash -c 'cd $vinta/VintaApp && npx react-native run-android && bash'"
