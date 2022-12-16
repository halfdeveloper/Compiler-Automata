%{
	#include<stdio.h>
	int m;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]+[@#%!&*?/`~] ;
[a-zA-Z_][a-zA-Z0-9_]+ { printf("%s  valid Identifiers\n",yytext);}
[0-9][a-zA-Z_]+ ;

.|\t|\n ;
%%

int yywrap()
{
	return 1;
}
int main(int argc, char* argv[])
{
	printf("Input will be taken from input file:\n");
	printf("Valid Identifiers in the given file are -\n");
	yyin = fopen(argv[1],"r");
	yylex();
	fclose(yyin);
}
/*
PS E:\III Sem\Automata> flex .\qu_8.5.l
PS E:\III Sem\Automata> gcc lex.yy.c     
PS E:\III Sem\Automata> ./a.exe input.txt
Input will be taken from input file:
Valid Identifiers in the given file are -
Sum  valid Identifiers
is  valid Identifiers
valid  valid Identifiers
PS E:\III Sem\Automata> 
*/