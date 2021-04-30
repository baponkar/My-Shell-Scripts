BEGIN {
print "The latest list of users and shells"
print " UserID      Shell "
print "--------    -------"
FS=":"
}

{
	print $1 "             " $7
}


END 
{
print "This concludes the listing"
}
