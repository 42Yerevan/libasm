section	.text
			global	_ft_read
			extern ___error

_ft_read:
			xor rax, rax
            mov	rax, 0x2000003
			syscall
			jc	exit_error
			ret
exit_error:
			push r12
    		mov r12, rax
    		call ___error
    		mov qword [rax], r12
    		mov rax, -1
    		pop r12
    		ret