main:
	 flex lexer.l
	 gcc lex.yy.c
	 ./a.exe