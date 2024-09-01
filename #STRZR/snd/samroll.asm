; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sat Mar 22 2014, 07:13:11
; -------------------------------------------------------

samroll_Header:
	smpsHeaderVoice	samroll_Voices
	smpsHeaderChan	6,3
	smpsHeaderTempo	$7, $7
	smpsHeaderDAC	samroll_DAC

	smpsHeaderFM	samroll_FM1,	$c, $0
	smpsHeaderFM	samroll_FM4,	$c, $4
	smpsHeaderFM	samroll_FM5,	$c, $C
	smpsHeaderFM	samroll_FM2,	$c, $0
	smpsHeaderFM	samroll_FM3,	$c, $0

	smpsHeaderPSG	samroll_PSG1,	$f4, $1, $0
	smpsHeaderPSG	samroll_PSG2,	$f4, $1, $0
	smpsHeaderPSG	samroll_PSG3,	$48, $0, $0

samroll_FM1:
	smpsCall	samroll_FM1_p1
	smpsCall	samroll_FM1_p0
	smpsCall	samroll_FM1_p0
@l:	smpsCall	samroll_FM1_p2
	smpsCall	samroll_FM1_p2
	smpsCall	samroll_FM1_p4
	smpsCall	samroll_FM1_p0
	smpsCall	samroll_FM1_p0
	smpsJump	@l

samroll_FM2:
	smpsPan		panLeft,0
	smpsCall	samroll_FM2_p1
	smpsCall	samroll_FM2_p0
	smpsCall	samroll_FM2_p0
@l:	smpsCall	samroll_FM2_p2
	smpsCall	samroll_FM2_p2
	smpsCall	samroll_FM2_p4
	smpsCall	samroll_FM2_p0
	smpsCall	samroll_FM2_p0
	smpsJump	@l

samroll_FM3:
	smpsPan		panRight,0
	smpsCall	samroll_FM3_p1
	smpsCall	samroll_FM3_p0
	smpsCall	samroll_FM3_p0
@l:	smpsCall	samroll_FM3_p2
	smpsCall	samroll_FM3_p2
	smpsCall	samroll_FM3_p4
	smpsCall	samroll_FM3_p0
	smpsCall	samroll_FM3_p0
	smpsJump	@l

samroll_FM4:
	smpsCall	samroll_FM4_p1
	smpsCall	samroll_FM4_p0
	smpsCall	samroll_FM4_p0
@l:	smpsCall	samroll_FM4_p2
	smpsCall	samroll_FM4_p3
	smpsCall	samroll_FM4_p4
	smpsCall	samroll_FM4_p5
	smpsCall	samroll_FM4_p6
	smpsJump	@l

samroll_FM5:
	smpsCall	samroll_FM5_p1
	smpsCall	samroll_FM5_p0
	smpsCall	samroll_FM5_p0
@l:	smpsCall	samroll_FM5_p2
	smpsCall	samroll_FM5_p3
	smpsCall	samroll_FM5_p4
	smpsCall	samroll_FM5_p0
	smpsCall	samroll_FM5_p0
	smpsJump	@l

samroll_PSG1:
	smpsCall	samroll_PSG1_p1
	smpsCall	samroll_PSG1_p0
	smpsCall	samroll_PSG1_p0
@l:	smpsCall	samroll_PSG1_p2
	smpsCall	samroll_PSG1_p2
	smpsCall	samroll_PSG1_p2
	smpsCall	samroll_PSG1_p0
	smpsCall	samroll_PSG1_p0
	smpsJump	@l

samroll_PSG2:
	smpsCall	samroll_PSG2_p1
	smpsCall	samroll_PSG2_p0
	smpsCall	samroll_PSG2_p0
@l:	smpsCall	samroll_PSG2_p2
	smpsCall	samroll_PSG2_p2
	smpsCall	samroll_PSG2_p2
	smpsCall	samroll_PSG2_p0
	smpsCall	samroll_PSG2_p0
	smpsJump	@l

samroll_PSG3:
	smpsPSGform	$E7
	smpsCall	samroll_PSG3_p1
@l	smpsCall	samroll_PSG3_p0
	smpsJump	@l

samroll_DAC:
	smpsCall	samroll_DAC_p1
	smpsCall	samroll_DAC_p0
	smpsCall	samroll_DAC_p0
@l	smpsCall	samroll_DAC_p0
	smpsCall	samroll_DAC_p0
	smpsCall	samroll_DAC_p4
	smpsCall	samroll_DAC_p0
	smpsCall	samroll_DAC_p0
	smpsJump	@l


; Pattern data for FM1
samroll_FM1_p1:
	dc.b		$80,$6
	smpsFMvoice	$2
	dc.b		$97,$1
	dc.b		$95
	dc.b		$93
	dc.b		$92
	smpsReturn

samroll_FM1_p0:
	dc.b		$90,$1
	dc.b		$80
	dc.b		$90
	dc.b		$90
	dc.b		$80
	dc.b		$99
	dc.b		$97
	dc.b		$80
	dc.b		$95
	dc.b		$80
	dc.b		$95
	dc.b		$80,$3
	dc.b		$90,$1
	dc.b		$90
	dc.b		$92
	dc.b		$80
	dc.b		$92
	dc.b		$99
	dc.b		$80
	dc.b		$99
	dc.b		$97
	dc.b		$80,$3
	dc.b		$97,$1
	dc.b		$97
	dc.b		$80
	dc.b		$99
	dc.b		$97
	dc.b		$80
	dc.b		$90
	dc.b		$80
	dc.b		$90
	dc.b		$99
	dc.b		$80
	dc.b		$99
	dc.b		$97
	dc.b		$80
	dc.b		$95
	dc.b		$80
	dc.b		$95
	dc.b		$80,$3
	dc.b		$90,$1
	dc.b		$90
	dc.b		$92
	dc.b		$80
	dc.b		$92
	dc.b		$92
	dc.b		$80
	dc.b		$99
	dc.b		$97
	dc.b		$80,$3
	dc.b		$95,$1
	dc.b		$80
	dc.b		$9a
	dc.b		$97
	dc.b		$80
	dc.b		$9a
	smpsReturn

samroll_FM1_p2:
	dc.b		$97,$1
	dc.b		$80
	dc.b		$97
	dc.b		$97
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97,$1
	dc.b		$80,$3
	dc.b		$92,$1
	dc.b		$92
	dc.b		$97
	dc.b		$80
	dc.b		$95
	dc.b		$97
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$4
	dc.b		$97,$1
	dc.b		$80,$3
	dc.b		$95,$1
	dc.b		$95
	dc.b		$97
	dc.b		$80
	dc.b		$97
	dc.b		$97
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97,$1
	dc.b		$80,$3
	dc.b		$95,$1
	dc.b		$95
	dc.b		$90
	dc.b		$80
	dc.b		$90
	dc.b		$95
	dc.b		$80
	dc.b		$95
	dc.b		$95
	dc.b		$80,$3
	dc.b		$95,$1
	dc.b		$95
	dc.b		$80
	dc.b		$95
	dc.b		$97
	dc.b		$97
	smpsReturn

samroll_FM1_p4:
	dc.b		$97,$2
	dc.b		$1
	dc.b		$9a
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97,$1
	dc.b		$80,$4
	dc.b		$95,$1
	dc.b		$97,$2
	dc.b		$1
	dc.b		$9a
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97,$1
	dc.b		$80,$3
	dc.b		$95,$1
	dc.b		$95
	dc.b		$97,$2
	dc.b		$1
	dc.b		$9a
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97,$1
	dc.b		$80,$4
	dc.b		$95,$1
	dc.b		$97
	dc.b		$80
	dc.b		$97
	dc.b		$9a
	dc.b		$80
	dc.b		$9a
	dc.b		$99,$2
	dc.b		$95
	dc.b		$97
	dc.b		$92
	dc.b		$95,$1
	dc.b		$92
	smpsReturn

; Pattern data for FM2
samroll_FM2_p1:
	dc.b		$80,$a
	smpsReturn

samroll_FM2_p0:
	smpsFMvoice	$0
	dc.b		$a6,$6
	dc.b		$a8,$a
	dc.b		$6
	dc.b		$aa,$a
	dc.b		$a6,$6
	dc.b		$a5,$e
	dc.b		$a6,$c
	smpsReturn

samroll_FM2_p2:
	dc.b		$a3,$10
	dc.b		$a8
	dc.b		$a3
	dc.b		$aa,$6
	dc.b		$a8,$a
	smpsReturn

samroll_FM2_p4:
	dc.b		$9f,$10
	dc.b		$a5
	dc.b		$a6
	dc.b		$aa
	smpsReturn

; Pattern data for FM3
samroll_FM3_p1:
	dc.b		$80,$a
	smpsReturn

samroll_FM3_p0:
	smpsFMvoice	$0
	dc.b		$a3,$6
	dc.b		$a5,$a
	dc.b		$6
	dc.b		$a3
	dc.b		$a8,$4
	dc.b		$a3,$6
	dc.b		$a8,$1a
	smpsReturn

samroll_FM3_p2:
	dc.b		$aa,$10
	dc.b		$a1
	dc.b		$aa
	dc.b		$a6,$6
	dc.b		$a3,$a
	smpsReturn

samroll_FM3_p4:
	dc.b		$a6,$10
	dc.b		$a1
	dc.b		$9f
	dc.b		$a6
	smpsReturn

; Pattern data for FM4
samroll_FM4_p1:
	dc.b		$80,$a
	smpsReturn

samroll_FM4_p0:
	dc.b		$80,$8
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

samroll_FM4_p2:
	dc.b		$80,$4
	smpsFMvoice	$1
	dc.b		$af,$2
	dc.b		$b1,$1
	dc.b		$80
	dc.b		$b2
	dc.b		$80
	dc.b		$b2,$2
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$b1,$2
	dc.b		$80,$1
	dc.b		$af
	dc.b		$ad,$6
	dc.b		$80,$a
	dc.b		$af,$1
	dc.b		$80
	dc.b		$af,$2
	dc.b		$b1
	dc.b		$b2
	dc.b		$af,$1
	dc.b		$80,$3
	dc.b		$ad,$1
	dc.b		$80
	dc.b		$b9,$2
	dc.b		$80
	dc.b		$b9,$1
	dc.b		$80
	dc.b		$b4,$4
	dc.b		$b6,$2
	dc.b		$b4
	dc.b		$b2,$1
	dc.b		$80
	smpsReturn

samroll_FM4_p3:
	dc.b		$80,$2
	dc.b		$af
	dc.b		$af
	dc.b		$b1
	dc.b		$b2
	dc.b		$af
	dc.b		$b2
	dc.b		$b4,$1
	dc.b		$80,$3
	dc.b		$b1,$2
	dc.b		$af
	dc.b		$b1,$1
	dc.b		$af
	dc.b		$ad,$4
	dc.b		$80,$6
	dc.b		$af,$1
	dc.b		$80
	dc.b		$af,$2
	dc.b		$b1
	dc.b		$b2
	dc.b		$af
	dc.b		$ad,$3
	dc.b		$80,$1
	dc.b		$b4,$2
	dc.b		$b4
	dc.b		$b4
	dc.b		$b6
	dc.b		$b4,$4
	dc.b		$80
	smpsReturn

samroll_FM4_p4:
	dc.b		$b2,$8
	dc.b		$80,$2
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$b6
	dc.b		$80
	dc.b		$b4,$3
	dc.b		$80,$1
	dc.b		$b4
	dc.b		$80
	dc.b		$b4
	dc.b		$80
	dc.b		$b6
	dc.b		$80
	dc.b		$b4,$2
	dc.b		$ad,$1
	dc.b		$80
	dc.b		$ad,$3
	dc.b		$80,$7
	dc.b		$ad,$1
	dc.b		$80
	dc.b		$af
	dc.b		$80
	dc.b		$b1
	dc.b		$80
	dc.b		$b2,$2
	dc.b		$af,$1
	dc.b		$80,$3
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$b6
	dc.b		$80
	dc.b		$b4,$4
	dc.b		$80,$2
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	smpsReturn

samroll_FM4_p5:
	dc.b		$b6,$2
	dc.b		$80,$1
	dc.b		$b6,$2
	dc.b		$80,$1
	dc.b		$b4,$3
	dc.b		$80
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	dc.b		$b4,$2
	dc.b		$80,$1
	dc.b		$b4,$2
	dc.b		$80,$1
	dc.b		$b2,$2
	dc.b		$80,$1
	dc.b		$b1
	dc.b		$af,$2
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	dc.b		$b2,$3
	dc.b		$80,$1
	dc.b		$b4
	dc.b		$80
	dc.b		$b1,$2
	dc.b		$80,$1
	dc.b		$af
	dc.b		$ad,$3
	dc.b		$80,$1
	dc.b		$ad
	dc.b		$80
	dc.b		$b4,$2
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$b2,$5
	dc.b		$80,$3
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	smpsReturn

samroll_FM4_p6:
	dc.b		$b6,$3
	dc.b		$80,$1
	dc.b		$b6,$2
	dc.b		$b4,$4
	dc.b		$80,$2
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	dc.b		$b9,$3
	dc.b		$80,$1
	dc.b		$b2,$2
	dc.b		$3
	dc.b		$b1,$1
	dc.b		$af
	dc.b		$80
	dc.b		$ad
	dc.b		$af
	dc.b		$b2
	dc.b		$af
	dc.b		$b2,$3
	dc.b		$80,$1
	dc.b		$b4
	dc.b		$80
	dc.b		$b1,$3
	dc.b		$af,$1
	dc.b		$ad,$3
	dc.b		$80,$1
	dc.b		$ad
	dc.b		$80
	dc.b		$b4,$3
	dc.b		$80,$1
	dc.b		$b2,$5
	dc.b		$80,$7
	smpsReturn

; Pattern data for FM5
samroll_FM5_p1:
	dc.b		$80,$a
	smpsReturn

samroll_FM5_p0:
	smpsFMvoice	$3
	dc.b		$a3,$6
	dc.b		$a5,$a
	dc.b		$6
	dc.b		$a6,$a
	dc.b		$a3,$6
	dc.b		$a5,$a
	dc.b		$4
	dc.b		$a6,$c
	smpsReturn

samroll_FM5_p2:
	dc.b		$80,$8
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$2
	dc.b		$a8,$a
	smpsReturn

samroll_FM5_p3:
	dc.b		$80,$8
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$a8,$2
	dc.b		$a8
	dc.b		$a8
	dc.b		$aa
	dc.b		$a8,$8
	smpsReturn

samroll_FM5_p4:
	dc.b		$a6,$8
	dc.b		$80,$2
	dc.b		$a8,$1
	dc.b		$80
	dc.b		$aa
	dc.b		$80
	dc.b		$a8,$3
	dc.b		$80,$1
	dc.b		$a8
	dc.b		$80
	dc.b		$a8
	dc.b		$80
	dc.b		$aa
	dc.b		$80
	dc.b		$a8,$2
	dc.b		$a1,$1
	dc.b		$80
	dc.b		$a1,$3
	dc.b		$80,$7
	dc.b		$a1,$1
	dc.b		$80
	dc.b		$a3
	dc.b		$80
	dc.b		$a5
	dc.b		$80
	dc.b		$a6,$2
	dc.b		$a3,$1
	dc.b		$80,$3
	dc.b		$a8,$1
	dc.b		$80
	dc.b		$aa
	dc.b		$80
	dc.b		$a8,$4
	dc.b		$80,$2
	dc.b		$a1,$1
	dc.b		$a3
	dc.b		$a6
	dc.b		$a3
	smpsReturn

; Pattern data for PSG1
samroll_PSG1_p1:
	dc.b		$80,$a
	smpsReturn

samroll_PSG1_p0:
	smpsPSGvoice	$0
	smpsModSet	16,2,3,2
	dc.b		$a6,$6
	dc.b		$a8,$8
	dc.b		$a1,$2
	dc.b		$a8,$6
	dc.b		$aa
	dc.b		$ad,$1
	dc.b		$ab
	dc.b		$aa
	dc.b		$a6
	dc.b		$a6,$6
	dc.b		$a8
	dc.b		$a1,$c
	smpsPSGvoice	$4
	dc.b		$a6,$1
	dc.b		$2
	dc.b		$1
	dc.b		$a6
	dc.b		$a6
	dc.b		$a6
	dc.b		$a6
	smpsReturn

samroll_PSG1_p2:
	dc.b		$9f,$1
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9f
	dc.b		$a3
	dc.b		$a6
	dc.b		$aa
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	dc.b		$9e
	dc.b		$a1
	dc.b		$a5
	dc.b		$a8
	smpsReturn

; Pattern data for PSG2
samroll_PSG2_p1:
	dc.b		$80,$a
	smpsReturn

samroll_PSG2_p0:
	smpsPSGvoice	$a
	dc.b		$a3,$6
	dc.b		$a5,$8
	dc.b		$9c,$2
	dc.b		$a5,$6
	dc.b		$a6
	dc.b		$aa,$1
	dc.b		$a8
	dc.b		$a6
	dc.b		$a3
	dc.b		$a3,$6
	dc.b		$a5
	dc.b		$9c,$c
	smpsPSGvoice	$4
	dc.b		$a3,$1
	dc.b		$2
	dc.b		$1
	dc.b		$a3
	dc.b		$a3
	dc.b		$a3
	dc.b		$a3
	smpsReturn

samroll_PSG2_p2:
	smpsPSGvoice	$a
	dc.b		$97,$10
	dc.b		$95
	dc.b		$97
	dc.b		$95
	smpsReturn

; Pattern data for PSG3 (Noise)
samroll_PSG3_p1:
	dc.b		$80,$a
	smpsReturn

samroll_PSG3_p0:
	smpsPSGvoice	$2
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82,$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	smpsPSGvoice	$1
	dc.b		$82
	smpsReturn

; Pattern data for DAC
samroll_DAC_p1:
	dc.b		$85,$1
	dc.b		$2
	dc.b		$1
	dc.b		$86
	dc.b		$86
	dc.b		$86
	dc.b		$87
	dc.b		$87
	dc.b		$87
	smpsReturn

samroll_DAC_p0:
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	smpsReturn

samroll_DAC_p4:
	dc.b		$81,$4
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$81
	dc.b		$82,$1
	dc.b		$82
	dc.b		$85
	dc.b		$86
	smpsReturn

samroll_Voices:
	dc.b	$3a,$3,$19,$1,$53,$1f,$df,$1f,$9f,$c,$2,$c,$5,$4,$4,$4
	dc.b	$7,$1f,$ff,$f,$2f,$1d,$36,$1b,$10	; Voice 0 (03 Ending Piano.ins)
;	dc.b	$3d,$1,$8,$1,$1,$90,$8d,$8f,$53,$e,$e,$e,$5,$2,$3,$2
;	dc.b	$4,$1f,$ff,$1f,$f,$16,$2f,$2e,$7	; Voice 1 (09 Options Trumpet.ins)
	UVBVoice	06_SynthBrass1
	dc.b	$8,$a,$70,$30,$0,$1f,$1f,$5f,$5f,$12,$e,$a,$a,$0,$4,$4
	dc.b	$3,$2f,$2f,$2f,$2f,$24,$2d,$13,$b	; Voice 2 (10 Picked Bass.ins)
	UVBVoice	08_BellHorntypeThing
	even
