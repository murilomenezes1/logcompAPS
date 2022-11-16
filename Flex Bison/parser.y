%{
    #include <stdio.h>

    int yylex();
    void yyerror(const char *s) { printf("ERROR: %sn", s); }
%}


/* Define our terminal symbols (tokens). This should
   match our tokens.l lex file. We also define the node type
   they represent.
 */
%token TIDENTIFIER TINTEGER TSTRING
%token TCEQ TCNE TCLT TCGT TEQUAL TAND TOR
%token TLPAREN TRPAREN TLBRACE TRBRACE TCOMMA TSEMICOLON
%token TPLUS TMINUS TMUL TDIV
%token TPRINT TREAD TWHILE TIF TELSE TVAR_TYPE TRETURN


%start program

%%

program : block
        ;
        
block : TLBRACE statement TRBRACE 
      | TLBRACE TRBRACE
      ;

statement : ident
          | print
          | if
          | while
          | var_type
          TSEMICOLON
          ;
          
term : factor
     | factor TMUL factor
     | factor TDIV factor
     | factor TAND factor
     ;
   
   
expression : term TPLUS term
           | term TMINUS term
           | term TOR term
           ;


factor : TINTEGER
       | TSTRING
       | TIDENTIFIER
       | TPLUS factor
       | TMINUS factor
       | TCNE factor
       | TREAD TLPAREN TRPAREN
       | TLPAREN relexpression TRPAREN    
       ;
       
relexpression : expression TEQUAL expression
              | expression TCLT expression
              | expression TCGT expression
              ;

print: TPRINT TLPAREN relexpression TRPAREN;
if: TIF TLPAREN relexpression TRPAREN statement else;
while: TWHILE TLPAREN relexpression TRPAREN statement;
else: TELSE statement;
var_type: TVAR_TYPE TIDENTIFIER
        | TCOMMA TIDENTIFIER
        ;
ident: var_type TIDENTIFIER TEQUAL relexpression;
        
%%


int main(){
yyparse();
return 0;
}
