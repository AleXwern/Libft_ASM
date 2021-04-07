# Libft_ASM
The aim of this project is for me to learn more about x64 Assembly and at the side since Libft is used in</br>
the school projects maybe I can have an excuse to use this and get some sort of performance gain from it. Most probably not but it's a fun little project anyway. If anything, using optimization flags is kinda sometimes forbidden maybe (it's so hazy if it is or not and I'd rather not twist hands about it) so if I just write the assembly like -OX then it's fine right?</br>
As more recent thing, I've been reading through AMD64 Architecture
Programmer’s Manuals and picked up some fancy instructions and now I have a small subset of Libft_ASM original functions that use those instructions.</br>
Compiles at least on Linux env. Have not tested on others yet. Just run make in terminal and you can link the libft_asm.a to your program. libft_asm.h is the related C header.

# Libft Functions

| Function Name    | Done?                                                                                    |
| ---------------- | :---------------------------------------------------------------------------------------: |
| abs              | **YES**                                                                                  |
| atoi             | **Kinda**                                                                                  |
| bzero            | **YES**                                                                                  |
| intsize          | **X**                                                                                  |
| isalnum          | **YES**                                                                                  |
| isalpha          | **YES**                                                                                  |
| isascii          | **YES**                                                                                  |
| isblank          | **YES**                                                                                  |
| isdigit          | **YES**                                                                                  |
| isextascii       | **X**                                                                                  |
| isnegative       | **YES**                                                                                  |
| isprint          | **YES**                                                                                  |
| itoa             | **X**                                                                                  |
| lcm              | **X**                                                                                  |
| memalloc         | **X**                                                                                  |
| memccpy          | **YES**                                                                                  |
| memchr           | **YES**                                                                                  |
| memcmp           | **YES**                                                                                  |
| memcpy           | **X**                                                                                  |
| memdel           | **X**                                                                                  |
| memmove          | **X**                                                                                  |
| memset           | **YES**                                                                                  |
| printmem         | **X**                                                                                  |
| putchar          | **YES**                                                                                  |
| putchar_fd       | **X**                                                                                  |
| putendl          | **YES**                                                                                  |
| putendl_fd       | **YES**                                                                                  |
| puthex           | **X**                                                                                  |
| putnbr           | **X**                                                                                  |
| putnbrln         | **X**                                                                                  |
| putnbr_fd        | **X**                                                                                  |
| putstr           | **YES**                                                                                  |
| putstr_fd        | **YES**                                                                                  |
| quadjoin         | **X**                                                                                  |
| strcat           | **X**                                                                                  |
| strchr           | **X**                                                                                  |
| strclr           | **X**                                                                                  |
| strcmp           | **X**                                                                                  |
| strcpy           | **X**                                                                                  |
| strdel           | **X**                                                                                  |
| strdup           | **X**                                                                                  |
| strequ           | **X**                                                                                  |
| strfjoin         | **X**                                                                                  |
| striter          | **X**                                                                                  |
| striteri         | **X**                                                                                  |
| strjoin          | **X**                                                                                  |
| strlcat          | **X**                                                                                  |
| strlen           | **YES**                                                                                  |
| strmap           | **X**                                                                                  |
| strmapi          | **X**                                                                                  |
| strncat          | **X**                                                                                  |
| strncmp          | **X**                                                                                  |
| strncpy          | **X**                                                                                  |
| strnequ          | **X**                                                                                  |
| strnew           | **X**                                                                                  |
| strnstr          | **X**                                                                                  |
| strrchr          | **X**                                                                                  |
| strsplit         | **X**                                                                                  |
| strstr           | **X**                                                                                  |
| strsub           | **X**                                                                                  |
| strtrim          | **X**                                                                                  |
| tolower          | **X**                                                                                  |
| toupper          | **X**                                                                                  |
| wordlen          | **X**                                                                                  |

# Libft_ASM Original Functions

| Function Name    | Description                                                                            |
| ---------------- | :---------------------------------------------------------------------------------------: |
| bswap            | Swaps byte order betweeen little and big endian                                         |

# Issues
1. Print functions have issues writing some text?? Set array is issue but malloced/const isn't.