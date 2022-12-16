%{
	#include<stdio.h>
	int a=0;
%}

%%


[a]+[a-z0-9A-Z]+[b] {a++;}
[a]+[b] {a++;}

.|\t|\n ;
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter the string - ");
	yylex();
	printf("Total  string starting with a and ends with b are - %d",a);
}