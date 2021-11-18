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



# regex dans case à faire
case $param in
	"-r")
		#for arg in $critere
		#do
        	#	firstChar=$(echo $arg | cut -c 1)
        	#	if [ firstChar = "-" ]
        	#	then
                #		$nameExec += "| grep -iv $arg"
        	#	else
                #		$nameExec += "| grep -i $arg"
        	#	fi
		#done
		nameExec+="| grep -i $critere"
		$(nameExec) 
		;;
	"-n")
		echo "note"
		;;
	"-t")
		echo "titre"
		;;
	"-a")
		echo "année"
		;;
esac


