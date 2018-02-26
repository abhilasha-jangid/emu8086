include 'emu8086.inc'
   
    call scan_num
    
 
    mov di,0
    mov bx,1
    
l1:        
    cmp cl,arr[di]
    je l2
    inc di
    inc bx 
    cmp bx,5
    jle l1 
    jg l3
l2:  
    gotoxy 0,1
    lea si,m1
    call print_string
    jmp l4
l3:  
    gotoxy 0,1
    lea si,m2
    call print_string 
l4:

ret 

arr db 5,6,3,4,7
m1 db 'present',0
m2 db 'absent',0

nu dw 0

define_print_num
define_print_string
define_print_num_uns
define_scan_num
end




