#ifndef symbol_table_TAB
#define symbol_table_TAB
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#define SIZEMAX 1000

typedef struct
{
    char sName[20];
    int type; // 1 for simple var, 2 for constant
    int depth;
    int addr;
    int assigned; //if constant, reasignement is not allowed!
} symbol;

symbol *init_sTable();
void print_sTable(symbol *t);
void printSymbol(symbol s);
symbol addSymbol(symbol *t, char *name, int type);
void deleteSymbols(symbol *t);
void incrementDepth();
void decrementDepth();
int getAddr(symbol *t, symbol s);
int getAddrName(symbol *t, char *targetname);
int unstack(symbol *t);
symbol getSymbolByName(symbol *t, char *targetname);
void const_assigned(symbol* s);
symbol addSymbolAssigned(symbol *t, char *sName, int type);
#endif