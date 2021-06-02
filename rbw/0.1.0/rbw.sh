#!/bin/sh

entry="$(rbw ls | grep -ie ".*$1.*" | head -n1)"
if [ -z "$entry" ]; then
    exit 1
else
    printf "%s" "$(rbw get "$entry")"
fi

