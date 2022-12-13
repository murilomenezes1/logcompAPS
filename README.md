**EBNF**

PROGRAM = (LAMBDA | DECLARATION);  
DECLARATION = ("fn"), IDENTIFIER, "(", { IDENTIFIER, ":", ("i32"|"String"), {"," , IDENTIFIER, ":", ("i32" | "String")}}, ")", "->" , ("i32" | "String"), BLOCK;  
BLOCK = ("{", STATEMENT, "}" | "{","}");  
STATEMENT = (((LAMBDA | ASSIGNMENT | PRINT | VAR | RETURN), ";") | (BLOCK | IF | WHILE));  
FACTOR = INT | STRING | (IDENTIFIER, {"(", "RELEXPRESSION, {"," | RELEXPRESSION}} ")" }) | (("+" | "-" | "!" | FACTOR) | "(", RELEXPRESSION, ")" | READ;  
TERM = FACTOR, {("vezes" | "dividido por" | "E"), FACTOR};  
EXPRESSION = TERM, {("mais" | "menos" | "OU"), TERM};  
RELEXPRESSION = EXPRESSION, {("for maior que" | "for menor que" | "for igual a"), EXPRESSION };  
WHILE = "enquanto", "(", RELEXPRESSION, ")", STATEMENT;  
IF = "se", "(", RELEXPRESSION, ")", STATEMENT, (("senao", STATEMENT) | LAMBDA);  
ASSIGNEMENT = (IDENTIFIER, "=", RELEXPRESSION) | ("(", {RELEXPRESSION, {"," | RELEXPRESSION}}, ")");  
RETURN = "retorne", "(", RELEXPRESSION, ")";  
PRINT = "Imprima", "(", RELEXPRESSION, ")";  
READ = "Leia", "(",")";  
IDENTIFIER = LETTER, {LETTER | DIGIT | "_"};  
DIGIT = ( 0 | 1 | ... | 9 | 10 );  
INT = DIGIT, { DIGIT };  
VAR = ("int", "str"), IDENTIFIER, (LAMBDA | {",", IDENTIFIER });  
STRING = """, (LETTER | DIGIT), """;  
LETTER = ( a | ... | z | A | ... | Z );  



