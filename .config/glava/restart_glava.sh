#!/bin/sh
color=$(sed -n 10p ~/.cache/wal/colors)
	sed -i "s|#define COLOR.*$|#define COLOR ("$color" * ((d / 60) + 1))|g" ~/.config/glava/bars.glsl
	sed -i "s|#define COLOR.*$|#define COLOR ("$color" * ((d / 40) + 1))|g" ~/.config/glava/radial.glsl
killall -q glava
sleep 1
i3-msg " exec --no-startup-id glava --desktop --entry=rc1.glsl"
