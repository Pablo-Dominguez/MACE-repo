#!/bin/bash
#
cd ~
cd Documents/MUM/MACE/2ndo\ Bloque/Entrega/
#/usr/bin/Rscript -e "library(knitr); knit(input = \"/home/pablo/Documents/MUM/MACE/2ndo Bloque/Entrega/source/01Fruits.Rmd\", output = \"/home/pablo/Documents/MUM/MACE/2ndo Bloque/Entrega/docs/index.html\")"
{ /usr/bin/Rscript -e "library(knitr); rmarkdown::render(\"/home/pablo/Documents/MUM/MACE/2ndo Bloque/Entrega/source/01Seeds.Rmd\", output_format = \"html_document\")" ;} || { :;}
sleep 2
rm docs/*.html
mv source/01Seeds.html docs/
mv docs/*.html docs/index.html
git add source/
git add docs/
git add sh/
echo "Enter commit comment: "
read input
# echo "El commit es ${input}"
git commit -m "${input}"
git push origin main
