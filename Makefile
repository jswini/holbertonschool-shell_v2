CC = gcc
SRC = simple_shell.c builtins.c get_path.c strings.c
NAME = hsh
OBJ = $(SRC:.c=.o)
RM = rm -f
CFLAGS = -Wall -Werror -Wextra -pedantic -g

all: $(NAME)

$(OBJ): %.o: %.c
	${CC} $(CFLAGS) -c -o $@ $<
hsh: $(OBJ)
	${CC} $(CFLAGS) $(OBJ) -o $@

clean:
	$(RM) *~ $(NAME)

oclean:
	$(RM) $(OBJ)

fclean: clean oclean

re: oclean $(NAME)

.PHONY: hsh all clean oclean fclean re
