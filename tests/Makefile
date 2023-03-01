##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile
##

SRC_TEST	=	test_project.c

SRC =	../printHello.c

NAME =	unit_tests

TESTFLAGS = --coverage -lcriterion

all:	$(NAME)

$(NAME):
	gcc -o $(NAME) $(SRC_TEST) $(SRC) $(TESTFLAGS)
	cp unit_tests ../

clean:
	rm -f $(NAME)
	rm -f ../$(NAME)

fclean:	clean
	rm -f unit_tests
	rm -f *~
	rm -f *.gc*

re:	fclean all

.PHONY: all clean fclean re
