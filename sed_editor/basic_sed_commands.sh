#This program containing basic sed commands


#Substitute:Here test substituting by big test
echo "This is a test" | sed 's/test/big test/'

#To execute more than one commands then used -e flag

#sed -e 's/test/TEST/'; 's/which/IT' data.txt

sed -f script4.sh data1.txt

