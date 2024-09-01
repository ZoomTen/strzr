;http://cinos.gunsha.com/s1built/
;By Cinossu 01-Dec-2007

;It's just a GHZ disassembly. Move along. :P

s1jump macro loc
	dc.b $F6
	dc.w loc-*-1
	endm

s1loop macro amt,loc
	dc.b $F7
	dc.w amt
	dc.w loc-*-1
	endm

s1call macro loc
	dc.b $F8
	dc.w loc-*-1
	endm

music81_Header:
	; Main..
	dc.w	music81_Voices-music81_Header	;Voices pointer
	dc.b	$06				;FM Channels
	dc.b	$03				;PSG Channels
	dc.b	$01,$03				;Tempo
	; DAC..
	dc.w	music81_DAC-music81_Header	;DAC pointer
	dc.b	$00,$00				;Redundant DAC modifier?
	; FM..
	dc.w	music81_FM1-music81_Header	;FM1 pointer
	dc.b	$F4				;Pitch
	dc.b	$12				;Volume
	dc.w	music81_FM2-music81_Header	;FM2 pointer
	dc.b	$00				;Pitch
	dc.b	$0B				;Volume
	dc.w	music81_FM3-music81_Header	;FM3 pointer
	dc.b	$F4				;Pitch
	dc.b	$14				;Volume
	dc.w	music81_FM4-music81_Header	;FM4 pointer
	dc.b	$F4				;Pitch
	dc.b	$08				;Volume
	dc.w	music81_FM5-music81_Header	;FM5 pointer
	dc.b	$F4				;Pitch
	dc.b	$20				;Volume
	; PSG..
	dc.w	music81_PSG1-music81_Header	;PSG1 pointer
	dc.b	$D0				;Pitch
	dc.b	$01				;Volume
	dc.w	$03				;Instrument
	dc.w	music81_PSG2-music81_Header	;PSG2 pointer
	dc.b	$D0				;Pitch
	dc.b	$03				;Volume
	dc.w	$06				;Instrument
	dc.w	music81_PSG3-music81_Header	;PSG3 pointer
	dc.b	$00				;Pitch
	dc.b	$03				;Volume
	dc.w	$04				;Instrument


music81_FM1:
		dc.b	$EF,$02,$E0,$40
		s1call	music81_pattern01
		dc.b	$E0,$C0
	music81_loop01:
		dc.b	$E0,$80,$D9,$04,$E0,$40,$D5,$E6,$01
		s1loop	$000D,music81_loop01
		dc.b	$D9,$04,$80,$14,$E6,$EB,$E0,$C0,$80,$40,$80,$80,$80,$80,$80
	music81_jump01:
		dc.b	$EF,$06,$F0,$0D,$01,$07,$04,$E9,$F4,$80,$20
		s1call	music81_pattern02
		dc.b	$C9,$38
		s1call	music81_pattern02
		dc.b	$C9,$08,$08,$CD,$E9,$0C,$EF,$06,$E9,$F4,$CB,$34,$E7,$34,$C9,$08
		dc.b	$CB,$CD,$38,$E7,$38,$C9,$08,$C9,$CD,$CC,$34,$E7,$34,$C9,$08,$CC
		dc.b	$CB,$1C,$E7,$1C,$EF,$05,$E9,$F4,$E6,$0A,$80,$08,$D9,$0C,$80,$04
		dc.b	$E8,$0B,$D9,$08,$DA,$D9,$DC,$E8,$14,$D9,$10,$E8,$0B,$D5,$08,$E8
		dc.b	$00,$E6,$F6,$E9,$18
		s1jump	music81_jump01
	music81_pattern01:
		dc.b	$D2,$04,$CE,$D2,$CE,$D4,$D0,$D4,$D0,$D5,$D2,$D5,$D2,$D7,$D4,$D7
		dc.b	$D4,$E3
	music81_pattern02:
		dc.b	$D5,$08,$D2,$10,$D5,$08,$D4,$10,$D5,$08,$D4,$10,$D0,$30,$D2,$08
		dc.b	$D9,$D7,$10,$D5,$08,$D4,$10,$D5,$08,$D4,$10,$D0,$38,$D5,$08,$D2
		dc.b	$10,$D5,$08,$D4,$10,$D5,$08,$D4,$10,$D0,$30,$D2,$08,$08,$CE,$10
		dc.b	$D2,$08,$D0,$10,$D2,$08,$D0,$10,$E3

music81_FM2:
		dc.b	$EF,$00,$E2,$01,$80,$08,$A2,$AE,$A2,$A3,$AF,$A4,$B0,$E8,$04,$EF
		dc.b	$01
	music81_loop02:
		dc.b	$A5,$08
		s1loop	$0018,music81_loop02
		dc.b	$E8,$00,$A5,$04,$80,$A5,$08,$A2,$04,$80,$A2,$08,$A3,$04,$80,$A3
		dc.b	$08,$A4,$04,$80,$A4,$08,$E8,$04
	music81_loop03:
		dc.b	$A5,$08
		s1loop	$001D,music81_loop03
		dc.b	$E8,$00,$A5,$A7,$A9
	music81_jump02:
		dc.b	$EF,$01
		s1call	music81_pattern03
		s1call	music81_pattern04
		dc.b	$E8,$00,$A5,$A7,$A9
		s1call	music81_pattern03
		s1call	music81_pattern04
		dc.b	$A5,$A5,$A5,$E8,$00,$EF,$00,$A3,$18,$A2,$A0,$9E,$9D,$08,$80,$9B
		dc.b	$80,$A2,$18,$A4,$A5,$A7,$A9,$08,$80,$AE,$80,$AD,$18,$AC,$AA,$A8
		dc.b	$A7,$08,$80,$A5,$80,$A0,$18,$A7,$A0,$AC,$08,$9D,$A9,$9E,$AA,$A0
		dc.b	$AC,$E8,$04,$E2,$01
		s1jump	music81_jump02
	music81_pattern03:
		dc.b	$E8,$04,$AA,$08,$AA,$AA,$AA,$AA,$AA,$AA,$E8,$00,$AA,$E8,$04,$A9
		dc.b	$A9,$A9,$A9,$A9,$E8,$00,$A5,$A7,$A9,$E8,$04,$AA,$AA,$AA,$AA,$AA
		dc.b	$AA,$AA,$E8,$00,$AA,$E8,$04,$A9,$A9,$A9,$A9,$A9,$E8,$00,$A5,$A7
		dc.b	$A9,$E3
	music81_pattern04:
		dc.b	$E8,$04,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$E8,$00,$AA,$E8,$04,$A9,$A9
		dc.b	$A9,$A9,$A9,$A9,$A9,$E8,$00,$A9,$E8,$04,$A7,$A7,$A7,$A7,$A7,$A7
		dc.b	$A7,$E8,$00,$A7,$E8,$04,$A5,$A5,$A5,$A5,$A5,$E3

music81_FM3:
		dc.b	$EF,$02,$E0,$80
		s1call	music81_pattern01
		dc.b	$EF,$08,$E0,$C0,$E9,$E8,$E6,$FE,$80,$01
	music81_loop04:
		dc.b	$C9,$01,$E7,$C8,$0F,$80,$08,$C7,$01,$E7,$C6,$0F,$80,$08
		s1loop	$0002,music81_loop04
		dc.b	$C9,$01,$E7,$C8,$07,$80,$08,$C7,$01,$E7,$C6,$07,$80,$08,$CA,$01
		dc.b	$E7,$C9,$0F,$80,$08,$C9,$01,$E7,$C8,$0F,$80,$08,$C7,$01,$E7,$C6
		dc.b	$10,$E7,$3B,$80,$04
	music81_loop05:
		dc.b	$C7,$01,$E7,$C6,$0F,$80,$08,$C9,$01,$E7,$C8,$0F,$80,$08,$CA,$01
		dc.b	$E7,$C9,$07,$80,$08
		s1loop	$0002,music81_loop05
		dc.b	$CA,$01,$E7,$C9,$0F,$80,$08,$C9,$01,$E7,$C8,$28,$E7,$3E,$E6,$02
		dc.b	$E9,$18
	music81_jump03:
		dc.b	$EF,$05,$E9,$E8,$F8,$00,$85,$D2
		s1call	music81_pattern05
		dc.b	$D9
		s1call	music81_pattern05
		dc.b	$D2,$80,$24,$80,$D5,$04,$80,$0C,$D2,$10,$D0,$04,$80,$D2,$80,$D5
		dc.b	$80,$F4,$EF,$05
		s1call	music81_pattern06
		dc.b	$D0,$04,$D2,$D5,$08,$D2
		s1call	music81_pattern06
		dc.b	$D0,$04,$D2,$D5,$08,$D9
		s1call	music81_pattern06
		dc.b	$D0,$04,$D2,$D5,$08,$D2,$E6,$06,$BD,$BA,$04,$80,$16,$80,$E6,$FA
		dc.b	$D9,$08,$80,$D5,$80,$D2,$D2,$D2,$04,$80,$D5,$80,$D9,$80,$E9,$18
		dc.b	$EF,$07,$E0,$C0,$E8,$1E,$E6,$06,$C2,$18,$18,$18,$18,$08,$80,$C2
		dc.b	$80,$C1,$18,$18,$18,$18,$08,$80,$C1,$80,$C0,$18,$18,$18,$18,$08
		dc.b	$80,$C0,$80,$C6,$18,$18,$18,$18,$08,$80,$C6,$80,$E6,$FA,$E8,$00
		s1jump	music81_jump03
	music81_pattern05:
		dc.b	$80,$34,$80,$D0,$04,$D2,$D5,$08,$E3
	music81_pattern06:
		dc.b	$E6,$06,$C1,$08,$BD,$04,$80,$12,$80,$C1,$08,$BD,$04,$80,$BF,$08
		dc.b	$BC,$04,$80,$0E,$80,$E6,$FA,$E3

music81_FM4:
		dc.b	$EF,$08,$80,$20,$80,$E0,$80,$E9,$E8,$E6,$0A
	music81_loop06:
		dc.b	$C5,$01,$E7,$C4,$0F,$80,$08,$C3,$01,$E7,$C2,$0F,$80,$08
		s1loop	$0002,music81_loop06
		dc.b	$C5,$01,$E7,$C4,$07,$80,$08,$C3,$01,$E7,$C2,$07,$80,$08,$C7,$01
		dc.b	$E7,$C6,$0F,$80,$08,$C5,$01,$E7,$C4,$0F,$80,$08,$C3,$01,$E7,$C2
		dc.b	$10,$E7,$3C,$80,$04
	music81_loop07:
		dc.b	$C3,$01,$E7,$C2,$0F,$80,$08,$C5,$01,$E7,$C4,$0F,$80,$08,$C7,$01
		dc.b	$E7,$C6,$07,$80,$08
		s1loop	$0002,music81_loop07
		dc.b	$C7,$01,$E7,$C6,$0F,$80,$08,$C5,$01,$E7,$C4,$28,$E7,$3F,$E6,$F6
		dc.b	$E9,$18,$F4
	music81_jump04:
		dc.b	$EF,$05,$E9,$E8,$E6,$18,$E0,$80,$E6,$FD
		s1call	music81_pattern07
		dc.b	$BF,$BF,$C1,$C1,$BD,$BD,$BA,$BA,$B6,$B6,$BF,$BF,$BC,$BC,$B8,$B8
		dc.b	$BF,$BF
		s1call	music81_pattern07
		dc.b	$B5,$B5,$BD,$BD,$BA,$BA,$B6,$B6,$B3,$B3,$BC,$BC,$E6,$03,$E9,$18
		dc.b	$E9,$F4,$EF,$04,$D0,$10,$D2,$D4,$E6,$F9,$D5,$28,$E7,$28,$D7,$10
		dc.b	$D4,$D0,$D5,$28,$E7,$28,$D4,$10,$D0,$D4,$D5,$28,$E7,$28,$D7,$10
		dc.b	$D4,$D0,$D5,$40,$E7,$40,$E9,$0C,$E6,$07,$E6,$E8,$EF,$07,$E8,$1E
		dc.b	$E0,$C0,$E6,$12,$BF,$18,$18,$18,$18,$08,$80,$BF,$80,$BD,$18,$18
		dc.b	$18,$18,$08,$80,$BD,$80,$BD,$18,$18,$18,$18,$08,$80,$BD,$80,$C2
		dc.b	$18,$18,$18,$18,$08,$80,$C2,$80,$E6,$EE,$E8,$00
		s1jump	music81_jump04
	music81_pattern07:
		dc.b	$C1,$08,$C1,$BD,$BD,$BA,$BA,$B6,$B6,$BF,$BF,$BC,$BC,$B8,$B8,$E3

music81_FM5:
		dc.b	$EF,$03,$80,$20,$80,$EF,$08,$E0,$40,$E9,$E8,$E6,$F2
	music81_loop08:
		dc.b	$C2,$01,$E7,$C1,$0F,$80,$08,$C0,$01,$E7,$BF,$0F,$80,$08
		s1loop	$0002,music81_loop08
		dc.b	$C2,$01,$E7,$C1,$07,$80,$08,$C0,$01,$E7,$BF,$07,$80,$08,$C3,$01
		dc.b	$E7,$C2,$0F,$80,$08,$C2,$01,$E7,$C1,$0F,$80,$08,$C0,$01,$E7,$BF
		dc.b	$10,$E7,$3C,$80,$04
	music81_loop09:
		dc.b	$C0,$01,$E7,$BF,$0F,$80,$08,$C2,$01,$E7,$C1,$0F,$80,$08,$C3,$01
		dc.b	$E7,$C2,$07,$80,$08
		s1loop	$0002,music81_loop09
		dc.b	$C3,$01,$E7,$C2,$0F,$80,$08,$C2,$01,$E7,$C1,$28,$E7,$3F,$E9,$18
		dc.b	$E6,$0E
	music81_jump05:
		dc.b	$EF,$05,$E9,$E8,$E0,$40,$E6,$FD
		s1call	music81_pattern08
		dc.b	$BF,$BF,$C1,$C1,$BD,$BD,$BA,$BA,$B6,$B6,$BF,$BF,$BC,$BC,$B8,$B8
		dc.b	$BF,$BF
		s1call	music81_pattern08
		dc.b	$B5,$B5,$BD,$BD,$BA,$BA,$B6,$B6,$B3,$B3,$BC,$BC,$E9,$18,$E6,$03
		dc.b	$E9,$F4,$EF,$04,$E1,$02,$D0,$10,$D2,$D4,$E6,$F9,$D5,$28,$E7,$28
		dc.b	$D7,$10,$D4,$D0,$D5,$28,$E7,$28,$D4,$10,$D0,$D4,$D5,$28,$E7,$28
		dc.b	$D7,$10,$D4,$D0,$D5,$40,$E7,$40,$E9,$0C,$E1,$00,$EF,$04,$E9,$F4
		dc.b	$E6,$FA
	music81_loop0A:
		dc.b	$D3,$08,$CE,$D7,$CE,$D3,$CE,$D7,$CE
		s1loop	$0002,music81_loop0A
	music81_loop0B:
		dc.b	$D2,$CD,$D5,$CD,$D2,$CD,$D5,$CD
		s1loop	$0002,music81_loop0B
	music81_loop0C:
		dc.b	$D1,$CC,$D5,$CC,$D1,$CC,$D5,$CC
		s1loop	$0002,music81_loop0C
	music81_loop0D:
		dc.b	$D5,$D2,$D9,$D2,$D5,$D2,$D9,$D2
		s1loop	$0002,music81_loop0D
		dc.b	$E6,$0D,$E9,$0C
		s1jump	music81_jump05
	music81_pattern08:
		dc.b	$C1,$08,$C1,$BD,$BD,$BA,$BA,$B6,$B6,$BF,$BF,$BC,$BC,$B8,$B8,$E3

music81_PSG1:
		dc.b	$F5,$05,$F0,$0E,$01,$01,$03,$80,$40,$E8,$10,$C1,$18,$BF,$C1,$BF
		dc.b	$C1,$08,$80,$BF,$80,$C2,$18,$C1,$E8,$00,$BF,$28,$E7,$28,$E8,$10
		dc.b	$BF,$18,$C1,$C2,$10,$BF,$18,$C1,$C2,$10,$18,$E8,$00,$C1,$34,$E7
		dc.b	$34,$F4
	music81_loop0F:
		dc.b	$F5,$01
	music81_loop0E:
		dc.b	$80,$10,$C9,$04,$80,$14,$C9,$08,$80,$20,$C8,$04,$80,$14,$C8,$08
		dc.b	$80,$10
		s1loop	$0103,music81_loop0E
		dc.b	$80,$10,$C6,$04,$80,$14,$C6,$08,$80,$20,$C4,$04,$80,$14,$C4,$08
		dc.b	$80,$10
		s1loop	$0002,music81_loop0F
		dc.b	$F5,$05,$D3,$18,$D2,$D0,$CE,$CD,$08,$80,$CB,$80,$C6,$18,$C8,$C9
		dc.b	$CB,$CD,$08,$80,$D2,$80,$D1,$18,$D0,$CE,$CC,$CB,$10,$C9,$08,$80
		dc.b	$80,$08,$D0,$D2,$D0,$10,$08,$D2,$80,$10,$EC,$01,$C6,$18,$08,$80
		dc.b	$C6,$80,$EC,$FF,$F5,$03
		s1jump	music81_loop0F

music81_PSG2:
		dc.b	$80,$40,$EC,$FE
	music81_loop10:
		dc.b	$E8,$06,$D5,$08,$D4,$D2,$D0,$D5,$D4,$D2,$D0
		s1loop	$0008,music81_loop10
		dc.b	$E8,$00
	music81_loop12:
		dc.b	$F5,$01
	music81_loop11:
		dc.b	$80,$10,$CD,$04,$80,$14,$CD,$08,$80,$20,$CB,$04,$80,$14,$CB,$08
		dc.b	$80,$10
		s1loop	$0103,music81_loop11
		dc.b	$80,$10,$C9,$04,$80,$14,$C9,$08,$80,$20,$C8,$04,$80,$14,$C8,$08
		dc.b	$80,$10
		s1loop	$0002,music81_loop12
		dc.b	$CB,$34,$E7,$34,$C9,$08,$CB,$CD,$38,$E7,$38,$C9,$08,$C9,$CD,$CC
		dc.b	$34,$E7,$34,$C9,$08,$CC,$CB,$F5,$05,$BD,$18,$18,$18,$18,$08,$80
		dc.b	$BD,$80,$F5,$03
		s1jump	music81_loop12

music81_PSG3:
		dc.b	$F3,$E7,$E8,$06,$C6,$10,$10,$10
	music81_jump06:
		dc.b	$08
		s1jump	music81_jump06

music81_DAC:
		dc.b	$80,$08,$81,$82,$81,$81,$82,$82,$82
	music81_loop13:
		dc.b	$81,$10,$82,$08,$81,$10,$08,$82,$10
		s1loop	$0007,music81_loop13
		dc.b	$81,$10,$82,$08,$81,$10,$82,$08,$08,$08
	music81_loop14:
		dc.b	$81,$10,$82,$08,$81,$10,$08,$82,$10
		s1loop	$0007,music81_loop14
		dc.b	$81,$10,$82,$08,$81,$10,$82,$08,$08,$08
		s1loop	$0102,music81_loop14
		s1jump	music81_loop14

music81_Voices:
	dc.b	$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04,$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80
	dc.b	$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06,$08,$20,$10,$10,$F8,$19,$37,$13,$80
	dc.b	$36,$0F,$01,$01,$01,$1F,$1F,$1F,$1F,$12,$11,$0E,$00,$00,$0A,$07,$09,$FF,$0F,$1F,$0F,$18,$80,$80,$80
	dc.b	$3D,$01,$02,$02,$02,$14,$0E,$8C,$0E,$08,$05,$02,$05,$00,$0D,$0D,$0D,$1F,$1F,$1F,$1F,$1A,$80,$80,$80
	dc.b	$2C,$72,$78,$34,$34,$1F,$12,$1F,$12,$00,$0A,$00,$0A,$00,$00,$00,$00,$0F,$1F,$0F,$1F,$16,$80,$17,$80
	dc.b	$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00,$01,$0F,$3F,$0F,$3F,$16,$80,$17,$80
	dc.b	$04,$72,$42,$32,$32,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00,$08,$0F,$1F,$0F,$1F,$23,$80,$23,$80
	dc.b	$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00,$00,$20,$17,$17,$17,$1C,$80,$80,$80
	dc.b	$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$07,$00,$07,$00,$07,$00,$07,$00,$38,$00,$38,$16,$80,$17,$80
	even
