%{    
    #include<stdio.h>
    void yyerror(char *s);
    extern int yylex();
%}
%token INT DOUBLE FLOAT CHAR MAIN RETURN ARGUMENT OPEN_SECOND_BRACKET CLOSE_SECOND_BRACKET OPEN_PARENTHESIS CLOSE_PARENTHESIS ASSIGNMENT PLUS SEMICOLON IDENTIFIER FLOAT_VALUE INTEGER_VALUE
%start code
%%

code: INT MAIN OPEN_PARENTHESIS CLOSE_PARENTHESIS OPEN_SECOND_BRACKET stmnts CLOSE_SECOND_BRACKET
stmnts: dec_st stmnts | ;
dec_st: INT IDENTIFIER ASSIGNMENT INTEGER_VALUE SEMICOLON
        | INT IDENTIFIER SEMICOLON
        |
        ;

%%

int main() {
    yyparse();
    printf("Parsing Complete.\n");
}

void yyerror(char *s) {
    fprintf(stderr,"error:%s",s);
}

