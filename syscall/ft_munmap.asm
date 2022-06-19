section .text
	global ft_munmap

;int	munmap(void *addr, size_t length);
;The munmap() system call deletes the mappings for the specified
;address range, and causes further references to addresses within
;the range to generate invalid memory references.  The region is
;also automatically unmapped when the process is terminated.  On
;the other hand, closing the file descriptor does not unmap the
;region.
;addr	(%rdi)	length (%rsi)
ft_munmap:
	mov		rax, 0x0b
	syscall
	ret
