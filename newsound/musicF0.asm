; =============================================================================================
; Project Name:		DS_Ending
; Created:		1st March 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

DS_Ending_Header:
	smpsHeaderVoice	DS_Ending_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$03,	$00

	smpsHeaderDAC	DS_Ending_DAC
	smpsHeaderFM	DS_Ending_FM1,	smpsPitch00,	$0A
	smpsHeaderFM	DS_Ending_FM2,	smpsPitch00,	$0E
	smpsHeaderFM	DS_Ending_FM3,	smpsPitch00,	$0C
	smpsHeaderFM	DS_Ending_FM4,	smpsPitch00,	$0E
	smpsHeaderFM	DS_Ending_FM5,	smpsPitch01hi,	$0C
	smpsHeaderPSG	DS_Ending_PSG1,	smpsPitch02lo,	$03,	$0A
	smpsHeaderPSG	DS_Ending_PSG2,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	DS_Ending_PSG3,	smpsPitch00,	$00,	$02

; DAC Data
DS_Ending_DAC:
	smpsCall	DS_Ending_Call01
	smpsCall	DS_Ending_Call02
	smpsCall	DS_Ending_Call03
	smpsCall	DS_Ending_Call04
	smpsCall	DS_Ending_Call05
	smpsCall	DS_Ending_Call06
	smpsCall	DS_Ending_Call01
	smpsCall	DS_Ending_Call02
	smpsCall	DS_Ending_Call03
	smpsCall	DS_Ending_Call04
	smpsCall	DS_Ending_Call05
	smpsCall	DS_Ending_Call06
	smpsCall	DS_Ending_Call07
	smpsCall	DS_Ending_Call08
	smpsStop

DS_Ending_Call01:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	smpsLoop	$00,	$0F,	DS_Ending_Call01
	smpsReturn

DS_Ending_Call02:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$04
	dc.b		dSnare,	dSnare,	dSnare
	smpsReturn

DS_Ending_Call03:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	smpsLoop	$02,	$07,	DS_Ending_Call03
	smpsReturn

DS_Ending_Call04:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$04
	dc.b		dSnare,	dSnare,	dSnare
	smpsReturn

DS_Ending_Call05:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	smpsLoop	$03,	$03,	DS_Ending_Call05
	smpsReturn

DS_Ending_Call06:
	dc.b		dSnare,	$02,	dSnare,	nRst,	dSnare,	dSnare,	nRst,	dSnare
	dc.b		dSnare
	smpsReturn

DS_Ending_Call07:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	smpsLoop	$04,	$13,	DS_Ending_Call07
	smpsReturn

DS_Ending_Call08:
	dc.b		dKick,	$08
	dc.b		dSnare,	$08
	dc.b		dKick,	$08
	dc.b		dSnare,	$04,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

; FM1 Data
DS_Ending_FM1:
	smpsModSet	$1E,	$01,	$05,	$05
	smpsFMvoice	$02
	smpsCall	DS_Ending_Call09
	smpsCall	DS_Ending_Call0A
	smpsCall	DS_Ending_Call0B
	smpsCall	DS_Ending_Call0C
	smpsCall	DS_Ending_Call09
	smpsCall	DS_Ending_Call0A
	smpsCall	DS_Ending_Call0B
	smpsCall	DS_Ending_Call0C
	smpsCall	DS_Ending_Call09
	smpsCall	DS_Ending_Call0A
	smpsCall	DS_Ending_Call0D
	smpsStop

DS_Ending_Call09:
	dc.b		nFs3,	$0C,	nB3,	$04,	nB3,	$20,	nB3,	$04
	dc.b		nCs4,	nEb4,	nE4,	nCs4,	$0C,	nA4,	$04,	nA4
	dc.b		$20,	nB3,	$08,	nCs4,	nEb4,	$0C,	nAb4,	$04
	dc.b		nB3,	$20,	nAb3,	$04,	nBb3,	nB3,	nCs4,	nB3
	dc.b		$10,	nRst,	$04,	nFs4,	$08,	nE4,	$04,	nEb4
	dc.b		$0C,	nCs4,	$04,	smpsNoAttack,	$10
	smpsReturn

DS_Ending_Call0A:
	dc.b		nFs4,	$0C,	nB4,	$04,	nB4,	$20,	nB3,	$04
	dc.b		nCs4,	nEb4,	nE4,	nCs4,	$0C,	nA4,	$04,	nA4
	dc.b		$20,	nB4,	$08,	nCs5,	nB4,	$0C,	nEb4,	$04
	dc.b		nEb4,	$20,	nAb4,	$04,	nEb4,	nBb4,	nB4,	nEb5
	dc.b		$10,	nRst,	$04,	nE5,	$08,	nCs5,	$04,	smpsNoAttack
	dc.b		$20
	smpsReturn

DS_Ending_Call0B:
	dc.b		nFs5,	$08,	nFs5,	$04,	nFs5,	nRst,	nFs5,	$08
	dc.b		nB5,	$0C,	nCs6,	$08,	nA5,	nE5,	nFs5,	$08
	dc.b		nFs5,	$04,	nE5,	nRst,	nD5,	$08,	nE5,	$04
	dc.b		nCs5,	$08,	nA5,	$04,	nA5,	$04,	smpsNoAttack,	$10
	smpsReturn

DS_Ending_Call0C:
	dc.b		nFs5,	$08,	nFs5,	$04,	nFs5,	nRst,	nFs5,	$08
	dc.b		nB5,	$0C,	nCs6,	$08,	nA5,	nE5,	nFs5,	$10
	dc.b		nRst,	$04,	nFs6,	$08,	nE6,	$04,	nD6,	$08
	dc.b		nE6,	$04,	nCs6,	$08,	nB5,	nEb6,	$04,	smpsNoAttack
	dc.b		$20,	smpsNoAttack,	$20
	smpsReturn

DS_Ending_Call0D:
	dc.b		nD5,	$08,	nE5,	$04,	nCs5,	nRst,	nB4,	$08
	dc.b		nD5,	$0C,	nE5,	$04,	nCs5,	$08,	nB4,	nEb5
	dc.b		$04,	smpsNoAttack,	$20,	nRst,	$18,	nB4,	$04,	nB4
	dc.b		nRst,	nB4,	nB4,	$08,	nRst,	$10
	smpsReturn

; FM2 Data
DS_Ending_FM2:
	smpsAlterNote	$03
	smpsModSet	$1E,	$01,	$05,	$05
	smpsFMvoice	$02
	dc.b		nRst,	$04
	smpsCall	DS_Ending_Call0E
	smpsCall	DS_Ending_Call0F
	smpsCall	DS_Ending_Call10
	smpsCall	DS_Ending_Call11
	smpsCall	DS_Ending_Call0E
	smpsCall	DS_Ending_Call0F
	smpsCall	DS_Ending_Call10
	smpsCall	DS_Ending_Call11
	smpsCall	DS_Ending_Call0E
	smpsCall	DS_Ending_Call0F
	smpsCall	DS_Ending_Call12
	smpsStop

DS_Ending_Call0E:
	dc.b		nFs3,	$0C,	nB3,	$04,	nB3,	$20,	nB3,	$04
	dc.b		nCs4,	nEb4,	nE4,	nCs4,	$0C,	nA4,	$04,	nA4
	dc.b		$20,	nB3,	$08,	nCs4,	nEb4,	$0C,	nAb4,	$04
	dc.b		nB3,	$20,	nAb3,	$04,	nBb3,	nB3,	nCs4,	nB3
	dc.b		$10,	nRst,	$04,	nFs4,	$08,	nE4,	$04,	nEb4
	dc.b		$0C,	nCs4,	$04,	smpsNoAttack,	$10
	smpsReturn

DS_Ending_Call0F:
	dc.b		nFs4,	$0C,	nB4,	$04,	nB4,	$20,	nB3,	$04
	dc.b		nCs4,	nEb4,	nE4,	nCs4,	$0C,	nA4,	$04,	nA4
	dc.b		$20,	nB4,	$08,	nCs5,	nB4,	$0C,	nEb4,	$04
	dc.b		nEb4,	$20,	nAb4,	$04,	nEb4,	nBb4,	nB4,	nEb5
	dc.b		$10,	nRst,	$04,	nE5,	$08,	nCs5,	$04,	smpsNoAttack
	dc.b		$20
	smpsReturn

DS_Ending_Call10:
	dc.b		nFs5,	$08,	nFs5,	$04,	nFs5,	nRst,	nFs5,	$08
	dc.b		nB5,	$0C,	nCs6,	$08,	nA5,	nE5,	nFs5,	$08
	dc.b		nFs5,	$04,	nE5,	nRst,	nD5,	$08,	nE5,	$04
	dc.b		nCs5,	$08,	nA5,	$04,	nA5,	$04,	smpsNoAttack,	$10
	smpsReturn

DS_Ending_Call11:
	dc.b		nFs5,	$08,	nFs5,	$04,	nFs5,	nRst,	nFs5,	$08
	dc.b		nB5,	$0C,	nCs6,	$08,	nA5,	nE5,	nFs5,	$10
	dc.b		nRst,	$04,	nFs6,	$08,	nE6,	$04,	nD6,	$08
	dc.b		nE6,	$04,	nCs6,	$08,	nB5,	nEb6,	$04,	smpsNoAttack
	dc.b		$20,	smpsNoAttack,	$20
	smpsReturn

DS_Ending_Call12:
	dc.b		nD5,	$08,	nE5,	$04,	nCs5,	nRst,	nB4,	$08
	dc.b		nD5,	$0C,	nE5,	$04,	nCs5,	$08,	nB4,	nEb5
	dc.b		$04,	smpsNoAttack,	$20,	nRst,	$10,	smpsNoAttack,	$04
	smpsAlterVol	$FD
	dc.b		nFs4,	$04,	nFs4,	nRst,	nFs4,	nFs4,	$08,	nRst
	dc.b		$10
	smpsReturn

; FM3 Data
DS_Ending_FM3:
	smpsPan		panRight,	$00
	smpsFMvoice	$01
	smpsCall	DS_Ending_Call13
	smpsCall	DS_Ending_Call14
	smpsCall	DS_Ending_Call15
	smpsCall	DS_Ending_Call13
	smpsCall	DS_Ending_Call14
	smpsCall	DS_Ending_Call15
	smpsCall	DS_Ending_Call13
	smpsCall	DS_Ending_Call16
	smpsStop

DS_Ending_Call13:
	dc.b		nFs3,	$02,	nB3,	nEb4,	nFs4,	nB3,	nEb4,	nFs4
	dc.b		nB4,	nEb4,	$02,	nFs4,	nB4,	nEb5,	nFs4,	nB4
	dc.b		nEb5,	nFs5,	nB5,	$02,	nFs5,	nEb5,	nB4,	nFs5
	dc.b		nEb5,	nB4,	nFs4,	nEb5,	$02,	nB4,	nFs4,	nEb4
	dc.b		nB4,	nFs4,	nEb4,	nB3,	nE3,	$02,	nA3,	nCs4
	dc.b		nE4,	nA3,	nCs4,	nE4,	nA4,	nCs4,	$02,	nE4
	dc.b		nA4,	nCs5,	nE4,	nA4,	nCs5,	nE5,	nA5,	$02
	dc.b		nE5,	nCs5,	nA4,	nE5,	nCs5,	nA4,	nE4,	nCs5
	dc.b		$02,	nA4,	nE4,	nCs3,	nA4,	nE4,	nCs3,	nA3
	dc.b		nEb3,	$02,	nAb3,	nB3,	nEb4,	nAb3,	nB3,	nEb4
	dc.b		nAb4,	nB3,	$02,	nEb4,	nAb4,	nB4,	nEb4,	nAb4
	dc.b		nB4,	nEb5,	nAb5,	$02,	nEb5,	nB4,	nAb4,	nEb5
	dc.b		nB4,	nAb4,	nEb4,	nB4,	$02,	nAb4,	nEb4,	nB3
	dc.b		nAb4,	nEb4,	nB3,	nAb3,	nB2,	$02,	nE3,	nAb3
	dc.b		nB3,	nE3,	nAb3,	nB3,	nE4,	nAb3,	$02,	nB3
	dc.b		nE4,	nAb4,	nB3,	nE4,	nAb4,	nB4,	nCs3,	$02
	dc.b		nFs3,	nBb3,	nCs4,	nFs3,	nBb3,	nCs4,	nFs4,	nBb3
	dc.b		$02,	nCs4,	nFs4,	nBb4,	nCs4,	nFs4,	nBb4,	nCs5
	smpsLoop	$00,	$02,	DS_Ending_Call13
	smpsReturn

DS_Ending_Call14:
	dc.b		nD3,	$02,	nFs3,	nA3,	nD4,	nFs3,	nA3,	nD4
	dc.b		nFs4,	nA3,	$02,	nD4,	nFs4,	nA4,	nD4,	nFs4
	dc.b		nA4,	nD5,	nFs5,	$02,	nD5,	nA4,	nFs4,	nD5
	dc.b		nA4,	nFs4,	nD4,	nA4,	$02,	nFs4,	nD4,	nA3
	dc.b		nFs4,	nD4,	nA3,	nFs3,	nD3,	$02,	nG3,	nB3
	dc.b		nD4,	nG3,	nB3,	nD4,	nG4,	nB3,	$02,	nD4
	dc.b		nG4,	nB4,	nD4,	nG4,	nB4,	nD5,	nE5,	$02
	dc.b		nCs5,	nA4,	nE4,	nCs5,	nA4,	nE4,	nCs4,	nA4
	dc.b		$02,	nE4,	nCs4,	nA3,	nE4,	nCs4,	nA3,	nE3
	smpsLoop	$01,	$02,	DS_Ending_Call14
	smpsReturn

DS_Ending_Call15:
	dc.b		nFs3,	$02,	nB3,	nEb4,	nFs4,	nB3,	nEb4,	nFs4
	dc.b		nB4,	nEb4,	$02,	nFs4,	nB4,	nEb5,	nFs4,	nB4
	dc.b		nEb5,	nFs5,	nB5,	$02,	nFs5,	nEb5,	nB4,	nFs5
	dc.b		nEb5,	nB4,	nFs4,	nEb5,	$02,	nB4,	nFs4,	nEb4
	dc.b		nB4,	nFs4,	nEb4,	nB3
	smpsReturn

DS_Ending_Call16:
	dc.b		nD3,	$02,	nG3,	nB3,	nD4,	nG3,	nB3,	nD4
	dc.b		nG4,	nB3,	$02,	nD4,	nG4,	nB4,	nD4,	nG4
	dc.b		nB4,	nD5,	nE3,	$02,	nA3,	nCs4,	nE4,	nA3
	dc.b		nCs4,	nE4,	nA4,	nCs4,	$02,	nE4,	nA4,	nCs5
	dc.b		nE4,	nA4,	nCs5,	nE5,	nB2,	$02,	nEb3,	nFs3
	dc.b		nB3,	nEb3,	nFs3,	nB3,	nEb4,	nFs3,	$02,	nB3
	dc.b		nEb4,	nFs4,	nB3,	nEb4,	nFs4,	nB4,	nB2,	$02
	dc.b		nEb3,	nFs3,	nB3,	nEb3,	nFs3,	nB3,	nEb4,	nFs3
	dc.b		$02,	nB3,	nEb4,	nFs4,	nFs4,	$04,	nFs4,	nRst
	dc.b		nFs4,	nFs4,	$08,	nRst,	$10
	smpsReturn

; FM4 Data
DS_Ending_FM4:
	smpsPan		panLeft,	$00
	smpsFMvoice	$01
	smpsCall	DS_Ending_Call17
	smpsCall	DS_Ending_Call18
	smpsCall	DS_Ending_Call19
	smpsCall	DS_Ending_Call17
	smpsCall	DS_Ending_Call18
	smpsCall	DS_Ending_Call19
	smpsCall	DS_Ending_Call17
	smpsCall	DS_Ending_Call1A
	smpsStop

DS_Ending_Call17:
	dc.b		nRst,	$02,	nFs3,	$02,	nB3,	nEb4,	nFs4,	nB3
	dc.b		nEb4,	nFs4,	nB4,	nEb4,	$02,	nFs4,	nB4,	nEb5
	dc.b		nFs4,	nB4,	nEb5,	nFs5,	nB5,	$02,	nFs5,	nEb5
	dc.b		nB4,	nFs5,	nEb5,	nB4,	nFs4,	nEb5,	$02,	nB4
	dc.b		nFs4,	nEb4,	nB4,	nFs4,	nEb4,	nB3,	nE3,	$02
	dc.b		nA3,	nCs4,	nE4,	nA3,	nCs4,	nE4,	nA4,	nCs4
	dc.b		$02,	nE4,	nA4,	nCs5,	nE4,	nA4,	nCs5,	nE5
	dc.b		nA5,	$02,	nE5,	nCs5,	nA4,	nE5,	nCs5,	nA4
	dc.b		nE4,	nCs5,	$02,	nA4,	nE4,	nCs3,	nA4,	nE4
	dc.b		nCs3,	nA3,	nEb3,	$02,	nAb3,	nB3,	nEb4,	nAb3
	dc.b		nB3,	nEb4,	nAb4,	nB3,	$02,	nEb4,	nAb4,	nB4
	dc.b		nEb4,	nAb4,	nB4,	nEb5,	nAb5,	$02,	nEb5,	nB4
	dc.b		nAb4,	nEb5,	nB4,	nAb4,	nEb4,	nB4,	$02,	nAb4
	dc.b		nEb4,	nB3,	nAb4,	nEb4,	nB3,	nAb3,	nB2,	$02
	dc.b		nE3,	nAb3,	nB3,	nE3,	nAb3,	nB3,	nE4,	nAb3
	dc.b		$02,	nB3,	nE4,	nAb4,	nB3,	nE4,	nAb4,	nB4
	dc.b		nCs3,	$02,	nFs3,	nBb3,	nCs4,	nFs3,	nBb3,	nCs4
	dc.b		nFs4,	nBb3,	$02,	nCs4,	nFs4,	nBb4,	nCs4,	nFs4
	dc.b		nBb4
	smpsLoop	$00,	$02,	DS_Ending_Call17
	smpsReturn

DS_Ending_Call18:
	dc.b		nRst,	$02,	nD3,	$02,	nFs3,	nA3,	nD4,	nFs3
	dc.b		nA3,	nD4,	nFs4,	nA3,	$02,	nD4,	nFs4,	nA4
	dc.b		nD4,	nFs4,	nA4,	nD5,	nFs5,	$02,	nD5,	nA4
	dc.b		nFs4,	nD5,	nA4,	nFs4,	nD4,	nA4,	$02,	nFs4
	dc.b		nD4,	nA3,	nFs4,	nD4,	nA3,	nFs3,	nD3,	$02
	dc.b		nG3,	nB3,	nD4,	nG3,	nB3,	nD4,	nG4,	nB3
	dc.b		$02,	nD4,	nG4,	nB4,	nD4,	nG4,	nB4,	nD5
	dc.b		nE5,	$02,	nCs5,	nA4,	nE4,	nCs5,	nA4,	nE4
	dc.b		nCs4,	nA4,	$02,	nE4,	nCs4,	nA3,	nE4,	nCs4
	dc.b		nA3
	smpsLoop	$01,	$02,	DS_Ending_Call18
	smpsReturn

DS_Ending_Call19:
	dc.b		nRst,	$02,	nFs3,	$02,	nB3,	nEb4,	nFs4,	nB3
	dc.b		nEb4,	nFs4,	nB4,	nEb4,	$02,	nFs4,	nB4,	nEb5
	dc.b		nFs4,	nB4,	nEb5,	nFs5,	nB5,	$02,	nFs5,	nEb5
	dc.b		nB4,	nFs5,	nEb5,	nB4,	nFs4,	nEb5,	$02,	nB4
	dc.b		nFs4,	nEb4,	nB4,	nFs4,	nEb4
	smpsReturn

DS_Ending_Call1A:
	dc.b		nRst,	$02,	nD3,	$02,	nG3,	nB3,	nD4,	nG3
	dc.b		nB3,	nD4,	nG4,	nB3,	$02,	nD4,	nG4,	nB4
	dc.b		nD4,	nG4,	nB4,	nD5,	nE3,	$02,	nA3,	nCs4
	dc.b		nE4,	nA3,	nCs4,	nE4,	nA4,	nCs4,	$02,	nE4
	dc.b		nA4,	nCs5,	nE4,	nA4,	nCs5,	nE5,	nB2,	$02
	dc.b		nEb3,	nFs3,	nB3,	nEb3,	nFs3,	nB3,	nEb4,	nFs3
	dc.b		$02,	nB3,	nEb4,	nFs4,	nB3,	nEb4,	nFs4,	nB4
	dc.b		nB2,	$02,	nEb3,	nFs3,	nB3,	nEb3,	nFs3,	nB3
	dc.b		nEb4,	nFs3,	$02,	nB3,	nEb4,	nFs4,	$04,	nFs4
	dc.b		nRst,	nFs4,	nFs4,	$08,	nRst,	$10
	smpsReturn

; FM5 Data
DS_Ending_FM5:
	smpsFMvoice	$00
	smpsCall	DS_Ending_Call1B
	smpsCall	DS_Ending_Call1C
	smpsCall	DS_Ending_Call1D
	smpsCall	DS_Ending_Call1B
	smpsCall	DS_Ending_Call1C
	smpsCall	DS_Ending_Call1D
	smpsCall	DS_Ending_Call1B
	smpsCall	DS_Ending_Call1E
	smpsStop

DS_Ending_Call1B:
	dc.b		nB1,	$04,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1,	nA1,	$04,	nA1,	nA1,	nA1,	nA1,	nA1
	dc.b		nA1,	nA1,	nA1,	nA1,	nA1,	nA1,	nA1,	nA1
	dc.b		nA1,	nA1,	nAb1,	$04,	nAb1,	nAb1,	nAb1,	nAb1
	dc.b		nAb1,	nAb1,	nAb1,	nAb1,	nAb1,	nAb1,	nAb1,	nAb1
	dc.b		$04,	nAb1,	nAb1,	nAb1,	nE1,	$04,	nE1,	nE1
	dc.b		nE1,	nE1,	nE1,	nE1,	nE1,	nFs1,	$04,	nFs1
	dc.b		nFs1,	nFs1,	nFs1,	nFs1,	nFs1,	nFs1
	smpsLoop	$00,	$02,	DS_Ending_Call1B
	smpsReturn

DS_Ending_Call1C:
	dc.b		nD1,	$04,	nD1,	nD1,	nD1,	nD1,	nD1,	nD1
	dc.b		nD1,	nD1,	nD1,	nD1,	nD1,	nD1,	nD1,	nD1
	dc.b		nD1,	nG1,	$04,	nG1,	nG1,	nG1,	nG1,	nG1
	dc.b		nG1,	nG1,	nA1,	$04,	nA1,	nA1,	nA1,	nA1
	dc.b		nA1,	nA1,	nA1
	smpsLoop	$01,	$02,	DS_Ending_Call1C
	smpsReturn

DS_Ending_Call1D:
	dc.b		nB1,	$04,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1
	smpsReturn

DS_Ending_Call1E:
	dc.b		nG1,	$04,	nG1,	nG1,	nG1,	nG1,	nG1,	nG1
	dc.b		nG1,	nA1,	$04,	nA1,	nA1,	nA1,	nA1,	nA1
	dc.b		nA1,	nA1,	nB1,	$04,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1,	nB1
	dc.b		nB1
	smpsAlterVol	$FD
	dc.b		nB1,	$04,	nB1,	nRst,	nB1,	nB1,	$08,	nRst
	dc.b		$10
	smpsReturn

; PSG1 Data
DS_Ending_PSG1:
	smpsCall	DS_Ending_Call1F
	smpsCall	DS_Ending_Call20
	smpsCall	DS_Ending_Call21
	smpsCall	DS_Ending_Call22
	smpsCall	DS_Ending_Call23
	smpsCall	DS_Ending_Call20
	smpsCall	DS_Ending_Call21
	smpsCall	DS_Ending_Call22
	smpsCall	DS_Ending_Call23
	smpsCall	DS_Ending_Call20
	smpsCall	DS_Ending_Call24
	smpsStop

DS_Ending_Call1F:
	dc.b		nEb4,	$20,	smpsNoAttack,	$10,	nEb4,	$08,	nEb4,	nE4
	dc.b		$20,	smpsNoAttack,	$20
	smpsReturn

DS_Ending_Call20:
	dc.b		nEb4,	$20,	smpsNoAttack,	$20,	nEb4,	$20,	nCs4,	$10
	dc.b		nFs4,	$08,	nE4,	nEb4,	$20,	smpsNoAttack,	$20,	nE4
	dc.b		$20,	smpsNoAttack,	$20,	nEb4,	$20,	smpsNoAttack,	$20,	nB3
	dc.b		$20,	nCs4,	$10,	nFs4,	$08,	nE4
	smpsReturn

DS_Ending_Call21:
	dc.b		nD4,	$20,	nCs4,	$10,	nFs4,	$08,	nE4,	nB3
	dc.b		$20,	nCs4,	$10,	nFs4,	$08,	nE4
	smpsLoop	$00,	$02,	DS_Ending_Call21
	smpsReturn

DS_Ending_Call22:
	dc.b		nEb4,	$20,	nE4,	$08,	nFs4,	nAb4,	nBb4
	smpsReturn

DS_Ending_Call23:
	dc.b		nB4,	$20,	smpsNoAttack,	$10,	nFs4,	$08,	nEb4,	nE4
	dc.b		$20,	smpsNoAttack,	$20
	smpsReturn

DS_Ending_Call24:
	dc.b		nD4,	$20,	nE4,	$10,	nD4,	$08,	nE4,	nFs4
	dc.b		$20,	smpsNoAttack,	$18,	nEb4,	$04,	nEb4,	nRst,	nEb4
	dc.b		nEb4,	$08,	nRst,	$10
	smpsReturn

; PSG2 Data
DS_Ending_PSG2:
	smpsStop

; PSG3 Data
DS_Ending_PSG3:
        smpsPSGform	$E7
	smpsCall	@1
	smpsCall	@2
	smpsCall	@3
	smpsCall	@4
	smpsCall	@5
	smpsCall	@6
	smpsCall	@1
	smpsCall	@2
	smpsCall	@3
	smpsCall	@4
	smpsCall	@5
	smpsCall	@6
	smpsCall	@7
	smpsCall	@8
	smpsStop

@1:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5
	smpsLoop	$00,	$0F,	@1
	smpsReturn
@2:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$04
	dc.b		nRst,	nRst,	nRst
	smpsReturn
@3:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5
	smpsLoop	$02,	$07,	@3
	smpsReturn
@4:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$04
	dc.b		nRst,	nRst,	nRst
	smpsReturn
@5:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5
	smpsLoop	$03,	$03,	@5
	smpsReturn
@6:	dc.b		nRst,	$02,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst
	smpsReturn
@7:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5
	smpsLoop	$04,	$13,	@7
	smpsReturn
@8:	dc.b		nRst,	$04,	nA5,	$02,	nA5
	dc.b		nRst,	$04
	dc.b		nA5,	$02,	nA5,	nRst,	$02
	dc.b		nA5,	nA5,	nA5
	dc.b		nRst,	$04,	nRst,	nRst,	nRst,	nRst
	smpsReturn


DS_Ending_Voices:
	dc.b		$13,$66,$40,$40,$31,$1F,$1F,$1F,$1F,$12,$05,$02,$01,$01,$00,$04
	dc.b		$06,$AA,$6A,$16,$18,$19,$21,$1C,$80;			Voice 00
	dc.b		$3A,$75,$3F,$61,$31,$5A,$1A,$1C,$98,$0A,$10,$10,$0B,$00,$00,$00
	dc.b		$00,$52,$C8,$34,$66,$1E,$1A,$1E,$80;			Voice 01
	dc.b		$3A,$31,$27,$41,$61,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$F3,$13,$0A,$17,$23,$23,$80;			Voice 02
	even
