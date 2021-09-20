NAME= generate_config

SRCS= main.c
OBJS = $(SRCS:%.c=%.o)


all: $(NAME)

$(OBJS): $(SRCS)
	gcc -c -Wall -Wextra -Werror $(SRCS)
	
$(NAME): $(OBJS)
	gcc -Wall -Werror -Wextra $(OBJS) -o $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean all re
