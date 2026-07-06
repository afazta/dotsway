CONFFOOT="$HOME/.config/foot/colors.ini"

mapfile -t C < ~/.cache/wal/colors
C=("${C[@]//#}")

cat <<EOF > "$CONFFOOT"
[colors]
background=${C[0]}
foreground=${C[15]}

regular0=${C[0]}
regular1=${C[1]}
regular2=${C[2]}
regular3=${C[3]}
regular4=${C[4]}
regular5=${C[5]}
regular6=${C[6]}
regular7=${C[7]}

bright0=${C[8]}
bright1=${C[9]}
bright2=${C[10]}
bright3=${C[11]}
bright4=${C[12]}
bright5=${C[13]}
bright6=${C[14]}
bright7=${C[15]}
EOF