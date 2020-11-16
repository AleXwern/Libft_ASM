extern ft_strlen
section	.text
	global ft_putstr_fd
	
ft_putstr_fd:
	push	rdx
	push	rcx
	push	rbx
	push	rax
	call	ft_strlen

	mov     rdx, rax	;length
	mov     rcx, rdi	;string
	mov     rbx, rsi	;fd
	mov     rax, 4		;write
	int     80h

	pop		rax
	pop		rbx
	pop		rcx
	pop		rdx
	ret
