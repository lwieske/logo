#!/usr/bin/env bash

INPUT="./lwieske.svg"
PREFIX="./logo"

rm logo*.png
for i in 48 96 128 144 256 512 1024
do
  svg2png lwieske.svg --output=logo${i}px.png --width=${i} --height=${i}
done

rm design/design*.png
for i in 1 2 3 4 5 6
do
  svg2png design/design${i}.svg --output=design/design${i}.png --width=512 --height=512
done
