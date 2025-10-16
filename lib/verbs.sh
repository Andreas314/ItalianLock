type=$(( $RANDOM % 4 + 1 ))
stored="Verbs"
case $type in
	1)
		file="$stored/are.txt"
		;;
	2)
		file="$stored/ere.txt"
		;;
	3)
		file="$stored/ire.txt"
		;;
	4)
		file="$stored/isco.txt"
		;;
esac
size="$(cat $file | wc -l )"
rnd=$(( $RANDOM % size + 1 ))
italian_word="$( cat $file | head -n $rnd | tail -n 1| cut -f 1 | tr 'ÀÈÉÌÒÙA-Z' 'àèéìòùa-z' )"
english_word="$( cat $file | head -n $rnd | tail -n 1| cut -f 2 | sed s:[[:blank:]]*$::g)"
echo "Per favore coniughi il verbo \"$english_word\":"
while [[ $good -lt 7 ]]
do
	echo ""
	if [[ $good -eq 0 ]]
	then
		echo -n "infinito: "
		right_answer=$italian_word
	else
		pronoun="$(cat $stored/endings.dat | cut -f 5 | head -n $good | tail -n 1)"
		echo -n "$pronoun: "
		root=$(echo $italian_word | rev | cut -c4- | rev)
		ending=$(cat $stored/endings.dat | cut -f $type | head -n $good | tail -n 1)
		right_answer="$root$ending"
	fi
	read answer
	processed_answer="$(echo -e $answer | tr '[:upper:]' '[:lower:]' | sed s:^[[:blank:]]*::g | sed s:[[:blank:]]*$::g|tr 'ÀÈÉÌÒÙ'  'àèéìòù')"
	if [[ "$right_answer" == "$processed_answer" ]]
	then
		good=$(( $good + 1 ))
		echo "Molto bene!"
	else
		bad=$(( $bad + 1 ))
		echo "No, no, no..."
		echo "Di nuovo!"
		echo "$right_answer"
	fi
	if [[ $bad -gt 4 ]]
	then
		echo "We are done than..."
		sleep 1
		exit 1
	fi
done
