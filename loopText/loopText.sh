#!/bin/bash

text="jkls------------- Grooooosse Bitch !!!!! -----------------©◊ß~‡‡€ôÙôôôô€€Ù——}}øæÂê®†ÚudhvbcjklsdfqsiudhvbcæÂê®†ÚudhvbcjklsdfqsiudhvbcæÂê®†Úudhvbcjklsdfqsiudhvbc"
#text=$(curl -L http://opendata.paris.fr/api/records/1.0/search?dataset=stations-velib-disponibilites-en-temps-reel&lang=fr&rows=10&sort=available_bikes&facet=banking&facet=bonus&facet=status&refine.status=OPEN&refine.number=17037)
l=${#text} 
decal=0
all=$(($l))
line=80
vtsetpos()
{
    local VTS_ROW=$1
    local VTS_COL=$2

    # echo "ROW: '$VTS_ROW' COL: '$VTS_COL'"

    printf "%s" "$ESC["
    printf "%s" "$VTS_ROW"
    printf "%s" ";"
    printf "%s" "$VTS_COL"
    printf "%s" "H"
}

for ((o=0; o<$line; o++))
do
	randomize=$((RANDOM%$l+10))
	array_random[$o]=$(($randomize))
done
for ((o=0; o<$line; o++))
do
	randomize=$((RANDOM%30+2))
	array_random2[$o]=$(($randomize))
done
for ((o=0; o<$line; o++))
do
	space=" "
	array_random3[$o]="-      -"
done

while true; do
	if (( $(($decal)) < $(($l)) )) ; then	
		decal=$(($decal+1))
	else
		decal=0
	fi
	all=$(($l-$decal))
	#tput cup 1 $((RANDOM%$l+10))
	result=${text:$all:$l}${text:0:$all}
	#clear  
	#col=`tput 6`;
	for ((o=0; o<$line; o++))
	do
		echo ${result:${array_random2[$o]}:${array_random[$o]}}
	done
	sleep 0.05
done
===========================================

