
CFLAGS:= -O0 -g3

-include *.dep

%.o: %.c
	$(CC) -c $< -MMD -MF $*.dep -MT '$*.o $*.dep' -MP -o $*.o  

my_lib.a: get_input.o get_line.o reverse.o all_spaces_to_one.o detab.o entab.o print_n_symb_in_line.o \
          good_c.o delete_comments.o delete_escape.o delete_string.o delete_char.o delete_brackets.o htol.o \
	  squeeze.o any.o binsearch.o escape.o expand.o itoa.o swap.o itob.o itoa_window.o strindex.o atofloat.o \
	  stack.o getop.o getch.o
	$(AR) crv $@ $^

1.2: 1.2.o

1.3: 1.3.o

1.4: 1.4.o

1.5: 1.5.o

1.6: 1.6.o

1.7: 1.7.o

1.8: 1.8.o

1.9: 1.9.o

1.10: 1.10.o

1.11: 1.11.o

1.12: 1.12.o

1.13: 1.13.o my_lib.a

1.14: 1.14.o

1.15: 1.15.o

1.16: 1.16.o my_lib.a

1.17: 1.17.o my_lib.a

1.18: 1.18.o my_lib.a

1.19: 1.19.o my_lib.a

1.19_ut: 1.19_ut.o my_lib.a /usr/lib/libcheck.a

1.20: 1.20.o my_lib.a

1.21: 1.21.o my_lib.a

1.22: 1.22.o my_lib.a

1.23: 1.23.o my_lib.a

1.24: 1.24.o my_lib.a

1.24_ut: 1.24_ut.o my_lib.a /usr/lib/libcheck.a

2.1: 2.1.o

2.2: 2.2.o

2.3: 2.3.o my_lib.a

2.4: 2.4.o my_lib.a

2.5: 2.5.o my_lib.a

2.6: 2.6.o

2.7: 2.7.o
 
2.8: 2.8.o

2.9: 2.9.o

2.10: 2.10.o

3.1: 3.1.o my_lib.a

3.2: 3.2.o my_lib.a

3.3: 3.3.o my_lib.a

3.4: 3.4.o my_lib.a

3.5: 3.5.o my_lib.a

3.6: 3.6.o my_lib.a

3.6_ut: 3.6_ut.o my_lib.a /usr/lib/libcheck.a

4.1: 4.1.o my_lib.a

4.2: 4.2.o my_lib.a

4.3: 4.3.o my_lib.a
clean:
	rm -rf *.o *.a *.dep 1.19 1.19_ut 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19 1.20 1.21 1.22 1.23 1.24 1.24_ut 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 3.1 3.2 3.3 3.4 3.5 3.6 3.6_ut 4.1 4.2 4.3

targets: 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19 1.20 1.21 1.22 1.23 1.24 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 3.1 3.2 3.3 3.4 3.5 3.6 4.1 4.2 4.3 my_lib.a

unittests: 1.19_ut 1.24_ut 3.6_ut
	./1.24_ut
	./1.19_ut
	./3.6_ut

all: targets unittests

.PHONY: clean
