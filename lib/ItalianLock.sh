#!/bin/bash
source lib/stereotype.sh
file="Lists/Unit1.txt"
good=0
bad=0
mode=0
#mode=0
if [[ $mode == "0" ]]
then
	source lib/words.sh
fi
if [[ $mode == "1" ]]
then
	source lib/verbs.sh
fi
echo "Grazie mille :)"
exit 0
