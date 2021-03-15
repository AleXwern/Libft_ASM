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

#include "libft.h"
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
	str[9] = 0;
	write(1, str, 10);
	ft_putstr(str);
	printf("\nlen: %ld\n", ft_strlen(str));
	ft_putendl("--AAA--");
	printf("Number %d\n", ft_atoi("9875555"));
	printf("NNumber %d\n", ft_atoi("-1275"));
	return (0);
}