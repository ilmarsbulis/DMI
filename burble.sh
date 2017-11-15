#!bin/bash
array=( "$0" )
N = $1
#echo $(array (0) )
#echo $(array (1) )
k=0
while (( $k < N ))
do
echo $(array ($k))
k= expr $k + 1
done 
