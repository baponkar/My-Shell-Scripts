#This script extract phone number from file phn_no.txt

#!/bin/bash

sed -n '/[0000000000-9999999999]/p' phn_no.txt | gawk -F: '{print $2}'

#here [0000000000-99999999] matches 10 digits phone numbers
# -F: separate delimiter by : and printing the second objects 


temp=`sed -n '/[0000000000-9999999999]/p' phn_no.txt | gawk -F: ' {print $2}'`

int -i j=0;
for i in $temp
do
	let "j +=1"
	echo "$j: $i"
done
