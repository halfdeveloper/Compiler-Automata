/*Write a program in LEX to count and display the total number of vowels and consonants in a given input file.*/
%{
    #include <stdio.h>
   int space=0;
%}
 
%%
[ \n\t]+ {fprintf(yyout, ""); space++;}
.       { fprintf(yyout, "%s", yytext); }

%%
int yywrap(){
    return 1;
}
int main(int argc,char* argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("\nNo of space %d",space);
fclose(yyin);
return 1;
}
/*
PS E:\III Sem\Automata> flex .\qu_8.3_.l
PS E:\III Sem\Automata> gcc lex.yy.c    
PS E:\III Sem\Automata> gcc lex.yy.c
PS E:\III Sem\Automata> ./a.exe input.txt
abcdefghijklmnopqrstuvwxyzfsrvgdggf
No of space 3
*/