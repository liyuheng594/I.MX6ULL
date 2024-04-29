.global _start

_start:

    /*首先配置时钟，然后 GPIO复用，然后配置GPIO电器属性，然后配置GPIO功能寄存器*/
    ldr R0, =0x020C4068
    ldr R1, =0xffffffff
    str R1, [R0]

    ldr R0, =0x020C406C
    str R1, [R0]

    ldr R0, =0x020C4070
    str R1, [R0]

    ldr R0, =0x020C4074
    str R1, [R0]

    ldr R0, =0x020C4078
    str R1, [R0]

    ldr R0, =0x020C407C
    str R1, [R0]

    ldr R0, =0x020C4080
    str R1, [R0]

    ldr R0, =0x020E0068
    ldr R1, =0x5
    str R1, [R0]

    ldr R0, =0x020E02F4
    ldr R1, =0x01B0
    str R1, [R0]

    ldr R0, =0x0209C004
    ldr R1, =0x8
    str R1, [R0]

    ldr R0, =0x0209C000
    ldr R1, =0x0
    str R1, [R0]

loop:
    b loop
    