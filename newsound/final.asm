; =============================================================================================
; Project Name:		FinalEmotion
; Created:		23rd January 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

FinalEmotion_Header:
	smpsHeaderVoice	FinalEmotion_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$00

	smpsHeaderDAC	FinalEmotion_DAC
	smpsHeaderFM	FinalEmotion_FM1,	smpsPitch00,	$0e
	smpsHeaderFM	FinalEmotion_FM2,	smpsPitch00,	$0e
	smpsHeaderFM	FinalEmotion_FM3,	smpsPitch00,	$10
	smpsHeaderFM	FinalEmotion_FM4,	smpsPitch00,	$11
	smpsHeaderFM	FinalEmotion_FM5,	smpsPitch00,	$0f
	smpsHeaderPSG	FinalEmotion_PSG1,	smpsPitch00,	$01,	$07
	smpsHeaderPSG	FinalEmotion_PSG2,	smpsPitch00,	$03,	$07
	smpsHeaderPSG	FinalEmotion_PSG3,	smpsPitch00,	$06,	$02

; DAC Data
FinalEmotion_DAC:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$03,	dKick,	$09
FinalEmotion_Loop02:
	dc.b		$03,	dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	dc.b		dKick,	dKick,	$09,	$03,	dSnare,	$0C,	dKick,	$09
	dc.b		$03,	dSnare,	$06,	dKick
FinalEmotion_Loop01:
	dc.b		$03,	dSnare,	dKick,	$09,	$03,	dSnare,	$0C,	dKick
	dc.b		$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09,	$03
	dc.b		dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	smpsLoop	$00,	$02,	FinalEmotion_Loop01
	dc.b		dKick,	$03,	dSnare,	dKick,	$09,	$03,	dSnare,	$0C
	dc.b		dKick,	$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09
	dc.b		$03,	dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	dc.b		$03,	$03
FinalEmotion_Jump01:
	dc.b		dKick,	$09
	smpsLoop	$01,	$04,	FinalEmotion_Loop02
	dc.b		$03,	dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	dc.b		dKick,	dKick,	$09,	$03,	dSnare,	$0C,	dKick,	$09
	dc.b		$03,	dSnare,	$06,	dKick
FinalEmotion_Loop03:
	dc.b		$03,	dSnare,	dKick,	$09,	$03,	dSnare,	$0C,	dKick
	dc.b		$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09,	$03
	dc.b		dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	smpsLoop	$00,	$02,	FinalEmotion_Loop03
	dc.b		dKick,	$03,	dSnare,	dKick,	$09,	$03,	dSnare,	$0C
	dc.b		dKick,	$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09
	dc.b		$03,	dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	dc.b		$03,	$03,	dMidTom,	$18
FinalEmotion_Loop04:
	dc.b		dKick
	smpsLoop	$00,	$0F,	FinalEmotion_Loop04
	dc.b		dKick,	$0C
	smpsLoop	$01,	$02,	FinalEmotion_Loop04
FinalEmotion_Loop05:
	dc.b		$0C
	smpsLoop	$00,	$0B,	FinalEmotion_Loop05
	dc.b		dSnare,	$03,	$03,	$03,	$03,	$06,	dKick,	$03
	dc.b		$03,	dSnare,	$06,	dKick,	dSnare,	dSnare
FinalEmotion_Loop06:
	dc.b		$03,	$03,	dKick,	$09,	$03,	dSnare,	$0C,	dKick
	dc.b		$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09,	$03
	dc.b		dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06,	dKick
	dc.b		$03,	dSnare,	dKick,	$09,	$03,	dSnare,	$0C,	dKick
	dc.b		$09,	$03,	dSnare,	$06,	dKick,	dKick,	$09,	$03
	dc.b		dSnare,	$0C,	dKick,	$09,	$03,	dSnare,	$06
	smpsLoop	$00,	$04,	FinalEmotion_Loop06
	dc.b		$03,	$03,	dKick
FinalEmotion_Loop07:
	dc.b		$0C
	smpsLoop	$00,	$1C,	FinalEmotion_Loop07
	dc.b		dSnare,	$03,	$03,	$03,	$03,	$06,	dKick,	$03
	dc.b		$03,	dSnare,	$06,	dKick,	dSnare,	dSnare,	$03,	$03
	smpsJump	FinalEmotion_Jump01

; FM1 Data
FinalEmotion_FM1:
	smpsPan		panRight,	$00
	smpsFMvoice	$02
FinalEmotion_Loop08:
	dc.b		nA5,	$30
FinalEmotion_Loop09:
	dc.b		$18,	nC6,	nG5,	$48,	nA5,	$18,	nF5,	$48
	dc.b		$18,	nE5,	$48,	nC6,	$18
	smpsLoop	$00,	$02,	FinalEmotion_Loop08
FinalEmotion_Jump02:
	dc.b		nA5,	$30
	smpsLoop	$01,	$05,	FinalEmotion_Loop09
	dc.b		$18,	nC6,	nG5,	$48,	nA5,	$18,	nF5,	$48
	dc.b		$18,	nE5,	$48,	nC6,	$18
	smpsJump	FinalEmotion_Jump02

; FM2 Data
FinalEmotion_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nD2,	$60,	nC2,	nBb2,	nC3,	nD2
FinalEmotion_Loop0A:
	dc.b		$06
	smpsLoop	$00,	$10,	FinalEmotion_Loop0A
FinalEmotion_Loop0B:
	dc.b		nC2
	smpsLoop	$00,	$10,	FinalEmotion_Loop0B
FinalEmotion_Loop0C:
	dc.b		nBb2
	smpsLoop	$00,	$10,	FinalEmotion_Loop0C
FinalEmotion_Loop0D:
	dc.b		nC3
	smpsLoop	$00,	$10,	FinalEmotion_Loop0D
FinalEmotion_Jump03:
	dc.b		nD2
FinalEmotion_Loop0E:
	dc.b		$06
	smpsLoop	$00,	$10,	FinalEmotion_Loop0E
	smpsLoop	$01,	$09,	FinalEmotion_Loop0B
FinalEmotion_Loop0F:
	dc.b		nC2
	smpsLoop	$00,	$10,	FinalEmotion_Loop0F
FinalEmotion_Loop10:
	dc.b		nBb2
	smpsLoop	$00,	$10,	FinalEmotion_Loop10
FinalEmotion_Loop11:
	dc.b		nC3
	smpsLoop	$00,	$10,	FinalEmotion_Loop11
	smpsJump	FinalEmotion_Jump03

; FM3 Data
FinalEmotion_FM3:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nA4,	$03
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsAlterVol	$F1
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$F6
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nC4
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsAlterVol	$F1
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsAlterVol	$F3
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$07
	dc.b		nF4
	smpsAlterVol	$F1
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$F6
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$F5
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nG4
	smpsAlterVol	$F3
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$ED
	dc.b		nA4
FinalEmotion_Loop12:
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nC4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$F5
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nG4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
FinalEmotion_Jump04:
	dc.b		nA4,	$03
	smpsLoop	$00,	$09,	FinalEmotion_Loop12
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nC4
	smpsAlterVol	$04
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$F5
	dc.b		nA4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nC4
	smpsAlterVol	$03
	dc.b		nA4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nC4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nA4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nC4
	smpsAlterVol	$05
	dc.b		nA4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nD4
	smpsAlterVol	$04
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$F5
	dc.b		nBb4
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nD4
	smpsAlterVol	$03
	dc.b		nBb4
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nD4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nBb4
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nD4
	smpsAlterVol	$05
	dc.b		nBb4
	smpsAlterVol	$07
	dc.b		nF4
	smpsPan		panRight,	$00
	smpsAlterVol	$F1
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$F6
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F6
	dc.b		nG4
	smpsAlterVol	$04
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$F5
	dc.b		nC5
	smpsAlterVol	$04
	dc.b		nF4
	smpsAlterVol	$06
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsPan		panRight,	$00
	smpsAlterVol	$F3
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$06
	dc.b		nF4
	smpsAlterVol	$F2
	dc.b		nG4
	smpsAlterVol	$03
	dc.b		nC5
	smpsAlterVol	$05
	dc.b		nF4
	smpsAlterVol	$05
	dc.b		nG4
	smpsPan		panLeft,	$00
	smpsAlterVol	$F3
	dc.b		nC5
	smpsAlterVol	$03
	dc.b		nF4
	smpsAlterVol	$04
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$F4
	dc.b		nF4
	smpsAlterVol	$03
	dc.b		nG4
	smpsAlterVol	$05
	dc.b		nC5
	smpsAlterVol	$07
	dc.b		nF4
	smpsAlterVol	$F1
	smpsJump	FinalEmotion_Jump04

; FM4 Data
FinalEmotion_FM4:
	smpsPan		panLeft,	$00
	smpsFMvoice	$03
	dc.b		nD3,	$60,	nC3,	nBb2,	nC3,	nD3,	$3C,	nE3
	dc.b		$0C,	nF3,	$18,	nC3,	$3C,	nF3,	$0C,	nE3
	dc.b		$18,	nBb2,	$48,	nE3,	$0C,	nD3,	nC3,	$60
FinalEmotion_Loop13:
	dc.b		nD4,	$30,	nE4,	$18,	nF4,	$12,	nD4,	$03
	dc.b		nF4,	nE4,	$30,	nD4,	$18,	nC4,	nA4,	$30
	dc.b		nG4,	$18,	nF4,	nA4,	$30,	nG4,	$18,	nA4
	smpsLoop	$00,	$09,	FinalEmotion_Loop13
	smpsJump	FinalEmotion_Loop13

; FM5 Data
FinalEmotion_FM5:
	smpsPan		panRight,	$00
	smpsFMvoice	$03
	dc.b		nA3,	$60,	nG3,	nF4,	nE4,	nA3,	nG3,	nF4
	dc.b		nE4
FinalEmotion_Loop14:
	dc.b		nA3,	$48,	nC4,	$18,	nG3,	$48,	nA3,	$18
	dc.b		nF3,	$48,	$18,	nE3,	$48,	nC4,	$18
	smpsLoop	$00,	$09,	FinalEmotion_Loop14
	smpsJump	FinalEmotion_Loop14

; PSG1 Data
FinalEmotion_PSG1:
	dc.b		nRst
FinalEmotion_Loop15:
	dc.b		$60
	smpsLoop	$00,	$08,	FinalEmotion_Loop15
FinalEmotion_Jump05:
	dc.b		nRst
FinalEmotion_Loop16:
	dc.b		$4E
	smpsLoop	$00,	$0A,	FinalEmotion_Loop16
	dc.b		nA1,	$0C,	nG1,	$06,	nF1,	nE1,	nD1,	nA1
	dc.b		nG1,	nF1,	nE1,	nA1,	nG1,	nF1,	nE1,	$12
	dc.b		nA1,	$0C,	nG1,	$06,	nF1,	nE1,	nD1,	nA1
	dc.b		nG1,	nF1,	nE1,	nA1,	nG1,	nC2,	nBb1,	$12
	dc.b		$0C,	$06,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1
	dc.b		nF1,	nBb1,	nA1,	nG1,	nF1,	$12,	nBb1,	$0C
	dc.b		$06,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1,	nA1
	dc.b		nBb1,	$0C,	nA1,	nRst,	nA1,	nG1,	$06,	nF1
	dc.b		nE1,	nD1,	nA1,	nG1,	nF1,	nE1,	nA1,	nG1
	dc.b		nF1,	nE1,	$12,	nA1,	$0C,	nG1,	$06,	nF1
	dc.b		nE1,	nD1,	nA1,	nG1,	nF1,	nE1,	nA1,	nG1
	dc.b		nC2,	nBb1,	$12,	$0C,	$06,	nA1,	nG1,	nF1
	dc.b		nBb1,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1,	nF1
	dc.b		$12,	nBb1,	$0C,	$06,	nA1,	nG1,	nF1,	nBb1
	dc.b		nA1,	nG1,	nA1,	nBb1,	$0C,	nA1,	nRst
FinalEmotion_Loop17:
	dc.b		$4E
	smpsLoop	$00,	$0A,	FinalEmotion_Loop17
	dc.b		nA1,	$06,	nC2,	nD2,	$0C,	nF2,	$06,	nE2
	dc.b		$0C,	nC2,	nF2,	nE2,	nD2,	$06,	nC2,	$0C
	dc.b		nF2,	$06,	nE2,	$0C,	nC2,	nG2,	nG2,	$06
	dc.b		nF2,	nE2,	nD2,	nD2,	nE2,	$18,	nF2,	$06
	dc.b		nE2,	$0C,	nC2,	nF2,	nF2,	$06,	nE2,	$0C
	dc.b		nD2,	$06,	$06,	nC2,	$18,	nF2,	$06,	nG2
	dc.b		$0C,	nE2,	nF2,	nF2,	$06,	nE2,	$0C,	nD2
	dc.b		$06,	$06,	nC2,	$0C,	nRst,	nA1,	$06,	nC2
	dc.b		nD2,	$0C,	nF2,	$06,	nE2,	$0C,	nC2,	nF2
	dc.b		nE2,	nD2,	$06,	nC2,	$0C,	nF2,	$06,	nE2
	dc.b		$0C,	nC2,	nG2,	nG2,	$06,	nF2,	nE2,	nD2
	dc.b		nD2,	nE2,	$18,	nF2,	$06,	nE2,	$0C,	nC2
	dc.b		nF2,	nF2,	$06,	nE2,	$0C,	nD2,	$06,	$06
	dc.b		nC2,	$18,	nF2,	$06,	nG2,	$0C,	nE2,	nF2
	dc.b		nF2,	$06,	nE2,	$0C,	nD2,	$06,	$06,	nC2
	dc.b		$0C,	nRst,	$7F,	$7F,	$7F,	$03
	smpsJump	FinalEmotion_Jump05

; PSG2 Data
FinalEmotion_PSG2:
	smpsAlterNote	$02
	dc.b		nRst
FinalEmotion_Loop18:
	dc.b		$60
	smpsLoop	$00,	$08,	FinalEmotion_Loop18
FinalEmotion_Jump06:
	dc.b		nRst,	$70,	$70,	$70,	$70,	$70,	$70,	$71
	dc.b		nA1,	$0C,	nG1,	$06,	nF1,	nE1,	nD1,	nA1
	dc.b		nG1,	nF1,	nE1,	nA1,	nG1,	nF1,	nE1,	$12
	dc.b		nA1,	$0C,	nG1,	$06,	nF1,	nE1,	nD1,	nA1
	dc.b		nG1,	nF1,	nE1,	nA1,	nG1,	nC2,	nBb1,	$12
	dc.b		$0C,	$06,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1
	dc.b		nF1,	nBb1,	nA1,	nG1,	nF1,	$12,	nBb1,	$0C
	dc.b		$06,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1,	nA1
	dc.b		nBb1,	$0C,	nA1,	nRst,	nA1,	nG1,	$06,	nF1
	dc.b		nE1,	nD1,	nA1,	nG1,	nF1,	nE1,	nA1,	nG1
	dc.b		nF1,	nE1,	$12,	nA1,	$0C,	nG1,	$06,	nF1
	dc.b		nE1,	nD1,	nA1,	nG1,	nF1,	nE1,	nA1,	nG1
	dc.b		nC2,	nBb1,	$12,	$0C,	$06,	nA1,	nG1,	nF1
	dc.b		nBb1,	nA1,	nG1,	nF1,	nBb1,	nA1,	nG1,	nF1
	dc.b		$12,	nBb1,	$0C,	$06,	nA1,	nG1,	nF1,	nBb1
	dc.b		nA1,	nG1,	nA1,	nBb1,	$0C,	nA1,	nRst
FinalEmotion_Loop19:
	dc.b		$47
	smpsLoop	$00,	$0B,	FinalEmotion_Loop19
	dc.b		nA1,	$06,	nC2,	nD2,	$0C,	nF2,	$06,	nE2
	dc.b		$0C,	nC2,	nF2,	nE2,	nD2,	$06,	nC2,	$0C
	dc.b		nF2,	$06,	nE2,	$0C,	nC2,	nG2,	nG2,	$06
	dc.b		nF2,	nE2,	nD2,	nD2,	nE2,	$18,	nF2,	$06
	dc.b		nE2,	$0C,	nC2,	nF2,	nF2,	$06,	nE2,	$0C
	dc.b		nD2,	$06,	$06,	nC2,	$18,	nF2,	$06,	nG2
	dc.b		$0C,	nE2,	nF2,	nF2,	$06,	nE2,	$0C,	nD2
	dc.b		$06,	$06,	nC2,	$0C,	nRst,	nA1,	$06,	nC2
	dc.b		nD2,	$0C,	nF2,	$06,	nE2,	$0C,	nC2,	nF2
	dc.b		nE2,	nD2,	$06,	nC2,	$0C,	nF2,	$06,	nE2
	dc.b		$0C,	nC2,	nG2,	nG2,	$06,	nF2,	nE2,	nD2
	dc.b		nD2,	nE2,	$18,	nF2,	$06,	nE2,	$0C,	nC2
	dc.b		nF2,	nF2,	$06,	nE2,	$0C,	nD2,	$06,	$06
	dc.b		nC2,	$18,	nF2,	$06,	nG2,	$0C,	nE2,	nF2
	dc.b		nF2,	$06,	nE2,	$0C,	nD2,	$06,	$06,	nC2
	dc.b		$0C,	nRst,	$7F,	$7F,	$7C
	smpsJump	FinalEmotion_Jump06

; PSG3 Data
FinalEmotion_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$7F,	$7F,	$7F
FinalEmotion_Loop1A:
	dc.b		$03,	nA5,	$06,	$03,	$03,	$06,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$06,	$03,	$03,	$03
	smpsLoop	$00,	$08,	FinalEmotion_Loop1A
FinalEmotion_Loop1B:
	dc.b		$03
FinalEmotion_Jump07:
	dc.b		nA5,	$06,	$03,	$03,	$06,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$06,	$03,	$03,	$03
	smpsLoop	$00,	$48,	FinalEmotion_Loop1B
	dc.b		$03
	smpsJump	FinalEmotion_Jump07

FinalEmotion_Voices:
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$47,$1C,$22,$15,$00;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$00;			Voice 01
	dc.b		$10,$35,$76,$70,$30,$DF,$DF,$5F,$5F,$06,$08,$09,$09,$06,$03,$03
	dc.b		$01,$26,$16,$06,$26,$21,$34,$19,$00;			Voice 02
	dc.b		$3C,$31,$72,$70,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$00,$16,$00;			Voice 03
	even
