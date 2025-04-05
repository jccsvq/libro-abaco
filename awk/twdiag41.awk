# This AWK script makes it easy to code a 4+1 abacus diagram.
# 
# Example usage:
# 
# echo 0 9 6 8 7 2 | gawk -f twdiag41.awk

BEGIN{
letras="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}
{
printf "<pre style=\"font-size: 21px;\">&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", substr(letras,i,1);  
    };
printf "<br>[img width=20 [nslw.png]]"
for(i=1;i<=NF;i++){
    printf "[img width=25 [s%s.png]]", $i;  
    };
printf "[img width=25 [srw.png]]";
print "";
printf "&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", $i;  
    };
print "</pre>\n" ; 
}
