#ifndef FunctionTable
#define FunctionTable

#define MAXSIZEFUN 10000
typedef struct Element_FUN Element_FUN;
typedef struct Element_FUN
{
    char *id;
    int param;
	int adresse;
    int retour;
    int ligne;
}table_fun;

table_fun * init_funtable();


table_fun add_fun(table_fun * function_tab, char *id,int param, 
                   int adresse, int ligne);
void print_fun(table_fun my_function);
void print_funtable(table_fun * functon_tab);
void setretour(table_fun* function_tab,char *id, int retour);

char* adresse_length_fun(table_fun* function_tab,int length);

int getAdresse(table_fun* function_tab,char *id);
int getRetour(table_fun* function_tab,char *id);
#endif