%{
/*definition section declarations*/
%}


digit [0-9]
alphabhet [A-Za-z]
string ({alphabhet}+)

%%
"Hello" {printf("Hello matched\n");}
"Hello, world!" {printf("Matched\n");}
{digit}*("1"|"3"|"5"|"7"|"9") {printf("odd Number\n");}
{digit}*("2"|"4"|"6"|"8"|"0") {printf("even Number\n");}
{string}+|({string}+" "{string}+)* {printf("String\n");}
%%

int yywrap()
{

}
// write for the functions

int main()
{
    yylex();
    return 0;

}