%{
    #include <stdio.h>
   int no_of_line=0;
   int charc=0;
%}
 
%%
[a-zA-Z] {charc++;}
[\n] {printf("\ncharacter per line-->%d\n",charc);no_of_line++;charc=0;}
%%
int yywrap(){
    return 1;
}


int main()
{
    printf("\nenter a string\n");
    yylex();
    printf("\nno_of_line---->%d",no_of_line);
}