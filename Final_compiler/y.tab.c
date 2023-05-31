/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "gram.y"

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

#line 88 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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
#line 27 "gram.y"
 int nb ; char * name; 

#line 213 "y.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  13
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   156

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  36
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  71
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  145

#define YYUNDEFTOK  2
#define YYMAXUTOK   290


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    54,    54,    57,    58,    62,    62,    69,    73,    74,
      78,    83,    84,    85,    88,    91,    92,    95,    96,    99,
     100,   101,   141,   143,   144,   143,   156,   160,   156,   168,
     174,   175,   180,   183,   180,   187,   191,   195,   197,   197,
     203,   206,   209,   211,   211,   217,   220,   225,   229,   235,
     241,   247,   253,   254,   255,   260,   265,   265,   274,   275,
     279,   281,   283,   285,   287,   289,   294,   296,   301,   302,
     306,   308
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "tPRINT", "tRETURN", "tINT", "tVOID",
  "tMAIN", "tCONST", "tADD", "tSUB", "tDIV", "tMUL", "tLT", "tGT", "tNE",
  "tEQ", "tLE", "tGE", "tASSIGN", "tLBRACE", "tLPAR", "tRBRACE", "tRPAR",
  "tSEMI", "tCOMMA", "tTRUE", "tFALSE", "tID", "tNB", "tIF", "tELSE",
  "tWHILE", "tOR", "tAND", "tNOT", "$accept", "program", "Functions",
  "Function", "$@1", "Main", "DecArg", "FunctionCall", "intArg",
  "Instructions", "Instruction", "$@2", "$@3", "$@4", "$@5",
  "PrintOperand", "NextStatement", "$@6", "$@7", "intDeclaration",
  "intDeclarationList", "$@8", "ConstDeclaration", "constDeclarationList",
  "$@9", "Operand", "Condition", "$@10", "CompOp", "LogicOp", "Parametre",
  "ReturnFinal", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290
};
# endif

#define YYPACT_NINF (-92)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-56)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      66,   -23,    -8,    22,    30,    42,    66,    54,    67,    56,
      75,    82,    76,   -92,    98,   -92,   -92,   -92,   -92,   -92,
      88,    78,   -92,    90,    85,    91,    68,    83,   -92,    92,
     -92,    94,   -92,    93,   -92,    78,    95,    96,   -92,   -92,
      72,    89,    99,   100,    68,   -92,   101,    29,    68,    68,
      68,    68,   117,     1,     1,    72,     1,   -92,     3,   102,
      87,    87,   -92,   -92,   -92,   103,    78,    71,   105,   106,
     104,   119,     1,   107,   108,   111,   112,    68,   113,    73,
      68,    68,    12,   -92,   -92,    68,   114,   -92,   -92,   -92,
     -92,   -92,   -92,   -92,    64,   116,    72,    25,   118,   109,
      51,   120,    12,    72,   122,   121,   -92,   113,    12,   -92,
     -92,   -92,   -92,   -92,   -92,    68,   -92,   123,   -92,   -92,
     124,    33,   115,   -92,   -92,    74,     1,   128,   -92,   -92,
      12,   127,     1,   -92,   -92,   129,   125,   -92,   -92,   -92,
     130,     1,   -92,   131,   -92
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,    37,
      36,     0,     0,     1,     0,     2,     3,     8,     9,    38,
      11,     0,     5,    42,    41,     0,     0,     0,    12,     0,
      13,    37,    40,     0,    43,     0,     0,    46,    47,    54,
      39,    15,     0,     0,     0,    45,     0,     0,     0,     0,
       0,     0,     0,    17,    17,    44,    17,    53,    68,     0,
      48,    49,    51,    50,    16,     0,     0,     0,     0,     0,
       0,     0,    17,     0,     0,     0,     0,     0,    52,     0,
       0,     0,     0,    23,    29,    71,     0,    18,    19,    20,
       6,    10,    69,    14,    46,     0,    31,     0,     0,     0,
      59,     0,     0,    70,     0,     0,    21,     0,     0,    62,
      63,    65,    64,    60,    61,     0,    26,     0,     7,    22,
       0,    56,     0,    24,    58,     0,    17,     0,    67,    66,
       0,     0,    17,    57,    27,     0,    35,    25,    32,    28,
       0,    17,    33,     0,    34
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -92,   -92,   134,   -92,   -92,   -92,   -92,   -46,    77,   -53,
     -92,   -92,   -92,   -92,   -92,   -92,   -92,   -92,   -92,    32,
     -19,   -92,    70,   -92,   -92,   -26,   -91,   -92,   -92,   -92,
     -31,   -92
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     4,     5,     6,    33,    15,    29,    39,    30,    71,
      72,   102,   127,   122,   136,    95,   139,   140,   143,    73,
      10,    26,    74,    24,    44,   100,   101,   125,   115,   130,
      59,    86
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      40,    75,    32,    76,    65,     9,    66,    70,    70,     3,
      70,   117,    48,    49,    50,    51,    45,   120,    55,    87,
      11,    58,    60,    61,    62,    63,    70,    12,    77,    67,
      13,    68,     7,    69,    48,    49,    50,    51,     7,   133,
      37,    38,    48,    49,    50,    51,    92,    99,    14,   106,
      98,    58,    57,    96,    97,    58,   -55,    37,    38,   103,
      48,    49,    50,    51,   109,   110,   111,   112,   113,   114,
       8,     1,     2,   131,     3,    19,     8,    20,    17,   135,
      70,    48,    49,    50,    51,    47,    70,   -30,   142,   121,
      80,    18,    81,    27,    28,    70,    37,    38,    50,    51,
      21,    94,    38,    22,    23,    25,    31,   128,   129,    34,
      35,    41,    36,    19,    52,    42,    43,    47,    46,    53,
      54,    56,    27,    85,    79,    78,    82,    83,    84,    64,
     108,    88,    89,    90,    91,   126,     0,    93,   104,   105,
      16,   107,     0,   116,   118,   119,   123,   124,   132,   134,
     141,   137,     0,   144,     0,     0,   138
};

static const yytype_int16 yycheck[] =
{
      26,    54,    21,    56,     3,    28,     5,    53,    54,     8,
      56,   102,     9,    10,    11,    12,    35,   108,    44,    72,
      28,    47,    48,    49,    50,    51,    72,     5,    25,    28,
       0,    30,     0,    32,     9,    10,    11,    12,     6,   130,
      28,    29,     9,    10,    11,    12,    77,    35,     6,    24,
      81,    77,    23,    79,    80,    81,    23,    28,    29,    85,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
       0,     5,     6,   126,     8,    19,     6,    21,    24,   132,
     126,     9,    10,    11,    12,    21,   132,    23,   141,   115,
      19,    24,    21,     5,     6,   141,    28,    29,    11,    12,
      25,    28,    29,    21,    28,     7,    28,    33,    34,    19,
      25,    28,    21,    19,    25,    23,    23,    21,    23,    20,
      20,    20,     5,     4,    21,    23,    21,    21,    24,    52,
      21,    24,    24,    22,    22,    20,    -1,    24,    24,    23,
       6,    23,    -1,    23,    22,    24,    23,    23,    20,    22,
      20,    22,    -1,    22,    -1,    -1,    31
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     5,     6,     8,    37,    38,    39,    55,    58,    28,
      56,    28,     5,     0,     6,    41,    38,    24,    24,    19,
      21,    25,    21,    28,    59,     7,    57,     5,     6,    42,
      44,    28,    56,    40,    19,    25,    21,    28,    29,    43,
      61,    28,    23,    23,    60,    56,    23,    21,     9,    10,
      11,    12,    25,    20,    20,    61,    20,    23,    61,    66,
      61,    61,    61,    61,    44,     3,     5,    28,    30,    32,
      43,    45,    46,    55,    58,    45,    45,    25,    23,    21,
      19,    21,    21,    21,    24,     4,    67,    45,    24,    24,
      22,    22,    66,    24,    28,    51,    61,    61,    66,    35,
      61,    62,    47,    61,    24,    23,    24,    23,    21,    13,
      14,    15,    16,    17,    18,    64,    23,    62,    22,    24,
      62,    61,    49,    23,    23,    63,    20,    48,    33,    34,
      65,    45,    20,    62,    22,    45,    50,    22,    31,    52,
      53,    20,    45,    54,    22
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    36,    37,    38,    38,    40,    39,    39,    39,    39,
      41,    42,    42,    42,    43,    44,    44,    45,    45,    46,
      46,    46,    46,    47,    48,    46,    49,    50,    46,    46,
      51,    51,    53,    54,    52,    52,    55,    56,    57,    56,
      56,    58,    59,    60,    59,    59,    61,    61,    61,    61,
      61,    61,    61,    61,    61,    62,    63,    62,    62,    62,
      64,    64,    64,    64,    64,    64,    65,    65,    66,    66,
      67,    67
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     2,     2,     0,     0,     8,    10,     2,     2,
       7,     0,     1,     1,     5,     2,     4,     0,     2,     2,
       2,     4,     5,     0,     0,     9,     0,     0,    10,     2,
       1,     1,     0,     0,     6,     0,     2,     1,     0,     4,
       3,     3,     1,     0,     4,     3,     1,     1,     3,     3,
       3,     3,     4,     3,     1,     3,     0,     6,     4,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     3,
       2,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 5:
#line 62 "gram.y"
                    {patching = get_nb_lignes_asm();	
							       table_fun new_fun = add_fun(function_table, (yyvsp[-1].name), -1, patching,0);
                     }
#line 1492 "y.tab.c"
    break;

  case 6:
#line 65 "gram.y"
                                       {printf("Void Function declared\n");
                                               deleteSymbols(symbole_table);
                                               decrementDepth();
                                               add_inst(instruction_table,"NOP",-1,-1,-1);}
#line 1501 "y.tab.c"
    break;

  case 7:
#line 69 "gram.y"
                                                                               {printf("int Function declared\n");
                                                                                deleteSymbols(symbole_table);
                                                                                decrementDepth();
                                                                                add_inst(instruction_table,"NOP",-1,-1,-1);}
#line 1510 "y.tab.c"
    break;

  case 14:
#line 88 "gram.y"
                                          {printf("Fuction Call\n");}
#line 1516 "y.tab.c"
    break;

  case 15:
#line 91 "gram.y"
                   {printf("Argument declared");}
#line 1522 "y.tab.c"
    break;

  case 21:
#line 102 "gram.y"
  {if(getAddrName(symbole_table,(yyvsp[-3].name)) == -1){
    printf("ERROR : SYMBOL NOT FOUND\n");
    exit(0);}
   else{
    if(getSymbolByName(symbole_table,(yyvsp[-3].name)).type == 2){
      //Constant 
      if(getSymbolByName(symbole_table,(yyvsp[-3].name)).assigned){
        printf("ERROR : CAN NOT RE ASSIGN A CONST !!!!!! \n");
        exit(1);
      }
      else{
        printf("Const assignement (firs and last one)\n");
        int addr1 = unstack(symbole_table);
        asm_inst inst = add_inst(instruction_table,
                "COP",getAddrName(symbole_table,(yyvsp[-3].name)),addr1,0);
        const_assigned(&symbole_table[getAddrName(symbole_table,(yyvsp[-3].name))]);
      }
    }
    else if(getSymbolByName(symbole_table,(yyvsp[-3].name)).type == 1){
      //Simple Variable
      if((yyvsp[-1].nb) !=1){
        printf("Declared variable update\n");
        int addr1 = unstack(symbole_table);
        asm_inst inst = add_inst(instruction_table,
        "COP",getAddrName(symbole_table,(yyvsp[-3].name)),addr1,0);
      }
      else{
        //for value update with function call we don't need a tmp var we need to COP the result of the function with the return address
      }

    }
   }

  }
#line 1561 "y.tab.c"
    break;

  case 22:
#line 142 "gram.y"
            { printf("Print statement found\n");}
#line 1567 "y.tab.c"
    break;

  case 23:
#line 143 "gram.y"
                 {startloop = get_nb_lignes_asm();}
#line 1573 "y.tab.c"
    break;

  case 24:
#line 144 "gram.y"
                    {asm_inst inst = add_inst(instruction_table,"JMPF",-1,-1,-1);
                     (yyvsp[-4].nb) = inst.m_num;
                     int valCond = unstack(symbole_table);}
#line 1581 "y.tab.c"
    break;

  case 25:
#line 147 "gram.y"
                                  {printf("While statement\n");
                                   int current = get_nb_lignes_asm();
                                   patching = (yyvsp[-8].nb);
                                   patch(instruction_table,(yyvsp[-8].nb),current);
                                   asm_inst inst = add_inst(instruction_table,"JMP",-1,startloop,-1);
                                   // The minus one is due to the JMPF instruction we have to go to the comparison instruction
                                   }
#line 1593 "y.tab.c"
    break;

  case 26:
#line 156 "gram.y"
                                  {asm_inst inst = add_inst(instruction_table,"JMPF",-1,-1,-1);
                                   (yyvsp[-3].nb) = inst.m_num;
                                   int valCond = unstack(symbole_table);
                                   printf("---------- %d ----------\n",valCond);}
#line 1602 "y.tab.c"
    break;

  case 27:
#line 160 "gram.y"
                                  {printf("If statement\n");
                                   int current = get_nb_lignes_asm();
                                   patching = (yyvsp[-7].nb);
                                   patch(instruction_table,(yyvsp[-7].nb),current);
                                   nextCond = current;
                                   deleteSymbols(symbole_table);
                                   decrementDepth();}
#line 1614 "y.tab.c"
    break;

  case 29:
#line 168 "gram.y"
                       {printf("function called as an instruction\n");}
#line 1620 "y.tab.c"
    break;

  case 30:
#line 174 "gram.y"
       {add_inst(instruction_table,"PRI",getAddrName(symbole_table,(yyvsp[0].name)),-1,-1);}
#line 1626 "y.tab.c"
    break;

  case 31:
#line 175 "gram.y"
           {int addr = unstack(symbole_table);
            asm_inst inst = add_inst(instruction_table,"PRI",addr,0,0);}
#line 1633 "y.tab.c"
    break;

  case 32:
#line 180 "gram.y"
          {patch(instruction_table,patching,nextCond + 1);
           asm_inst inst_else = add_inst(instruction_table,"JMP",1,-1,0);
           (yyvsp[0].nb) = inst_else.m_num;}
#line 1641 "y.tab.c"
    break;

  case 33:
#line 183 "gram.y"
                                {int current = get_nb_lignes_asm();
                                 patch(instruction_table,(yyvsp[-3].nb),current);}
#line 1648 "y.tab.c"
    break;

  case 34:
#line 185 "gram.y"
                   {deleteSymbols(symbole_table);
                    decrementDepth();}
#line 1655 "y.tab.c"
    break;

  case 37:
#line 195 "gram.y"
              {printf("int declaration found\n");
				addSymbol(symbole_table,(yyvsp[0].name),1);}
#line 1662 "y.tab.c"
    break;

  case 38:
#line 197 "gram.y"
                      {printf("int Declaration & Assignement found\n");
                symbol s = addSymbol(symbole_table,(yyvsp[-1].name),1);}
#line 1669 "y.tab.c"
    break;

  case 39:
#line 200 "gram.y"
                {int addr1 = unstack(symbole_table);
                asm_inst inst = add_inst(instruction_table,
                "COP",getAddrName(symbole_table,(yyvsp[-3].name)),addr1,0);}
#line 1677 "y.tab.c"
    break;

  case 42:
#line 209 "gram.y"
       {printf("Const Declaration found\n");
        symbol s = addSymbol(symbole_table,(yyvsp[0].name),2);}
#line 1684 "y.tab.c"
    break;

  case 43:
#line 211 "gram.y"
                {printf("Const declaration & assignement found\n");
                 symbol s = addSymbolAssigned(symbole_table,(yyvsp[-1].name),2);}
#line 1691 "y.tab.c"
    break;

  case 44:
#line 214 "gram.y"
                {int addr1 = unstack(symbole_table);
                 asm_inst inst = add_inst(instruction_table,
                 "COP",getAddrName(symbole_table,(yyvsp[-3].name)),addr1,-1);}
#line 1699 "y.tab.c"
    break;

  case 46:
#line 220 "gram.y"
            { printf("Operand ID found\n");
          printf("Operand ID pushed as a tmpvar\n");
          symbol tmp = addSymbol(symbole_table,"tmpvar_id",1);
          asm_inst inst = add_inst(instruction_table,
                          "COP",tmp.addr,getAddrName(symbole_table,(yyvsp[0].name)),0);}
#line 1709 "y.tab.c"
    break;

  case 47:
#line 225 "gram.y"
        {printf("Operand NB found\n");
          printf("Operand NB pushed as a tmpvar\n");
          symbol tmp = addSymbol(symbole_table,"tmpvar_nb",1);
          asm_inst inst = add_inst(instruction_table,"AFC",tmp.addr,(yyvsp[0].nb),0);}
#line 1718 "y.tab.c"
    break;

  case 48:
#line 229 "gram.y"
                         {printf("ADD operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_ADD",1);
                          asm_inst inst = add_inst(instruction_table,
                          "ADD",getAddr(symbole_table,result),arg1,arg2);}
#line 1729 "y.tab.c"
    break;

  case 49:
#line 235 "gram.y"
                         {printf("SUB operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_SUB",1);
                          asm_inst inst = add_inst(instruction_table,
                          "SUB",getAddr(symbole_table,result),arg1,arg2);}
#line 1740 "y.tab.c"
    break;

  case 50:
#line 241 "gram.y"
                         {printf("MUL operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_MUL",1);
                          asm_inst inst = add_inst(instruction_table,
                          "MUL",getAddr(symbole_table,result),arg1,arg2);}
#line 1751 "y.tab.c"
    break;

  case 51:
#line 247 "gram.y"
                         {printf("DIV operation found\n");
                          int arg2 = unstack(symbole_table);
                          int arg1 = unstack(symbole_table);
                          symbol result = addSymbol(symbole_table,"tmpvar_DIV",1);
                          asm_inst inst = add_inst(instruction_table,
                          "DIV",getAddr(symbole_table,result),arg1,arg2);}
#line 1762 "y.tab.c"
    break;

  case 54:
#line 255 "gram.y"
                 {(yyval.nb) = 1;
                  printf("Function call as an oprand \n");}
#line 1769 "y.tab.c"
    break;

  case 55:
#line 260 "gram.y"
                           {printf("%s Comparison found\n",(yyvsp[-1].name));
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst inst = add_inst(instruction_table,(yyvsp[-1].name),getAddr(symbole_table,result),arg1,arg2);}
#line 1779 "y.tab.c"
    break;

  case 56:
#line 265 "gram.y"
                           {printf("%s Comparison found\n",(yyvsp[-1].name));
                            int arg1 = unstack(symbole_table);
                            int arg2 = unstack(symbole_table);
                            symbol result = addSymbol(symbole_table,"tmpvar_ResComp",1);
                            asm_inst inst = add_inst(instruction_table,(yyvsp[-1].name),getAddr(symbole_table,result),arg1,arg2);}
#line 1789 "y.tab.c"
    break;

  case 57:
#line 270 "gram.y"
                                              {printf("Logical %s Statement found!\n",(yyvsp[-4].name));
                                               unstack(symbole_table);
                                               unstack(symbole_table);
                                               symbol result = addSymbol(symbole_table,"tmpvar_ResLogic",1);}
#line 1798 "y.tab.c"
    break;

  case 60:
#line 279 "gram.y"
        {(yyval.name) = " LE";
        printf("Operator <= found\n");}
#line 1805 "y.tab.c"
    break;

  case 61:
#line 281 "gram.y"
        {(yyval.name) = " GE";
        printf("Operator >= found\n");}
#line 1812 "y.tab.c"
    break;

  case 62:
#line 283 "gram.y"
        {(yyval.name) = " LT";
        printf("Operator < found\n");}
#line 1819 "y.tab.c"
    break;

  case 63:
#line 285 "gram.y"
        {(yyval.name) = " GT";
        printf("Operator > found\n");}
#line 1826 "y.tab.c"
    break;

  case 64:
#line 287 "gram.y"
        {(yyval.name) = " EQ";
        printf("Operator == found\n");}
#line 1833 "y.tab.c"
    break;

  case 65:
#line 289 "gram.y"
        {(yyval.name) = " NE";
        printf("Operator != found\n");}
#line 1840 "y.tab.c"
    break;

  case 66:
#line 294 "gram.y"
         {(yyval.name) = "AND";
         printf("Logical operator AND found\n");}
#line 1847 "y.tab.c"
    break;

  case 67:
#line 296 "gram.y"
         {(yyval.name) = "OR";
         printf("Logival operator OR found\n");}
#line 1854 "y.tab.c"
    break;

  case 70:
#line 306 "gram.y"
                        {printf("return Operand statement!\n");
                                    unstack(symbole_table);}
#line 1861 "y.tab.c"
    break;

  case 71:
#line 308 "gram.y"
               {printf("return Void Statement\n");}
#line 1867 "y.tab.c"
    break;


#line 1871 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 310 "gram.y"


void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
}

extern FILE *ASM;
extern FILE * ASM_final;
extern AsmTableSize;
int main(void) {
  ASM = fopen("ASM","w");
  ASM_final = fopen("ASM_final","w");
  printf("file opened correctly\n");
	symbole_table = init_sTable();
  instruction_table = init_instable();
  function_table = init_funtable();
  yydebug=1;
  yyparse();
  printf("-----------------START OF PARSING-----------------\n");
	print_sTable(symbole_table); // Should be empty at the end of the parsing except for global variables
  print_instable(instruction_table);
  print_funtable(function_table);
  printf("----------------Interpreting code----------------- \n");

  interpretCode(instruction_table,AsmTableSize);

  printf("---------------Printing register table:----------------\n");
  
  printInterpreter();
  printf("-----------------END OF PARSING-----------------\n");
  return 0;
}
