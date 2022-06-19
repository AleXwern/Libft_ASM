section .text
	global ft_open

;int	open(const char *pathname, int flags, mode_t mode);
;The open() system call opens the file specified by pathname.  If
;the specified file does not exist, it may optionally (if O_CREAT
;is specified in flags) be created by open().
;pathname (%rdi)	flags (%rsi)	mode (%rdx)
ft_open:
	mov		rax, 0x02
	syscall
	ret
