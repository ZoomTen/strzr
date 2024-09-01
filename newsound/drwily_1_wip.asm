; =============================================================================================
; Project Name:		Mega Man 2 - Dr. Wily Stage 1
; Created:		11st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

DrWilyStg1_Header:
	smpsHeaderVoice	DrWilyStg1_Voices
	smpsHeaderChan	$02,	$00
	smpsHeaderTempo	$02,	$68

	smpsHeaderDAC	DrWilyStg1_DAC
	smpsHeaderFM	DrWilyStg1_FM1,	smpsPitch00,	$03

DrWilyStg1_FM1:
	smpsFMvoice	$04
	smpsModSet	$0D,	$01,	$05,	$05
	dc.b		nRst,	$24,	nEb4,	$06,	nE4
DrWilyStg1_FM1_Jump:
	smpsCall	DrWilyStg1_FM1_Call01
	smpsFMvoice	$00
	smpsCall	DrWilyStg1_FM1_Call02
	dc.b		nEb4,	$06,	nE4
	smpsCall	DrWilyStg1_FM1_Call01
	smpsFMvoice	$00
	smpsCall	DrWilyStg1_FM1_Call02
	smpsCall	DrWilyStg1_FM1_Call03
	smpsCall	DrWilyStg1_FM1_Call04
	dc.b		nCs5,	$06,	smpsNoAttack,	$30
	smpsFMvoice	$04
	dc.b		nRst,	$0C
;	smpsCall	DrWilyStg1_Call07
	dc.b		nAb5,	$12,	nE4,	$06,	nRst,	nE4,	nE4,	nEb4
	dc.b		nE4,	$0C,	nCs5,	$06,	nB4,	$0C,	nA4,	nAb4
	dc.b		nFs4,	$0C,	$06,	nRst,	nAb4,	$06,	$0C,	$0C
	dc.b		nRst,	$06,	nFs4,	nRst,	nAb4,	$06,	$0C,	$0C
	dc.b		nFs4,	$06,	nE4,	nRst,	nE4,	nE4,	nEb4,	nE4
	dc.b		$0C,	nCs5,	$06,	nB4,	$0C,	nA4,	nAb4,	nFs4
	dc.b		$12,	nEb4,	$06,	nE4,	nEb4,	nCs4,	$06,	smpsNoAttack
	dc.b		$18,	smpsNoAttack,	$30
	smpsJump	DrWilyStg1_FM1_Jump
	
DrWilyStg1_FM1_Call01:
	smpsFMvoice	$04
	dc.b		nRst,	$06,	nE4,	$03,	$03,	$06,	$06,	$06
	dc.b		nCs4,	nRst,	nCs4,	nE4,	$06,	$03,	$03,	$06
	dc.b		nCs4,	nRst,	nAb4,	nFs4,	nAb4,	nRst,	$06,	nE4
	dc.b		$03,	$03,	$06,	$06,	$06,	nCs4,	nRst,	nAb4
	dc.b		nRst,	nFs4,	nRst,	nE4,	nRst,	nFs4,	$12,	nRst
	dc.b		$06,	nFs4,	$03,	$03,	$06,	$06,	$06,	nEb4
	dc.b		nRst,	nAb4,	nRst,	nFs4,	nRst,	nE4,	nRst,	nEb4
	dc.b		$0C
	smpsReturn

DrWilyStg1_FM1_Call02:
	dc.b		nCs4,	$0C,	$06,	nAb4,	nB4,	nBb4
	dc.b		$0C,	nRst,	$06,	nCs4,	$0C,	$06,	nAb4,	nB4
	dc.b		nBb4,	$0C
	smpsFMvoice	$04
	smpsReturn

DrWilyStg1_FM1_Call03:
	dc.b		nB4,	$06,	nCs5,	$06,	smpsNoAttack,	$24,	nB4
	dc.b		$06,	nE5,	$0C,	nCs5,	nB4,	nCs5,	$12,	nB4
	dc.b		$18,	$06,	nCs5,	$12,	nAb4,	$06,	nA4,	nAb4
	dc.b		nE4,	$0C,	$06,	nAb4,	nB4,	nCs5,	$24,	nB4
	dc.b		$06,	nE5,	$0C,	nCs5,	nB4,	nCs5,	$12,	nB4
	dc.b		$18,	$06,	nAb4,	nB4,	nC5,	nRst,	nC5,	$06
	dc.b		$06,	nEb5
	smpsReturn

DrWilyStg1_FM1_Call04:
	dc.b		nAb5,	$18
	smpsFMvoice	$00
	dc.b		nD5,	$0C
	smpsAlterVol	$FE
	dc.b		nAb3,	$24,	nFs3,	$06,	nB3,	$0C,	nA3,	nAb3
	dc.b		nA3,	$12,	nAb3,	$24,	nFs3,	$06,	nB3,	$0C
	dc.b		nA3,	nAb3,	nA3,	$12,	nE3,	$18,	$06,	nFs3
	dc.b		nAb3,	nEb3,	$06,	smpsNoAttack,	$24,	nD5,	smpsModOff
	smpsAlterVol	$02
	smpsFMvoice	$04
	dc.b		nRst,	$06,	nCs4,	nRst,	nCs4,	nAb4,	nB4,	nBb4
	dc.b		$12,	nCs4,	$06,	nRst,	nCs4,	nAb4,	nB4,	nBb4
	dc.b		$0C
	smpsFMvoice	$07
	dc.b		nB4,	$06,	nCs5,	$06,	smpsNoAttack,	$18,	$0C,	nB4
	dc.b		$06,	nCs5,	$0C,	nE5,	$12,	nAb5,	$06,	nFs5
	dc.b		nE5,	nEb5,	nCs5,	$18,	$0C,	nB4,	$06,	nCs5
	dc.b		$0C,	nE5,	$12,	$06,	nFs5,	nE5,	$0C,	nEb5
	dc.b		$18,	$06,	nCs5,	nB4,	nAb5,	$12,	nFs5,	$0C
	dc.b		nE5,	nEb5,	nEb5,	$06,	nE5,	nEb5
	smpsReturn

DrWilyStg1_DAC:
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$06,	dSnare,	$06
	dc.b		$03,	$03
DrWilyStg1_DAC_Jump:
	smpsCall	DrWilyStg1_DAC_Call
	dc.b		dKick,	$06,	$06,	dSnare,	$06,	$06
	smpsCall	DrWilyStg1_DAC_Call
DrWilyStg1_DAC_Loop01:
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$06,	dSnare,	$06
	dc.b		$03,	$03,	dKick,	$0C,	dSnare,	$0C,	dKick,	$06
	dc.b		$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop01
DrWilyStg1_DAC_Loop02:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$06,	dKick,	$03,	dSnare,	$09,	$03,	$03,	dKick
	dc.b		$06,	dSnare,	$06,	dKick,	$03,	dSnare,	$03,	dKick
	dc.b		$06,	dSnare,	$06,	$03,	$03,	dKick,	$0C,	dSnare
	dc.b		$0C,	dKick,	$06,	$06,	dSnare,	$0C
	smpsLoop	$00,	$05,	DrWilyStg1_DAC_Loop02
DrWilyStg1_DAC_Loop03:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$06,	dKick,	$0C,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		$06,	dSnare,	$06,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$06,	$06,	dSnare,	$06,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$06,	$06,	dSnare,	$0C,	dKick
	dc.b		$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop03
DrWilyStg1_DAC_Loop04:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$06,	dSnare,	$06,	$03,	$03,	dKick,	$0C
	dc.b		dSnare,	$0C,	dKick,	$06,	$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop04
DrWilyStg1_DAC_Loop05:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$06,	dKick,	$03,	dSnare,	$09,	$03,	$03,	dKick
	dc.b		$06,	dSnare,	$06,	dKick,	$03,	dSnare,	$03,	dKick
	dc.b		$06,	dSnare,	$06,	$03,	$09,	dKick,	$06,	dSnare
	dc.b		$0C,	dKick,	$06,	$06,	dSnare,	$06,	dKick,	$0C
	dc.b		$06,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare,	$06
	dc.b		dKick,	$0C,	dSnare,	$06,	$0C,	dKick,	$06,	dSnare
	dc.b		$06,	$06,	dKick,	$0C,	dSnare,	$06,	$0C,	dKick
	dc.b		$06,	dSnare,	$06,	$06,	$0C,	dKick,	$06,	dSnare
	dc.b		$0C,	dKick,	$06,	$06,	dSnare,	$06,	dKick,	$0C
	dc.b		$06,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$06,	$03,	$03,	dKick,	$03,	dSnare,	$09,	$09
	dc.b		$03,	dKick,	$03,	dSnare,	$03,	dKick,	$06,	dSnare
	dc.b		$06,	$03,	$03
	smpsJump	DrWilyStg1_DAC_Jump

DrWilyStg1_DAC_Call:
DrWilyStg1_DAC_Loop06:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$0C
	smpsLoop	$00,	$05,	DrWilyStg1_DAC_Loop06
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	$06,	dSnare
	dc.b		$06,	dKick,	$0C,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		$06,	dSnare,	$06,	dKick,	$0C,	$06,	dSnare,	$0C
	smpsReturn


DrWilyStg1_Voices:
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead