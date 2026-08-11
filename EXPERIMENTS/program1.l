%{
#include<stdio.h>
%}

%%
[ \t\n]+                  ;
"//".*                    ;
"/*"([^*]|\*+[^*/])*\*+"/" ;

[a-zA-Z][a-zA-Z0-9]*      printf("%s : Identifier\n", yytext);

[0-9]+                    printf("%s : Constant\n", yytext);

"+"|"-"|"*"|"/"|"="|"%"   printf("%s : Operator\n", yytext);

.                         printf("%s : Invalid\n", yytext);

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Input:\n");
    yylex();
    return 0;
}
