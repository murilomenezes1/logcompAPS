

%{
#include <string.h>
#include <stdio.h>
#include "parser.tab.h"
%}

%%

[ \t\n]                 ;
[a-zA-Z_][a-zA-Z0-9_]   return TIDENTIFIER;
[0-9]+                  return TINTEGER;
[a-zA-Z0-9]             return TSTRING;
"="                     return TEQUAL;
"igual"                 return TCEQ;
"diferente"             return TCNE;
"menor"                 return TCLT;
"maior"                 return TCGT;
"("                     return TLPAREN;
")"                     return TRPAREN;
"{"                     return TLBRACE;
"}"                     return TRBRACE;
","                     return TCOMMA;
"mais"                  return TPLUS;
"menos"                 return TMINUS;
"vezes"                 return TMUL;
"dividido"              return TDIV;
"se-"                   return TIF;
"senao"                 return TELSE;
"imprima"               return TPRINT;
"receba"                return TREAD;
"int"                   return TVAR_TYPE;
"str"                   return TVAR_TYPE;
"retorna"               return TRETURN;
"enquanto"              return TWHILE;
"E_OP"                  return TAND;
"OU_OP"                 return TOR;
";"                     return TSEMICOLON;
.                       printf("Unknown token!n"); yyterminate();

%%
