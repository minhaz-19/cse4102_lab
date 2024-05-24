%{    
    #include<stdio.h>
    #include<string.h>
    int i=1;  
%}

%%
[ \n\t] {}
"end" {return 0;}
"int" {printf("%d. keyword int\n",i); i++;}
"float" {printf("%d. keyword float\n",i); i++;}
"char" {printf("%d. keyword char\n",i); i++;}
"main" {printf("%d. keyword main\n",i); i++;}
"return" {printf("%d. keyword return\n",i); i++;}
"(" {printf("%d. Left Parenthesis\n",i); i++;}
")" {printf("%d. Right Parenthesis\n",i); i++;}
"{" {printf("%d. Second Bracket Open\n",i); i++;}
"}" {printf("%d. Second Bracket Close\n",i); i++;}
"=" {printf("%d. Assignment operator\n",i); i++;}
";" {printf("%d. Semicolon detected\n",i); i++;}
"+" {printf("%d. Plus Operator Found\n",i); i++;}
[a-zA-Z_][a-zA-Z_0-9$]* {printf("%d. Identifier detected\n",i); i++;}
\/\/[^\n]* {printf("%d. Single line comment detected\n",i); i++;}
\/\*.*\*\/ {printf("%d. Multiline comment detected\n",i); i++;}
\"[^\n]*\"|'[^\n]* {printf("%d. String detected\n",i); i++;}
[0-9]+\.[0-9]* {printf("%d. Float detected\n",i); i++;}
[0-9]+ {printf("%d. Integer detected\n",i); i++;}

%%
int yywrap(void){}
int main(){
    yylex();
    return 0;
}