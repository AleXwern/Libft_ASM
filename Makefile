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
VPATH	= src syscall
OBJS	= obj
ASMSRC	= $(wildcard src/*.asm) $(wildcard syscall/*.asm)
ASMOBJ	= $(addprefix $(OBJS)/,$(notdir $(ASMSRC:.asm=.o)))
GREEN	= \033[0;32m
PURPLE	= \033[0;35m
STOP	= \033[0m

.PHONY: all clean fclean re

all: $(NAME)

$(OBJS)/%.o: %.asm
	@mkdir -p $(@D)
	@nasm -f $(ELF) $< -o $@
	@echo "Assembling $(GREEN)$@$(STOP)"

objonly: $(ASMOBJ)

$(NAME): $(ASMOBJ)
	@echo "Building $(PURPLE)$@$(STOP)"
	@ar rc $(NAME) $(ASMOBJ)
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
