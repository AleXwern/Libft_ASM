/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: AleXwern <AleXwern@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/16 16:19:05 by AleXwern          #+#    #+#             */
/*   Updated: 2020/11/16 16:19:05 by AleXwern         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_asm.h"
#include <stdio.h>

void	iterhelper(char *str);
void	iterihelper(unsigned int i, char *str);

int	main(void)
{
	char	dum[10];
	char	*str = (char*)malloc(10);
	char	*doub = (char*)malloc(20);
	ft_bzero(doub, 20);
	doub = ft_memset(doub, 'C', 10);

	//printf("Length %ld\n", ft_strlen("Hello there!"));
	char *map = (char*)ft_test(20);
	ft_memcpy(map, "Hello world and pe\n", 20);
	ft_test2(map, 20);
	write(1, map, 20);
	printf("mmap len %p\n", map);
	ft_putchar('Z');
	ft_putstr("Yoo dudes\n");
	ft_putendl("No linefeed btw");
	ft_putendl_fd("Error it is", 1);
	ft_memset(str, 'A', 10);
	str[9] = '\n';
	//write(1, str, 10);
	ft_putstr(str);
	ft_putstr("IEAAAA\n");
	printf("len: %ld\n", ft_strlen(str));
	ft_putendl("--AAA--");
	printf("Ptrs %p %p %p\n", dum, str, "ffd");
	printf("Number %d\n", ft_atoi("2147483647"));
	printf("NNumber %d\n", ft_atoi("-2147483648"));
	printf("Alpha %d\n", ft_isalpha('a'));
	printf("Blank %d\n", ft_isblank(13));
	printf("Print %d\n", ft_isprint(85));
	printf("Negative %d\n", ft_isnegative(100));
	char	str1[10];
	ft_memset(str1, 'A', 9);
	char	str2[] = "BBBBCBBBB";
	printf("Before: %s %s\n", str1, str2);
	char	*str3 = ft_memccpy(str1, str2, 'C', 9);
	printf("After: %s %s and %s\n", str1, str2, str3);
	printf("Memchr %s\n", (char*)ft_memchr(str1, 'C', 9));
	printf("Diff %d\n", ft_memcmp(str2, str1, 6));
	printf("%s\n", (char*)ft_memmove(str1 + 1, str1, 4));
	printf("BSWAP %d %d\n", 0b1011, ft_bswap(0b1011));
	int i = 65;
	printf("Test %d\n", (((i - 1) >> 5) + 1) << 5);
	printf("Strcat %s\n", ft_strcat(doub, " hello"));
	printf("Strchr %s\n", ft_strchr("aabcdefghijklm", 'a'));
	printf("Strcmp %d\n", ft_strcmp("abcdefghijklm", "abcdefghijklm"));
	printf("Strcpy %s\n", ft_strcpy(doub, "ghijklm"));
	printf("Strequ %d\n", ft_strequ("abcdefghijklm", "abcdefghijklm"));
	ft_striter(doub, iterhelper);
	printf("Striter %s\n", doub);
	ft_bzero(doub, 20);
	ft_memset(doub, 'a', 10);
	ft_striteri(doub, iterihelper);
	printf("Striteri %s\n", doub);
	printf("Rotate left %d\n", ft_rotate_left(0b1010101, 16));
	printf("Rotate right %d\n", ft_rotate_right(0b1010101, 1));
	return (0);
}

void	iterhelper(char *str)
{
	if (*str <= 'z' && *str >= 'a')
		*str -= 32;
	else if (*str <= 'Z' && *str >= 'A')
		*str += 32;
}

void	iterihelper(unsigned int i, char *str)
{
	//printf("helper %d %c\n", i, *str);
	*str = (i % 10) + 48;
	if (i > 20)
		exit(0);
}
