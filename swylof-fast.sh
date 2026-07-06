source "$HOME/.cache/wal/colors.sh"
FAST_OUT="$HOME/.config/fastfetch/config.jsonc"

cat <<EOF > "$FAST_OUT"
{
  "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
  "logo": {
    "type":"raw",
    "source": "~/.config/fastfetch/logo/*.sixel",
    "width": 20,
    "padding":{
      "left": 0
    }
  },
  "modules": [
    "break",
    {
      "type": "custom",
      "format": "┌──────────────────────────────────────────┐",
      "outputColor":"$color1"
    },
    {
      "type": "custom",
      "key": "   USER  ",
      "format": "$USER@fedora",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "terminal",
      "key": "   TERM  ",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "os",
      "key": "   OS    ",
      "format": "{2}",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "kernel",
      "key": "   KERNEL",
      "format": "{2}",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "memory",
      "key": "   RAM   ",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "disk",
      "key": "  󰋊 DISK  ",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "uptime",
      "key": "  󱫐 UPTIME",
      "keyColor":"$color15",
      "outputColor":"$color12"
    },
    {
      "type": "custom",
      "format": "└──────────────────────────────────────────┘",
      "outputColor":"$color1"
    },
    "break"
  ]
}
EOF