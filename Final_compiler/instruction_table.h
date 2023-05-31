#ifndef instruction_table
#define instuction_table 
#include <stdio.h>
#include <string.h>

#define MAXSIZE 1000

typedef struct 
{
  int m_num;
  char inst_name[15];
  int m_res;
  int m_op1;
  int m_op2;
}asm_inst;

asm_inst * init_instable();

int get_nb_lignes_asm();

void print_inst(asm_inst inst);
void print_instable(asm_inst * inst_table);
void patch(asm_inst * inst_table,int from, int to);

asm_inst add_inst(asm_inst*,char * name,int res, int op1 , int op2);
void interpreteur(asm_inst *t, int nb_instr);
void printInterpreter();

#endif