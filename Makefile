# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: bpeeters <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2019/12/10 12:37:45 by bpeeters       #+#    #+#                 #
#    Updated: 2020/01/14 18:22:12 by bpeeters      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIBFT = libft

SRC = ft_checks.c ft_lengths.c ft_print1.c ft_print2.c ft_printf.c \
	   ft_putchar_error.c libft_reject.c putstuff_fd.c

OFILES = $(SRC:.c=.o)

.PHONY: clean fclean

all: $(NAME)

$(NAME): $(OFILES)
	@make -C $(LIBFT)
	@cp libft/libft.a ./$(NAME)
	@ar rcs $(NAME) $?

%.o: %.c
	$(CC) -Wall -Wextra -Werror -c $< -o $@

clean:
	@/bin/rm -f $(OFILES)
	@make clean -C $(LIBFT)

fclean:    clean
	@/bin/rm -f $(NAME)
	@make fclean -C $(LIBFT)

re: fclean all
