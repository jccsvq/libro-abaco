# This AWK script makes it easy to code a demo on a 5+1 abacus.
# 
# Example usage:
# 
# cat FILE | gawk -f demo-twdiag51.awk
# 
# as long as FILE contains values ​​for successive states of the abacus. Ex:
# 
# 0 4 5 2 3
# 1 7 8 2 3
# etc.
BEGIN {
	letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}

{
	printf "|<pre style=\"font-size: 21px;\">&nbsp;&nbsp;"
	for (i = 1; i <= NF; i++) {
		printf "%s ", substr(letras, i, 1)
	}
	printf "<br>"
	printf "[img width=20 [njl.png]]"
	for (i = 1; i <= NF; i++) {
		printf "[img width=25 [j%s.png]]", $i
	}
	printf "[img width=25 [jr.png]]"
	printf "<br>"
	printf "&nbsp;&nbsp;"
	for (i = 1; i <= NF; i++) {
		printf "%s ", $i
	}
	print "</pre> |\n|" NR "> |\n"
}

