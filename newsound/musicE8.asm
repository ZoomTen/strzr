; =============================================================================================
; MEGA MAN TIME TANGENT - ALL CLEAR
; =============================================================================================

AllClear_Header:
	smpsHeaderVoice	AllClear_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$02

	smpsHeaderDAC	AllClear_DAC
	smpsHeaderFM	AllClear_FM1,	smpsPitch01lo,	$07
	smpsHeaderFM	AllClear_FM2,	smpsPitch01hi,	$0B
	smpsHeaderFM	AllClear_FM3,	smpsPitch01hi,	$0D
	smpsHeaderFM	AllClear_FM4,	smpsPitch01hi,	$0D
	smpsHeaderFM	AllClear_FM5,	smpsPitch01hi,	$12
	smpsHeaderPSG	AllClear_PSG1,	smpsPitch00,	$03,	$01
	smpsHeaderPSG	AllClear_PSG2,	smpsPitch00,	$03,	$01
	smpsHeaderPSG	AllClear_PSG3,	smpsPitch00,	$01,	$01
AllClear_DAC:
	dc.b	dSnare,$03,dKick,$01,$01,$01,dSnare,$03,dKick,$01,$01,$01
	dc.b    dSnare,$03,dMidTimpani,dLowTimpani,dVLowTimpani
	smpsLoop $00,$02,AllClear_DAC
	dc.b	dSnare,$06
	smpsStop

; FM1 Data
AllClear_FM1:
	smpsFMvoice	$02
	dc.b		nF3,$09,$01,$01,$01,$03,nF2,nF2,nF2
	dc.b		nF3,$09,$01,$01,$01,$03,nF2,nF3,nE3
	dc.b		nF3,$17
	smpsStop

; FM2 Data
AllClear_FM2:
	smpsAlterNote	$03
	smpsFMvoice	$01
AllClear_Jump01:
	dc.b		nC3,$09,$01,$01,$01,$03,nA2,nC3,nF3
	dc.b		nD3,$09,$01,$01,$01,$03,nBb2,nD3,nG3
	dc.b		nA3,$17
	smpsStop

; FM3 Data
AllClear_FM3:
	smpsFMvoice	$00
	dc.b		nF3,$09,$01,$01,$01,$03,nF3,nF3,nF3
	dc.b		nG3,$09,$01,$01,$01,$03,nG3,nG3,nG3
        dc.b		nF3,$17
	smpsStop

; FM4 Data
AllClear_FM4:
	smpsAlterNote	$01
	smpsFMvoice	$00
AllClear_Jump02:
	dc.b		nA3,$09,$01,$01,$01,$03,nF3,nA3,nC4
	dc.b		nBb3,$09,$01,$01,$01,$03,nG3,nBb3,nD4
	dc.b		nC4,$17
	smpsStop

; FM5 Data
AllClear_FM5:
	smpsAlterNote	$FD
	smpsPSGvoice	$03
	dc.b		nRst,	$01
	smpsFMvoice	$00
	smpsJump	AllClear_Jump01
	smpsStop

; PSG1 Data
AllClear_PSG1:
	smpsAlterNote	$01
	smpsPSGvoice	$03
	smpsJump	AllClear_Jump01
	smpsStop

; PSG2 Data
AllClear_PSG2:
	smpsAlterNote	$FF
	smpsFMvoice	$00
	smpsPSGvoice	$03
	dc.b		nA3,$09,$01,$01,$01,$03,nF3,nA3,nC4
	dc.b		nBb3,$09,$01,$01,$01,$03,nG3,nBb3,nD4
	dc.b		nC3,$01,nF3,nA3,nC4,nA3,nF3
        dc.b		nC3,nF3,nA3,nC4,nA3,nF3
        dc.b		nC3,nF3,nA3,nC4,nA3,nF3
        dc.b		nC3,nF3,nA3,nC4,nA3,nF3
	smpsStop

; PSG3 Data
AllClear_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$08
	dc.b	nA5,$03
	smpsPSGvoice	$01
	dc.b	$01,$01,$01
	smpsPSGvoice	$08
	dc.b	nA5,$03
	smpsPSGvoice	$01
	dc.b	$01,$01,$01
        smpsPSGvoice	$08
	dc.b	nA5,$03,$03
	smpsPSGvoice	$01
	dc.b	nA5,$03,$03
	smpsPSGvoice	$08
	dc.b	nA5,$03
	smpsPSGvoice	$01
	dc.b	$01,$01,$01
	smpsPSGvoice	$08
	dc.b	nA5,$03
	smpsPSGvoice	$01
	dc.b	$01,$01,$01
        smpsPSGvoice	$08
	dc.b	nA5,$03,$03
	smpsPSGvoice	$01
	dc.b	nA5,$03,$03
	smpsPSGvoice	$08
	dc.b	nA5,$03
	smpsStop

AllClear_Voices:
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$80,$80,$80;			Voice 00
	dc.b		$3C,$71,$72,$3F,$34,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 01
	UVBVoice	22_StrikelikeSlapBass
	dc.b		$80,$34;			Voice 03
	even
