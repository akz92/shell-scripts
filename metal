#!/bin/sh

METAL_TMP="/tmp/metal_apps"
mdfind kMDItemContentType=\*.application-bundle > $METAL_TMP
cat "$METAL_TMP" | sed -e 's/.*\///' -e 's/\..*//' | fzf --height 20% | xargs -Iname grep "name.app" $METAL_TMP | xargs open
