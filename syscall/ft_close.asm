section .text
	global ft_close

;int	close(int fd);
;close() closes a file descriptor, so that it no longer refers to
;any file and may be reused.  Any record locks (see fcntl(2)) held
;on the file it was associated with, and owned by the process, are
;removed (regardless of the file descriptor that was used to
;obtain the lock).
;fd (%rdi)
ft_close:
	mov		rax, 0x03
	syscall
	ret
