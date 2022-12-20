section	.text
   global ft_popcnt

;int	ft_popcnt(uint32_t num)
;rdi=num
ft_popcnt:
	popcnt	eax, edi
	ret
