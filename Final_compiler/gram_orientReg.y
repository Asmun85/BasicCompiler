%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "symbol_table_TAB.h"
#include "instruction_table.h"
#include "FunctionTable.h"
int yylex (void);
void yyerror(const char *);
symbol * symbole_table;
asm_inst * instruction_table;
char * my_fun;
table_fun * function_table;
int patching = -1;
int nextCond = -1;
int startloop = -1;
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
%type <nb>   NextStatement Operand
%start program
%%

program 
  :
  | program Function;

Function 
  : tVOID tID tLPAR {patching = get_nb_lignes_asm();	
							      //  table_fun new_fun = add_fun(function_table, $2, -1, patching,0);
                     }
    DecArg tRPAR tLBRACE Instructions tRBRACE {printf("Void Function declared\n");
                                               deleteSymbols(symbole_table);
                                               decrementDepth();
                                               add_inst(instruction_table,"NOP",-1,-1,-1);}  
  | tINT tID tLPAR DecArg tRPAR tLBRACE Instructions ReturnFinal tSEMI tRBRACE {printf("int Function declared\n");
                                                                                deleteSymbols(symbole_table);
                                                                                decrementDepth();
                                                                                add_inst(instruction_table,"NOP",-1,-1,-1);} 
  | intDeclaration tSEMI
  | ConstDeclaration tSEMI
  ;

DecArg
	: 
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
  | ConstDeclaration tSEMI
  | tID tASSIGN Operand tSEMI 
  {if(getAddrName(symbole_table,$1) == -1){
    printf("ERROR : SYMBOL NOT FOUND\n");
    exit(0);}
   else{
    if(getSymbolByName(symbole_table,$1).type == 2){
      //Constant 
      if(getSymbolByName(symbole_table,$1).assigned){
        printf("ERROR : CAN NOT RE ASSIGN A CONST !!!!!! \n");
        exit(1);
      }
      else{
        printf("Const assignement (firs and last one)\n");
        int addr1 = unstack(symbole_table);
        asm_inst inst = add_inst(instruction_table,
                "COP",getAddrName(symbole_table,$1),addr1,0);
        const_assigned(&symbole_table[getAddrName(symbole_table,$1)]);
      }
    }
    else if(getSymbolByName(symbole_table,$1).type == 1){
      //Simple Variable
      if($3 !=1){
        printf("Declared variable update\n");
        int addr1 = unstack(symbole_table);
        asm_inst inst = add_inst(instruction_table,
        "COP",getAddrName(symbole_table,$1),addr1,0);
      }
      else{
        //for value update with function call we don't need a tmp var we need to COP the result of the function with the return address
      }

    }
   }

  }
              // {printf("Declared variable update\n");
              //  int addr1 = unstack(symbole_table);
              //  asm_inst inst = add_inst(instruction_table,
              //  "COP",getAddrName(symbole_table,$1),addr1,0);}
                
  | tPRINT tLPAR PrintOperand tRPAR tSEMI  
            { printf("Print statement found\n");}
  | tWHILE tLPAR {startloop = get_nb_lignes_asm();} 
    Condition tRPAR {asm_inst inst = add_inst(instruction_table,"JMPF",-1,-1,-1);
                     $1 = inst.m_num;
                     int valCond = unstack(symbole_table);} 
    tLBRACE Instructions tRBRACE  {printf("While statement\n");
                                   int current = get_nb_lignes_asm();
                                   patching = $1;
                                   patch(instruction_table,$1,current);
                                   asm_inst inst = add_inst(instruction_table,"JMP",-1,startloop,-1);
                                   // The minus one is due to the JMPF instruction we have to go to the comparison instruction
                                   }


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
  | FunctionCall tSEMI {printf("function called as an instruction\n");}
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
                 asm_inst LOAD = add_inst(instruction_table,
                "LOAD",0,addr1,0); //we load in the r(0) the value contained in addr1 (the value of the temporary variable)
                asm_inst inst = add_inst(instruction_table,
                "STR",addr1,0,0);}
  | intDeclarationList tCOMMA intDeclarationList;

ConstDeclaration
  :tCONST tINT constDeclarationList;

constDeclarationList
  :tID {printf("Const Declaration found\n");
        symbol s = addSymbol(symbole_table,$1,2);}
  |tID tASSIGN  {printf("Const declaration & assignement found\n");
                 symbol s = addSymbolAssigned(symbole_table,$1,2);}
                Operand     
                {int addr1 = unstack(symbole_table);
                 asm_inst LOAD = add_inst(instruction_table,
                "LOAD",0,addr1,0); //we load in the r(0) the value contained in addr1 (the value of the temporary variable)
                asm_inst inst = add_inst(instruction_table,
                "STR",addr1,0,0);}
  |constDeclarationList tCOMMA intDeclarationList;

Operand 
  :	tID { printf("Operand ID found\n");
          printf("Operand ID pushed as a tmpvar\n");
          symbol tmp = addSymbol(symbole_table,"tmpvar_id",1);
          // asm_inst inst1 = add_inst(instruction_table,"LOAD",tmp.addr,getAddrName(symbole_table,$1),0);
          asm_inst LOAD = add_inst(instruction_table,
                          "LOAD",0,tmp.addr,0); //we load in the r(0) the value contained in addr1 (the value of the temporary variable)
          asm_inst inst = add_inst(instruction_table,
                          "STR",tmp.addr,0,0);}
  | tNB   {printf("Operand NB found\n");
           printf("Operand NB pushed as a tmpvar\n");
           symbol tmp = addSymbol(symbole_table,"tmpvar_nb",1);
           asm_inst inst = add_inst(instruction_table,"AFC",tmp.addr,$1,0);
           asm_inst str  = add_inst(instruction_table,"STR",0,tmp.addr,0);}
  | Operand tADD Operand {printf("ADD operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_ADD",1);
                          asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                          asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                          asm_inst inst = add_inst(instruction_table,"ADD",0,0,1);
                          asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);} 
  | Operand tSUB Operand {printf("SUB operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_SUB",1);
                          asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                          asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                          asm_inst inst = add_inst(instruction_table,"SUB",0,0,1);
                          asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);}
  | Operand tMUL Operand {printf("MUL operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_MUL",1);
                          asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                          asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                          asm_inst inst = add_inst(instruction_table,"MUL",0,0,1);
                          asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);}
  | Operand tDIV Operand {printf("DIV operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_DIV",1);
                          asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                          asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                          asm_inst inst = add_inst(instruction_table,"DIV",0,0,1);
                          asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);}
  | tID tLPAR Parametre tRPAR 
  | tID tLPAR tRPAR 
  | FunctionCall {$$ = 1;
                  printf("Function call as an oprand \n");} // We don't need a tmp variable when we assign a value with a function 
  ;
  
Condition 
  : Operand CompOp Operand {printf("%s Comparison found\n",$2);
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                            asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                            asm_inst inst = add_inst(instruction_table,$2,0,0,1);
                            asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);}
  | Operand CompOp Operand {printf("%s Comparison found\n",$2);
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst ld1  = add_inst(instruction_table,"LOAD",0,arg1,-1);
                            asm_inst ld2  = add_inst(instruction_table,"LOAD",1,arg2,-1);
                            asm_inst inst = add_inst(instruction_table,$2,0,0,1);
                            asm_inst str  = add_inst(instruction_table,"STR",getAddr(symbole_table,result),0,-1);} 
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
  function_table = init_funtable();
  // yydebug=1;
  yyparse();
  printf("-----------------START OF PARSING-----------------\n");
	print_sTable(symbole_table); // Should be empty at the end of the parsing except for global variables
  print_instable(instruction_table);
  print_funtable(function_table);
  printf("-----------------END OF PARSING-----------------\n");
  return 0;
}