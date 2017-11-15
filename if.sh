#bin/bash
a=$1
#(()) ... fi 
#if (())... elif (()) ... elif (())... else...
if (( $a > 0 ))
then
echo :"Galvenais zars (ja apakszars)  -> tad, kad $a ir >0"
elif (( $a > 1))
then
echo "alt. zars (tikai ja gad) -> tad, kad $a ir >1"
else
echo :"Gal.zras (ne apaskzars) -> tad, kad $a nav >0"
fi
