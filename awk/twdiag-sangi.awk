# This AWK script makes it easy to code a demo of use of counting rods (sangi).
# 
# Example usage:
# 
# cat FILE | gawk -f twdiag-sangi.awk
# 
# as long as FILE contains values ​​for successive states of the table
# separated by a blank line. Ex:
# 
# 0 4 5 2 3
# 1 7 8 2 3
# 
# 0 4 5 8 7
# 1 7 8 2 2
# 
# etc.
BEGIN {
	printf "|<p style=\"font-size: 21px;line-height: 1px;\">"
}

NF == 0 {
	print "</p>|"
	print "|> |"
	printf "|<p style=\"font-size: 21px;line-height: 1px;\">"
}

NF > 0 {
	for (i = 1; i <= NF; i++) {
		printf "[img[crr%s.png]]", $i
	}
	for (i = 1; i <= NF; i++) {
		printf " %s", $i
	}
	printf "<br>"
}

END {
	print "</p>|"
	print "|> |"
}

