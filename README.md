PROGRAM = (LAMBDA | DECLARATION);  
DECLARATION = ("fn"), IDENTIFIER, "(", { IDENTIFIER, ":", ("i32"|"String"), {"," , IDENTIFIER, ":", ("i32" | "String")}}, ")", "->" , ("i32" | "String"), BLOCK;  
BLOCK = ("{", STATEMENT, "}" | "{","}");  
STATEMENT = (((LAMBDA | ASSIGNMENT | PRINT | VAR_TYPE | RETURN), ";") | (BLOCK | IF | WHILE));  
FACTOR = INT | STRING | (IDENTIFIER, {"(", "RELEXPRESSION, {"," | RELEXPRESSION}} ")" }) | (("mais" | "menos" | "diferente" | FACTOR) | "(", RELEXPRESSION, ")" | READ;  
TERM = FACTOR, {("vezes" | "dividido" | "E"), FACTOR};  
EXPRESSION = TERM, {("mais" | "menos" | "OU"), TERM};  
RELEXPRESSION = EXPRESSION, {("maior" | "menor" | "igual"), EXPRESSION };  
WHILE = "enquanto", "(", RELEXPRESSION, ")", STATEMENT;  
IF = "se", "(", RELEXPRESSION, ")", STATEMENTE, (("senao", STATEMENT) | LAMBDA);  
ASSIGNEMENT = (IDENTIFIER, "=", RELEXPRESSION) | ("(", {RELEXPRESSION, {"," | RELEXPRESSION}}, ")");  
RETURN = "retorna", "(", RELEXPRESSION, ")";  
PRINT = "imprima", "(", RELEXPRESSION, ")";  
READ = "receba", "(",")";  
IDENTIFIER = LETTER, {LETTER | DIGIT | "_"};  
DIGIT = ( 0 | 1 | ... | 9 | 10 );  
INT = DIGITI, { DIGIT };  
VAR_TYPE = ("int", "str"), IDENTIFIER, (LAMBDA | {",", IDENTIFIER });  
STRING = """, (LETTER | DIGIT), """;  
LETTER = ( a | ... | z | A | ... | Z );  



