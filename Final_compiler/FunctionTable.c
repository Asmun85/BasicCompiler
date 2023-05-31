#include "FunctionTable.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int FunTableSize = 0;

table_fun * init_funtable(){
  return malloc(MAXSIZEFUN * sizeof(table_fun));
}


void print_fun(table_fun my_function){
  printf(" %s\t",my_function.id);
  printf(" %d\t",my_function.param);
  printf(" %d\t",my_function.adresse);
  printf(" %d\t",my_function.ligne);
  printf(" %d\t",my_function.retour);
  printf("\n");
}

void print_funtable(table_fun * function_tab){
  printf("---------------FUNCTION TABLE---------------\n");
  table_fun aux;
  for (int i = 0; i<FunTableSize;i++){
    aux = function_tab[i];
    print_fun(aux);
  }
  printf("---------------END OF FUNCTION TABLE---------------\n");
}

table_fun add_fun(table_fun * function_tab, char *id,int param,int adresse, int ligne){
  table_fun new_fun;
  new_fun.adresse =adresse;
  strcpy(new_fun.id,id);
  new_fun.param = param;
  new_fun.ligne = ligne;
  new_fun.retour = -1; // la valeur de retour sera updater avec la fonction set_retour
  function_tab[FunTableSize] = new_fun;
  FunTableSize++;
  printf("New function added to the function table : %s\n",id);
  print_fun(new_fun);
  return new_fun;
}