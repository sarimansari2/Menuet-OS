bubble:
  pop ax
  pop cx 
  pop si 
  push ax
  
  mov es:[0x4500],cx 
  mov es:[0x4502],cx 
  mov es:[0x4504],si 
  
 rpt_bubblesort:
  mov ah,[si]
  cmp ah,[si+1]
  jc no_swap
    xchg ah,[si+1]
  no_swap:
  inc si 
  loop rpt_bubblesort
  mov cx,es:[0x4500]
  mov si,es:[0x4504]
  dec es:[0x4502]
  jnz rpt_bubblesort
  ret 
