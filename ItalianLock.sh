#!/bin/bash
source stereotype.sh
echo "Benvenuta!"
echo "Traduci cinque parole, per favore:"
file="pokus.txt"
good=0
bad=0
while [[ $good -lt 5 ]]
do
	size="$(wc -l $file | cut -d " " -f 1)"
	rnd="$(( $RANDOM % $size + 1 ))"
	words="$( cat $file | head -n $rnd | tail -n 1)"
	italian_word="$( echo -e $words | tr -s " " | cut -d " " -f 1 )"
	english_word="$( echo -e $words | tr -s " " | cut -d " " -f 2 )"
	echo ""
	echo "Risposte giuste: "$good
	echo -n "Come si dice "
	echo -n "$english_word"
	echo -n ": "
	read answer
	echo ""
	processed_answer="$(echo -e $answer | tr '[:upper:]' '[:lower:]' | sed s:^[[:blank:]]*::g | sed s:[[:blank:]]*::g)"
	processed_right_answer="$(echo -e $italian_word | tr '[:upper:]' '[:lower:]' | sed s:^[[:blank:]]*::g | sed s:[[:blank:]]*::g)"
	if [[ "$processed_answer" == "$processed_right_answer" ]]
	then
		good=$(( $good + 1 ))
		bad=0
		echo "Molto bene!"
	else
		bad=$(( $bad + 1 ))
		echo "No, no, no..."
		echo "Riposta giusta: "$processed_right_answer
		if [[ $bad -eq 5 ]]
		then
			echo "So you do not want to play..."
			sleep 1
			echo "Well, then..."
			sleep 1
			echo "Bastardo!"
			sleep 1
			exit 0
		fi
	fi
done
echo "Grazie mille :)"
