%{    
    #include<stdio.h>
    #include<string.h>
    int i=0;  
%}

%%
[ \n\t]
(int) {printf("%d.INT\n",i);i++;}
(float) {printf("%d.FLAOT\n",i);i++;}
(char) {printf("%d.CHAR\n",i);i++;}
(main) {printf("%d.MAIN\n",i);i++;}
(return) {printf("%d.RETURN\n",i);i++;}
[{] {printf("%d.open second bracket\n",i);i++;}
[}] {printf("%d.close second bracket\n",i);i++;}
[(] {printf("%d.open parenthesis\n",i);i++;}
[)] {printf("%d.close parenthesis\n",i);i++;}
[=] {printf("%d.assignment\n",i);i++;}
[+] {printf("%d.plus\n",i);i++;}
[;] {printf("%d.semicolone\n",i);i++;}
[A-Za-z_][a-zA-Z_0-9$]* {printf("%d.Identifier found\n",i);i++;}
\-?[0-9]+"."[0-9]+ {printf("%d.float value\n",i);i++;}
"-"?[0-9]+ {printf("%d.integer value\n",i);i++;}
%%
int yywrap(void){}
int main(){
    yylex();
    return 0;
}