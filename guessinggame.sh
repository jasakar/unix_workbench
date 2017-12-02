#/bin/bash
# File:  guessinggame.sh

function give_number {
	echo "Give a number: "
	read n
	echo "Your guees is $n"
}
# count is number of fles in this dictory
count=$(ls -A | wc -l)
# echo "Number of files: $count"

# call function 
give_number

# continue until $n eauqals $count
while [ ! $n -eq  $count ]
do
	if [[ $n -lt $count ]]
	then
		echo "and it is too small"
	else
		echo "and it is too large"
	fi
	echo
	# call function 
	give_number
done	
echo
echo "Well done my friend!"
echo "Number of files in this directory is indeed: $count"
echo

