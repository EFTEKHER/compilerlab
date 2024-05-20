%{
/*definition section declarations*/
%}




%%
"Hello" {printf("Hello matched\n");}
"Hello, world!" {printf("Matched\n");}
[0-9]("1"|"3"|"5"|"7"|"9") {printf("odd Number\n");}
[0-9]("2"|"4"|"6"|"8"|"0") {printf("even Number\n");}
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