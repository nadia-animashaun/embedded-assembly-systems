    .equ JTAG_UART_BASE, 0x10001000  
    .equ DATA_OFFSET, 0        
    .equ STATUS_OFFSET, 4        
    .equ WSPACE_MASK, 0xFFFF         

    .text
    .org    0
    .global _start

_start:
    movia   sp, 0x7FFFFC
    call    main
    break

main: 
    subi    sp, sp, 8 
    stw     ra, 4(sp)
    stw     r4, 0(sp)

    movi    r2, 2       
    call    printchar
    movi    r2, 7     
    call    printchar
    movi    r2, 4     
    call    printchar

    ldw     ra, 4(sp)
    ldw     r2, 0(sp)
    addi    sp, sp, 8

    ret

printchar:
    subi    sp, sp, 8 
    stw     r3, 4(sp)
    stw     r4, 0(sp)
    movia    r3, JTAG_UART_BASE

pc_loop:
    ldwio   r4, STATUS_OFFSET(r3)
    andhi   r4, r4, WSPACE_MASK
    beq     r4, r0, pc_loop
    stwio   r2, DATA_OFFSET(r3)

    ldw     r3, 4(sp)
    ldw     r4, 0(sp)
    addi    sp, sp, 8

    ret
    .end

