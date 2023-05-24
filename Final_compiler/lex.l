%option noyywrap
%option noinput
%option nounput

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "symbol_table_TAB.h"
#include "instruction_table.h"
#include "y.tab.h"
%}


%x COMMENT

DIGIT     [0-9]
ALPHA     [a-zA-Z]
ALNUM     {ALPHA}|{DIGIT}
ID        {ALPHA}{ALNUM}*
DECNB     {DIGIT}+
HEXNB     0x[0-9a-fA-F]+

%%

"if"      {return tIF;}
"else"    {return tELSE;}
"while"   {return tWHILE;}
"print"   {return tPRINT;}
"return"  {return tRETURN;}
"int"     {return tINT;}
"void"    {return tVOID;}
"const"   {return tCONST;}
"true"    {return tTRUE;}
"false"   {return tFALSE;}

"+"       {return tADD;}
"-"       {return tSUB;}
"/"       {return tDIV;}
"*"       {return tMUL;}

"||"      {return tOR;}
"&&"      {return tAND;}
"!"       {return tNOT;}

"<"       {return tLT;}
">"       {return tGT;}
"!="      {return tNE;}
"=="      {return tEQ;}
"<="      {return tLE;}
">="      {return tGE;}
"="       {return tASSIGN;}

"{"       {incrementDepth();
          return tLBRACE;}

"}"       {return tRBRACE;}

"("       {return tLPAR;}
")"       {return tRPAR;}
";"       {return tSEMI;}
","       {return tCOMMA;}
 
{ID}      {yylval.name = strdup(yytext) ;return tID;}
{DECNB}   {yylval.nb = (int) strtold(yytext,NULL); return tNB;}
{HEXNB}   {yylval.nb = (int) strtold(yytext,NULL);;return tNB;}

