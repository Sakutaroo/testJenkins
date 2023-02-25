SRC	=	main.c

NAME	=	test

OBJ	=	$(SRC:.c=.o)

CC	=	gcc

CFLAGS	=	-Wall -Wextra

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)
	rm -f *~
	rm -f *vgcore*

fclean: clean
	rm -f $(NAME)

re:	fclean all

tests_run:
	@echo "No tests"

debug: fclean
debug:	CFLAGS += -ggdb3
debug: all

.PHONY: all clean fclean re tests_run debug
