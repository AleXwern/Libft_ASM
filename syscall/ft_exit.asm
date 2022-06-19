section .text
	global _ft_exit

;noreturn void _exit(int status);
;_exit() terminates the calling process "immediately".  Any open
;file descriptors belonging to the process are closed.  Any
;children of the process are inherited by init(1) (or by the
;nearest "subreaper" process as defined through the use of the
;prctl(2) PR_SET_CHILD_SUBREAPER operation).  The process's parent
;is sent a SIGCHLD signal.
;status (%rdi)
_ft_exit:
	mov		rax, 0x3c
	syscall
	ret
