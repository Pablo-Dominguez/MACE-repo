#!/bin/bash
#
cd ~
cd Documents/MUM/MACE/2ndo\ Bloque/Entrega/
mv source/*.html docs/
git add source/
git add docs/
git add sh/
echo "Enter commit comment: "
read input
# echo "El commit es ${input}"
git commit -m "${input}"
git push origin main
