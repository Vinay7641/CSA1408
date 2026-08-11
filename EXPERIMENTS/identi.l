%{
#include <stdio.h>
%}

%%

[a-zA-Z][a-zA-Z0-9]*    { printf("%s is IDENTIFIER\n", yytext); }
.+                      { printf("%s is NOT AN IDENTIFIER\n", yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}
