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

int	main(void)
{
	char	str[10];
	//printf("Length %ld\n", ft_strlen("Hello there!"));
	ft_putchar('Z');
	ft_putstr("Yoo dudes\n");
	ft_putendl("No linefeed btw");
	ft_putendl_fd("Error it is", 1);
	ft_memset(str, 'A', 10);
	str[9] = '\n';
	write(1, str, 10);
	ft_putstr(str);
	ft_putstr("IEAAAA\n");
	printf("len: %ld\n", ft_strlen(str));
	ft_putendl("--AAA--");
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
	printf("Memchr %s\n", ft_memchr(str1, 'C', 9));
	printf("Diff %d\n", ft_memcmp(str2, str1, 6));
	return (0);
}
