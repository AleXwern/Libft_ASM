# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: AleXwern <AleXwern@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 15:01:27 by AleXwern          #+#    #+#              #
#    Updated: 2020/11/16 15:01:27 by AleXwern         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft_asm.a
SRCFILE = ft_memalloc ft_putendl ft_strcpy ft_strmapi ft_strsub \
	ft_memccpy ft_putendl_fd ft_strdel ft_strncat ft_strtrim \
	ft_atoi ft_memchr ft_putnbr ft_strdup ft_strncmp \
	ft_tolower ft_bzero ft_memcmp ft_putnbr_fd ft_strequ \
	ft_strncpy ft_toupper ft_isalnum ft_memcpy ft_putstr \
	ft_striter ft_strnequ ft_isalpha ft_memdel ft_putstr_fd \
	ft_striteri ft_strnew ft_isascii ft_memmove ft_strcat \
	ft_strjoin ft_strnstr ft_isdigit ft_memset ft_strchr \
	ft_strlcat ft_strrchr ft_isprint ft_putchar ft_strclr \
	ft_strlen ft_strsplit ft_itoa ft_putchar_fd ft_strcmp \
	ft_strmap ft_strstr ft_wordlen ft_isblank ft_isnegative \
	ft_intsize ft_isextascii get_next_line ft_puthex ft_lcm \
	ft_abs ft_fabs ft_putnbrln ft_quadjoin \
	ft_strfjoin ft_printmem
TESTFILE = hello_world
SRCEXT = .asm
OBJEXT = .o
SRC = $(addprefix $(TESTFILE),$(SRCEXT))
OBJ = $(SRC:.asm=.o)
INCLS = ./
OBJFLD = ../obj/
GREEN = \033[0;32m
PURPLE = \033[0;35m
STOP = \033[0m

.PHONY: all clean fclean re

all: $(NAME)

%.o:%.asm
	nasm -f elf $<

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	@echo done

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
