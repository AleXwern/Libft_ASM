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
ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
ELF 	= win64
else
ELF		= elf64
endif
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
		ft_atoi.asm ft_strcpy.asm ft_strclr.asm ft_strequ.asm \
		ft_striter.asm ft_striteri.asm ft_atof.asm ft_strlcat.asm \
		ft_strncat.asm ft_strncmp.asm ft_strncpy.asm ft_strnequ.asm \
		ft_strnstr.asm ft_strrchr.asm ft_strstr.asm ft_wordlen.asm \
		ft_memccpy.asm ft_memchr.asm ft_memcmp.asm ft_memcpy.asm \
		ft_memmove.asm ft_strcat.asm ft_strchr.asm ft_strcmp.asm ft_bzero.asm \
		ft_isalpha.asm ft_isascii.asm ft_isblank.asm ft_isdigit.asm ft_isalnum.asm\
		ft_isprint.asm ft_isnegative.asm ft_tolower.asm ft_toupper.asm \
		ft_bswap.asm ft_rotate_left.asm ft_rotate_right.asm \
		ft_intsize.asm ft_putchar_fd.asm ft_puthex.asm ft_puthexln.asm \
		ft_memalloc.asm ft_memdel.asm ft_quadjoin.asm ft_realloc.asm \
		ft_splitfree.asm ft_strdel.asm ft_strdup.asm ft_strfjoin.asm ft_strsjoin.asm \
		ft_strjoin.asm
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
	@echo "Assembling $(GREEN)$@$(STOP)"
	@mkdir -p obj
	@nasm -f $(ELF) $< -o $@

$(NAME): $(OBJ)
	@echo "Building $(PURPLE)$@$(STOP)"
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo done

test: $(NAME)
	@gcc -no-pie -g -I . tests/main.c $(NAME) -o testfunc
#	gcc -no-pie -I . tests/main.c libft_c.a -o testfuncc
	@./testfunc
#	./testfuncc

memory: $(NAME)
	@gcc -no-pie -g -I . tests/mmap_malloc.c $(NAME) -o mmalloc
	@time ./mmalloc
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
	@/bin/rm -f $(OBJ)
	@/bin/rm -rf ./obj

fclean: clean
	@/bin/rm -f $(NAME)
	@/bin/rm -f testfunc
	@/bin/rm -f mmalloc

re: fclean all
