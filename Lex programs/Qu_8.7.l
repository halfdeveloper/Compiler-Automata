%{
	#include<stdio.h>
%}

%s B
%s C
%s D

%%
<INITIAL>0 {BEGIN B;}
<INITIAL>1 {BEGIN D;}
<INITIAL>\n {printf("\nString rejected \n Enter any string : "); BEGIN INITIAL;}
<B>0 {BEGIN B;}
<B>1 {BEGIN C;}
<B>\n {printf("\nString rejected \n Enter any string : "); BEGIN INITIAL;}
<C>0 {BEGIN B;}
<C>1 {BEGIN C;}
<C>\n {printf("\nString accepted \n Enter any string : "); BEGIN INITIAL;}
<D>0 {BEGIN D;}
<D>1 {BEGIN D;}
<D>\n {printf("\nString rejected \n Enter any string : "); BEGIN INITIAL;}
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