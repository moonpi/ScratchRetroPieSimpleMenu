#!/bin/sh
xset -dpms # disable DPMS (Energy Star) features.
xset s off # disable screen saver
xset s noblank # don't blank the video device
matchbox-window-manager &
midori -e Fullscreen -a https://phosphorus.github.io/app.html?id=11397100&turbo=false&full-screen=true
# This uses Phosophorus and Midori to run 3D Remix: Experimental render-ordering using clones by DadOfMrLog
