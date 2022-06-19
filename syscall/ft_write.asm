section .text
	global ft_write

;ssize_t write(int fd, const void *buf, size_t count);
;write() writes up to count bytes from the buffer starting at buf
;to the file referred to by the file descriptor fd.
;fd	(%rdi)	buf (%rsi)	count (%rdx)
ft_write:
	mov		rax, 0x01
	syscall
	ret
