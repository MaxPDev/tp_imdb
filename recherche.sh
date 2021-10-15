#! /bin/bash

if [ $# -ne 2 ]
then
	echo "ecire le help"
	exit 0
fi

param=$1
critere=$2

nameExec="cat name.basics.tsv "
titleBasicExec="cat title.basics.tsv "
titleCrewExec="cat title.crew.tsv "
titleRatingExec="cat title.rating.tsv "

# enlever -, faire case
# echo "-gbnfrbjnro" | tr "-" " "



for arg in $critere
do
	firstChar=$(echo $arg | cut -c 1)
	if [ firstChar = "-" ]
	then
		nameExec += "| grep -iv $arg" 
	

