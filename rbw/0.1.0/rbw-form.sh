#!/bin/sh

entry="$(printf "%s" "$(
    printf "title: \"Select an entry\"\nitems:\n"
    for i in $(rbw ls); do
        printf "  - id: \"%s\"\n" "$i"
        printf "    label: \"%s\"\n" "$i"
    done
    )" | modulo search -i - | sed -e 's/Some("//' -e 's/")//'
)"

if [ -z "$entry" ]; then
    exit 1
else
    printf "%s" "$(rbw get "$entry")"
fi

