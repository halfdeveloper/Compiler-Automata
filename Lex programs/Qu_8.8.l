%{
	#include<stdio.h>
%}

%s B
%s C


%%
<INITIAL>0 {BEGIN B;}
<INITIAL>1 {BEGIN INITIAL;}
<INITIAL>\n {printf("\nString rejected \n Enter any string : "); BEGIN INITIAL;}
<B>0 {BEGIN C;}
<B>1 {BEGIN B;}
<B>\n {printf("\nString rejected \n Enter any string : "); BEGIN INITIAL;}
<C>0 {BEGIN B;}
<C>1 {BEGIN C;}
<C>\n {printf("\nString accepted\n Enter any string : "); BEGIN INITIAL;}
. ;
%%


int yywrap()
{
	return 1;
}


int main()
{
	printf("\nEnter any string : ");
	yylex();
}