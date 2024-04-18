global read		; The "read" function reads text from the console
global write		; The "write" function prints text to the console
global exit		; Accepts a return code and ends the current process
 
section .text

; The "read" function reads text from the console
; Parameters
; RSI - link (address) of an input buffer
; RDX - (lenghts of buffer) number of characters
read:        
        mov rax, 0
        mov rdi, 0
        mov rsi, InBuff
	mov rdx, lenInBuff
        syscall
        leave
        ret


; The "write" function prints text to the console
; Parameters
; RSI - link (address) of a string
; RDI - (lenghts of an output string) number of characters
write:
    	mov rdx, rdi
    	mov rdi, 1
    	mov rax, 1
    	syscall
    	leave
    	ret
    	
    	
; The "exit" function accepts a return code and ends the current process    
; Parameters
; RDI - place a return code in RDI
exit:	
	mov rax, 60	;system function 60 (exit)	
	syscall	
