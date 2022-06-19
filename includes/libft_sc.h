/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_sc.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: AleXwern <AleXwern@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/19 20:54:23 by AleXwern          #+#    #+#             */
/*   Updated: 2022/06/19 22:38:37 by AleXwern         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_SC_H
# define LIBFT_SC_H
#  ifdef __cplusplus
extern "C" {
#  endif

typedef unsigned long	size_t;
typedef signed long		ssize_t;
typedef long int 		off_t;
typedef unsigned int	mode_t;

int		ft_close(int fd);
void	_ft_exit(int status);
void	*ft_mmap(void *addr, size_t length, int prot, int flags, int fd, off_t offset);
int		ft_munmap(void *addr, size_t length);
int		ft_open(const char *pathname, int flags, mode_t mode);
ssize_t	ft_read(int fd, void *buf, size_t count);
ssize_t	ft_write(int fd, const void *buf, size_t count);

#define	close(x)			ft_close(x)
#define	_exit(x)			_ft_exit(x)
#define	exit(x)				_ft_exit(x)
#define	mmap(a,b,c,d,e,f)	ft_mmap(a,b,c,d,e,f)
#define	munmap(a,b)			ft_munmap(a,b)
#define	open(a,b,c)			ft_open(a,b,c)
#define	read(a,b,c)			ft_read(a,b,c)
#define	write(a,b,c)		ft_write(a,b,c)

#  ifdef __cplusplus
}
#  endif
#endif
