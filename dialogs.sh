
#!/bin/bash


echo  "CIenijamais lietotajs, ludzu ievadi pirmo skaitli: "
read a
echo  "CIenijamais lietotajs, ludzu ievadi otro  skaitli: "
read b
#if [ $a -gt $b ]
if (( $a == $b )) # ja atbilde uz so jautajumu (1.) ir - ja 
then #tad 
echo "a ($a) == b ($b)" #tiek izpildits starp if un elif komandu bloks
elif (( $a > $b )) # jautajums (2.) tiek uzdots tikai ja uz 1. bija ne
then #tad
echo "a ($a) > b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. -ja
else  # citadi
echo "a ($a) < b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. - ne
fi



#1darbiba
: <<'END'
c=`expr $a + $b`
echo "$a + $b =  "$c
END
#balstoties uz (IF) nosacijuma rezultata - koda sazarosana


