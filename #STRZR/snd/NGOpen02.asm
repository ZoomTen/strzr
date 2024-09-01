; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Wed Jan 22 2014, 16:09:50
; -------------------------------------------------------
	include "xm4smps_inc.asm"
NGOpen_Header:
	smpsHeaderVoice	NGOpen_Voices
	smpsHeaderChan	6,0
	smpsHeaderTempo	$9, $28
	smpsHeaderDAC   NGOpen_FM5
	smpsHeaderFM	NGOpen_FM1,	smpsPitch00, $0e
	smpsHeaderFM	NGOpen_FM2,	$0, $0
	smpsHeaderFM	NGOpen_FM3,	smpsPitch00, $7
	smpsHeaderFM	NGOpen_FM4,	smpsPitch01hi, $0
	smpsHeaderFM	NGOpen_FM1,	smpsPitch01lo, $0e

NGOpen_FM1:
	smpsCall	NGOpen_FM1_p0
	smpsCall	NGOpen_FM1_p0
	smpsCall	NGOpen_FM1_p0
	smpsCall	NGOpen_FM1_p0
	smpsCall	NGOpen_FM1_p4
	smpsStop

NGOpen_FM2:
	smpsCall	NGOpen_FM2_p0
	smpsCall	NGOpen_FM2_p0
	smpsCall	NGOpen_FM2_p0
	smpsCall	NGOpen_FM2_p0
	smpsCall	NGOpen_FM2_p4
	smpsStop

NGOpen_FM3:
	dc.b		$80,$10,$80,$80,$80
	dc.b		$80,$10,$80,$80,$80
	smpsCall	NGOpen_FM3_p2
	smpsCall	NGOpen_FM3_p2
	smpsCall	NGOpen_FM3_p4
	smpsStop

NGOpen_FM4:
	dc.b		$80,$10,$80,$80,$80
	dc.b		$80,$10,$80,$80,$80
	smpsCall	NGOpen_FM4_p2
	smpsCall	NGOpen_FM4_p3
	smpsCall	NGOpen_FM4_p4
	smpsStop

NGOpen_FM5:
	dc.b		$80,$10,$80,$80,$80
	dc.b		$80,$10,$80,$80,$80
NGOpen_FM5_p2:
	dc.b	dSnare,$02,dSnare,$01,dSnare
	dc.b	dSnare,$02,dSnare,$01,dSnare
	dc.b	dSnare,$02,dSnare,$01,dSnare
	dc.b	dSnare,$02,dSnare
	smpsLoop	$00,$08,NGOpen_FM5_p2
NGOpen_FM5_p4:
	dc.b	dSnare,$01,dSnare,$02
	dc.b	dSnare,$01,dSnare,$02
	dc.b	dSnare,$01,dSnare,$02
	dc.b	dSnare,$01,dSnare,$02
	dc.b	dSnare,$02,dSnare
	smpsLoop	$00,$03,NGOpen_FM5_p4
	dc.b	dSnare,$01
	smpsStop


; Pattern data for FM1
NGOpen_FM1_p0:
	smpsFMvoice	$0
	dc.b		$b9,$9
	dc.b		$80,$1
	dc.b		$b9,$2
	dc.b		$bb
	dc.b		$bc
	dc.b		$be,$3
	dc.b		$bb,$1
	dc.b		$5
	dc.b		$80,$1
	dc.b		$b7
	dc.b		$b7
	dc.b		$b9
	dc.b		$b7
	dc.b		$b9
	dc.b		$bb
	dc.b		$b9,$8
	dc.b		$80,$2
	dc.b		$b9
	dc.b		$bb
	dc.b		$b9
	dc.b		$b8,$5
	dc.b		$80,$1
	dc.b		$b8
	dc.b		$b9
	dc.b		$bb,$4
	dc.b		$bc,$1
	dc.b		$bb,$2
	dc.b		$b7,$1
	smpsReturn

NGOpen_FM1_p4:
	dc.b		$bc,$10
	dc.b		$be
	dc.b		$c0
	dc.b		$80
	smpsReturn

; Pattern data for FM2
NGOpen_FM2_p0:
	smpsFMvoice	$1
	dc.b		$ad,$10
	dc.b		$ab
	dc.b		$a9
	dc.b		$a8
	smpsReturn

NGOpen_FM2_p4:
	dc.b		$ad,$10
	dc.b		$ab
	dc.b		$a8
	dc.b		$80
	smpsReturn

; Pattern data for FM3

NGOpen_FM3_p2:
	smpsFMvoice	$4
	dc.b		$a1,$1
	dc.b		$80
	dc.b		$a1
	dc.b		$a1
	dc.b		$a1
	dc.b		$80
	dc.b		$a1
	dc.b		$a1
	dc.b		$a1
	dc.b		$80
	dc.b		$a1
	dc.b		$a1
	dc.b		$a4
	dc.b		$80
	dc.b		$a3
	dc.b		$80
	dc.b		$9f
	dc.b		$80
	dc.b		$9f
	dc.b		$9f
	dc.b		$9f
	dc.b		$80
	dc.b		$9f
	dc.b		$9f
	dc.b		$9f
	dc.b		$80
	dc.b		$9f
	dc.b		$9f
	dc.b		$a4
	dc.b		$80
	dc.b		$a3
	dc.b		$80
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$80
	dc.b		$9d
	dc.b		$9d
	dc.b		$a4
	dc.b		$80
	dc.b		$a1
	dc.b		$80
	dc.b		$9c
	dc.b		$80
	dc.b		$9c
	dc.b		$9c
	dc.b		$9c
	dc.b		$80
	dc.b		$9c
	dc.b		$9c
	dc.b		$9c
	dc.b		$80
	dc.b		$9c
	dc.b		$9c
	dc.b		$a4
	dc.b		$80
	dc.b		$a3
	dc.b		$80
	smpsReturn

NGOpen_FM3_p4:
	dc.b		$9d,$10
	dc.b		$9f
	dc.b		$a1
	dc.b		$80
	smpsReturn


NGOpen_FM4_p2:
	smpsFMvoice	$3
	dc.b		$b4,$c
	dc.b		$b7,$4
	dc.b		$b2,$c
	dc.b		$b4,$4
	dc.b		$b5,$c
	dc.b		$b7,$4
	dc.b		$b4,$c
	dc.b		$b5,$4
	smpsReturn

NGOpen_FM4_p3:
	dc.b		$b4,$c
	dc.b		$b7,$4
	dc.b		$b2,$c
	dc.b		$b4,$4
	dc.b		$b5,$c
	dc.b		$b7,$4
	dc.b		$b4,$10
	smpsReturn

NGOpen_FM4_p4:
	dc.b		$b9,$10
	dc.b		$bb
	dc.b		$bc
	dc.b		$80
	smpsReturn


NGOpen_Voices:
	UVBVoice	01_Trumpet1
	dc.b	$3c,$31,$52,$50,$30,$52,$53,$52,$53,$8,$0,$8,$0,$4,$0,$4
	dc.b	$0,$10,$7,$10,$7,$1a,$11,$16,$11	; Voice 1 (brass01.ins)
	dc.b	$3c,$f,$0,$60,$60,$1f,$17,$1f,$1f,$0,$f,$18,$13,$0,$11,$0
	dc.b	$10,$8,$2c,$b8,$2c,$4,$17,$9,$6	; Voice 2 (MMTWW FM6 Snare (2).ins)
	dc.b	$1c,$3f,$1,$1,$1,$9f,$db,$1e,$5e,$1f,$7,$6,$6,$8,$a,$b
	dc.b	$0,$88,$8a,$f6,$f7,$28,$25,$2a,$f	; Voice 3 (MMTWW Soft Sine Lead.ins)
	UVBVoice	22_StrikelikeSlapBass
	even
