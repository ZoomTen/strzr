; ---------------------------------------------------------------------------
; Debug	mode item lists
; ---------------------------------------------------------------------------
Debug_List:
	dc.w @GHZ-DebugList
	dc.w @LZ-DebugList
	dc.w @MZ-DebugList
	dc.w @SLZ-DebugList
	dc.w @SYZ-DebugList
	dc.w @SBZ-DebugList
	dc.w @Ending-DebugList

dbug:	macro map,object,subtype,frame,vram
	dc.l map+(object<<24)
	dc.b subtype,frame
	dc.w vram
	endm

@GHZ:
	dc.w $10			; number of items in list
	dc.l Map_obj25+$25000000	; mappings pointer, object type * 10^6
	dc.b 0,	0, $27,	$B2		; subtype, frame, VRAM setting (2 bytes)
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	dc.l Map_obj1F+$1F000000
	dc.b 0,	0, 4, 0
	dc.l Map_obj22+$22000000
	dc.b 0,	0, 4, $44
	dc.l Map_obj2B+$2B000000
	dc.b 0,	0, 4, $7B
	dc.l Map_obj36+$36000000
	dc.b 0,	0, 5, $1B
	dc.l Map_obj18+$18000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj3B+$3B000000
	dc.b 0,	0, $63,	$D0
	dc.l Map_obj40+$40000000
	dc.b 0,	0, 4, $F0
	dc.l Map_obj41+$41000000
	dc.b 0,	0, 5, $23
	dc.l Map_obj42+$42000000
	dc.b 0,	0, $24,	$9B
	dc.l Map_obj44+$44000000
	dc.b 0,	0, $43,	$4C
	dc.l Map_obj48+$19000000
	dc.b 0,	0, $43,	$AA
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 7, $A0
	dc.l Map_obj4B+$4B000000
	dc.b 0,	0, $24,	0
	dc.l Map_obj7D+$7D000000
	dc.b 1,	1, $84,	$B6
	even

@LZ:
	dc.w $19
	dc.l Map_obj25+$25000000
	dc.b 0,	0, $27,	$B2
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	dc.l Map_obj41+$41000000
	dc.b 0,	0, 5, $23
	dc.l Map_obj2C+$2C000000
	dc.b 8,	0, $24,	$86
	dc.l Map_obj2D+$2D000000
	dc.b 0,	2, $84,	$A6
	dc.l Map_obj16+$16000000
	dc.b 0,	0, 3, $CC
	dc.l Map_obj16+$16000000
	dc.b 2,	3, 3, $CC
	dc.l Map_obj33+$33000000
	dc.b 0,	0, $43,	$DE
	dc.l Map_obj32+$32000000
	dc.b 0,	0, 5, $13
	dc.l Map_obj36+$36000000
	dc.b 0,	0, 5, $1B
	dc.l Map_obj52a+$52000000
	dc.b 4,	0, $43,	$BC
	dc.l Map_obj61+$61000000
	dc.b 1,	0, $43,	$E6
	dc.l Map_obj61+$61000000
	dc.b $13, 1, $43, $E6
	dc.l Map_obj61+$61000000
	dc.b 5,	0, $43,	$E6
	dc.l Map_obj62+$62000000
	dc.b 0,	0, $44,	$3E
	dc.l Map_obj61+$61000000
	dc.b $27, 2, $43, $E6
	dc.l Map_obj61+$61000000
	dc.b $30, 3, $43, $E6
	dc.l Map_obj63+$63000000
	dc.b $7F, 0, 3,	$F6
	dc.l Map_obj60+$60000000
	dc.b 0,	0, 4, $67
	dc.l Map_obj64+$64000000
	dc.b $84, $13, $83, $48
	dc.l Map_obj65+$65000000
	dc.b 2,	2, $C2,	$59
	dc.l Map_obj65+$65000000
	dc.b 9,	9, $C2,	$59
	dc.l Map_obj0B+$B000000
	dc.b 0,	0, $43,	$DE
	dc.l Map_obj0C+$C000000
	dc.b 2,	0, $43,	$28
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 7, $A0
	even

@MZ:
	dc.w $12
	dc.l Map_obj25+$25000000
	dc.b 0,	0, $27,	$B2
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	dc.l Map_obj22+$22000000
	dc.b 0,	0, 4, $44
	dc.l Map_obj36+$36000000
	dc.b 0,	0, 5, $1B
	dc.l Map_obj41+$41000000
	dc.b 0,	0, 5, $23
	dc.l Map_obj14+$13000000
	dc.b 0,	0, 3, $45
	dc.l Map_obj46+$46000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj4C+$4C000000
	dc.b 0,	0, $63,	$A8
	dc.l Map_obj4E+$4E000000
	dc.b 0,	0, $63,	$A8
	dc.l Map_obj33+$33000000
	dc.b 0,	0, $42,	$B8
	dc.l Map_obj50+$50000000
	dc.b 0,	0, $24,	$7B
	dc.l Map_obj51+$51000000
	dc.b 0,	0, $42,	$B8
	dc.l Map_obj52+$52000000
	dc.b 0,	0, 2, $B8
	dc.l Map_obj53+$53000000
	dc.b 0,	0, $62,	$B8
	dc.l Map_obj54+$54000000
	dc.b 0,	0, $86,	$80
	dc.l Map_obj55+$55000000
	dc.b 0,	0, 4, $B8
	dc.l Map_obj78+$78000000
	dc.b 0,	0, $24,	$FF
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 7, $A0
	even

@SLZ:
	dc.w $F
	dc.l Map_obj25+$25000000
	dc.b 0,	0, $27,	$B2
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	dc.l Map_obj59+$59000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj53+$53000000
	dc.b 0,	2, $44,	$E0
	dc.l Map_obj18b+$18000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj5A+$5A000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj5B+$5B000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj5D+$5D000000
	dc.b 0,	0, $43,	$A0
	dc.l Map_obj5E+$5E000000
	dc.b 0,	0, 3, $74
	dc.l Map_obj41+$41000000
	dc.b 0,	0, 5, $23
	dc.l Map_obj14+$13000000
	dc.b 0,	0, 4, $80
	dc.l Map_obj1C+$1C000000
	dc.b 0,	0, $44,	$D8
	dc.l Map_obj5F+$5F000000
	dc.b 0,	0, 4, 0
	dc.l Map_obj60+$60000000
	dc.b 0,	0, $24,	$29
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 7, $A0
	even

@SYZ:
	dc.w (@SYZend-@SYZ-2)/8
;		mappings	object	subtype	frame	VRAM setting
	dbug	Map_obj25,	$25,	0,	0,	$27B2
	dbug	Map_obj26,	$26,	0,	0,	$680
	dbug	Map_obj31,	$31,	0,	0,	$51B
	dbug	Map_obj41,	$41,	0,	0,	$523
	dbug	Map_obj43,	$43,	0,	0,	$4B8
	dbug	Map_obj12,	$12, 	0,	0,	0
	dbug	Map_obj47,	$47,	0,	0,	$380
	dbug	Map_obj1F,	$1F,	0,	0,	$400
	dbug	Map_obj22,	$22,	0,	0,	$444
	dbug	Map_obj50,	$50,	0,	0,	$247B
	dbug	Map_obj18a,	$18, 	0,	0,	$4000
	dbug	Map_obj56,	$56,	0,	0,	$4000
	dbug	Map_obj32,	$32,	0,	0,	$513
	dbug	Map_obj78,	$78,	0,	0,	$24FF
	dbug	Map_obj79,	$79,	1,	0,	$7A0
	dbug	Map_obj02,	$02,	0,	0,	$100
	@SYZend:

@SBZ:
	dc.w $1D
	dc.l Map_obj25+$25000000
	dc.b 0,	0, $27,	$B2
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	dc.l Map_obj5F+$5F000000
	dc.b 0,	0, 4, 0
	dc.l Map_obj60+$60000000
	dc.b 0,	0, 4, $29
	dc.l Map_obj78+$78000000
	dc.b 0,	0, $22,	$B0
	dc.l Map_obj15b+$15000000
	dc.b 7,	2, $43,	$91
	dc.l Map_obj67+$67000000
	dc.b $E0, 0, $C3, $44
	dc.l Map_obj52+$52000000
	dc.b $28, 2, $22, $C0
	dc.l Map_obj32+$32000000
	dc.b 0,	0, 5, $13
	dc.l Map_obj69+$69000000
	dc.b 3,	0, $44,	$92
	dc.l Map_obj69a+$69000000
	dc.b $83, 0, 4,	$DF
	dc.l Map_obj6A+$6A000000
	dc.b 2,	0, $43,	$B5
	dc.l Map_obj53+$53000000
	dc.b 0,	0, $43,	$F5
	dc.l Map_obj52+$52000000
	dc.b $39, 3, $44, $60
	dc.l Map_obj6B+$6B000000
	dc.b 0,	0, $22,	$C0
	dc.l Map_obj2A+$2A000000
	dc.b 0,	0, $42,	$E8
	dc.l Map_obj6B+$6B000000
	dc.b $13, 1, $22, $C0
	dc.l Map_obj6A+$6A000000
	dc.b 1,	0, $43,	$B5
	dc.l Map_obj6B+$6B000000
	dc.b $24, 1, $22, $C0
	dc.l Map_obj6A+$6A000000
	dc.b 4,	2, $43,	$B5
	dc.l Map_obj6B+$6B000000
	dc.b $34, 1, $22, $C0
	dc.l Map_obj6C+$6C000000
	dc.b 0,	0, $44,	$C3
	dc.l Map_obj6D+$6D000000
	dc.b $64, 0, $83, $D9
	dc.l Map_obj6D+$6D000000
	dc.b $64, $B, $83, $D9
	dc.l Map_obj6E+$6E000000
	dc.b 4,	0, 4, $7E
	dc.l Map_obj70+$70000000
	dc.b 0,	0, $42,	$F0
	dc.l Map_obj71+$71000000
	dc.b $11, 0, $86, $80
	dc.l Map_obj1E+$1E000000
	dc.b 4,	0, $23,	2
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 7, $A0
	even

@Ending:
	dc.w $D
	dc.l Map_obj25+$25000000
	dc.b 0,	0, $27,	$B2
	dc.l Map_obj47+$47000000
	dc.b 0,	0, 3, $80
	dc.l Map_obj28a+$28000000
	dc.b $A, 0, 5, $A0
	dc.l Map_obj28a+$28000000
	dc.b $B, 0, 5, $A0
	dc.l Map_obj28a+$28000000
	dc.b $C, 0, 5, $A0
	dc.l Map_obj28+$28000000
	dc.b $D, 0, 5, $53
	dc.l Map_obj28+$28000000
	dc.b $E, 0, 5, $53
	dc.l Map_obj28+$28000000
	dc.b $F, 0, 5, $73
	dc.l Map_obj28+$28000000
	dc.b $10, 0, 5,	$73
	dc.l Map_obj28a+$28000000
	dc.b $11, 0, 5,	$85
	dc.l Map_obj28b+$28000000
	dc.b $12, 0, 5,	$93
	dc.l Map_obj28a+$28000000
	dc.b $13, 0, 5,	$65
	dc.l Map_obj28b+$28000000
	dc.b $14, 0, 5,	$B3
	even