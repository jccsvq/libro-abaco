BEGIN{
letras="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}
{
printf "<pre style=\"font-size: 21px;\">&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", substr(letras,i,1);  
    };
print "</pre>" ; 
printf "[img width=25 [zl.png]]"
for(i=1;i<=NF;i++){
    printf "[img width=25 [z%s.png]]", $i;  
    };
printf "[img width=25 [zr.png]]";
print "";
printf "<pre style=\"font-size: 21px;\">&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", $i;  
    };
print "</pre>\n" ; 
}
