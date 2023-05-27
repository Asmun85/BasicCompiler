/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    tPRINT = 258,
    tRETURN = 259,
    tINT = 260,
    tVOID = 261,
    tMAIN = 262,
    tCONST = 263,
    tADD = 264,
    tSUB = 265,
    tDIV = 266,
    tMUL = 267,
    tLT = 268,
    tGT = 269,
    tNE = 270,
    tEQ = 271,
    tLE = 272,
    tGE = 273,
    tASSIGN = 274,
    tLBRACE = 275,
    tLPAR = 276,
    tRBRACE = 277,
    tRPAR = 278,
    tSEMI = 279,
    tCOMMA = 280,
    tTRUE = 281,
    tFALSE = 282,
    tID = 283,
    tNB = 284,
    tIF = 285,
    tELSE = 286,
    tWHILE = 287,
    tOR = 288,
    tAND = 289,
    tNOT = 290
  };
#endif
/* Tokens.  */
#define tPRINT 258
#define tRETURN 259
#define tINT 260
#define tVOID 261
#define tMAIN 262
#define tCONST 263
#define tADD 264
#define tSUB 265
#define tDIV 266
#define tMUL 267
#define tLT 268
#define tGT 269
#define tNE 270
#define tEQ 271
#define tLE 272
#define tGE 273
#define tASSIGN 274
#define tLBRACE 275
#define tLPAR 276
#define tRBRACE 277
#define tRPAR 278
#define tSEMI 279
#define tCOMMA 280
#define tTRUE 281
#define tFALSE 282
#define tID 283
#define tNB 284
#define tIF 285
#define tELSE 286
#define tWHILE 287
#define tOR 288
#define tAND 289
#define tNOT 290

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 23 "gram.y"
 int nb ; char * name; 

#line 130 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
