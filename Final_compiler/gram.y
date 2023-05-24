%{
#include <stdio.h>
#include <stdlib.h>
#include "symbol_table_TAB.h"
#include "instruction_table.h"
int yylex (void);
void yyerror(const char *);
symbol * symbole_table;
asm_inst * instruction_table;
int patching = -1;
int nextCond = -1;
%}

// %code provides {
//   int yylex (void);
//   void yyerror(const char *);
// }


// %define parse.error verbose

%union { int nb ; char * name; }

// %token <s> tTEXT
%token  tPRINT tRETURN tINT tVOID tMAIN tCONST
%token tADD tSUB tDIV tMUL
%token tLT tGT tNE tEQ tLE tGE tASSIGN
%token tLBRACE tLPAR tRBRACE tRPAR tSEMI tCOMMA
%token tTRUE tFALSE
%token <name> tID
%token <nb> tNB tIF tELSE tWHILE
%left tOR
%left tAND
%left tCOMMA
%nonassoc tEQ tNE
%nonassoc tLT tLE tGT tGE
%left tADD tSUB
%left tMUL tDIV
%right tNOT
%right tASSIGN

%type <name> CompOp
%type <name> LogicOp
%type <nb>   NextStatement
%start program
%%

program 
  :/* eps */ 
  | program Function;

Function 
  : tVOID tID tLPAR DecArg tRPAR tLBRACE Instructions tRBRACE {printf("Void Function declared\n");
                                                               deleteSymbols(symbole_table);
                                                               decrementDepth();
                                                               add_inst(instruction_table,"NOP",-1,-1,-1);}  
  | tINT tID tLPAR DecArg tRPAR tLBRACE Instructions ReturnFinal tSEMI tRBRACE {printf("int Function declared\n");
                                                                                deleteSymbols(symbole_table);
                                                                                decrementDepth();
                                                                                add_inst(instruction_table,"NOP",-1,-1,-1);} 
  | intDeclaration tSEMI
  ;

DecArg
	: /*eps*/
  | tVOID 
  | intArg ;

FunctionCall
	: tID tLPAR funArg tRPAR tSEMI {printf("Fuction Call\n");}; 

funArg
  : /*eps*/
  | Operand
  | Operand tCOMMA funArg;


intArg
	: tINT tID {printf("Argument declared");}
	| tINT tID tCOMMA intArg 

Instructions
  : /*eps*/
  | Instruction Instructions;

Instruction 
  : intDeclaration tSEMI
  | tID tASSIGN Operand 
              {printf("Declared variable update\n");
               int addr1 = unstack(symbole_table);
               asm_inst inst = add_inst(instruction_table,
               "COP",getAddrName(symbole_table,$1),addr1,0);}
                tSEMI 
  | tPRINT tLPAR PrintOperand tRPAR tSEMI  
            { printf("Print statement found\n");}
  | tWHILE tLPAR Condition tRPAR {int startloop = get_nb_lignes_asm();
                                  asm_inst inst = add_inst(instruction_table,"JMPF",-1,-1,-1);
                                  $1 = inst.m_num;} 
    tLBRACE Instructions tRBRACE  {printf("While statement\n");
                                   int current = get_nb_lignes_asm();
                                   patching = $1;
                                   patch(instruction_table,$1,current);}


  | tIF tLPAR Condition tRPAR     {asm_inst inst = add_inst(instruction_table,"JMPF",-1,-1,-1);
                                   $1 = inst.m_num;
                                   int valCond = unstack(symbole_table);
                                   printf("---------- %d ----------\n",valCond);}
    tLBRACE Instructions tRBRACE  {printf("If statement\n");
                                   int current = get_nb_lignes_asm();
                                   patching = $1;
                                   patch(instruction_table,$1,current);
                                   nextCond = current;
                                   deleteSymbols(symbole_table);
                                   decrementDepth();}
    NextStatement
  | FunctionCall tSEMI {printf("function called\n");}
  // | tRETURN Operand   {printf("return Operand statement!\n");
  //                                   unstack(symbole_table);} tSEMI
  ;

PrintOperand
  :tID {add_inst(instruction_table,"PRI",getAddrName(symbole_table,$1),-1,-1);}
  |Operand //@TODO: Ask how to print operand


NextStatement
  : tELSE {patch(instruction_table,patching,nextCond + 1);
           asm_inst inst_else = add_inst(instruction_table,"JMP",1,-1,0);
           $1 = inst_else.m_num;}
           tLBRACE Instructions {int current = get_nb_lignes_asm();
                                 patch(instruction_table,$1,current);} 
           tRBRACE {deleteSymbols(symbole_table);
                    decrementDepth();}
  | /*empty*/
  ;
intDeclaration
  : tINT intDeclarationList;

intDeclarationList
	: tID {printf("int declaration found\n");
				addSymbol(symbole_table,$1,1);}
	| tID tASSIGN {printf("int Declaration & Assignement found\n");
                symbol s = addSymbol(symbole_table,$1,1);} 
                Operand
                {int addr1 = unstack(symbole_table);
                asm_inst inst = add_inst(instruction_table,
                "COP",getAddrName(symbole_table,$1),addr1,0);}
  | intDeclarationList tCOMMA intDeclarationList;

Operand 
  :	tID {printf("Operand ID found\n");
          printf("Operand ID pushed as a tmpvar\n");
          symbol tmp = addSymbol(symbole_table,"tmpvar_id",1);
          asm_inst inst = add_inst(instruction_table,
                          "COP",tmp.addr,getAddrName(symbole_table,$1),0);}
  | tNB {printf("Operand NB found\n");
          printf("Operand NB pushed as a tmpvar\n");
          symbol tmp = addSymbol(symbole_table,"tmpvar_nb",1);
          asm_inst inst = add_inst(instruction_table,"AFC",tmp.addr,$1,0);}
  | Operand tADD Operand {printf("ADD operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_ADD",1);
                          asm_inst inst = add_inst(instruction_table,
                          "ADD",getAddr(symbole_table,result),arg1,arg2);} 
  | Operand tSUB Operand {printf("SUB operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_SUB",1);
                          asm_inst inst = add_inst(instruction_table,
                          "SUB",getAddr(symbole_table,result),arg1,arg2);}
  | Operand tMUL Operand {printf("MUL operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_MUL",1);
                          asm_inst inst = add_inst(instruction_table,
                          "MUL",getAddr(symbole_table,result),arg1,arg2);}
  | Operand tDIV Operand {printf("DIV operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_DIV",1);
                          asm_inst inst = add_inst(instruction_table,
                          "DIV",getAddr(symbole_table,result),arg1,arg2);}
  | tID tLPAR Parametre tRPAR 
  | tID tLPAR tRPAR 
  ;
  
Condition 
  : Operand CompOp Operand {printf("%s Comparison found\n",$2);
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst inst = add_inst(instruction_table,$2,getAddr(symbole_table,result),arg1,arg2);}
  | Operand CompOp Operand {printf("%s Comparison found\n",$2);
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst inst = add_inst(instruction_table,$2,getAddr(symbole_table,result),arg1,arg2);} 
                            LogicOp Condition {printf("Logical %s Statement found!\n",$2);
                                               unstack(symbole_table);
                                               unstack(symbole_table);
                                               symbol result = addSymbol(symbole_table,"tmpvar_ResLogic",1);}
  | tNOT tLPAR Condition tRPAR 
  | Operand
  ;

CompOp
  : tLE {$$ = " LE";
        printf("Operator <= found\n");}
  | tGE {$$ = " GE";
        printf("Operator >= found\n");}
  | tLT {$$ = " LT";
        printf("Operator < found\n");}
  | tGT {$$ = " GT";
        printf("Operator > found\n");}
  | tEQ {$$ = " EQ";
        printf("Operator == found\n");}
  | tNE {$$ = " NE";
        printf("Operator != found\n");}
  ;

LogicOp
  : tAND {$$ = "AND";
         printf("Logical operator AND found\n");}
  | tOR  {$$ = "OR";
         printf("Logival operator OR found\n");}
  ;

Parametre 
    :Operand  
    | Operand tCOMMA Parametre  
    ;

ReturnFinal 
    : tRETURN Operand   {printf("return Operand statement!\n");
                                    unstack(symbole_table);}
    | tRETURN  {printf("return Void Statement\n");}
    ;
%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

extern FILE *ASM;
extern FILE * ASM_final;
int main(void) {
  ASM = fopen("ASM","w");
  ASM_final = fopen("ASM_final","w");

  printf("file opened correctly\n");
	symbole_table = init_sTable();
  instruction_table = init_instable();
  yydebug=1;
  yyparse();
  printf("-----------------START OF PARSING-----------------\n");
	print_sTable(symbole_table); // Should be empty at the end of the parsing except for global variables
  print_instable(instruction_table);
  printf("-----------------END OF PARSING-----------------\n");
  return 0;
}