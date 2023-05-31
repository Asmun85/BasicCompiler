GRM=gram.y
LEX=lex.l
BIN=compiler

CC=gcc
GCCFLAGS=-Wall -g -Wno-unused-variable

OBJ=y.tab.o lex.yy.o symbol_table_TAB.o instruction_table.o FunctionTable.o

all: $(BIN)

%.o : %.c
	$(CC) -c $(GCCFLAGS) $< -o $@

y.tab.c: $(GRM)
	yacc -d -t -v $<

lex.yy.c: $(LEX)
	flex $<

$(BIN): $(OBJ)
	$(CC) $(GCCFLAGS) $^ -o $@

clean:
	rm $(OBJ) y.tab.c y.tab.h lex.yy.c gram.output compiler

everything: all
	./$(BIN) < test_all.c

varDecAssing: all
	./$(BIN) < IntDecAndAssign.c

IfElse: all
	./$(BIN) < if_else.c

Nestedif:
	./$(BIN) < nested_if.c

While:
	./$(BIN) < While.c

Funcall:
	./$(BIN) < Functioncall.c