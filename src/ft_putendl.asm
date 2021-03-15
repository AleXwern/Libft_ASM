extern ft_putstr_fd
section	.text
	global ft_putendl
	
ft_putendl:
	mov		rsi, 1
	call	ft_putstr_fd
	mov     rdi, endl
	call	ft_putstr_fd
	ret

section .data			;For some reason I couldn't get the addr of variabe with 0xA
	endl	db 0xa,0x0	;so I made a define that's printed instead
