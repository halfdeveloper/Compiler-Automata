%{
	#include<stdio.h>
	int m;
%}

%%
[<>=!] {printf("%s  relational operators\n",yytext);} 
[+*-/%]     {printf("%s arithmetic operators\n",yytext);}
.  ;
%%

int yywrap()
{
	return 1;
}
int main(int argc, char* argv[])
{
	printf("Input will be taken from input file - \n");
	yyin = fopen(argv[1],"r");
	yylex();
	fclose(yyin);
}
/*
PS E:\III Sem\Automata> flex .\qu_8.4.l  
PS E:\III Sem\Automata> gcc lex.yy.c     
PS E:\III Sem\Automata> ./a.exe input.txt
Input will be taken from input file - 
+ arithmetic operators  
- arithmetic operators  
/ arithmetic operators  
- arithmetic operators  
<  relational operators 
>  relational operators 
!  relational operators 
PS E:\III Sem\Automata> 
*/