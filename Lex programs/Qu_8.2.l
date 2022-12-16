/*Qu_8.2-:Write a program in LEX to count and display the total number of vowels and consonants in a given input file.*/

%{
    #include <stdio.h>
    int vow_count=0;
    int const_count =0;
%}
 
%%
[aeiouAEIOU] {vow_count++;}
[b-df-hj-np-tv-z] {const_count++;}
.|\t|\n ;


%%
int yywrap(){
    return 1;
}

int main(int argc,char* argv[])
{
yyin=fopen(argv[1],"r");
yylex();
 printf("Number of vowels are:  %d\nNumber of consonants are:  %d\n", vow_count,const_count);
fclose(yyin);
return 1;
}
/*
PS E:\III Sem\Automata> flex Qu_8.2.l    
PS E:\III Sem\Automata> gcc lex.yy.c     
PS E:\III Sem\Automata> ./a.exe input.txt
Number of vowels are:  5     
Number of consonants are:  21
*/