
#!/bin/bash


echo  "CIenijamais lietotajs, ludzu ievadi pirmo skaitli: "
read a
echo  "CIenijamais lietotajs, ludzu ievadi otro  skaitli: "
read b
echo  "CIenijamais lietotajs, ludzu ievadi treso  skaitli: "
read c
#if [ $a -gt $b ]
if (( $a == $b == $c )) # ja atbilde uz so jautajumu (1.) ir - ja 
then #tad 
echo "a ($a) == b ($b) == c ($c)" #tiek izpildits starp if un elif komandu bloks
elif (( $a > $b )) # jautajums (2.) tiek uzdots tikai ja uz 1. bija ne
then #tad
echo "a ($a) > b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. -ja
else  # citadi
echo "a ($a) < b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. - ne
fi



