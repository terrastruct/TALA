#!/bin/sh
set -eu
cd -- "$(dirname "$0")/.."

THEME_INDEX=0

# alternate between cool and warm
themes=(0 100 1 102 4 104 5 105 6)

for f in ./docs/d2/*.d2
do
 echo "Processing $f"
 filename=$(basename -- "$f")
 filename="${filename%.*}"
 D2_LAYOUT=tala d2 --theme=${themes[$THEME_INDEX]} --debug $f ./docs/assets/${filename}.svg

 let THEME_INDEX=${THEME_INDEX}+1
done
