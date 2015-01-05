#!/bin/sh

INKSCAPE="/Applications/Inkscape.app/Contents/Resources/bin/inkscape"
INPUT="./lwieske.svg"
PREFIX="./logo"

${INKSCAPE} --shell <<COMMANDS
  --export-png=${PREFIX}48px.png   --export-width=48   --export-width=48   ${INPUT}
  --export-png=${PREFIX}96px.png   --export-width=96   --export-width=96   ${INPUT}
  --export-png=${PREFIX}128px.png  --export-width=128  --export-width=128  ${INPUT}
  --export-png=${PREFIX}144px.png  --export-width=144  --export-width=144  ${INPUT}
  --export-png=${PREFIX}256px.png  --export-width=256  --export-width=256  ${INPUT}
  --export-png=${PREFIX}512px.png  --export-width=512  --export-width=512  ${INPUT}
  --export-png=${PREFIX}1024px.png --export-width=1024 --export-width=1024 ${INPUT}
quit
COMMANDS