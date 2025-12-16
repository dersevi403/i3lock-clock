# shellcheck shell=sh
set -eu

: "${CACHE:?CACHE must be set by caller}"

box_convert() {
    BOX="$CACHE/box.png"

    convert \
      -font DejaVu-Sans \
      \
      \( -background none \
         -pointsize 120 \
         label:"88:88:88" \
         -pointsize 32 \
         label:"Wednesday 88 8888" \
         -append \
         -border 22 \
      \) \
      \
      -clone 0 \
      -fill "#80808080" \
      -colorize 100 \
      -alpha set \
      -channel A -evaluate set 50% +channel \
      \
      -delete 0 \
      "$BOX"
}

composite_convert() {
    IN="${1:?input image required}"
    OUT="${2:?output image required}"

    BOX="$CACHE/box.png"

    convert "$IN" \
        -resize 2560x1440^ \
        -gravity center \
        -extent 2560x1440 \
        -blur "${BLUR:-0x6}" \
        \( "$BOX" -gravity center -geometry +0-50 \) \
        -composite \
        "png:$OUT"
}
