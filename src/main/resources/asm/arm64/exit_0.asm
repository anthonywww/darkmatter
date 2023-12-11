
.global _start

_start:
	mov r7, #1		; set exit system call
	mov r0, #0		; move the value 0 into register 0
	mov r1, r0		; copy the value 0 from register 0 to register 1
	svc 0
