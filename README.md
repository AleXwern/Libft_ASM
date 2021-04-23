# Libft_ASM
The aim of this project is for me to learn more about x64 Assembly and at the side since Libft is used in</br>
the school projects maybe I can have an excuse to use this and get some sort of performance gain from it. So far most functions seem to have some performance gain when compared to C version. Most notably ft_bzero is 10 times faster which is little mind boggling and makes me question if I can improve the C version. If anything, using optimization flags is kinda sometimes forbidden maybe (it's so hazy if it is or not and I'd rather not twist hands about it) so if I just write the assembly like -OX then it's fine right?</br>
As more recent thing, I've been reading through AMD64 Architecture
Programmer’s Manuals and picked up some fancy instructions and now I have a small subset of Libft_ASM original functions that use those instructions.</br>
You will need Make and NASM to compile which you can grab from https://www.nasm.us/ or install through Linux packages. Just run make in terminal and you can link the libft_asm.a to your program. libft_asm.h is the related C header.</br>
Do note that Windows passes arguments to functions in different registers than on Lunix/Mac so none of these actually work on Windows for now. Also interrupts in general are apparently a different world but that an issue for time when I have the first version done in its entirety.

# TODO

1. Create first versions of all basic Libft functions. Proper comments and descriptions included.
2. Windows uses different registers to pass arguments to functions so port them over. It's a bit of work but most of the time it only involves swapping registers around.
3. New functions! This is assembly and there's an entire world of things I can do here that are not implemented in C/C++ so I'm going to take full use of that.
4. Own malloc. First I need to get the C version done but once that exists the ASM version should be easier to do since I have a proper ground to work on. I did some testing on just MMAP and it has massive overhead which I'm definitely not a fan of so I need the entire malloc around it.

# Libft Functions

| Function Name    | Done?                                                                                    |
| ---------------- | :---------------------------------------------------------------------------------------: |
| abs              | **YES**                                                                                  |
| atoi             | **Kinda**                                                                                  |
| atof             | **YES**                                                                                  |
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
| listlen          | **YES**                                                                                  |
| memalloc         | **X**                                                                                  |
| memccpy          | **YES**                                                                                  |
| memchr           | **YES**                                                                                  |
| memcmp           | **YES**                                                                                  |
| memcpy           | **YES**                                                                                  |
| memdel           | **x**                                                                                  |
| memmove          | **YES**                                                                                  |
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
| realloc          | **X**                                                                                  |
| splitfree        | **X**                                                                                  |
| strcat           | **YES**                                                                                  |
| strchr           | **YES**                                                                                  |
| strclr           | **YES**                                                                                  |
| strcmp           | **YES**                                                                                  |
| strcpy           | **YES**                                                                                  |
| strdel           | **X**                                                                                  |
| strdup           | **X**                                                                                  |
| strequ           | **YES**                                                                                  |
| strfjoin         | **X**                                                                                  |
| striter          | **YES**                                                                                  |
| striteri         | **YES**                                                                                  |
| strjoin          | **X**                                                                                  |
| strlcat          | **YES**                                                                                  |
| strlen           | **YES**                                                                                  |
| strmap           | **X**                                                                                  |
| strmapi          | **X**                                                                                  |
| strncat          | **YES**                                                                                  |
| strncmp          | **YES**                                                                                  |
| strncpy          | **YES**                                                                                  |
| strnequ          | **YES**                                                                                  |
| strnew           | **X**                                                                                  |
| strnstr          | **YES**                                                                                  |
| strrchr          | **YES**                                                                                  |
| strsjoin         | **X**                                                                                  |
| strsplit         | **X**                                                                                  |
| strstr           | **YES**                                                                                  |
| strsub           | **X**                                                                                  |
| strtrim          | **X**                                                                                  |
| tolower          | **YES**                                                                                  |
| toupper          | **YES**                                                                                  |
| wordlen          | **YES**                                                                                  |
| get_next_line    | **X**                                                                                  |

# Libft_ASM Original Functions

| Function Name    | Description                                                                            |
| ---------------- | :---------------------------------------------------------------------------------------: |
| bswap            | Swaps byte order betweeen little and big endian                                         |
| rotate_left      | Rotates num left by n bits. Overflow rolls back to right end                            |
| rotate_right     | Rotates num right by n bits. Overflow rolls back to left end                            |

# Issues
1. Print functions have issues writing some text. Arrays are too far away as in write doesn't take a long pointer??