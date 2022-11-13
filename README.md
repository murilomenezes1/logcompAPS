PROGRAM = (LAMBDA | DECLARATION);\n
DECLARATION = ("int" | "str" | "void"), IDENTIFIER, "(", {("int"|"str"), IDENTIFIER, {"," | ("int" | "str"), IDENTIFIER }}, ")", BLOCK;\n
BLOCK = ("{", STATEMENT, "}" | "{","}");\n
STATEMENT = (((LAMBDA | ASSIGNMENT | PRINT | VAR_TYPE | RETURN), ";") | (BLOCK | IF | WHILE));\n
FACTOR = INT | STRING | (IDENTIFIER, {"(", "RELEXPRESSION, {"," | RELEXPRESSION}} ")" }) | (("mais" | "menos" | "diferente" | FACTOR) | "(", RELEXPRESSION, ")" |SCANF;\n
TERM = FACTOR, {("vezes" | "dividido" | "E"), FACTOR};\n
EXPRESSION = TERM, {("mais" | "menos" | "OU"), TERM};\n
RELEXPRESSION = EXPRESSION, {("maior" | "menor" | "igual"), EXPRESSION };\n
WHILE = "enquanto", "(", RELEXPRESSION, ")", STATEMENT;\n
IF = "se", "(", RELEXPRESSION, ")", STATEMENTE, (("senao", STATEMENT) | LAMBDA);\n
ASSIGNEMENT = (IDENTIFIER, "=", RELEXPRESSION) | ("(", {RELEXPRESSION, {"," | RELEXPRESSION}}, ")");\n
RETURN = "devolva", "(", RELEXPRESSION, ")";\n
PRINT = "imprima", "(", RELEXPRESSION, ")";\n
SCANF = "receba", "(",")";\n
IDENTIFIER = LETTER, {LETTER | DIGIT | "_"};\n
DIGIT = ( 0 | 1 | ... | 9 | 10 );\n
INT = DIGITI, { DIGIT };\n
VAR_TYPE = ("int", "str"), IDENTIFIER, (LAMBDA | {",", IDENTIFIER });\n
STRING = """, (LETTER | DIGIT), """;\n
LETTER = ( a | ... | z | A | ... | Z );\n



