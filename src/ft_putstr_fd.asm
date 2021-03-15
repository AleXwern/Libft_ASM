extern ft_strlen
section	.text
	global ft_putstr_fd
	
ft_putstr_fd:
	call	ft_strlen

	mov     rdx, rax	;length
	mov     rcx, rdi	;string
	mov     rbx, rsi	;fd
	mov     rax, 4		;write
	int     80h

	ret
