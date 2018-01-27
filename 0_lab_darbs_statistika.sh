#!/bin/bash

#datu iegušāna
echo -e "Lietotāj, ievadiet veselus skaitļus!"
echo tieks izvadītie: 1.minimala vērtibā 2.maksimālā vērtība 3. vidējā vērtība 4. sakārtota virkne 5. mediāna 6. moda
read -a A
elements=${#A[@]}
echo jūsu $elements vērtības veido skaitļu masīvu A=[${A[@]}]
echo

#augošā secībā
for (( i=0; i < $elements; i++ )); do
for (( j=$i; j < $elements; j++ )); do
if (( ${A[i]} > ${A[j]} )); then
t=${A[i]}
A[i]=${A[j]}
A[j]=$t
fi
done
done

#vidējas vērtības aprēķinašāna
sum=0
for (( i=0; i < $elements; i++ )); do
sum=`expr $sum + ${A[i]}` 
done

# Apreķinām modu
pag=0
virs=0
for (( i=0; i < `expr $elements - 1`; i++ )); do
if (( ${A[i]} == ${A[i+1]} )); then
	pag=`expr $pag + 1`
else
	pag=0
fi
if (( $pag >= $virs )); then
	virs=$pag
fi
done
pag=0
moda=
for (( i=0; i < `expr $elements - 1`; i++ )); do
if (( ${A[i]} == ${A[i+1]} )); then
	pag=`expr $pag + 1`
else
	pag=0
fi
if (( $virs == 0 ));then
	break
fi
if (( $pag == $virs )); then
	moda+=${A[i]}' '
fi
done

# Izvadīsim, ko lietotajs vēlas
echo 1. ${A[0]}
echo 2. ${A[$elements - 1]}
echo -e "3. \c"
awk "BEGIN {print $sum/$elements}"
echo 4. ${A[@]}

# Aprēķināsim medianu
if (( $elements % 2 == 0 )); then
#step=`expr ${A[$elements / 2]} + ${A[$elements / 2 - 1]}`
echo -e "5. \c" 
awk "BEGIN {print (${A[$elements/2]}+${A[$elements/2 - 1]})/2}"
else
echo -e "5. \c"
awk "BEGIN {print ${A[$elements/2]}}"
fi
echo 6. $moda
