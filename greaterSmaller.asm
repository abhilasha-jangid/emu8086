
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

l3: 
    inc di
     
    loop l1
    
    
    mov al,bl
    call print_num
    mov al,0
    mov cx,9
    mov di,0
    mov bl,arr[0]  
    
    gotoxy 0,1
    
l4:        
    cmp bl,arr[di]
    jl l6 
    jg l5 
    
   
l5:
    mov bl,arr[di]
l6: 
    inc di
     
    loop l4  
    
    mov al,bl
    call print_num
    


ret  

arr db 5,6,7,9,3,2,2,8,4 
max dw 0

define_print_string
define_print_num
define_print_num_uns
define_scan_num

end




