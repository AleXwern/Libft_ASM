section .text
	global ft_mmap

;void	*ft_mmap(void *addr, size_t length, int prot, int flags, int fd, off_t offset);
;mmap() creates a new mapping in the virtual address space of the
;calling process.  The starting address for the new mapping is
;specified in addr.  The length argument specifies the length of
;the mapping (which must be greater than 0).
;addr	(%rdi)	length (%rsi)	prot (%rdx)
;flags	(%r10)	fd (%r8)		offset (%r9)
ft_mmap:
	mov		rax, 0x09
	syscall
	ret
