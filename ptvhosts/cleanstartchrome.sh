#! /bin/bash

sed -i 's!"exit_type":"Crashed"!"exit_type":"Normal"!; s!"exited_cleanly":false!"exited_cleanly":true!' ~/.config/google-chrome/Default/Preferences
