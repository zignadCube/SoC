	.file	"sec_soft.c"
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
	.global	__mulsi3
	.section	.text
	.align	2
	.type	fxmult_2_8, @function
fxmult_2_8:
.LFB0:
	.file 1 "sec_soft.c"
	.loc 1 34 0
	.cfi_startproc
	addi	sp, sp, -20
	.cfi_def_cfa_offset 20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	.cfi_offset 31, -4
	.cfi_offset 28, -8
	addi	fp, sp, 12
	.cfi_def_cfa 28, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	.loc 1 35 0
	ldw	r5, -4(fp)
	ldw	r4, -8(fp)
	call	__mulsi3
	stw	r2, -12(fp)
	.loc 1 36 0
	ldw	r2, -12(fp)
	srai	r2, r2, 8
	.loc 1 37 0
	mov	sp, fp
	.cfi_def_cfa_register 27
	ldw	ra, 4(sp)
	.cfi_restore 31
	ldw	fp, 0(sp)
	.cfi_restore 28
	addi	sp, sp, 8
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	fxmult_2_8, .-fxmult_2_8
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
.LFB1:
	.loc 1 42 0
	.cfi_startproc
	addi	sp, sp, -104
	.cfi_def_cfa_offset 104
	stw	ra, 100(sp)
	stw	fp, 96(sp)
	.cfi_offset 31, -4
	.cfi_offset 28, -8
	addi	fp, sp, 96
	.cfi_def_cfa 28, 8
	.loc 1 44 0
	stw	zero, -96(fp)
	.loc 1 45 0
	stw	zero, -92(fp)
	.loc 1 48 0
	movi	r2, 140
	stw	r2, -76(fp)
	.loc 1 49 0
	movi	r2, -280
	stw	r2, -72(fp)
	.loc 1 50 0
	movi	r2, 140
	stw	r2, -68(fp)
	.loc 1 51 0
	movi	r2, 225
	stw	r2, -64(fp)
	.loc 1 52 0
	movi	r2, -80
	stw	r2, -60(fp)
	.loc 1 59 0
	movhi	r4, %hiadj(.LC0)
	addi	r4, r4, %lo(.LC0)
	call	alt_putstr
	.loc 1 62 0
	stw	zero, -88(fp)
.L12:
.LBB2:
	.loc 1 66 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 32
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 68 0
	nop
.L4:
	.loc 1 68 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 40
	ldw	r2, 0(r2)
	bne	r2, zero, .L4
	.loc 1 74 0 is_stmt 1
	stw	zero, -84(fp)
	br	.L5
.L10:
.LBB3:
	.loc 1 76 0
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -84(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r2, 0(r2)
	stw	r2, -56(fp)
	.loc 1 82 0
	ldw	r2, -56(fp)
	andi	r2, r2, 32768
	beq	r2, zero, .L6
	.loc 1 83 0
	ldw	r2, -56(fp)
	orhi	r2, r2, 65535
	stw	r2, -16(fp)
	br	.L7
.L6:
	.loc 1 85 0
	ldw	r2, -56(fp)
	andi	r2, r2, 65535
	stw	r2, -16(fp)
.L7:
	.loc 1 86 0
	ldw	r2, -56(fp)
	srai	r2, r2, 16
	stw	r2, -12(fp)
	.loc 1 90 0
	stw	zero, -80(fp)
	br	.L8
.L9:
	.loc 1 92 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 80
	ldw	r2, 0(r2)
	mov	r5, r2
	ldw	r4, -76(fp)
	call	fxmult_2_8
	stw	r2, -52(fp)
	.loc 1 93 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 80
	ldw	r2, 0(r2)
	mov	r5, r2
	ldw	r4, -72(fp)
	call	fxmult_2_8
	stw	r2, -48(fp)
	.loc 1 94 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 80
	ldw	r2, 0(r2)
	mov	r5, r2
	ldw	r4, -68(fp)
	call	fxmult_2_8
	stw	r2, -44(fp)
	.loc 1 95 0 discriminator 3
	ldw	r3, -92(fp)
	ldw	r2, -52(fp)
	add	r2, r3, r2
	stw	r2, -40(fp)
	.loc 1 96 0 discriminator 3
	ldw	r5, -40(fp)
	ldw	r4, -64(fp)
	call	fxmult_2_8
	stw	r2, -36(fp)
	.loc 1 97 0 discriminator 3
	ldw	r5, -40(fp)
	ldw	r4, -60(fp)
	call	fxmult_2_8
	stw	r2, -32(fp)
	.loc 1 98 0 discriminator 3
	ldw	r3, -44(fp)
	ldw	r2, -32(fp)
	add	r2, r3, r2
	stw	r2, -28(fp)
	.loc 1 99 0 discriminator 3
	ldw	r3, -96(fp)
	ldw	r2, -48(fp)
	add	r2, r3, r2
	stw	r2, -24(fp)
	.loc 1 100 0 discriminator 3
	ldw	r3, -24(fp)
	ldw	r2, -36(fp)
	add	r2, r3, r2
	stw	r2, -20(fp)
	.loc 1 102 0 discriminator 3
	ldw	r2, -28(fp)
	stw	r2, -96(fp)
	.loc 1 103 0 discriminator 3
	ldw	r2, -20(fp)
	stw	r2, -92(fp)
	.loc 1 105 0 discriminator 3
	ldw	r2, -80(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -96
	add	r2, r3, r2
	addi	r2, r2, 88
	ldw	r3, -40(fp)
	stw	r3, 0(r2)
	.loc 1 90 0 discriminator 3
	ldw	r2, -80(fp)
	addi	r2, r2, 1
	stw	r2, -80(fp)
.L8:
	.loc 1 90 0 is_stmt 0 discriminator 1
	ldw	r2, -80(fp)
	cmplti	r2, r2, 2
	bne	r2, zero, .L9
	.loc 1 108 0 is_stmt 1 discriminator 2
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -84(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r3, -4(fp)
	slli	r3, r3, 16
	mov	r4, r3
	.loc 1 109 0 discriminator 2
	ldw	r3, -8(fp)
	.loc 1 108 0 discriminator 2
	andi	r3, r3, 65535
	or	r3, r4, r3
	stw	r3, 0(r2)
.LBE3:
	.loc 1 74 0 discriminator 2
	ldw	r2, -84(fp)
	addi	r2, r2, 1
	stw	r2, -84(fp)
.L5:
	.loc 1 74 0 is_stmt 0 discriminator 1
	ldw	r2, -84(fp)
	cmplti	r2, r2, 8
	bne	r2, zero, .L10
	.loc 1 113 0 is_stmt 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 36
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 114 0
	nop
.L11:
	.loc 1 114 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 44
	ldw	r2, 0(r2)
	bne	r2, zero, .L11
	.loc 1 119 0 is_stmt 1
	ldw	r2, -88(fp)
	addi	r2, r2, 1
	stw	r2, -88(fp)
	ldw	r5, -88(fp)
	movhi	r4, %hiadj(.LC1)
	addi	r4, r4, %lo(.LC1)
	call	alt_printf
.LBE2:
	.loc 1 120 0
	br	.L12
	.cfi_endproc
.LFE1:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x206
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.4byte	0x69
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x21
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x21
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.string	"tmp"
	.byte	0x1
	.byte	0x23
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x29
	.4byte	0x69
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0x4
	.string	"z1"
	.byte	0x1
	.byte	0x2c
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.string	"z2"
	.byte	0x1
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.string	"b0"
	.byte	0x1
	.byte	0x30
	.4byte	0x1ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.string	"b1"
	.byte	0x1
	.byte	0x31
	.4byte	0x1ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.string	"b2"
	.byte	0x1
	.byte	0x32
	.4byte	0x1ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.string	"a1"
	.byte	0x1
	.byte	0x33
	.4byte	0x1ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.string	"a2"
	.byte	0x1
	.byte	0x34
	.4byte	0x1ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.string	"m1"
	.byte	0x1
	.byte	0x37
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"m2"
	.byte	0x1
	.byte	0x37
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.string	"m3"
	.byte	0x1
	.byte	0x37
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"m4"
	.byte	0x1
	.byte	0x37
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"m5"
	.byte	0x1
	.byte	0x37
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"y"
	.byte	0x1
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x3e
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x48
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.string	"j"
	.byte	0x1
	.byte	0x48
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4c
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x4f
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x69
	.uleb128 0xa
	.4byte	0x69
	.4byte	0x1df
	.uleb128 0xb
	.4byte	0x1df
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	0x1f7
	.uleb128 0x5
	.byte	0x3
	.4byte	IO_CUSTOM
	.uleb128 0xe
	.byte	0x4
	.4byte	0x204
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.4byte	0x1fd
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
.LASF3:
	.string	"z2_temp"
.LASF16:
	.string	"IO_CUSTOM"
.LASF0:
	.string	"left"
.LASF1:
	.string	"right"
.LASF12:
	.string	"sec_soft.c"
.LASF5:
	.string	"block_count"
.LASF11:
	.string	"GNU C11 5.3.0 -mno-hw-div -mno-hw-mul -mno-hw-mulx -g -O0"
.LASF15:
	.string	"main"
.LASF13:
	.string	"/home/s3310914/Documents/nio/my_software"
.LASF8:
	.string	"out_pair"
.LASF7:
	.string	"in_pair"
.LASF14:
	.string	"fxmult_2_8"
.LASF6:
	.string	"current_pair"
.LASF4:
	.string	"z2_next"
.LASF10:
	.string	"unsigned int"
.LASF2:
	.string	"z1_next"
.LASF9:
	.string	"sizetype"
	.ident	"GCC: (Altera 18.1 Build 625) 5.3.0"
