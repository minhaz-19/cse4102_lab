%option noyywrap
%{
#include<stdio.h>
#include<string.h>
#include "2.tab.h"
int i=0;
%}

%%
[ \n\t] {}
"main"    {return MAIN;}
"int"  {return INT;}
"float"  {return FLOAT;}
"double"  {return DOUBLE;}
"char"  {return CHAR;}
"return"  {return RET;}
"(" {return OPENNING_PARENTHESIS;}
")" {return CLOSING_PARENTHESIS;}
"{" {return OPENING_CURLY_BRACE;}
"}" {return CLOSING_CURLY_BRACE;}
";" {return SEMI_COLON;}
"=" {return EQUAL;}
"+" {return PLUS;}
"*" {return ASTERISK;}
[a-zA-Z_][a-zA-Z_0-9$]*  {return IDENTIFIER;}
[0-9]+  {return INTEGER;}
"-"?[0-9]*"."[0-9]+   {return FLOATING_POINT_NUMBER;}
%%
