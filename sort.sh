cat main.txt optional.txt >> allmods.txt
for x in *.txt; do sort -duo $x $x; done
