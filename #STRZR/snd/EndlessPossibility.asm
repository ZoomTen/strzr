; -------------------------------------------------------
; Endless Possibility [Improved] SMPS Version by Zy BG9K
;
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Mon Jan 20 2014, 17:11:27
; -------------------------------------------------------
	include "xm4smps_inc.asm"
EndlessPossibility_Header:
	smpsHeaderVoice	EndlessPossibility_Voices
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$08, $13
	smpsHeaderDAC	EndlessPossibility_DAC
	smpsHeaderFM	EndlessPossibility_FM1,	$0, $0
	smpsHeaderFM	EndlessPossibility_FM2,	$0, $d
	smpsHeaderFM	EndlessPossibility_FM3,	$0, $e
	smpsHeaderFM	EndlessPossibility_FM4,	$0, $b
	smpsHeaderFM	EndlessPossibility_FM5,	$0, $b
	smpsHeaderPSG	EndlessPossibility_PSG1,$dc, $0, $1
	smpsHeaderPSG	EndlessPossibility_PSG2,$dc, $2, $1
	smpsHeaderPSG	EndlessPossibility_PSG3,$dc, $0, $1

EndlessPossibility_FM1:
	smpsCall	EndlessPossibility_FM1_p0
	smpsCall	EndlessPossibility_FM1_p1
	smpsCall	EndlessPossibility_FM1_p1
	smpsCall	EndlessPossibility_FM1_p1
	smpsCall	EndlessPossibility_FM1_p4
	smpsCall	EndlessPossibility_FM1_p5
	smpsCall	EndlessPossibility_FM1_p6
	smpsCall	EndlessPossibility_FM1_p7
	smpsCall	EndlessPossibility_FM1_p8
	smpsStop

EndlessPossibility_FM2:
	smpsCall	EndlessPossibility_FM2_p0
	smpsCall	EndlessPossibility_FM2_p0
	smpsCall	EndlessPossibility_FM2_p2
	smpsCall	EndlessPossibility_FM2_p3
	smpsCall	EndlessPossibility_FM2_p4
	smpsCall	EndlessPossibility_FM2_p5
	smpsCall	EndlessPossibility_FM2_p6
	smpsCall	EndlessPossibility_FM2_p7
	smpsCall	EndlessPossibility_FM2_p8
	smpsStop

EndlessPossibility_FM3:
	smpsCall	EndlessPossibility_FM3_p0
	smpsCall	EndlessPossibility_FM3_p0
	smpsCall	EndlessPossibility_FM3_p2
	smpsCall	EndlessPossibility_FM3_p2
	smpsCall	EndlessPossibility_FM3_p4
	smpsCall	EndlessPossibility_FM3_p5
	smpsCall	EndlessPossibility_FM3_p6
	smpsCall	EndlessPossibility_FM3_p7
	smpsCall	EndlessPossibility_FM3_p8
	smpsStop

EndlessPossibility_FM4:
	smpsPan		panLeft,0
	smpsCall	EndlessPossibility_FM4_p0
	smpsCall	EndlessPossibility_FM4_p0
	smpsCall	EndlessPossibility_FM4_p2
	smpsCall	EndlessPossibility_FM4_p2
	smpsCall	EndlessPossibility_FM4_p4
	smpsCall	EndlessPossibility_FM4_p5
	smpsCall	EndlessPossibility_FM4_p6
	smpsCall	EndlessPossibility_FM4_p7
	smpsCall	EndlessPossibility_FM4_p8
	smpsStop

EndlessPossibility_FM5:
	smpsFMvoice	$1
	smpsPan		panRight,0
	smpsAlterVol	$0A
@Open0:	dc.b		$bc,$1
	smpsLoop	$00,$20,@Open0
	smpsAlterVol	-$05
@Open1:	dc.b		$c1
	smpsLoop	$00,$20,@Open1
	smpsAlterVol	-$05
	smpsCall	EndlessPossibility_FM5_p0
	smpsCall	EndlessPossibility_FM5_p2
	smpsCall	EndlessPossibility_FM5_p2
	smpsCall	EndlessPossibility_FM5_p4
	smpsCall	EndlessPossibility_FM5_p5
	smpsCall	EndlessPossibility_FM5_p6
	smpsCall	EndlessPossibility_FM5_p7
	smpsCall	EndlessPossibility_FM5_p8
	smpsStop

EndlessPossibility_PSG1:
	smpsAlterPitch	-$18
	smpsPSGvoice	$00
	smpsCall	EndlessPossibility_PSG1_p0
	smpsCall	EndlessPossibility_PSG1_p0
	smpsCall	EndlessPossibility_PSG2_p2
	smpsCall	EndlessPossibility_PSG2_p3
	smpsAlterPitch	$18
	smpsPSGvoice	$01
	smpsCall	EndlessPossibility_PSG1_p4
	smpsCall	EndlessPossibility_PSG1_p5
	smpsCall	EndlessPossibility_PSG1_p6
	smpsCall	EndlessPossibility_PSG1_p7
	smpsCall	EndlessPossibility_PSG1_p8
	smpsStop

EndlessPossibility_PSG2:
	smpsAlterNote	$02
	smpsAlterPitch	-$18
	smpsPSGvoice	$00
	smpsCall	EndlessPossibility_PSG2_p0
	smpsCall	EndlessPossibility_PSG2_p0
	smpsCall	EndlessPossibility_PSG2_p2
	smpsCall	EndlessPossibility_PSG2_p3
	smpsAlterNote	-$01
	smpsAlterPitch	$18
	smpsPSGvoice	$01
	smpsCall	EndlessPossibility_PSG2_p4
	smpsCall	EndlessPossibility_PSG2_p5
	smpsCall	EndlessPossibility_PSG2_p6
	smpsCall	EndlessPossibility_PSG2_p7
	smpsCall	EndlessPossibility_PSG2_p8
	smpsStop

EndlessPossibility_PSG3:
	smpsPSGform	$E7
	smpsCall	EndlessPossibility_PSG3_p0
	smpsCall	EndlessPossibility_PSG3_p1
	smpsCall	EndlessPossibility_PSG3_p1
	smpsCall	EndlessPossibility_PSG3_p1
	smpsCall	EndlessPossibility_PSG3_p1
	smpsCall	EndlessPossibility_PSG3_p5
	smpsCall	EndlessPossibility_PSG3_p6
	smpsCall	EndlessPossibility_PSG3_p7
	smpsCall	EndlessPossibility_PSG3_p8
	smpsStop

EndlessPossibility_DAC:
	smpsCall	EndlessPossibility_DAC_p0
	smpsCall	EndlessPossibility_DAC_p1
	smpsCall	EndlessPossibility_DAC_p1
	smpsCall	EndlessPossibility_DAC_p3
	smpsCall	EndlessPossibility_DAC_p1
	smpsCall	EndlessPossibility_DAC_p5
	smpsCall	EndlessPossibility_DAC_p6
	smpsCall	EndlessPossibility_DAC_p7
	smpsCall	EndlessPossibility_DAC_p8
	smpsStop


; Pattern data for FM1
EndlessPossibility_FM1_p0:
	dc.b		$80,$20
	dc.b		$1e
	smpsFMvoice	$0
	dc.b		$9f,$2
	smpsReturn

EndlessPossibility_FM1_p1:
	dc.b		$9d,$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9a
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$9f,$2
	smpsReturn

EndlessPossibility_FM1_p4:
	dc.b		$a6,$2
	dc.b		$ad,$1
	dc.b		$a6
	dc.b		$ad
	dc.b		$ad
	dc.b		$a6
	dc.b		$a4,$2
	dc.b		$1
	dc.b		$ab,$2
	dc.b		$a4,$1
	dc.b		$a4
	dc.b		$ab,$2
	dc.b		$9d
	dc.b		$9d,$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$a6,$2
	dc.b		$ad,$1
	dc.b		$a6
	dc.b		$ad
	dc.b		$ad
	dc.b		$a6
	dc.b		$a4,$2
	dc.b		$1
	dc.b		$ab,$2
	dc.b		$a4,$1
	dc.b		$a4
	dc.b		$ab,$2
	dc.b		$9d
	dc.b		$9d,$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$ab
	dc.b		$a9,$2
	dc.b		$a4,$1
	dc.b		$a9
	dc.b		$a9,$2
	dc.b		$a1,$1
	dc.b		$a4,$2
	smpsReturn

EndlessPossibility_FM1_p5:
	dc.b		$a6,$2
	dc.b		$ad,$1
	dc.b		$a6
	dc.b		$ad
	dc.b		$ad
	dc.b		$a6
	dc.b		$a4,$2
	dc.b		$1
	dc.b		$ab
	dc.b		$b0,$2
	dc.b		$ab
	dc.b		$a4,$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9f
	dc.b		$9f
	dc.b		$a1
	dc.b		$a1
	dc.b		$a3
	dc.b		$a3
	dc.b		$a4
	dc.b		$9d
	dc.b		$9f,$2
	dc.b		$1
	dc.b		$9f
	dc.b		$9f
	dc.b		$9f
	dc.b		$9f
	dc.b		$9f
	dc.b		$a1,$2
	dc.b		$1
	dc.b		$a1
	dc.b		$a1
	dc.b		$a1
	dc.b		$a1
	dc.b		$a1
	dc.b		$a2,$2
	dc.b		$1
	dc.b		$a2
	dc.b		$a2
	dc.b		$a2
	dc.b		$a2
	dc.b		$a2
	dc.b		$a4,$2
	dc.b		$1
	dc.b		$a4
	dc.b		$a4
	dc.b		$a4
	dc.b		$a4
	dc.b		$a4
	smpsReturn

EndlessPossibility_FM1_p6:
	dc.b		$9d,$2
	dc.b		$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$96,$2
	dc.b		$1
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$9a,$2
	dc.b		$9d,$1
	dc.b		$a1,$2
	dc.b		$9f
	dc.b		$98
	dc.b		$98,$1
	dc.b		$9f
	dc.b		$a4,$2
	dc.b		$9f
	dc.b		$98,$1
	dc.b		$96,$2
	dc.b		$9d,$1
	dc.b		$9f,$2
	dc.b		$9d
	dc.b		$96,$1
	dc.b		$98,$2
	dc.b		$9f,$1
	dc.b		$a4,$2
	dc.b		$9f
	dc.b		$98,$1
	smpsReturn

EndlessPossibility_FM1_p7:
	dc.b		$9d,$2
	dc.b		$1
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$9d
	dc.b		$96,$2
	dc.b		$1
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$96
	dc.b		$9a,$2
	dc.b		$9d,$1
	dc.b		$a1,$2
	dc.b		$9f
	dc.b		$98
	dc.b		$98,$1
	dc.b		$9f
	dc.b		$a4,$2
	dc.b		$9f
	dc.b		$98,$1
	dc.b		$96,$2
	dc.b		$9d,$1
	dc.b		$9f,$2
	dc.b		$9d
	dc.b		$96,$1
	dc.b		$a4,$2
	dc.b		$1
	dc.b		$a4
	dc.b		$a4
	dc.b		$a4
	dc.b		$9f,$2
	smpsReturn

EndlessPossibility_FM1_p8:
	dc.b		$9d,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM2
EndlessPossibility_FM2_p0:
	dc.b		$80,$20
	dc.b		$80
	smpsReturn

EndlessPossibility_FM2_p2:
	smpsFMvoice	$02
	dc.b		$c3,$1
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c1
	dc.b		$bc,$3
	dc.b		$80,$4
	dc.b		$bc,$2
	dc.b		$c3,$1
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c1
	dc.b		$bc,$3
	dc.b		$b9,$2
	dc.b		$bc
	dc.b		$c1
	dc.b		$c3
	dc.b		$c5,$1
	dc.b		$c1,$2
	dc.b		$80,$1B
	smpsReturn

EndlessPossibility_FM2_p3:
	dc.b		$c3,$1
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c1
	dc.b		$bc,$3
	dc.b		$80,$4
	dc.b		$bc,$2
	dc.b		$c3,$1
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c1
	dc.b		$bc,$3
	dc.b		$b9,$2
	dc.b		$bc
	dc.b		$c1
	dc.b		$c3
	dc.b		$c5,$1
	dc.b		$c1,$2
	dc.b		$80,$19
	dc.b		$ba,$2
	smpsReturn

EndlessPossibility_FM2_p4:
	dc.b		$b9,$2
	dc.b		$ba
	dc.b		$bc
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c3,$4
	dc.b		$c1,$3
	dc.b		$bc,$5
	dc.b		$80,$6
	dc.b		$ba,$2
	dc.b		$b9
	dc.b		$ba
	dc.b		$bc
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c3,$4
	dc.b		$c1,$8
	dc.b		$80,$6
	dc.b		$ba,$2
	smpsReturn

EndlessPossibility_FM2_p5:
	dc.b		$b9,$2
	dc.b		$ba
	dc.b		$bc
	dc.b		$c1,$6
	dc.b		$c3,$4
	dc.b		$c1
	dc.b		$bc
	dc.b		$c6,$2
	dc.b		$c5
	dc.b		$c3
	dc.b		$c1
	dc.b		$c1,$4
	dc.b		$80,$3
	dc.b		$bc,$1
	dc.b		$c6
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c1
	dc.b		$c1,$5
	dc.b		$bc,$4
	dc.b		$c3,$2
	dc.b		$c5,$1
	dc.b		$c3,$2
	dc.b		$c1,$3
	smpsReturn

EndlessPossibility_FM2_p6:
	dc.b		$80,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$c1
	dc.b		$80
	dc.b		$bc
	dc.b		$c3
	dc.b		$c1
	dc.b		$80
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$c8
	dc.b		$c1,$1
	dc.b		$2
	dc.b		$c0
	dc.b		$c1,$7
	dc.b		$1
	dc.b		$c1
	dc.b		$c3
	dc.b		$c1,$2
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1,$9
	dc.b		$80,$8
	smpsReturn

EndlessPossibility_FM2_p7:
	dc.b		$e7,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$c1
	dc.b		$80
	dc.b		$bc
	dc.b		$c3,$1
	dc.b		$c5,$2
	dc.b		$c1
	dc.b		$80,$1
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$bc
	dc.b		$c8
	dc.b		$c1,$1
	dc.b		$2
	dc.b		$c0
	dc.b		$c1,$8
	dc.b		$1
	dc.b		$c3
	dc.b		$c1,$2
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1,$7
	dc.b		$1
	dc.b		$c1
	dc.b		$c3
	dc.b		$c1,$2
	dc.b		$c3
	dc.b		$c5,$3
	smpsReturn

EndlessPossibility_FM2_p8:
	dc.b		$c1,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM3
EndlessPossibility_FM3_p0:
	dc.b		$80,$20
	dc.b		$80
	smpsReturn

EndlessPossibility_FM3_p2:
	smpsFMvoice	$1
	dc.b		$b5,$20
	dc.b		$b0,$8
	dc.b		$b2
	dc.b		$b4
	dc.b		$b5
	smpsReturn

EndlessPossibility_FM3_p4:
	dc.b		$80,$a
	smpsFMvoice	$2
	dc.b		$b9,$2
	dc.b		$ba,$4
	dc.b		$b9,$3
	dc.b		$b5,$5
	dc.b		$80,$12
	dc.b		$b9,$2
	dc.b		$ba,$4
	dc.b		$b9,$8
	dc.b		$80
	smpsReturn

EndlessPossibility_FM3_p5:
	dc.b		$e7,$6
	dc.b		$b9
	dc.b		$ba,$4
	dc.b		$b9
	dc.b		$b5
	dc.b		$80,$20
	dc.b		$ba,$2
	dc.b		$bc,$1
	dc.b		$ba,$2
	dc.b		$b9,$3
	smpsReturn

EndlessPossibility_FM3_p6:
	dc.b		$80,$2
	dc.b		$b5
	dc.b		$be
	dc.b		$bc
	dc.b		$80
	dc.b		$b5
	dc.b		$be
	dc.b		$bc
	dc.b		$80,$8
	dc.b		$ad,$2
	dc.b		$b0,$1
	dc.b		$b5,$2
	dc.b		$b7
	dc.b		$b9,$7
	dc.b		$80,$1a
	smpsReturn

EndlessPossibility_FM3_p7:
	dc.b		$e7,$2
	dc.b		$b5
	dc.b		$be
	dc.b		$bc
	dc.b		$80
	dc.b		$b5
	dc.b		$be,$1
	dc.b		$c0,$2
	dc.b		$bc
	dc.b		$80,$7
	dc.b		$ad,$2
	dc.b		$b0,$1
	dc.b		$b5,$2
	dc.b		$b7
	dc.b		$b9,$8
	dc.b		$c5,$1
	dc.b		$c6
	dc.b		$c5,$2
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5,$7
	dc.b		$80,$a
	smpsReturn

EndlessPossibility_FM3_p8:
	dc.b		$bc,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM4
EndlessPossibility_FM4_p0:
	smpsFMvoice	$1
	dc.b		$c1,$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	smpsReturn

EndlessPossibility_FM4_p2:
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	smpsReturn

EndlessPossibility_FM4_p4:
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	smpsReturn

EndlessPossibility_FM4_p5:
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	smpsReturn

EndlessPossibility_FM4_p6:
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$b9,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b9
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b7
	dc.b		$b7
	dc.b		$b5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b5
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b7
	dc.b		$b7
	smpsReturn

EndlessPossibility_FM4_p7:
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$b9,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b9
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b7
	dc.b		$b7
	dc.b		$b5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b5
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b7
	dc.b		$b7
	smpsReturn

EndlessPossibility_FM4_p8:
	dc.b		$b5,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM5
EndlessPossibility_FM5_p0:
	smpsFMvoice	$1
	dc.b		$bc,$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	smpsReturn

EndlessPossibility_FM5_p2:
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	smpsReturn

EndlessPossibility_FM5_p4:
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$bc
	dc.b		$bc
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	smpsReturn

EndlessPossibility_FM5_p5:
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	smpsReturn

EndlessPossibility_FM5_p6:
	dc.b		$bc,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$b2,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b2
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b0
	dc.b		$b0
	dc.b		$ae,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$ae
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b0
	dc.b		$b0
	smpsReturn

EndlessPossibility_FM5_p7:
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$1
	dc.b		$c1,$2
	dc.b		$1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$c5
	dc.b		$c5
	dc.b		$b2,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b2
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b0
	dc.b		$b0
	dc.b		$ae,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$ae
	dc.b		$b0
	dc.b		$b0,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$b0
	dc.b		$b0
	smpsReturn

EndlessPossibility_FM5_p8:
	dc.b		$b0,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for PSG1
EndlessPossibility_PSG1_p0:
	dc.b		$80,$20
	dc.b		$80
	smpsReturn

EndlessPossibility_PSG1_p4:
	dc.b		$c1,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	smpsReturn

EndlessPossibility_PSG1_p5:
	dc.b		$c1,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c6
	dc.b		$c5
	smpsReturn

EndlessPossibility_PSG1_p6:
	dc.b		$80,$2
	dc.b		$c8
	dc.b		$cf
	dc.b		$cd
	dc.b		$80
	dc.b		$c8
	dc.b		$cf
	dc.b		$cd
	dc.b		$80
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$d4
	dc.b		$cd,$1
	dc.b		$2
	dc.b		$cc
	dc.b		$cd,$7
	dc.b		$1
	dc.b		$cd
	dc.b		$cf
	dc.b		$cd,$2
	dc.b		$cc
	dc.b		$cd
	dc.b		$cd,$9
	dc.b		$80,$8
	smpsReturn

EndlessPossibility_PSG1_p7:
	dc.b		$e7,$2
	dc.b		$c8
	dc.b		$cf
	dc.b		$cd
	dc.b		$80
	dc.b		$c8
	dc.b		$cf,$1
	dc.b		$d1,$2
	dc.b		$cd
	dc.b		$80,$1
	dc.b		$c8,$2
	dc.b		$c8
	dc.b		$c8
	dc.b		$d4
	dc.b		$cd,$1
	dc.b		$2
	dc.b		$cc
	dc.b		$cd,$8
	dc.b		$1
	dc.b		$cf
	dc.b		$cd,$2
	dc.b		$cc
	dc.b		$cd
	dc.b		$cd,$7
	dc.b		$1
	dc.b		$cd
	dc.b		$cf
	dc.b		$cd,$2
	dc.b		$cf
	dc.b		$d1,$3
	smpsReturn

EndlessPossibility_PSG1_p8:
	dc.b		$cd,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for PSG2
EndlessPossibility_PSG2_p0:
	dc.b		$80,$20
	dc.b		$80
	smpsReturn

EndlessPossibility_PSG2_p2:
	smpsPSGvoice	$1
	dc.b		$cf,$1
	dc.b		$d1,$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$c8,$3
	dc.b		$80,$4
	dc.b		$c8,$2
	dc.b		$cf,$1
	dc.b		$d1,$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$c8,$3
	dc.b		$c5,$2
	dc.b		$c8
	dc.b		$cd
	dc.b		$cf
	dc.b		$d1,$1
	dc.b		$cd,$2
	dc.b		$80,$1B
	smpsReturn

EndlessPossibility_PSG2_p3:
	dc.b		$cf,$1
	dc.b		$d1,$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$c8,$3
	dc.b		$80,$4
	dc.b		$c8,$2
	dc.b		$cf,$1
	dc.b		$d1,$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$c8,$3
	dc.b		$c5,$2
	dc.b		$c8
	dc.b		$cd
	dc.b		$cf
	dc.b		$d1,$1
	dc.b		$cd,$2
	dc.b		$80,$19
	dc.b		$c6,$2
	smpsReturn

EndlessPossibility_PSG2_p4:
	dc.b		$e7,$1
	dc.b		$c1,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc,$1
	smpsReturn

EndlessPossibility_PSG2_p5:
	dc.b		$e7,$1
	dc.b		$c1,$2
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c3
	dc.b		$bc
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$bc
	dc.b		$c6
	dc.b		$c5,$1
	smpsReturn

EndlessPossibility_PSG2_p6:
	dc.b		$80,$2
	dc.b		$b0
	dc.b		$b7
	dc.b		$b5
	dc.b		$80
	dc.b		$b0
	dc.b		$b7
	dc.b		$b5
	dc.b		$80
	dc.b		$b0
	dc.b		$b0
	dc.b		$b0
	dc.b		$bc
	dc.b		$b5,$1
	dc.b		$2
	dc.b		$b4
	dc.b		$b5,$7
	dc.b		$1
	dc.b		$b5
	dc.b		$b7
	dc.b		$b5,$2
	dc.b		$b4
	dc.b		$b5
	dc.b		$b5,$9
	dc.b		$80,$8
	smpsReturn

EndlessPossibility_PSG2_p7:
	dc.b		$e7,$2
	dc.b		$b0
	dc.b		$b7
	dc.b		$b5
	dc.b		$80
	dc.b		$b0
	dc.b		$b7,$1
	dc.b		$b9,$2
	dc.b		$b5
	dc.b		$80,$1
	dc.b		$b0,$2
	dc.b		$b0
	dc.b		$b0
	dc.b		$bc
	dc.b		$b5,$1
	dc.b		$2
	dc.b		$b4
	dc.b		$b5,$8
	dc.b		$1
	dc.b		$b7
	dc.b		$b5,$2
	dc.b		$b4
	dc.b		$b5
	dc.b		$b5,$7
	dc.b		$1
	dc.b		$b5
	dc.b		$b7
	dc.b		$b5,$2
	dc.b		$b7
	dc.b		$b9,$3
	smpsReturn

EndlessPossibility_PSG2_p8:
	dc.b		$b5,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for PSG3 (Noise)
EndlessPossibility_PSG3_p0:
	dc.b		$80,$20
	dc.b		$80
	smpsReturn

EndlessPossibility_PSG3_p1:
	smpsPSGvoice	$2
	dc.b		$82,$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsReturn

EndlessPossibility_PSG3_p5:
	smpsPSGvoice	$2
	dc.b		$82,$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82,$2
	smpsPSGvoice	$2
	dc.b		$1
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	smpsPSGvoice	$2
	dc.b		$82
	smpsPSGvoice	$1
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsReturn

EndlessPossibility_PSG3_p6:
	smpsPSGvoice	$1
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$82
	dc.b		$82,$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	smpsReturn

EndlessPossibility_PSG3_p7:
	smpsPSGvoice	$1
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$82
	dc.b		$82,$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82,$2
	dc.b		$1
	dc.b		$2
	dc.b		$1
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsReturn

EndlessPossibility_PSG3_p8:
	smpsPSGvoice	$1
	dc.b		$82,$f
	dc.b		$80,$1
	smpsReturn

; Pattern data for DAC
EndlessPossibility_DAC_p0:
	dc.b		$80,$20
	dc.b		$1c
	dc.b		$82,$1
	dc.b		$81
	dc.b		$82
	dc.b		$82
	smpsReturn

EndlessPossibility_DAC_p1:
	dc.b		dCrash,$2
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	smpsReturn

EndlessPossibility_DAC_p3:
	dc.b		dCrash,$2
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	smpsReturn

EndlessPossibility_DAC_p5:
	dc.b		$81,$2
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81
	dc.b		$82,$1
	dc.b		$81
	dc.b		dHiTom
	dc.b		dMidTom
	dc.b		dLowTom
	dc.b		dVLowTom
	smpsReturn

EndlessPossibility_DAC_p6:
	dc.b		dCrash,$2
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	smpsReturn

EndlessPossibility_DAC_p7:
	dc.b		dCrash,$2
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82
	dc.b		$81,$2
	dc.b		$1
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		$81,$1
	dc.b		$81
	dc.b		$82,$2
	dc.b		dHiTom,$1
	dc.b		dMidTom
	dc.b		dLowTom
	dc.b		dVLowTom
	dc.b		dHiTom
	dc.b		dMidTom
	dc.b		dLowTom
	dc.b		dVLowTom
	smpsReturn

EndlessPossibility_DAC_p8:
	dc.b		dCrash,$f
	dc.b		$80,$1
	smpsReturn

EndlessPossibility_Voices:
	dc.b	$20,$36,$35,$30,$31,$df,$df,$9f,$9f,$7,$6,$9,$6,$7,$6,$6
	dc.b	$8,$2f,$1f,$1f,$ff,$19,$37,$13,$9	; Voice 0 (S1 Bass)
	dc.b	$3b,$77,$33,$70,$30,$1f,$90,$1f,$1f,$0,$10,$0,$0,$0,$0,$0
	dc.b	$0,$8,$15,$8,$8,$22,$1a,$19,$0	; Voice 1 (Voice 1 ripped from s1mbv82.bin)
	dc.b	$38,$53,$51,$51,$51,$df,$df,$1f,$1f,$7,$e,$7,$4,$4,$3,$3
	dc.b	$8,$f7,$31,$71,$68,$1b,$11,$10,$0	; Voice 2 (Voice 4 ripped from s1mbv82.bin)
	even
