#!/usr/bin/env bash

INPUT="./lwieske.svg"
PREFIX="./logo"

#rm logo*.png
for i in 48 96 128 144 256 512 1024
do
  inkscape .lwieske.svg -w ${i} -o logo${i}px.png
done

rm design/design*.png
for i in 1 2 3 4 5
do
  inkscape design/design${i}.svg -w 512 -o design/design${i}.png
done
