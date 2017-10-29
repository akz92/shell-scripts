#!/bin/sh

METAL_TMP="/tmp/metal_apps"
mdfind kMDItemContentType=\*.application-bundle > $METAL_TMP
cat "$METAL_TMP" | sed -e 's/.*\///' -e 's/\..*//' | fzf +s --height 20% --reverse | xargs -Iname grep "name.app" $METAL_TMP | xargs -Iapp open "app"
