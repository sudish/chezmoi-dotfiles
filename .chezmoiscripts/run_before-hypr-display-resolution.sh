#!/bin/sh
#
# Outputs display resolution in WxH format (e.g., 3440x1440)

DIR=$HOME/.cache/chezmoi
FILE=$DIR/display-resolution

[[ -d $DIR ]] || mkdir $DIR
hyprctl monitors | sed -ne 's/^\t\([0-9]*x[0-9]*\)@[0-9.]* at.*/\1/p' > $FILE
