	.file	"copy.c"
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
	.section	.rodata
	.align	2
.LC0:
	.string	"--> Start of copy <--\n"
	.align	2
.LC1:
	.string	"--> End of copy <--\n"
	.section	.text
	.align	2
	.global	main
	.type	main, @function
main:
.LFB0:
	.file 1 "copy.c"
	.loc 1 31 0
	.cfi_startproc
	addi	sp, sp, -56
	.cfi_def_cfa_offset 56
	stw	ra, 52(sp)
	stw	fp, 48(sp)
	.cfi_offset 31, -4
	.cfi_offset 28, -8
	addi	fp, sp, 48
	.cfi_def_cfa 28, 8
	.loc 1 33 0
	movhi	r4, %hiadj(.LC0)
	addi	r4, r4, %lo(.LC0)
	call	alt_putstr
	.loc 1 38 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 32
	movi	r3, 3
	stw	r3, 0(r2)
	.loc 1 40 0
	nop
.L2:
	.loc 1 40 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 40
	ldw	r2, 0(r2)
	bne	r2, zero, .L2
	.loc 1 48 0 is_stmt 1
	stw	zero, -48(fp)
	br	.L3
.L4:
	.loc 1 49 0 discriminator 3
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -48(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r2, 0(r2)
	mov	r3, r2
	ldw	r2, -48(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r4, fp, -48
	add	r2, r4, r2
	addi	r2, r2, 16
	stw	r3, 0(r2)
	.loc 1 48 0 discriminator 3
	ldw	r2, -48(fp)
	addi	r2, r2, 1
	stw	r2, -48(fp)
.L3:
	.loc 1 48 0 is_stmt 0 discriminator 1
	ldw	r2, -48(fp)
	cmplti	r2, r2, 8
	bne	r2, zero, .L4
	.loc 1 52 0 is_stmt 1
	stw	zero, -48(fp)
	br	.L5
.L6:
.LBB2:
	.loc 1 55 0 discriminator 3
	movi	r3, 7
	ldw	r2, -48(fp)
	sub	r2, r3, r2
	add	r2, r2, r2
	add	r2, r2, r2
	addi	r3, fp, -48
	add	r2, r3, r2
	addi	r2, r2, 16
	ldw	r2, 0(r2)
	stw	r2, -44(fp)
	.loc 1 57 0 discriminator 3
	ldw	r2, -44(fp)
	slli	r2, r2, 16
	stw	r2, -40(fp)
	.loc 1 59 0 discriminator 3
	ldw	r2, -44(fp)
	srli	r2, r2, 16
	stw	r2, -36(fp)
	.loc 1 61 0 discriminator 3
	ldw	r3, %gprel(IO_CUSTOM)(gp)
	ldw	r2, -48(fp)
	add	r2, r2, r2
	add	r2, r2, r2
	add	r2, r3, r2
	ldw	r4, -40(fp)
	ldw	r3, -36(fp)
	or	r3, r4, r3
	stw	r3, 0(r2)
.LBE2:
	.loc 1 52 0 discriminator 3
	ldw	r2, -48(fp)
	addi	r2, r2, 1
	stw	r2, -48(fp)
.L5:
	.loc 1 52 0 is_stmt 0 discriminator 1
	ldw	r2, -48(fp)
	cmplti	r2, r2, 8
	bne	r2, zero, .L6
	.loc 1 65 0 is_stmt 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 36
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 67 0
	nop
.L7:
	.loc 1 67 0 is_stmt 0 discriminator 1
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 44
	ldw	r2, 0(r2)
	bne	r2, zero, .L7
	.loc 1 71 0 is_stmt 1
	movhi	r4, %hiadj(.LC1)
	addi	r4, r4, %lo(.LC1)
	call	alt_putstr
	.loc 1 74 0
	ldw	r2, %gprel(IO_CUSTOM)(gp)
	addi	r2, r2, 48
	movi	r3, 1
	stw	r3, 0(r2)
	.loc 1 77 0
	mov	r2, zero
	.loc 1 78 0
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
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0xc
	.4byte	.LASF7
	.4byte	.LASF8
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x1
	.byte	0x1e
	.4byte	0x8d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d
	.uleb128 0x3
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2d
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x37
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x3b
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	0x8d
	.4byte	0xa4
	.uleb128 0x8
	.4byte	0xa4
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0x14
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	IO_CUSTOM
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xc
	.4byte	0xc2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"buffer"
.LASF7:
	.string	"copy.c"
.LASF1:
	.string	"both"
.LASF8:
	.string	"/home/s3310914/Documents/nio/my_software"
.LASF3:
	.string	"left2right"
.LASF4:
	.string	"sizetype"
.LASF9:
	.string	"main"
.LASF6:
	.string	"GNU C11 5.3.0 -mno-hw-div -mno-hw-mul -mno-hw-mulx -g -O0"
.LASF2:
	.string	"right2left"
.LASF10:
	.string	"IO_CUSTOM"
	.ident	"GCC: (Altera 18.1 Build 625) 5.3.0"
