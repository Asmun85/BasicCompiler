#include "instruction_table.h"
#include <stdio.h>
#include <stdlib.h>

int AsmTableSize = 0;
int AsmLines = 0;
FILE *ASM;
FILE * ASM_final;
asm_inst * init_instable(){
  return malloc(MAXSIZE * sizeof(asm_inst));
}

int get_nb_lignes_asm(){
  return AsmLines;
}

void print_inst(asm_inst inst){
  printf(" %s\t", inst.inst_name);
  printf(" %d\t", inst.m_res);
  printf(" %d\t", inst.m_op1);
  printf(" %d\t", inst.m_op2);
  printf("\n");
}

void print_instable(asm_inst * inst_Table){
  printf("---------------ASM INSTRUCTION TABLE---------------\n");
  asm_inst aux;
  for (int i = 0; i<AsmTableSize;i++){
    aux = inst_Table[i];
    print_inst(aux);
    fprintf(ASM_final, "%d \t %s\t %d\t , %d\t , %d\t",aux.m_num,aux.inst_name,aux.m_res,
          aux.m_op1,aux.m_op2);
    fprintf(ASM_final,"\n");
  }
  printf("---------------END OF INSTRUCTION TABLE---------------\n");
}

void patch(asm_inst * inst_table,int from, int to){
  inst_table[from].m_op1 = to;
}

asm_inst add_inst(asm_inst * inst_table,char * name, int res,int op1, int op2){
  asm_inst new_instruction;
  new_instruction.m_num = AsmTableSize;
  strcpy(new_instruction.inst_name,name);
  new_instruction.m_op1 = op1;
  new_instruction.m_op2 = op2;
  new_instruction.m_res = res;
  inst_table[AsmTableSize] = new_instruction;
  AsmTableSize++;
  fprintf(ASM, "%d \t %s\t %d\t , %d\t , %d\t",new_instruction.m_num,new_instruction.inst_name,new_instruction.m_res,
          new_instruction.m_op1,new_instruction.m_op2);
  fprintf(ASM,"\n");
  AsmLines++;
  printf("New ASM instruction added\n");
  print_inst(new_instruction);
  return new_instruction;
}
