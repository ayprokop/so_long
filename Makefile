CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = so_long
LIB_DIR = ./minilibx
LIB = $(LIB_DIR)/libmlx.a
INCLUDES = -I$(LIB_DIR)
LDFLAGS = -L$(LIB_DIR) -lmlx -lXext -lX11 -lm -lz

all: $(NAME)

$(NAME): main.o
	$(CC) $(CFLAGS) -o $(NAME) main.o $(LDFLAGS)

main.o: main.c
	$(CC) $(CFLAGS) $(INCLUDES) -c main.c

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all