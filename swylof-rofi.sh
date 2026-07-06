#!/bin/bash
CAHLOF="$HOME/.cache/swaylof/"
CONROF="$HOME/.config/rofi/swaylof.rasi"

source "$CAHLOF/curimg.sh"
mapfile -t C < ~/.cache/wal/colors
cat <<EOF > "$CONROF"
* {
    font:   "JetBrains Mono Nerd Font 11";
    curimg: url("$ROFIMG",height);
    color0: ${C[0]};
    color1: ${C[1]};
    color2: ${C[2]};
    color3: ${C[3]};
    color4: ${C[4]};
    color5: ${C[5]};
    color6: ${C[6]};
    color7: ${C[7]};
    color8: ${C[8]};
    color9: ${C[9]};
    color10: ${C[10]};
    color11: ${C[11]};
    color12: ${C[12]};
    color13: ${C[13]};
    color14: ${C[14]};
    color15: ${C[15]};
}
EOF