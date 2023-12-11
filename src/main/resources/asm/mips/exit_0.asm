
li $v0, 10      ; set syscall 10 (exit) in register $v0
li $a0, 0       ; set argument 0 in register $a0 (status code 0)
syscall         ; execute
