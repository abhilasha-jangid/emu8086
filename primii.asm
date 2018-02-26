include 'emu8086.inc'
     
    lea si,m1
    call print_string
    
    call scan_num
    
    mov ax,cx
    mov n1,cx
    mov n2,cx
    sub n2,1
    
    mov bx,2
    
    gotoxy 0,1 
    
    cmp cx,1
    je l2
    
l1:  
    cmp bx,n2
    jge l3
    
    mov dl,0
    div bx
    inc bx
    
    
    cmp dl,0
    je l2
    
    mov ax,n1
    
    loop l1
l3:
    
    lea si,m2
    call print_string
    jmp exit   
    

l2: 
    lea si,m3
    call print_string 
    
exit:

ret 
n1 dw 0 
n2 dw 0
         

m1 db "enter the no: ",0 
m2 db "prime",0
m3 db "not prime",0  
   
define_print_num
define_print_string
define_print_num_uns
define_scan_num

end




