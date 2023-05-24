#include "instruction_table.h"

void main(){
  asm_inst * test =init_insTable();
  asm_inst a = add_inst(test,"COP",1,1,1);
  asm_inst b = add_inst(test,"JMP",2,2,2);
  asm_inst c = add_inst(test,"LD",3,2,2);
  asm_inst d = add_inst(test,"JMPF",4,2,2);
  print_insTable(test);
}