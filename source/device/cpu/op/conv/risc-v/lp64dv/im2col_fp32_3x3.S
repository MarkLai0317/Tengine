        .section .text,"ax"
        .align 5

        .type   im2col_fp32_3x3, @function
        .global im2col_fp32_3x3
        .hidden im2col_fp32_3x3

im2col_fp32_3x3:
        addi            sp, sp, -56
        sd              t0, 0(sp)
        sd              t1, 8(sp)
        sd              t2, 16(sp)
        sd              t3, 24(sp)
        sd              t4, 32(sp)
        sd              t5, 40(sp)
        sd              t6, 48(sp)

        beqz            a3, finish

        slli	        a1, a1, 2
        mul             a2, a2, a1

        add             t5, a0, a1
        slli	        t1, a1, 1 
        add             t6, a0, t1

        li              t0, 2
        beq             a5, t0, stride2_channel_loop

stride1_channel_loop:
        lw              t0, (a0)
        sw              t0, (a4)
        lw              t1, 4(a0)
        sw              t1, 4(a4)
        lw              t2, 8(a0)
        sw              t2, 8(a4)
        lw              t3, (t5)
        sw              t3, 12(a4)
        lw              t4, 4(t5)
        sw              t4, 16(a4)
        lw              t0, 8(t5)
        sw              t0, 20(a4)
        lw              t1, (t6)
        sw              t1, 24(a4)
        lw              t2, 4(t6)
        sw              t2, 28(a4)
        lw              t3, 8(t6)
        sw              t3, 32(a4)

        addi            a3, a3, -1
        add             a0, a0, a2
        add             a4, a4, 36
        add             t5, t5, a2
        add             t6, t6, a2
        
        bnez            a3, stride1_channel_loop
        j               finish

stride2_channel_loop:
        lw              t0, 0(a0)
        sw              t0, 0(a4)
        lw              t1, 8(a0)
        sw              t1, 4(a4)
        lw              t2, 16(a0)
        sw              t2, 8(a4)
        lw              t3, 0(t5)
        sw              t3, 12(a4)
        lw              t4, 8(t5)
        sw              t4, 16(a4)
        lw              t0, 16(t5)
        sw              t0, 20(a4)
        lw              t1, 0(t6)
        sw              t1, 24(a4)
        lw              t2, 8(t6)
        sw              t2, 28(a4)
        lw              t3, 16(t6)
        sw              t3, 32(a4)

        addi            a3, a3, -1

        add             a0, a0, a2
        add             a4, a4, 36
        add             t5, t5, a2
        add             t6, t6, a2
        
        bnez            a3, stride2_channel_loop

finish:
        ld              t0, 0(sp)
        ld              t1, 8(sp)
        ld              t2, 16(sp)
        ld              t3, 24(sp)
        ld              t4, 32(sp)
        ld              t5, 40(sp)
        ld              t6, 48(sp)
        addi            sp, sp, 56
	ret
	.end
        .section .text,"ax"
        .align 5

        .type   im2col_fp32_3x3, @function
        .global im2col_fp32_3x3
        .hidden im2col_fp32_3x3

im2col_fp32_3x3:
        addi            sp, sp, -56
        sd              t0, 0(sp)
        sd              t1, 8(sp)
        sd              t2, 16(sp)
        sd              t3, 24(sp)
        sd              t4, 32(sp)
        sd              t5, 40(sp)
        sd              t6, 48(sp)

        beqz            a3, finish

        slli	        a1, a1, 2
        mul             a2, a2, a1

        add             t5, a0, a1
        slli	        t1, a1, 1 
        add             t6, a0, t1

        li              t0, 2
        beq             a5, t0, stride2_channel_loop

stride1_channel_loop:
        lw              t0, (a0)
        sw              t0, (a4)
        lw              t1, 4(a0)
        sw              t1, 4(a4)
        lw              t2, 8(a0)
        sw              t2, 8(a4)
        lw              t3, (t5)
        sw              t3, 12(a4)
        lw              t4, 4(t5)
        sw              t4, 16(a4)
        lw              t0, 8(t5)
        sw              t0, 20(a4)
        lw              t1, (t6)
        sw              t1, 24(a4)
        lw              t2, 4(t6)
        sw              t2, 28(a4)
        lw              t3, 8(t6)
        sw              t3, 32(a4)

        addi            a3, a3, -1
        add             a0, a0, a2
        add             a4, a4, 36
        add             t5, t5, a2
        add             t6, t6, a2
        
        bnez            a3, stride1_channel_loop
        j               finish

stride2_channel_loop:
        lw              t0, 0(a0)
        sw              t0, 0(a4)
        lw              t1, 8(a0)
        sw              t1, 4(a4)
        lw              t2, 16(a0)
        sw              t2, 8(a4)
        lw              t3, 0(t5)
        sw              t3, 12(a4)
        lw              t4, 8(t5)
        sw              t4, 16(a4)
        lw              t0, 16(t5)
        sw              t0, 20(a4)
        lw              t1, 0(t6)
        sw              t1, 24(a4)
        lw              t2, 8(t6)
        sw              t2, 28(a4)
        lw              t3, 16(t6)
        sw              t3, 32(a4)

        addi            a3, a3, -1

        add             a0, a0, a2
        add             a4, a4, 36
        add             t5, t5, a2
        add             t6, t6, a2
        
        bnez            a3, stride2_channel_loop

finish:
        ld              t0, 0(sp)
        ld              t1, 8(sp)
        ld              t2, 16(sp)
        ld              t3, 24(sp)
        ld              t4, 32(sp)
        ld              t5, 40(sp)
        ld              t6, 48(sp)
        addi            sp, sp, 56
	ret
	.end
