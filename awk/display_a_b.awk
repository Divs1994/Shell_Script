BEGIN {
print " Trying awk for first"
}

{
a=$1
b=$2
print "a="a,"b="b
}

END {
print " It was success, Thanks "
}
