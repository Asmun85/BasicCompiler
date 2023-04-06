#include <stdlib.h>
#include <stdio.h>

struct symb
{
  char * id;
  int value;
  char * type;
  int offset;
  int scope;
};
typedef struct symb symbol;
typedef struct stack_symb
{
  symbol data;
  struct stack_symb* next;
}stack;

symbol *init_table(void);
void table_push(symbol data);
symbol table_pop();
symbol table_peak();
void display_top(stack * stack);
int OffesetOfSymbol(char * Id);

