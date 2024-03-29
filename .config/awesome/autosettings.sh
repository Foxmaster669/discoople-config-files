# -----------------------------------------------
# --- Discoople's Settings Shell Script       ---
# -----------------------------------------------

#!/bin/bash
 
# -----------------------------------------------
# --- Mouse Settings                          ---
# -----------------------------------------------
xinput --set-prop 'pointer:''ELECOM TrackBall Mouse HUGE TrackBall' 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 'pointer:''ELECOM TrackBall Mouse HUGE TrackBall' 'libinput Accel Speed' -0.3

xinput --set-prop 'pointer:''Razer Razer DeathAdder Elite' 'libinput Accel Profile Enabled' 0, 1 
xinput --set-prop 'pointer:''Razer Razer DeathAdder Elite' 'libinput Accel Speed' -0.4

# -----------------------------------------------
# --- Laptop/Desktop Monitor Display settings ---
# -----------------------------------------------

_laptop() {
   xrandr --output LVDS-1 --mode 1920x1080 \
   "$@"
}

_external() {
   xrandr --output VGA-1 --primary --mode 1920x1080
   xrandr --output LVDS-1 --off
}
if [ -n "$(xrandr --query | grep 'VGA-1 connected')" ]; then
   _external
else
   _laptop --primary
fi

# -----------------------------------------------
# --- Miscellaneous Settings                  ---
# -----------------------------------------------

setxkbmap -layout us -variant dvorak #keyboard layout
xset r rate 260 30 #character enter speed/delay
