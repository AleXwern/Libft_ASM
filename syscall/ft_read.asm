section .text
	global ft_read

;ssize_t read(int fd, void *buf, size_t count);
;write() writes up to count bytes from the buffer starting at buf
;to the file referred to by the file descriptor fd.
;fd	(%rdi)	buf (%rsi)	count (%rdx)
ft_read:
	mov		rax, 0x00
	syscall
	ret
