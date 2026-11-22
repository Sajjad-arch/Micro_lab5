;asciii pattern
.model small
.stack 100h
.data
.code



main proc
  mov ax,  @data
  mov ds, ax
  
   
   mov cx, 0  ;global condition
   mid:  ;outer loop  line count 
   mov bx,  cx
   
   
   
   mov cx, 10
   final:         ;inner lioop char count
   ;bl = ascii input
   mov dl, bl
   mov ah, 2
   int 21h
   inc bl
   cmp bl, 255
   je left ; jump if equal
   ;else
   loop final
   
   
   mov ah, 2
   mov dl, 13
   int 21h
   mov dl, 10                       A
   int 21h
   mov cx, bx  ;line counter
   loop mid 
   
   
   
  
  left:
  mov ah, 4ch
  int 21h
  
  
  main endp
end main
  
