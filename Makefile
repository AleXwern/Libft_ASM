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

NAME	= libft_asm.a
ELF		= elf64
FLAG	= -no-pie
SRCFILE	= ft_memalloc ft_putendl ft_strcpy ft_strmapi ft_strsub \
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
#This is to test spesific functions and removing it will allow entire thing to be used
SRCFILE	= ft_strlen.asm ft_putstr_fd.asm ft_putendl_fd.asm \
		ft_putstr.asm ft_putendl.asm ft_putchar.asm ft_memset.asm \
		ft_atoi.asm \
		ft_isalpha.asm ft_isascii.asm ft_isblank.asm ft_isdigit.asm ft_isalnum.asm\
		ft_isprint.asm ft_isnegative.asm
SRCEXT	= .asm
OBJEXT	= .o
SRC		= $(addprefix ./src/,$(SRCFILE))
OBJ		= $(addprefix ./obj/,$(SRCFILE:.asm=.o))
INCLS	= ./
OBJFLD	= ../obj/
GREEN	= \033[0;32m
PURPLE	= \033[0;35m
STOP	= \033[0m

.PHONY: all clean fclean re

all: $(NAME)

./obj/%.o:./src/%.asm
	nasm -f $(ELF) $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	@echo done

test: $(NAME)
	gcc -no-pie -I . tests/main.c $(NAME) -o testfunc
	./testfunc

time:
	@gcc -no-pie -I . tests/time.c $(NAME) -o time
	@echo "timing ASM library."
	@time ./time > ASM.txt
	@/bin/rm -f time
	@gcc -I . tests/time.c libft_c.a -o time
	@echo "timing C library."
	@time ./time > C.txt
	@/bin/rm -f time
	@/bin/rm -f C.txt
	@/bin/rm -f ASM.txt

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
