section     .text
		global  _ft_strcmp

_ft_strcmp: 
		xor rcx, rcx
		xor rbx, rbx
		
compare:
		mov	bl, BYTE [rsi + rcx]
		cmp	bl, BYTE [rdi + rcx]
		jne	exit
check:
		cmp	bl, 0
		jz	exit
		cmp	BYTE [rdi + rcx], 0
		jz	exit
		inc rcx
		jmp	compare
exit:
		movzx	rbx, bl
		movzx	rax, BYTE [rdi + rcx]
		sub		rax, rbx
		ret
return_e:
	sub	rdx, rbx
	ret
return_g:
	sub	rdx, rbx
	ret
return_l:
	sub	rdx, rbx
	ret