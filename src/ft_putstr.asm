extern ft_putstr_fd
section	.text
	global ft_putstr
	
ft_putstr:
	push	rsi
	mov		rsi, 1
	call	ft_putstr_fd
	pop		rsi
	ret
