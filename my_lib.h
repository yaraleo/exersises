#ifndef MY_LIB
#define MY_LIB

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <memory.h>

char * get_input();
char * get_line();
char * all_spaces_to_one(char *);
char * delete_brackets(char *);
char * delete_char(char *);
char * delete_string(char *);
char * delete_comments(char *);
char * delete_escape(char *);
char * detab(char *);
char * entab(char *);
int getch(void);
void ungetch(int);
int getop(char *);
char * good_c(char *);
void push(double);
double pop(void);
char * print_n_symb_in_line(char *, int);
char * reverse(char *);
#endif /*MY_LIB*/