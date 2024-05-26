%{
#include<stdio.h>
void yyerror(char *s);
extern int yylex();
%}

%token MAIN INT FLOAT DOUBLE CHAR RET OPENNING_PARENTHESIS CLOSING_PARENTHESIS OPENING_CURLY_BRACE CLOSING_CURLY_BRACE SEMI_COLON EQUAL PLUS ASTERISK IDENTIFIER INTEGER FLOATING_POINT_NUMBER
%start code
%%
code : INT MAIN OPENNING_PARENTHESIS CLOSING_PARENTHESIS OPENING_CURLY_BRACE stmnts CLOSING_CURLY_BRACE;
stmnts : dec_st stmnts| ;
dec_st : INT IDENTIFIER EQUAL INTEGER SEMI_COLON | INT IDENTIFIER SEMI_COLON | INT IDENTIFIER EQUAL IDENTIFIER PLUS IDENTIFIER SEMI_COLON;


%%

int main()
{
    yyparse();
    printf("parsing Complete\n");
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s", s);
}