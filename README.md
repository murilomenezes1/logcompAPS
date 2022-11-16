PROGRAM = (LAMBDA | DECLARATION);  
DECLARATION = ("int" | "str" | "void"), IDENTIFIER, "(", {("int"|"str"), IDENTIFIER, {"," | ("int" | "str"), IDENTIFIER }}, ")", BLOCK;  
BLOCK = ("{", STATEMENT, "}" | "{","}");  
STATEMENT = (((LAMBDA | ASSIGNMENT | PRINT | VAR_TYPE | RETURN), ";") | (BLOCK | IF | WHILE));  
FACTOR = INT | STRING | (IDENTIFIER, {"(", "RELEXPRESSION, {"," | RELEXPRESSION}} ")" }) | (("mais" | "menos" | "diferente" | FACTOR) | "(", RELEXPRESSION, ")" |SCANF;  
TERM = FACTOR, {("vezes" | "dividido" | "E"), FACTOR};  
EXPRESSION = TERM, {("mais" | "menos" | "OU"), TERM};  
RELEXPRESSION = EXPRESSION, {("maior" | "menor" | "igual"), EXPRESSION };  
WHILE = "enquanto", "(", RELEXPRESSION, ")", STATEMENT;  
IF = "se", "(", RELEXPRESSION, ")", STATEMENTE, (("senao", STATEMENT) | LAMBDA);  
ASSIGNEMENT = (IDENTIFIER, "=", RELEXPRESSION) | ("(", {RELEXPRESSION, {"," | RELEXPRESSION}}, ")");  
RETURN = "devolva", "(", RELEXPRESSION, ")";  
PRINT = "imprima", "(", RELEXPRESSION, ")";  
READ = "receba", "(",")";  
IDENTIFIER = LETTER, {LETTER | DIGIT | "_"};  
DIGIT = ( 0 | 1 | ... | 9 | 10 );  
INT = DIGITI, { DIGIT };  
VAR_TYPE = ("int", "str"), IDENTIFIER, (LAMBDA | {",", IDENTIFIER });  
STRING = """, (LETTER | DIGIT), """;  
LETTER = ( a | ... | z | A | ... | Z );  



