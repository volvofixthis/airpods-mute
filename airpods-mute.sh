#!/bin/bash
set -xe
VOLUME="0%"
amixer set Capture $VOLUME

function toggle_mic() {
    if [ "$VOLUME" = "0%" ]; then
        SOUND=iphone_unmute
        VOLUME="50%"
    else
        SOUND=iphone_mute
        VOLUME="0%"
    fi
    amixer set Capture $VOLUME
    mpg123 ~/Documents/airpods-mute/$SOUND.mp3
}

journalctl -f --user -u wireplumber | while IFS= read -r line; do
    if [[ "$line" == *"<< AT+CHUP"* ]]; then
        toggle_mic
    fi
done
