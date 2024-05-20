%{
    #include <stdio.h>
    extern int yylex();
    void yyerror(char *s); //declaration
%}

%token INT FLOAT ASSIGN EQUAL LPAREN RPAREN LBRACE RBRACE IF WHILE ADD SUB SEMI ID NUM 
%start start
%%
start: INT ID   ;

%%

void yyerror(char *s)
{
 fprintf(stderr,"error: %s\n",s);
 printf("error:%s\n",s);
}

int main()
{
    yyparse();
    printf("\nparse is finished\n");
    return 0;
}

