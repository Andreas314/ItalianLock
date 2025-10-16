#!/bin/bash
source lib/stereotype.sh
echo "Benvenuta!"
echo "Traduci cinque parole, per favore:"
file="Lists/Unit1.txt"
good=0
bad=0
mode="Verbs"
#mode="Verbs"
if [[ $mode == "Words" ]]
then
	source lib/words.sh
fi
if [[ $mode == "Verbs" ]]
then
	source lib/verbs.sh
fi
echo "Grazie mille :)"
exit 0
