%{    
    #include<stdio.h>
    #include<string.h>
    #include "first.tab.h"
    int i=0;  
%}

%%

[ \n\t]{}
(int) {return INT;}
(double) {return DOUBLE;}
(float) {return FLOAT;}
(char) {return CHAR;}
(main) {return MAIN;}
(return) {return RETURN;}
"*arg" {return ARGUMENT;}
[{] {return OPEN_SECOND_BRACKET;}
[}] {return CLOSE_SECOND_BRACKET;}
[(] {return OPEN_PARENTHESIS;}
[)] {return CLOSE_PARENTHESIS;}
[=] {return ASSIGNMENT;}
[+] {return PLUS;}
[;] {return SEMICOLON;}
[A-Za-z_][a-zA-Z_0-9$]* {return IDENTIFIER;}
\-?[0-9]+"."[0-9]+ {return FLOAT_VALUE;}
"-"?[0-9]+ {return INTEGER_VALUE;}

%%

int yywrap(void) {}

