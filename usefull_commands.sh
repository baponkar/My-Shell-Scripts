#This program containing usefull commands and its explanation
#This is just short usefull command lists which I think usefull for linux bash shell script writing.
#Reference : Wiley.Linux.Command.Line.and.Shell.Scripting.Bible.May.2008 
#Build Date : 30.04.2021
#Writer : Bapon kar



cp file1 file2 #copying from file1 to file2
cp -R dir1 dir2 #copying all content of dir1 to dir2

file file1 #give the details of the file

cat -n file1 #print the content of the file with line number

head -n 2 file1 #gives first two lines of file1

tail -n file1 #gives last two lines of file1

ps #gives process ID,run time and which shell run

ps -A #Show the all process

ps -A -F #Showing extra options
#UID:The user responsible for launching the process
#PID:The process ID of the process
#PPID:The PID of the parent process(if process is started by another process)
#C:Processor utilization over the lifetie of the process
#STIME:The system time when the process started
#TTY:The terminal device from which the process was launched
#TIME:The cumulative CPU time required to run the process
#CMD: The name of the program that was started

ps -l #This produces reasonable of information


mount #this command displays a list of media devices currently mounted on ithe system
#The device location of the media
#The mount point in the virtual directory where the media is mounted
#The filesystem type
#The access status of the mounted media

mount -t vfat /dev/sdb5 /media/disk #manually mount the USB memory stick at device /dev/sdb5 at location /media/disk

cat /etc/fstab #static file system information

df #How much disc space available
df -h #Human readable

du #how many spaces using by a specific directory
du -h #Human readable
du -c #also showing total

gzip myprog #for compressing files
#gzcat 

zip -r testzip file1 file2 file3 file4 #Making zip file with name testzip
unzip testzip.zip #Extract the zipped file

sort file #sorted alphabetically
sort -n file #sorting numerically
sort -M file #sorting month name
sort -t ':' -k 3 -n /etc/passwd #separator=":", sorting third(-k 3) variable numerically(-n)

echo -e "This line would be content of the file.\nSee the file." > file
echo -e "This line append into the second lane." >> file
cat file #To see the content of the file

mv file1 file2 #Moving file1 to file2
cp file1 file2 #Copying file1 to file2

cd address_of_disc #changing working directory
pwd #showing current working directory
cd .. #changing into previous directory

#Searching
grep test file #searching test word in file
grep -v test file #printg all other line except which containing the test word
grep -n test file #Giving the line number of the match as well as the complete line
grep -c test file #Printing total number of match
grep -e test1 -e test2 file #Finding two different words test1 and test2 from file 
grep [0-9] file #Using regular expression to search the pattern from the file

echo $PATH #showing path variable
echo $HOME #Showing current home directory
PS1 # The primary shell command line interface prompt string
PS2 # The Secondary shell command line interface prompt string


PATH="$PATH:/home/Desktop/myprog" #Run myprog on bash

vim /etc/profile #the main default startup file
cat /etc/bashrc

#Variables

#Arrays
mytest=(one two three four five)

echo ${mytest[*]} #giving whole array


#secure password stored at
sudo /etc/shadow
sudo apt install whois #To install whois which create sha-512 etc encryption hash password
mkpasswd -m sha-512 #Making sha-512 hash

chmod 755 file #Changing file permission
chown user file #Changi n ownership of the file
chgrp shared newfile #changing default group

#Performing math
expr 5 \* 12

echo " scale=4; 4/6" | bc

echo $? #giving the exist status value from 0-255,0 means successfull\



#if-else

if [[ 1 -eq 1 ]]; then
	echo "Perfect"
elif [[ 1 < 0 ]]; then
	echo "Unbelivable"
else
	echo "Sorry!"
fi	


if test 1==1
then
echo "Hello"
fi


break #exit from a loop
continue #skip from a loop


read name # accept user input

read -p "Please enter the value of x : " x
read -t 5 "Please enter the value of x : " x #blink for 5 seconds
read -n1 -p "Do you want to continue [Y/N]? : " answer
read -s -p "Enter your password : " pass #silent read

rm file #removing file
rm -R dir #removing file with its contents

mktemp temp.XXXXXXXXX #making temporary file
mktemp -d dir.XXXXXXX #making temporary directory
sleep 10 #Hangup for 10 seconds

#crontable format
#min	hour	dayofmonth	month	dayofweek	command

#making function

function name() {

return 0
}


# 0 : reset to normal mode :Black
# 1 : set to bold intensity : Red
# 2 : Set to faint intensity : Green
# 3 : USe italic font : Yellow
# 4 : Use single underline : Blue
# 5 : Use slow blink : Magenta
# 6 : Use fast blink : Cyan
# 7 : Reverse foreground /background colors : White
# 8 : Set foreground color to background color(Invisible text)

echo  -e "\e[6;4mThis is a test[0;0m"

#creating shortcut of a command
alias p=pwd #here p gives the result of pwd command
echo $BASH_VERSION
echo $EUID #current user id
echo $RANDOM #rndom number in between 0 to 99999

#Find a file inside of a directory
find /etc -name passwd
find /etc -iname '*passwd*'

