#!/usr/bin/env bash

INPUT="./lwieske.svg"
PREFIX="./logo"

rm logo*px.png cropped-*.png design/design*.png

for i in 48 96 128 144 256 512 1024
do
  rsvg-convert lwieske.svg --width ${i} --height ${i} --output logo${i}px.png
done

for i in 48 96 128 144 256 512 1024
do
  convert logo${i}px.png -trim cropped-logo${i}px.png
done

for i in 1 2 3 4 5
do
  rsvg-convert design/design${i}.svg --width 512 --output design/design${i}.png
done
