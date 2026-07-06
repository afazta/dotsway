#!/bin/bash
DIR="$HOME/Pictures/Wallpapers"
PIC=$(find "$DIR" -type f -exec file --mime-type {} + | grep "image/" | cut -d: -f1 | shuf -n 1)

ROFIMG_OUT="$HOME/.cache/swaylof/curimg.sh"
CACHIMG_OUT="$HOME/.cache/swaylof/lof.png"

if [ -n "$PIC" ]; then
    sleep 0.5 
    magick "$PIC" -resize 1280x -strip -quality 85 $CACHIMG_OUT
cat <<EOF > "$ROFIMG_OUT"
ROFIMG="$CACHIMG_OUT"
EOF
    swww img "$PIC" -t fade
    wal -i "$PIC" -n -t -s -e -q
    bash "$HOME/.local/share/swylof/swylof-rofi.sh"
    bash "$HOME/.local/share/swylof/swylof-fast.sh"
    bash "$HOME/.local/share/swylof/swylof-foot.sh"
    cp -f "$HOME/.cache/wal/btopwal.theme" "$HOME/.config/btop/themes/"
    swaymsg reload
    killall swayosd-server
    swayosd-server &
else
    echo "No have $DIR"
fi
