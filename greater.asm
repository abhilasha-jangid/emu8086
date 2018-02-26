
include 'emu8086.inc'

    mov cx,9
    mov di,0 
    
    mov bl,arr[0]
    
l1:        
    cmp bl,arr[di]
    jl l2 
    jg l3
    
   
l2:
    mov bl,arr[di]
    jmp l3
l3: 
    inc di
     
    loop l1
    
    mov al,bl
    call print_num


ret  

arr db 1,2,3,4,5,6,7,8,9 
max dw 0

define_print_string
define_print_num
define_print_num_uns
define_scan_num

end




