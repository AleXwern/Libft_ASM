/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_sc.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: AleXwern <AleXwern@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/19 20:54:23 by AleXwern          #+#    #+#             */
/*   Updated: 2022/06/26 15:00:52 by AleXwern         ###   ########.fr       */
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

//Defining the open flags
#define O_ACCMODE	   0003
#define O_RDONLY	     00
#define O_WRONLY	     01
#define O_RDWR		     02
#ifndef O_CREAT
# define O_CREAT	   0100	/* Not fcntl.  */
#endif
#ifndef O_EXCL
# define O_EXCL		   0200	/* Not fcntl.  */
#endif
#ifndef O_NOCTTY
# define O_NOCTTY	   0400	/* Not fcntl.  */
#endif
#ifndef O_TRUNC
# define O_TRUNC	  01000	/* Not fcntl.  */
#endif
#ifndef O_APPEND
# define O_APPEND	  02000
#endif
#ifndef O_NONBLOCK
# define O_NONBLOCK	  04000
#endif
#ifndef O_NDELAY
# define O_NDELAY	O_NONBLOCK
#endif
#ifndef O_SYNC
# define O_SYNC	       04010000
#endif
#define O_FSYNC		O_SYNC
#ifndef O_ASYNC
# define O_ASYNC	 020000
#endif
#ifndef __O_LARGEFILE
# define __O_LARGEFILE	0100000
#endif

#ifndef __O_DIRECTORY
# define __O_DIRECTORY	0200000
#endif
#ifndef __O_NOFOLLOW
# define __O_NOFOLLOW	0400000
#endif
#ifndef __O_CLOEXEC
# define __O_CLOEXEC   02000000
#endif
#ifndef __O_DIRECT
# define __O_DIRECT	 040000
#endif
#ifndef __O_NOATIME
# define __O_NOATIME   01000000
#endif
#ifndef __O_PATH
# define __O_PATH     010000000
#endif
#ifndef __O_DSYNC
# define __O_DSYNC	 010000
#endif
#ifndef __O_TMPFILE
# define __O_TMPFILE   (020000000 | __O_DIRECTORY)
#endif

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
