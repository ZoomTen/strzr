; =============================================================================================
; Project Name:		Mega Man 2 - Dr. Wily Stage 1
; Created:		11st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

DrWilyStg1_Header:
	smpsHeaderVoice	DrWilyStg1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$68

	smpsHeaderDAC	DrWilyStg1_DAC
	smpsHeaderFM	DrWilyStg1_FM1,	smpsPitch00,	$12
	smpsHeaderFM	DrWilyStg1_FM2,	smpsPitch00,	$09
	smpsHeaderFM	DrWilyStg1_FM3,	smpsPitch00,	$15
	smpsHeaderFM	DrWilyStg1_FM4,	smpsPitch00,	$15
	smpsHeaderFM	DrWilyStg1_FM5,	smpsPitch00,	$1E
	smpsHeaderPSG	DrWilyStg1_PSG1,	smpsPitch00,	$03,	$0C
	smpsHeaderPSG	DrWilyStg1_PSG2,	smpsPitch00,	$03,	$0C
	smpsHeaderPSG	DrWilyStg1_PSG3,	smpsPitch00,	$01,	$02
	
DrWilyStg1_FM1:
	smpsFMvoice	$04
	smpsModSet	$0D,	$01,	$05,	$05
	dc.b		nRst,	$24,	nEb4,	$06,	nE4
	smpsCall	DrWilyStg1__FM1_Call01
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
	smpsCall	DrWilyStg1_Call07
	dc.b		nAb5,	$12,	nE4,	$06,	nRst,	nE4,	nE4,	nEb4
	dc.b		nE4,	$0C,	nCs5,	$06,	nB4,	$0C,	nA4,	nAb4
	dc.b		nFs4,	$0C,	$06,	nRst,	nAb4,	$06,	$0C,	$0C
	dc.b		nRst,	$06,	nFs4,	nRst,	nAb4,	$06,	$0C,	$0C
	dc.b		nFs4,	$06,	nE4,	nRst,	nE4,	nE4,	nEb4,	nE4
	dc.b		$0C,	nCs5,	$06,	nB4,	$0C,	nA4,	nAb4,	nFs4
	dc.b		$12,	nEb4,	$06,	nE4,	nEb4,	nCs4,	$06,	smpsNoAttack
	dc.b		$18,	smpsNoAttack,	$30
	smpsJump	DrWilyStg1_Jump01
	
DrWilyStg1__FM1_Call01:
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

DrWilyStg1__FM1_Call02:
	dc.b		nCs4,	$0C,	$06,	nAb4,	nB4,	nBb4
	dc.b		$0C,	nRst,	$06,	nCs4,	$0C,	$06,	nAb4,	nB4
	dc.b		nBb4,	$0C
	smpsFMvoice	$04
	smpsReturn

DrWilyStg1__FM1_Call03:
	dc.b		nB4,	$06,	nCs5,	$06,	smpsNoAttack,	$24,	nB4
	dc.b		$06,	nE5,	$0C,	nCs5,	nB4,	nCs5,	$12,	nB4
	dc.b		$18,	$06,	nCs5,	$12,	nAb4,	$06,	nA4,	nAb4
	dc.b		nE4,	$0C,	$06,	nAb4,	nB4,	nCs5,	$24,	nB4
	dc.b		$06,	nE5,	$0C,	nCs5,	nB4,	nCs5,	$12,	nB4
	dc.b		$18,	$06,	nAb4,	nB4,	nC5,	nRst,	nC5,	$06
	dc.b		$06,	nEb5
	smpsReturn

DrWilyStg1__FM1_Call04:
	dc.b		nAb5,	$18
	smpsFMvoice	$00
	dc.b		nDa,	$0C
	smpsAlterVol	$FE
	dc.b		nAb3,	$24,	nFs3,	$06,	nB3,	$0C,	nA3,	nAb3
	dc.b		nA3,	$12,	nAb3,	$24,	nFs3,	$06,	nB3,	$0C
	dc.b		nA3,	nAb3,	nA3,	$12,	nE3,	$18,	$06,	nFs3
	dc.b		nAb3,	nEb3,	$06,	smpsNoAttack,	$24,	nDa,	smpsModOff
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

DrWilyStg1_FM2:
	smpsFMvoice	$08
	dc.b		nRst,	$24,	nB2,	$06,	nCs3,	$0C,	$03,	$03

DrWilyStg1_FM2_Cs3Loop:
	dc.b		nCs3,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_FM2_Cs3Loop
	
DrWilyStg1_FM2_A2Loop:
	dc.b		nA2,	$06,	$03,	$03
	smpsLoop	$00,	$08,	DrWilyStg1_FM2_A2Loop

DrWilyStg1_FM2_B2Loop:
	dc.b		nB2,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_FM2_B2Loop

	dc.b		$06,	nCs3,	$0C,	$03,	$03,	$06,	$03,	$03
	dc.b		$06,	$03,	$03,	$06,	$0C,	$03,	$03,	$06
	dc.b		$03,	$03,	$06,	$03,	$03
	smpsLoop	$01,	$02,	DrWilyStg1_FM2

	smpsCall	DrWilyStg1_Call08
	dc.b		$03,	$03,	nCs3,	$06,	$03,	$03
	smpsLoop	$00,	$08,	DrWilyStg1_Loop05
	dc.b		nA2,	$06,	$03,	$03
	smpsLoop	$00,	$08,	DrWilyStg1_Loop06
	dc.b		nB2,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_Loop07
	dc.b		nB2,	$06,	nCs3,	$0C,	$03,	$03,	$06,	$03
	dc.b		$03,	$06,	$03,	$03,	$06,	$0C,	$03,	$03
	dc.b		$06,	$03,	$03,	$06,	$03,	$03,	nB2,	$06
	dc.b		nCs3,	$0C,	$03,	$03,	nCs3,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_Loop08
	dc.b		nA2,	$06,	$03,	$03
	smpsLoop	$00,	$08,	DrWilyStg1_Loop09
	dc.b		nB2,	$06,	$03
	dc.b		$03
	smpsLoop	$00,	$08,	DrWilyStg1_Loop0A
	dc.b		nCs3,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_Loop0B
	smpsCall	DrWilyStg1_Call09
	dc.b		nA2,	$0C,	$06,	$06,	$03,	$03,	$06,	$03
	dc.b		$03,	$06,	nB2,	$0C,	$03,	$03,	$06,	$03
	dc.b		$03,	$06,	$03,	$03,	$06,	nCs3,	$0C,	$03
	dc.b		$03,	nEb3,	$06,	nCs3,	$03,	$03,	nE3,	$09
	dc.b		$03,	nCs3,	$06,	$0C,	$03,	$03,	nEb3,	$06
	dc.b		nCs3,	$03,	$03,	nE3,	$0C,	nB2,	$06,	nA2
	dc.b		$0C,	$06,	$06,	$03,	$03,	$06,	$03,	$03
	dc.b		$06,	nB2,	$0C,	$03,	$03,	$06,	$03,	$03
	dc.b		$06,	$03,	$03,	nC3,	$06,	$03,	$03,	nCs3
	dc.b		$06,	$03,	$03,	$06,	$03,	$03,	$06,	$03
	dc.b		$03,	nB2,	$06,	nCs3,	$0C,	nB2,	$06,	nCs3
	dc.b		$0C,	nB2,	$06,	nC3,	nCs3,	$0C,	nCs3,	$06
	dc.b		$03,	$03
	smpsJump	DrWilyStg1_Jump02

	dc.b		nB2,	$06,	nD3,	$0C,	$03,	$03,	$06,	$03
	dc.b		$03
	smpsLoop	$00,	$07,	DrWilyStg1_Loop0C
	dc.b		nCs3,	$06,	$03,	$03
	smpsLoop	$00,	$08,	DrWilyStg1_Loop0D
	dc.b		nD3,	$06,	$03,	$03
	smpsLoop	$00,	$07,	DrWilyStg1_Loop0E
	dc.b		$06,	nCs3,	$03,	$03,	nB2,	$06,	$03,	$03
	dc.b		$06,	$03,	$03,	$06,	$03,	$03,	$06,	nC3
	dc.b		nC2,	$03,	$03,	nC3,	$06,	nC2,	$03,	$03
	dc.b		nC3,	$06,	$06,	$03,	$03,	$06
	smpsReturn

DrWilyStg1_FM3:
	smpsFMvoice	$04
	smpsModSet	$0D,	$01,	$05,	$05
	dc.b		nRst,	$24,	nB3,	$06,	nCs4
	smpsCall	DrWilyStg1_Call0A
	dc.b		nB3,	$06,	nCs4
	smpsCall	DrWilyStg1_Call0B
	dc.b		nAb4,	$06,	nA4
	smpsCall	DrWilyStg1_Call0C
	dc.b		nC5,	$18
	smpsCall	DrWilyStg1_Call0D
	dc.b		nAb3,	$0C,	$06,	nE4,	nAb4,	nFs4,	$0C,	nRst
	dc.b		$06,	nAb3,	$0C,	$06,	nE4,	nAb4,	nFs4,	$0C
	dc.b		nFs4,	$06,	nAb4
	smpsCall	DrWilyStg1_Call0E
	smpsCall	DrWilyStg1_Call0F
	dc.b		nAb4,	$06,	nA4
	smpsCall	DrWilyStg1_Call10
	dc.b		nC5,	$12,	nCs4,	$06,	nRst,	nCs4,	nCs4,	nB3
	dc.b		nCs4,	$0C,	nA4,	$06,	nAb4,	$0C,	nFs4,	nE4
	dc.b		nEb4,	$0C,	nCs4,	$06,	nRst,	nE4,	$06,	$0C
	dc.b		$0C,	nRst,	$06,	nCs4,	nRst,	nE4,	$06,	$0C
	dc.b		$0C,	nEb4,	$06,	nCs4,	nRst,	nCs4,	nCs4,	nB3
	dc.b		nCs4,	$0C,	nA4,	$06,	nAb4,	$0C,	nFs4,	nE4
	dc.b		nEb4,	$12,	nB3,	$06,	nCs4,	nB3,	nAb3,	$18
	smpsFMvoice	$00
	smpsAlterNote	$02
	smpsAlterVol	$02
	dc.b		nB3,	$06,	nCs4,	$0C,	nB3,	$06,	nCs4,	$0C
	dc.b		nB3,	$06,	nC4,	nCs4
	smpsFMvoice	$04
	smpsAlterNote	$FE
	smpsAlterVol	$FE
	smpsJump	DrWilyStg1_Jump03

	smpsFMvoice	$04
	dc.b		nRst,	$06,	nCs4,	$03,	$03,	$06,	$06,	$06
	dc.b		nAb3,	nRst,	nAb3,	nCs4,	$06,	$03,	$03,	$06
	dc.b		nAb3,	nRst,	nE4,	nEb4,	nE4,	nRst,	$06,	nCs4
	dc.b		$03,	$03,	$06,	$06,	$06,	nA3,	nRst,	nE4
	dc.b		nRst,	nEb4,	nRst,	nCs4,	nRst,	nEb4,	$12,	nRst
	dc.b		$06,	nEb4,	$03,	$03,	$06,	$06,	$06,	nB3
	dc.b		nRst,	nE4,	nRst,	nEb4,	nRst,	nCs4,	nRst,	nB3
	dc.b		$0C
	smpsFMvoice	$00
	dc.b		nAb3,	$0C,	$06,	nE4,	nAb4,	nFs4,	$0C,	nRst
	dc.b		$06,	nAb3,	$0C,	$06,	nE4,	nAb4,	nFs4,	$0C
	smpsFMvoice	$04
	smpsReturn

	smpsFMvoice	$02
	smpsAlterVol	$03
	dc.b		smpsModOff,	$00,	nRst,	$06,	nFs3,	nA3,	nCs4,	nE4
	dc.b		$0C,	nCs4,	$12,	nFs3,	$06,	nA3,	nCs4,	nE4
	dc.b		nCs4,	nA3,	nFs3,	nRst,	nE3,	nAb3,	nB3,	nCs4
	dc.b		nAb4,	$18,	nCs3,	$06,	nE3,	nAb3,	nB3,	nAb3
	dc.b		nE3,	nCs3,	nRst,	nFs3,	nA3,	nCs4,	nE4,	$0C
	dc.b		nCs4,	$12,	nFs3,	$06,	nA3,	nCs4,	nE4,	nCs4
	dc.b		nA3,	nFs3
	smpsFMvoice	$04
	smpsAlterVol	$FD
	smpsModSet	$0D,	$01,	$05,	$05
	dc.b		nFs4,	$18,	$06,	nEb4,	nEb4,	nEb4,	nRst,	nEb4
	dc.b		$06,	$06,	nAb4
	smpsReturn


	smpsModSet	$0D,	$01,	$05,	$05
	smpsFMvoice	$04
	dc.b		nRst,	$24,	nFs3,	$06,	nAb3
	smpsCall	DrWilyStg1_Call11
	dc.b		nFs3,	nAb3
	smpsCall	DrWilyStg1_Call12
	dc.b		nE4
	smpsAlterNote	$03
	smpsAlterVol	$04
	smpsCall	DrWilyStg1_Call13
	smpsCall	DrWilyStg1_Call14
	dc.b		nCs5,	$18
	smpsFMvoice	$04
	dc.b		nCs4,	$0C,	$06,	nAb4,	nB4,	nBb4,	nE4
	smpsCall	DrWilyStg1_Call15
	dc.b		nAb5,	$0C
	smpsAlterNote	$FD
	smpsAlterVol	$FC
	dc.b		nE3,	$30,	nFs3,	nAb3,	$06,	nRst,	nCs4,	$06
	dc.b		$0C,	$0C,	nRst,	$06,	nAb3,	nRst,	nCs4,	$06
	dc.b		$0C,	$0C,	nB3,	$06,	nE3,	$30,	nFs3,	$06
	dc.b		smpsNoAttack,	$30,	nAb3,	$06,	$06,	$06,	nE3,	$12
	smpsFMvoice	$00
	smpsAlterVol	$FF
	dc.b		nB3,	$06,	nCs4,	$0C,	nB3,	$06,	nCs4,	$0C
	dc.b		nB3,	$06,	nC4,	nCs4,	$0C
	smpsAlterVol	$01
	smpsFMvoice	$04
	smpsJump	DrWilyStg1_Jump04
	dc.b		nAb3,	$30,	smpsNoAttack,	$18,	nRst,	$06,	nCs4,	$06
	dc.b		$06,	$06,	nAb3,	$30,	smpsNoAttack,	$18,	nRst,	$06
	dc.b		nFs3,	$06,	$06,	nAb3,	nEb3,	$18,	$06,	nE3
	dc.b		nFs3,	nB3,	$06,	smpsNoAttack,	$30
	smpsAlterNote	$02
	smpsAlterVol	$04
	smpsFMvoice	$00
	dc.b		nCs4,	$0C,	$06,	nAb4,	nB4,	nBb4,	$12,	nCs4
	dc.b		$0C,	$06,	nAb4,	nB4,	nBb4
	smpsFMvoice	$04
	smpsAlterNote	$FE
	smpsAlterVol	$FC
	dc.b		smpsF9

	smpsAlterNote	$05
	smpsFMvoice	$0A
	smpsJump	DrWilyStg1_Jump05
	
DrWilyStg1_DAC:
	dc.b		nF0,	$0C,	nFs0,	$06,	nF0,	$03,	nFs0,	$03
	dc.b		nF0,	$03,	nFs0,	$03,	nF0,	$06,	nFs0,	$06
	dc.b		$03,	$03
	smpsCall	DrWilyStg1_DAC_Call
	dc.b		nF0,	$06,	$06,	nFs0,	$06,	$06
	smpsCall	DrWilyStg1_DAC_Call
DrWilyStg1_DAC_Loop01:
	dc.b		nF0,	$03,	nFs0,	$03,	nF0,	$06,	nFs0,	$06
	dc.b		$03,	$03,	nF0,	$0C,	nFs0,	$0C,	nF0,	$06
	dc.b		$06,	nFs0,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop01
DrWilyStg1_DAC_Loop02:
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$06,	nF0,	$03,	nFs0,	$09,	$03,	$03,	nF0
	dc.b		$06,	nFs0,	$06,	nF0,	$03,	nFs0,	$03,	nF0
	dc.b		$06,	nFs0,	$06,	$03,	$03,	nF0,	$0C,	nFs0
	dc.b		$0C,	nF0,	$06,	$06,	nFs0,	$0C
	smpsLoop	$00,	$05,	DrWilyStg1_DAC_Loop02
DrWilyStg1_DAC_Loop03:
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$06,	nF0,	$0C,	$06,	nFs0,	$0C,	nF0,	$06
	dc.b		$06,	nFs0,	$06,	$0C,	nF0,	$06,	nFs0,	$0C
	dc.b		nF0,	$06,	$06,	nFs0,	$06,	$0C,	nF0,	$06
	dc.b		nFs0,	$0C,	nF0,	$06,	$06,	nFs0,	$0C,	nF0
	dc.b		$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop03
DrWilyStg1_DAC_Loop04:
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$03,	nFs0,	$03
	dc.b		nF0,	$06,	nFs0,	$06,	$03,	$03,	nF0,	$0C
	dc.b		nFs0,	$0C,	nF0,	$06,	$06,	nFs0,	$0C
	smpsLoop	$00,	$06,	DrWilyStg1_DAC_Loop04
DrWilyStg1_DAC_Loop05:
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$06,	nF0,	$03,	nFs0,	$09,	$03,	$03,	nF0
	dc.b		$06,	nFs0,	$06,	nF0,	$03,	nFs0,	$03,	nF0
	dc.b		$06,	nFs0,	$06,	$03,	$09,	nF0,	$06,	nFs0
	dc.b		$0C,	nF0,	$06,	$06,	nFs0,	$06,	nF0,	$0C
	dc.b		$06,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0,	$06
	dc.b		nF0,	$0C,	nFs0,	$06,	$0C,	nF0,	$06,	nFs0
	dc.b		$06,	$06,	nF0,	$0C,	nFs0,	$06,	$0C,	nF0
	dc.b		$06,	nFs0,	$06,	$06,	$0C,	nF0,	$06,	nFs0
	dc.b		$0C,	nF0,	$06,	$06,	nFs0,	$06,	nF0,	$0C
	dc.b		$06,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0,	$0C
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$06,	$03,	$03,	nF0,	$03,	nFs0,	$09,	$09
	dc.b		$03,	nF0,	$03,	nFs0,	$03,	nF0,	$06,	nFs0
	dc.b		$06,	$03,	$03
	smpsJump	DrWilyStg1_DAC

DrWilyStg1_DAC_Call:
DrWilyStg1_DAC_Loop06:
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$0C
	smpsLoop	$00,	$05,	DrWilyStg1_DAC_Loop06
	dc.b		nF0,	$0C,	nFs0,	$0C,	nF0,	$06,	$06,	nFs0
	dc.b		$06,	nF0,	$0C,	$06,	nFs0,	$0C,	nF0,	$06
	dc.b		$06,	nFs0,	$06,	nF0,	$0C,	$06,	nFs0,	$0C
	smpsReturn


	smpsPSGvoice	$0D
	dc.b		nRst,	$24,	smpsNoAttack,	$06,	nE2,	$06,	smpsNoAttack,	$30
	dc.b		smpsNoAttack,	$30,	nE2,	$30,	smpsNoAttack,	$30,	nB1,	$18
	dc.b		smpsNoAttack,	$12,	nEb2,	$30,	nCs2,	$30,	smpsNoAttack,	$30
	dc.b		nE2,	$06,	smpsNoAttack,	$30,	smpsNoAttack,	$30,	$30,	smpsNoAttack
	dc.b		$30,	nB1,	$18,	smpsNoAttack,	$12,	nEb2,	$30,	nCs2
	dc.b		$30,	smpsNoAttack,	$30,	smpsNoAttack,	$06
	smpsPSGvoice	$0A
	smpsCall	DrWilyStg1_Call18
	dc.b		$18
	smpsPSGvoice	$0D
	dc.b		nAb2,	$30,	smpsNoAttack,	$30
	smpsCall	DrWilyStg1_Call19
	smpsPSGvoice	$0D
	dc.b		nAb2,	$06,	smpsNoAttack,	$30,	smpsNoAttack,	$30
	smpsCall	DrWilyStg1_Call1A
	dc.b		nCs3
	smpsCall	DrWilyStg1_Call1B
	dc.b		$12
	smpsPSGvoice	$0D
	dc.b		nCs2,	$30,	nEb2,	$30,	nE2,	$30,	$30,	nCs2
	dc.b		$30,	nEb2,	$30,	smpsNoAttack,	$06,	nE2,	$30,	smpsNoAttack
	dc.b		$30,	nE2,	$30,	smpsNoAttack,	$30
	smpsJump	DrWilyStg1_Jump07
	dc.b		nAb2,	$30
	smpsPSGvoice	$0A
	dc.b		nRst,	$06,	nAb2,	nRst,	$0C,	nAb2,	$06,	$12
	smpsPSGvoice	$0D
	dc.b		nB2,	$30,	nRst,	$06
	smpsPSGvoice	$0A
	dc.b		nB2,	nRst,	$0C,	nB2,	$06,	$0C,	nCs3,	$06
	dc.b		smpsNoAttack,	$18,	nRst,	$06,	nCs3,	$06,	$06,	$06
	dc.b		smpsNoAttack,	$18,	nRst,	$06,	nCs3,	nCs3,	smpsF9,	nRst
	dc.b		$06,	nA2,	$12,	$18,	nRst,	$06,	nA2,	nRst
	dc.b		$0C,	nA2,	$06,	$12,	nRst,	$06,	nAb2,	$12
	dc.b		$18,	nRst,	$06,	nAb2,	nRst,	$0C,	nAb2,	$06
	dc.b		$12,	nRst,	$06,	nA2,	$12,	$18,	nRst,	$06
	dc.b		nA2,	nRst,	$0C,	nA2,	$06,	$12,	nRst,	$06
	dc.b		nFs2,	$12,	$12,	nEb2,	$06,	nRst,	nEb2,	nRst
	dc.b		nEb2,	$06,	smpsF9
	smpsPSGvoice	$0D
	smpsAlterNote	$04
	dc.b		nRst,	$24,	smpsNoAttack,	$06,	nE2,	$06,	smpsNoAttack,	$30
	dc.b		smpsNoAttack,	$30,	nE2,	$30,	smpsNoAttack,	$30,	nB1,	$18
	dc.b		smpsNoAttack,	$12,	nEb2,	$30,	nCs2,	$30,	smpsNoAttack,	$30
	dc.b		nE2,	$06,	smpsNoAttack,	$30,	smpsNoAttack,	$30,	$30,	smpsNoAttack
	dc.b		$30,	nB1,	$18,	smpsNoAttack,	$12,	nEb2,	$30,	nCs2
	dc.b		$30,	smpsNoAttack,	$30,	smpsNoAttack,	$06
	smpsPSGvoice	$0A
	smpsAlterNote	$FC
	smpsCall	DrWilyStg1_Call1C
	dc.b		$18
	smpsPSGvoice	$0D
	dc.b		nE2,	$30,	smpsNoAttack,	$30
	smpsCall	DrWilyStg1_Call1D
	smpsPSGvoice	$0D
	dc.b		nE2,	$06,	smpsNoAttack,	$30,	smpsNoAttack,	$30
	smpsCall	DrWilyStg1_Call1E
	dc.b		nAb2
	smpsCall	DrWilyStg1_Call1F
	dc.b		$12
	smpsPSGvoice	$0D
	smpsAlterNote	$04
	dc.b		nCs2,	$30,	nEb2,	$30,	nE2,	$30,	$30,	nCs2
	dc.b		$30,	nEb2,	$30,	smpsNoAttack,	$06
	smpsAlterNote	$FC
	smpsPSGvoice	$0A
	smpsModSet	$01,	$01,	$0F,	$3C
	smpsSetVol	$FF
	dc.b		nRst,	$0C,	nC3,	$03,	$03,	nA2,	nA2,	nE2
	dc.b		nE2,	nC2,	nC2
	smpsSetVol	$01
	dc.b		smpsModOff,	$00,	nRst,	$30,	smpsNoAttack,	$0C
	smpsPSGvoice	$0D
	smpsAlterNote	$04
	dc.b		nE2,	$30,	smpsNoAttack,	$30
	smpsJump	DrWilyStg1_Jump08
	dc.b		nE2,	$30
	smpsPSGvoice	$0A
	dc.b		nRst,	$06,	nE2,	nRst,	$0C,	nE2,	$06,	$12
	smpsPSGvoice	$0D
	dc.b		nFs2,	$30,	nRst,	$06
	smpsPSGvoice	$0A
	dc.b		nFs2,	nRst,	$0C,	nFs2,	$06,	$0C,	nAb2,	$06
	dc.b		smpsNoAttack,	$18,	nRst,	$06,	nAb2,	$06,	$06,	$06
	dc.b		smpsNoAttack,	$18,	nRst,	$06,	nAb2,	nAb2,	smpsF9,	nRst
	dc.b		$06,	nFs2,	$12,	$18,	nRst,	$06,	nFs2,	nRst
	dc.b		$0C,	nFs2,	$06,	$12,	nRst,	$06,	nE2,	$12
	dc.b		$18,	nRst,	$06,	nE2,	nRst,	$0C,	nE2,	$06
	dc.b		$12,	nRst,	$06,	nFs2,	$12,	$18,	nRst,	$06
	dc.b		nFs2,	nRst,	$0C,	nFs2,	$06,	$12,	nRst,	$06
	dc.b		nEb2,	$12,	$12,	nC2,	$06,	nRst,	nC2,	nRst
	dc.b		nC2,	$06,	smpsF9
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b		nRst,	$24,	smpsNoAttack,	$06,	nB6,	$06
	smpsPSGvoice	$01
	dc.b		$06,	$03,	$03
	smpsJump	DrWilyStg1_Jump09
	dc.b		$03,	$00,	nD7,	$33,	$02,	$5F,	nFs2,	$5F
	dc.b		$1F,	$13,	$0F,	$0A,	$0A,	$10,	$0F,	$02
	dc.b		$09,	$35,	$15,	$25,	$1A,	$13,	$16,	$15
	dc.b		nRst,	$3A,	$30,	$07,	$24,	$01,	nEb2,	nFs7
	dc.b		nEb2,	nG7,	$04,	$09,	$00,	$04,	$03,	$0D
	dc.b		$00,	$0E,	$07,	nA2,	$56,	nG1,	$20,	$30
	dc.b		$28,	nRst,	$3E,	$07,	$01,	$02,	$01,	$1F
	dc.b		$1F,	$1F,	$1F,	$0D,	$06,	$00,	$00,	$08
	dc.b		$06,	$00,	$00,	$15,	$0A,	$0A,	$0A,	$1B
	dc.b		nRst,	nRst,	nRst,	$3D,	$35,	$78,	$32,	$71
	dc.b		nBb7,	$1F,	$1F,	$1F,	$12,	$04,	$0F,	$0F
	dc.b		$00,	$00,	$00,	$00,	$2F,	$0F,	$0E,	$0F
	dc.b		$29,	nG2,	nG2,	nRst,	$3D,	$01,	$01,	$01
	dc.b		$01,	nG1,	$19,	$19,	$19,	$0F,	$0D,	$0D
	dc.b		$0D,	$07,	$04,	$04,	$04,	$25,	$1A,	$1A
	dc.b		$1A,	$15,	nRst,	nRst,	nRst,	$3A,	$51,	$65
	dc.b		$61,	$01,	$5B,	$5B,	$56,	$50,	$01,	$01
	dc.b		$01,	$02,	$03,	$00,	$13,	$00,	$58,	$58
	dc.b		nG2,	$3A,	$1D,	$16,	$38,	nRst,	$2A,	$00
	dc.b		$00,	$02,	$02,	$13,	$11,	$14,	$14,	$04
	dc.b		$06,	$05,	$05,	$02,	$00,	$00,	$06,	nEb3
	dc.b		nEb3,	$09,	nA3,	$11,	$0A,	$3E,	nRst,	$34
	dc.b		$00,	$02,	$01,	$01,	$1F,	$1F,	$1F,	$1F
	dc.b		$10,	$06,	$06,	$06,	$01,	$06,	$06,	$06
	dc.b		$35,	$1A,	$15,	$1A,	$10,	nRst,	$18,	nRst
	dc.b		$3C,	$01,	$00,	$00,	$00,	$1F,	$1F,	$15
	dc.b		$1F,	$11,	$0D,	$12,	$05,	$07,	$04,	$09
	dc.b		$02,	$55,	$3A,	$25,	$1A,	$1A,	nRst,	$07
	dc.b		nRst,	$32,	$66,	$39,	$51,	$64,	$1F,	nBb7
	dc.b		$1F,	nFs2,	$0C,	$02,	$0B,	$0B,	$04,	$04
	dc.b		$04,	$01,	$1A
	smpsJump	DrWilyStg1_Jump0A
	dc.b		$20,	$39,	$0B,	nRst,	$3A,	$02,	$02,	$06
	dc.b		$02,	$50,	$19,	$11,	$19,	$04,	$00,	$07
	dc.b		$06,	$06,	$0A,	$0F,	$04,	$26,	nEb4,	nE4
	dc.b		$3D,	$1E,	$16,	$2A,	nRst,	$03,	$02,	$02
	dc.b		$10,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$10,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$10,	$10,	$10,	$10,	$10,	$10,	$10,	$10