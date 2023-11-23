NAME = philo
CC = cc
CFLAGS = -Wall -Wextra -Werror -pthread -g
RM = rm -rf

SRCD = ./src

SRC = philo.c \
		ft_do.c \
		ft_error.c \
		ft_routine.c \
		ft_utils.c \
		ft_utils2.c \


OBJ = $(SRC:%.c=$(SRCD)/%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

$(SRCD)/%.o: $(SRCD)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all clean

.PHONY: all clean fclean re
