main:
	bison -d parser.y
	flex lexer.l
	gcc parser.tab.c lex.yy.c
	./a <input.txt> output.txt