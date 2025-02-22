BEGIN{
letras="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}
{
printf "<pre style=\"font-size: 21px;\">&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", substr(letras,i,1);  
    };
print "" ;
printf "[img width=25 [lw.png]]"
for(i=1;i<=NF;i++){
    printf "[img width=25 [%s.png]]", $i;  
    };
printf "[img width=25 [rw.png]]";
print "";

printf "&nbsp;&nbsp;"
for(i=1;i<=NF;i++){
    printf "%s ", $i;  
    };
print "</pre>\n" ; 
}
