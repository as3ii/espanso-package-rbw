#!/bin/sh

entry="$(rbw ls | dmenu -i -fn 'Monospace 10')"
if [ -z "$entry" || "$entry" == "None"]; then
    exit 1
else
    printf "%s" "$(rbw get "$entry")"
fi

