alias loco="fblog -f 'string.lower(level) ~= \"info\" and string.lower(level) ~= \"debug\"'"
alias locoi="fblog -f 'string.lower(level) ~= \"debug\"'"

alias resetkb="sudo -u $(whoami) DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority xdotool keyup --clearmodifiers Shift_L Shift_R Control_L Control_R Alt_L Alt_R Super_L Super_R"