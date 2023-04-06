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

static stack* symbol_table = NULL;

stack *init_table(void){
  return (NULL);
}
//the push is functional 
void table_push(symbol data){
    stack * aux;
    aux = (stack*)malloc(sizeof(stack));
    aux -> data = data;
    aux -> next = symbol_table;
    symbol_table = aux;
}

//the pop is functional 
symbol table_pop(){
    stack * aux = symbol_table;
    if (!(symbol_table)){
      fprintf(stderr,"\nPop failed. The stack is Empty!");
    }
    symbol popped_item = symbol_table->data;
    symbol_table = symbol_table->next;
    free(aux);
    return popped_item;
}

int get_offset(symbol m_symbol){
  return m_symbol.offset;
}

symbol table_peak(){
  if (symbol_table ==NULL){
    fprintf(stderr,"\nPeak failed. The Stack is Empty!");
  }else{
    return symbol_table->data;
  }
}

int OffesetOfSymbol(char * Id){
  stack * aux = symbol_table; 
  while(aux != NULL){
    if(aux->data.id == Id){
      return aux->data.offset;
    }else{
      aux = aux->next;
    }
  }
  if(aux == NULL){  
    return -1;
  }
}

void display_top(stack * stack){
  if (stack  == NULL){
    printf("The symbol table is empty!\n");
  }else{
    printf("The first element is: %s\n",(*stack).data.id); //write a function to display the data;
  }
}

//if we finish block we remove 
//all the varibale with a less important scope 

int main(){
  printf("test main\n");
  symbol test1;
  test1.id ="a";
  test1.offset=0;
  test1.scope=0;
  test1.value = 8;
  test1.type = "int";
  // stack * my_stack = init_table();
  table_push(test1);
  display_top(symbol_table);
  symbol aux = table_peak();
  printf("test peak : %s\n",aux.id);
  int offset_test = OffesetOfSymbol("a");
  printf("offset :%d\n",offset_test);
  OffesetOfSymbol("b");
  table_pop(symbol_table);
  display_top(symbol_table);
  return 1;
}


