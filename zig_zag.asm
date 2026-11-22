;cx = 5 (dec by default)

.model small
.stack 100h
.data
.code


main proc


    mov ax, data
    mov ds, ax
    
    
    mov cx, 5  ;global condition
    outer_loop:  ;line cretae
    mov bx, cx 
    
    
    
    
    
      inner_loop:   ; caharacter 
      mov dl, '*'  ;char load
      mov ah, 2h
      int 21h
      loop inner_loop  ;cx=!0 loop  continue
      
      
      mov ah, 2   ;new line
      ;mov dl, 13  ; carraige return
      ;int 21h
      mov dl, 10  ; line feed
      int 21h
      mov cx, bx
      loop outer_loop   ;cx =!0 loo[p continue
      jmp exit 
    
    
    exit :
    mov ah,  4ch
    int 21h
    
    
    
    main endp
