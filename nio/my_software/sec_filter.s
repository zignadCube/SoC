	.file	"sec_filter.c"
	.section	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	IO_CUSTOM
	.section	.sdata,"aws",@progbits
	.align	2
	.type	IO_CUSTOM, @object
	.size	IO_CUSTOM, 4
IO_CUSTOM:
	.long	135168
	.section	.text
	.align	2
	.type	coeff_load, @function
coeff_load:
.LFB0:
	.file 1 "sec_filter.c"
	.loc 1 32 0
	.cfi_startproc
	addi	sp, sp, -20
	.cfi_def_cfa_offset 20
	stw	fp, 16(sp)
	.cfi_offset 28, -4
	addi	fp, sp, 16
	.cfi_def_cfa 28, 4
	stw	r4, -16(fp)
	stw	r5, -12(fp)
	stw	r6, -8(fp)
	stw	r7, -4(fp)
	.loc 1 34 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 36 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	ldw	r3, -16(fp)
	stw	r3, 0(r2)
	.loc 1 37 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 4
	ldw	r3, -12(fp)
	stw	r3, 0(r2)
	.loc 1 38 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 8
	ldw	r3, -8(fp)
	stw	r3, 0(r2)
	.loc 1 39 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 12
	ldw	r3, -4(fp)
	stw	r3, 0(r2)
	.loc 1 40 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 16
	ldw	r3, 4(fp)
	stw	r3, 0(r2)
	.loc 1 41 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 20
	ldw	r3, 8(fp)
	stw	r3, 0(r2)
	.loc 1 42 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 24
	ldw	r3, 12(fp)
	stw	r3, 0(r2)
	.loc 1 43 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 28
	ldw	r3, 16(fp)
	stw	r3, 0(r2)
	.loc 1 46 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	stw	zero, 0(r2)
	.loc 1 48 0
	mov	r2, zero
	.loc 1 49 0
	mov	sp, fp
	.cfi_def_cfa_register 27
	ldw	fp, 0(sp)
	.cfi_restore 28
	addi	sp, sp, 4
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	coeff_load, .-coeff_load
	.align	2
	.type	filter_mul_inputs_bx, @function
filter_mul_inputs_bx:
.LFB2:
	.loc 1 77 0
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	stw	fp, 28(sp)
	.cfi_offset 28, -4
	addi	fp, sp, 28
	.cfi_def_cfa 28, 4
	stw	r4, -16(fp)
	stw	r5, -12(fp)
	stw	r6, -8(fp)
	stw	r7, -4(fp)
	.loc 1 78 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	movi	r3, 2
	stw	r3, 0(r2)
	.loc 1 79 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 56
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 81 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	ldw	r3, -16(fp)
	stw	r3, 0(r2)
	.loc 1 84 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	movi	r3, 4
	stw	r3, 0(r2)
	.loc 1 86 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	ldw	r2, 0(r2)
	stw	r2, -28(fp)
	.loc 1 87 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 4
	ldw	r2, 0(r2)
	stw	r2, -24(fp)
	.loc 1 88 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 8
	ldw	r2, 0(r2)
	stw	r2, -20(fp)
	.loc 1 90 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	stw	zero, 0(r2)
	.loc 1 92 0
	ldw	r2, -28(fp)
	srai	r3, r2, 8
	ldw	r2, -12(fp)
	stw	r3, 0(r2)
	.loc 1 93 0
	ldw	r2, -24(fp)
	srai	r3, r2, 8
	ldw	r2, -8(fp)
	stw	r3, 0(r2)
	.loc 1 94 0
	ldw	r2, -20(fp)
	srai	r3, r2, 8
	ldw	r2, -4(fp)
	stw	r3, 0(r2)
	.loc 1 95 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 56
	stw	zero, 0(r2)
	.loc 1 96 0
	nop
	mov	sp, fp
	.cfi_def_cfa_register 27
	ldw	fp, 0(sp)
	.cfi_restore 28
	addi	sp, sp, 4
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	filter_mul_inputs_bx, .-filter_mul_inputs_bx
	.align	2
	.type	filter_mul_inputs_ay, @function
filter_mul_inputs_ay:
.LFB3:
	.loc 1 99 0
	.cfi_startproc
	addi	sp, sp, -24
	.cfi_def_cfa_offset 24
	stw	fp, 20(sp)
	.cfi_offset 28, -4
	addi	fp, sp, 20
	.cfi_def_cfa 28, 4
	stw	r4, -12(fp)
	stw	r5, -8(fp)
	stw	r6, -4(fp)
	.loc 1 100 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	movi	r3, 2
	stw	r3, 0(r2)
	.loc 1 101 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 56
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 103 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 4
	ldw	r3, -12(fp)
	stw	r3, 0(r2)
	.loc 1 106 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	movi	r3, 4
	stw	r3, 0(r2)
	.loc 1 108 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 12
	ldw	r2, 0(r2)
	stw	r2, -20(fp)
	.loc 1 109 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 16
	ldw	r2, 0(r2)
	stw	r2, -16(fp)
	.loc 1 111 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 52
	stw	zero, 0(r2)
	.loc 1 113 0
	ldw	r2, -20(fp)
	srai	r3, r2, 8
	ldw	r2, -8(fp)
	stw	r3, 0(r2)
	.loc 1 114 0
	ldw	r2, -16(fp)
	srai	r3, r2, 8
	ldw	r2, -4(fp)
	stw	r3, 0(r2)
	.loc 1 115 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 56
	stw	zero, 0(r2)
	.loc 1 116 0
	nop
	mov	sp, fp
	.cfi_def_cfa_register 27
	ldw	fp, 0(sp)
	.cfi_restore 28
	addi	sp, sp, 4
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	filter_mul_inputs_ay, .-filter_mul_inputs_ay
	.section	.rodata
	.align	2
.LC0:
	.string	"--> Start of sec_soft <--\n"
	.align	2
.LC1:
	.string	"Block nr. = %x\n"
	.section	.text
	.align	2
	.global	main
	.type	main, @function
main:
.LFB4:
	.loc 1 121 0
	.cfi_startproc
	addi	sp, sp, -120
	.cfi_def_cfa_offset 120
	stw	ra, 116(sp)
	stw	fp, 112(sp)
	.cfi_offset 31, -4
	.cfi_offset 28, -8
	addi	fp, sp, 112
	.cfi_def_cfa 28, 8
	.loc 1 123 0
	movhi	r4, %hiadj(.LC0)
	addi	r4, r4, %lo(.LC0)
	call	alt_putstr
	.loc 1 126 0
	stw	zero, -96(fp)
	.loc 1 127 0
	stw	zero, -92(fp)
	.loc 1 130 0
	movi	r2, 140
	stw	r2, -76(fp)
	.loc 1 131 0
	movi	r2, -280
	stw	r2, -72(fp)
	.loc 1 132 0
	movi	r2, 140
	stw	r2, -68(fp)
	.loc 1 133 0
	movi	r2, 225
	stw	r2, -64(fp)
	.loc 1 134 0
	movi	r2, -80
	stw	r2, -60(fp)
	.loc 1 135 0
	stw	zero, 12(sp)
	stw	zero, 8(sp)
	stw	zero, 4(sp)
	ldw	r2, -60(fp)
	stw	r2, 0(sp)
	ldw	r7, -64(fp)
	ldw	r6, -68(fp)
	ldw	r5, -72(fp)
	ldw	r4, -76(fp)
	call	coeff_load
	.loc 1 143 0
	stw	zero, -88(fp)
.L14:
.LBB2:
	.loc 1 147 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 32
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 149 0
	nop
.L6:
	.loc 1 149 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 40
	ldw	r2, 0(r2)
	bne	r2, zero, .L6
	.loc 1 155 0 is_stmt 1
	stw	zero, -84(fp)
	br	.L7
.L12:
.LBB3:
	.loc 1 157 0
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -84(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r2, 0(r2)
	stw	r2, -56(fp)
	.loc 1 163 0
	ldw	r2, -56(fp)
	andi	r2, r2, 32768
	beq	r2, zero, .L8
	.loc 1 164 0
	ldw	r2, -56(fp)
	orhi	r2, r2, 65535
	stw	r2, -16(fp)
	br	.L9
.L8:
	.loc 1 166 0
	ldw	r2, -56(fp)
	andi	r2, r2, 65535
	stw	r2, -16(fp)
.L9:
	.loc 1 167 0
	ldw	r2, -56(fp)
	srai	r2, r2, 16
	stw	r2, -12(fp)
	.loc 1 171 0
	stw	zero, -80(fp)
	br	.L10
.L11:
	.loc 1 173 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 80
	ldw	r2, 0(r2)
	addi	r5, fp, -24
	addi	r4, fp, -32
	addi	r3, fp, -36
	mov	r7, r5
	mov	r6, r4
	mov	r5, r3
	mov	r4, r2
	call	filter_mul_inputs_bx
	.loc 1 175 0 discriminator 3
	ldw	r2, -36(fp)
	ldw	r3, -92(fp)
	add	r2, r3, r2
	stw	r2, -52(fp)
	.loc 1 177 0 discriminator 3
	addi	r3, fp, -20
	addi	r2, fp, -28
	mov	r6, r3
	mov	r5, r2
	ldw	r4, -52(fp)
	call	filter_mul_inputs_ay
	.loc 1 179 0 discriminator 3
	ldw	r3, -24(fp)
	ldw	r2, -20(fp)
	add	r2, r3, r2
	stw	r2, -48(fp)
	.loc 1 180 0 discriminator 3
	ldw	r2, -32(fp)
	ldw	r3, -96(fp)
	add	r2, r3, r2
	stw	r2, -44(fp)
	.loc 1 181 0 discriminator 3
	ldw	r2, -28(fp)
	ldw	r3, -44(fp)
	add	r2, r3, r2
	stw	r2, -40(fp)
	.loc 1 183 0 discriminator 3
	ldw	r2, -48(fp)
	stw	r2, -96(fp)
	.loc 1 184 0 discriminator 3
	ldw	r2, -40(fp)
	stw	r2, -92(fp)
	.loc 1 186 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 88
	ldw	r3, -52(fp)
	stw	r3, 0(r2)
	.loc 1 171 0 discriminator 3
	ldw	r2, -80(fp)
	addi	r2, r2, 1
	stw	r2, -80(fp)
.L10:
	.loc 1 171 0 is_stmt 0 discriminator 1
	ldw	r2, -80(fp)
	cmplti	r2, r2, 2
	bne	r2, zero, .L11
	.loc 1 189 0 is_stmt 1 discriminator 2
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -84(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r3, -4(fp)
	slli	r3, r3, 16
	mov	r4, r3
	.loc 1 190 0 discriminator 2
	ldw	r3, -8(fp)
	.loc 1 189 0 discriminator 2
	andi	r3, r3, 65535
	or	r3, r4, r3
	stw	r3, 0(r2)
.LBE3:
	.loc 1 155 0 discriminator 2
	ldw	r2, -84(fp)
	addi	r2, r2, 1
	stw	r2, -84(fp)
.L7:
	.loc 1 155 0 is_stmt 0 discriminator 1
	ldw	r2, -84(fp)
	cmplti	r2, r2, 8
	bne	r2, zero, .L12
	.loc 1 194 0 is_stmt 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 36
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 195 0
	nop
.L13:
	.loc 1 195 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 44
	ldw	r2, 0(r2)
	bne	r2, zero, .L13
	.loc 1 200 0 is_stmt 1
	ldw	r2, -88(fp)
	addi	r2, r2, 1
	stw	r2, -88(fp)
	ldw	r5, -88(fp)
	movhi	r4, %hiadj(.LC1)
	addi	r4, r4, %lo(.LC1)
	call	alt_printf
.LBE2:
	.loc 1 201 0
	br	.L14
	.cfi_endproc
.LFE4:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x312
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.string	"d"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3
	.string	"e"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"f"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.string	"g"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x4c
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4c
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4c
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x56
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x57
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x58
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x62
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c
	.uleb128 0x3
	.string	"y"
	.byte	0x1
	.byte	0x62
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x62
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x62
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6c
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x6d
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x78
	.4byte	0x9f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d6
	.uleb128 0xa
	.string	"z1"
	.byte	0x1
	.byte	0x7e
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.string	"z2"
	.byte	0x1
	.byte	0x7f
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.string	"b0"
	.byte	0x1
	.byte	0x82
	.4byte	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.string	"b1"
	.byte	0x1
	.byte	0x83
	.4byte	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.string	"b2"
	.byte	0x1
	.byte	0x84
	.4byte	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a1"
	.byte	0x1
	.byte	0x85
	.4byte	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.string	"a2"
	.byte	0x1
	.byte	0x86
	.4byte	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"m1"
	.byte	0x1
	.byte	0x8a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"m2"
	.byte	0x1
	.byte	0x8a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"m3"
	.byte	0x1
	.byte	0x8a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"m4"
	.byte	0x1
	.byte	0x8a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"m5"
	.byte	0x1
	.byte	0x8a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x1
	.byte	0x8b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x8b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"y"
	.byte	0x1
	.byte	0x8b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x8f
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x99
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x99
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x9d
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa0
	.4byte	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa0
	.4byte	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0x9f
	.4byte	0x2eb
	.uleb128 0xe
	.4byte	0x2eb
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.4byte	0x303
	.uleb128 0x5
	.byte	0x3
	.4byte	IO_CUSTOM
	.uleb128 0x8
	.byte	0x4
	.4byte	0x310
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x11
	.4byte	0x309
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"GNU C11 5.3.0 -mno-hw-div -mno-hw-mul -mno-hw-mulx -g -O0"
.LASF8:
	.string	"z1_next"
.LASF20:
	.string	"coeff_load"
.LASF14:
	.string	"out_pair"
.LASF12:
	.string	"current_pair"
.LASF7:
	.string	"filter_mul_inputs_ay"
.LASF21:
	.string	"main"
.LASF22:
	.string	"IO_CUSTOM"
.LASF18:
	.string	"sec_filter.c"
.LASF16:
	.string	"unsigned int"
.LASF10:
	.string	"z2_next"
.LASF0:
	.string	"res1"
.LASF1:
	.string	"res2"
.LASF2:
	.string	"res3"
.LASF19:
	.string	"/home/s3310914/Documents/nio/my_software"
.LASF15:
	.string	"sizetype"
.LASF3:
	.string	"temp1"
.LASF4:
	.string	"temp2"
.LASF5:
	.string	"temp3"
.LASF13:
	.string	"in_pair"
.LASF9:
	.string	"z2_temp"
.LASF11:
	.string	"block_count"
.LASF6:
	.string	"filter_mul_inputs_bx"
	.ident	"GCC: (Altera 18.1 Build 625) 5.3.0"
