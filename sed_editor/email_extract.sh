#This program extract email address

echo "baponkar@gmail.com" | awk  '/^([a-zA-Z0-9_\-\.\+]+)@[(a-zA-Z0-9_\-\.]+).(a-zA-Z){2,5}$/{print $0}'
