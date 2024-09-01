; =============================================================================================
; Project Name:		ChaosAngel
; Created:		16th February 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ChaosAngel_Header:
	smpsHeaderVoice	ChaosAngel_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	ChaosAngel_DAC
	smpsHeaderFM	ChaosAngel_FM1,	smpsPitch00,	$08
	smpsHeaderFM	ChaosAngel_FM2,	smpsPitch00,	$0F
	smpsHeaderFM	ChaosAngel_FM3,	smpsPitch00,	$0E
	smpsHeaderFM	ChaosAngel_FM4,	smpsPitch00,	$08
	smpsHeaderFM	ChaosAngel_FM5,	smpsPitch00,	$0E
	smpsHeaderPSG	ChaosAngel_PSG1,smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	ChaosAngel_PSG2,smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	ChaosAngel_PSG3,smpsPitch00,	$00,	$02

; DAC Data
ChaosAngel_DAC:
	smpsPan		panCentre,	$00
	dc.b		dOrchitD,	$24,	$09,	$33,	$18,	$18,	$0C,	$0C
	dc.b		$0C,	$0C,	dOrchitG,	dKick,	dKick,	dKick,	dOrchitEf,	dKick
	dc.b		dKick,	dKick,	dOrchitF,	dKick,	dKick,	dKick,	dOrchitE,	dKick
	dc.b		dKick,	dKick,	$06,	$03,	$03,	dOrchitG,	$0C,	dKick
	dc.b		dKick,	dKick,	dOrchitEf,	dKick,	dKick,	dKick,	dOrchitF,	dKick
	dc.b		dKick,	dKick,	dOrchitE,	dKick,	dKick,	dKick,	$06,	$06
	dc.b		dOrchitG
ChaosAngel_Loop01:
	dc.b		$0C,	dKick
	smpsLoop	$00,	$07,	ChaosAngel_Loop01
	dc.b		dKick,	dKick,	$06,	$03,	$03
ChaosAngel_Loop02:
	dc.b		$0C
	smpsLoop	$00,	$0E,	ChaosAngel_Loop02
	dc.b		$06,	$06,	$06,	$03,	$03,	dOrchitG,	$0C,	dKick
	dc.b		dKick,	dKick,	dOrchitEf,	dKick,	dKick,	dKick,	$94,	dKick
	dc.b		dKick,	dKick,	dOrchitE,	dKick,	dKick,	dKick,	$06,	$03
	dc.b		$03
ChaosAngel_Loop03:
	dc.b		$0C
	smpsLoop	$00,	$0C,	ChaosAngel_Loop03
	dc.b		dOrchitG,	$18,	dOrchitF,	dOrchitDf,	dOrchitD,	dOrchitG,	dOrchitF,	dOrchitDf
	dc.b		dOrchitD,	$0C,	dKick,	$06,	$06,	dOrchitG,	$0C,	dKick
	dc.b		dOrchitF,	dKick,	dOrchitDf,	dKick,	dOrchitD,	dKick,	dOrchitG,	dKick
	dc.b		dOrchitF,	dKick,	dOrchitDf,	dKick,	dOrchitD,	dKick,	$03,	$03
	dc.b		$03
ChaosAngel_Loop04:
	dc.b		$53,	nRst
	smpsLoop	$00,	$04,	ChaosAngel_Loop04
	dc.b		nRst,	dKick,	$06,	$06,	$06,	$06,	dOrchitF,	$0C
	dc.b		dKick,	dKick,	dKick,	dOrchitG,	dKick,	dKick,	dKick,	$93
	dc.b		dKick,	dKick,	dKick,	$18,	$0C,	$0C,	$06,	$03
	dc.b		$03,	dOrchitE,	$0C,	dKick,	dKick,	dKick,	dOrchitF,	dKick
	dc.b		dKick,	dKick,	$93,	dKick,	dKick,	dKick,	dKick,	dKick
	dc.b		dKick,	dKick,	$06,	$03,	$03,	dOrchitF,	$0C,	dKick
	dc.b		dKick,	dKick,	dOrchitG,	dKick,	dKick,	dKick,	$93,	dKick
	dc.b		dKick,	dKick,	dKick,	dKick,	dKick,	dKick,	$06,	$03
	dc.b		$03,	dOrchitE,	$0C,	dKick,	dKick,	dKick,	dOrchitF,	dKick
	dc.b		dKick,	dKick,	$93,	dKick,	dKick,	dKick,	dKick,	dKick
	dc.b		dKick,	dKick,	$03,	$03,	$03,	$03,	dOrchitG,	$0C
	dc.b		dKick,	dOrchitF,	dKick,	dOrchitDf,	dKick,	dOrchitD,	dKick,	dOrchitG
	dc.b		dKick,	dOrchitF,	dKick,	dOrchitDf,	dKick,	dOrchitD,	dKick,	$03
	dc.b		$03,	$03,	$03,	dOrchitG,	$06,	dKick,	dKick,	dKick
	dc.b		dOrchitF,	dKick,	dKick,	dKick,	dOrchitDf,	dKick,	dKick,	dKick
	dc.b		dOrchitD,	dKick,	dKick,	dKick,	dOrchitG
ChaosAngel_Loop05:
	dc.b		$03,	dKick
	smpsLoop	$00,	$04,	ChaosAngel_Loop05
	dc.b		dOrchitF
ChaosAngel_Loop06:
	dc.b		dKick
	smpsLoop	$00,	$07,	ChaosAngel_Loop06
	dc.b		dOrchitDf
ChaosAngel_Loop07:
	dc.b		dKick
	smpsLoop	$00,	$07,	ChaosAngel_Loop07
	dc.b		dOrchitD
ChaosAngel_Loop08:
	dc.b		dKick
	smpsLoop	$00,	$07,	ChaosAngel_Loop08
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
ChaosAngel_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nA4,	$03,	nBb4,	nCs5,	nD5,	nBb5,	nA5,	nG5
	dc.b		nA5,	nG5,	nF5,	nG5,	nE5,	nD5,	nCs5,	nE5
	dc.b		nBb5,	nD6,	$02,	nCs6,	nD6,	nA5,	nG5,	nA5
	dc.b		nF5,	$03,	nE5,	nF5,	nD5,	nE5,	nF5,	nG5
	dc.b		nBb5,	nCs6,	nD6,	nE6,	nCs6
ChaosAngel_Loop09:
	dc.b		nD6,	$02,	nE6
	smpsLoop	$00,	$0B,	ChaosAngel_Loop09
	dc.b		nD6,	nE6,	$03
ChaosAngel_Loop0A:
	dc.b		nRst,	$59
	smpsLoop	$00,	$07,	ChaosAngel_Loop0A
	dc.b		nC5,	$03,	nBb4,	nC5,	nD5,	nA5,	nC5,	nG5
	dc.b		nC5,	nF5,	nC5,	nEb5,	nA4,	nD5,	nCs5,	nF5
	dc.b		nEb5,	nD6,	$02,	nC6,	nD6,	nBb5,	nA5,	nBb5
	dc.b		nF5,	$03,	nE5,	nF5,	nD5,	nE5,	nF5,	nG5
	dc.b		nBb5,	nC6,	nD6,	nF6,	nD6
ChaosAngel_Loop0B:
	dc.b		nD6,	$02,	nEb6
	smpsLoop	$00,	$09,	ChaosAngel_Loop0B
	dc.b		nD6,	$03,	nC6,	nBb5,	nA5,	$02,	nRst,	$01
	dc.b		nFs5,	$03,	nG5,	nD6,	nD5,	nEb5,	nBb5,	nC5
	dc.b		nD5,	nA5,	nG5,	nFs5,	nEb5,	nD5,	nC5,	nBb4
	dc.b		nA4,	nRst,	$7F,	$41,	nC5,	$03,	nBb4,	nC5
	dc.b		nD5,	nA5,	nC5,	nG5,	nC5,	nF5,	nC5,	nEb5
	dc.b		nA4,	nD5,	nCs5,	nF5,	nEb5,	nD6,	$02,	nC6
	dc.b		nD6,	nBb5,	nA5,	nBb5,	nF5,	$03,	nE5,	nF5
	dc.b		nD5,	nE5,	nF5,	nG5,	nBb5,	nC6,	nD6,	nF6
	dc.b		nD6
ChaosAngel_Loop0C:
	dc.b		nD6,	$02,	nEb6
	smpsLoop	$00,	$09,	ChaosAngel_Loop0C
	dc.b		nD6,	$03,	nC6,	nBb5,	nA5,	$02,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$7F,	$3E
	smpsPan		panLeft,	$00
	dc.b		$0C,	nG5,	$03,	nD6,	nG6,	nD6,	nRst,	$0C
	dc.b		nG5,	$03,	nD6,	nG6,	nRst,	$0F,	nG5,	$03
	dc.b		nD6,	nG6,	nD6,	nRst,	$0C,	nFs6,	$03,	nD6
	dc.b		nC6,	nBb5,	nRst,	$0C,	nG5,	$03,	nD6,	nG6
	dc.b		nD6,	nRst,	$0C,	nG5,	$03,	nD6,	nG6,	nRst
	dc.b		$0F,	nG5,	$03,	nD6,	nG6,	nD6,	nRst,	$0C
	dc.b		nFs6,	$03,	nD6,	nC6,	nBb5,	nFs4,	$2E,	nRst
	dc.b		$02,	nEb4,	$2E,	nRst,	$02,	nG4,	$2E,	nRst
	dc.b		$02,	nBb3,	$2E,	nRst,	$02,	nD4,	$30,	nA3
	dc.b		$18,	$18,	nF4,	$16,	nRst,	$02,	nA3,	$16
	dc.b		nRst,	$02,	nEb4,	$2E,	nRst,	$02,	nFs4,	$2E
	dc.b		nRst,	$02,	nEb4,	$2E,	nRst,	$02,	nG4,	$2E
	dc.b		nRst,	$02,	nBb3,	$2E,	nRst,	$02,	nFs4,	$30
	dc.b		nAb3,	$18,	nD4,	nG4,	$16,	nRst,	$02,	nE4
	dc.b		$16,	nRst,	$02,	nE4,	$18
ChaosAngel_Loop0D:
	dc.b		nRst,	$53
	smpsLoop	$00,	$0C,	ChaosAngel_Loop0D
	dc.b		nG5,	$03,	nD6,	nG6,	nD6,	nRst,	$0C,	nG5
	dc.b		$03,	nD6,	nG6,	nRst,	$0F,	nG5,	$03,	nD6
	dc.b		nG6,	nD6,	nRst,	$0C,	nFs6,	$03,	nD6,	nC6
	dc.b		nBb5,	nRst,	$0C,	nG5,	$03,	nD6,	nG6,	nD6
	dc.b		nRst,	$0C,	nG5,	$03,	nD6,	nG6,	nRst,	$0F
	dc.b		nG5,	$03,	nD6,	nG6,	nD6,	nRst,	$0C,	nFs6
	dc.b		$03,	nD6,	nC6,	nBb5
	smpsPan		panLeft,	$00
	smpsFMvoice	$00
	smpsStop

; FM2 Data
ChaosAngel_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$41,	nBb4,	$7F,	smpsNoAttack,	$11,	nC5
	dc.b		$2E,	nRst,	$02,	nBb4,	$7F,	smpsNoAttack,	$11,	nC5
	dc.b		$2E,	nRst,	$7F,	$7F,	$7F,	$05,	nBb4,	$7F
	dc.b		smpsNoAttack,	$11,	nC5,	$2E,	nRst,	$02,	nBb4,	$2E
	dc.b		nRst,	$02,	nBb4,	$16,	nRst,	$02,	nBb4,	$2E
	dc.b		nRst,	$02,	nD5,	$16,	nRst,	$02
ChaosAngel_Loop0E:
	dc.b		nBb4,	$06,	$06,	nRst,	$0C
	smpsLoop	$00,	$03,	ChaosAngel_Loop0E
	dc.b		nCs5,	$06,	nBb4,	nRst,	$0C
	smpsLoop	$01,	$03,	ChaosAngel_Loop0E
ChaosAngel_Loop0F:
	dc.b		nBb4,	$06,	$06,	nRst,	$0C
	smpsLoop	$00,	$03,	ChaosAngel_Loop0F
	dc.b		nCs5,	$06,	nBb4
ChaosAngel_Loop10:
	dc.b		nRst,	$4E
	smpsLoop	$00,	$0A,	ChaosAngel_Loop10
ChaosAngel_Loop11:
	dc.b		nAb4,	$2E,	nRst,	$02,	nBb4,	$2E,	nRst,	$02
	dc.b		nC5,	$2E,	nRst,	$02,	nA4,	$2E,	nRst,	$02
	dc.b		nC5,	$2E,	nRst,	$02,	nCs5,	$2E,	nRst,	$02
	dc.b		nB4,	$60
	smpsLoop	$00,	$02,	ChaosAngel_Loop11
ChaosAngel_Loop12:
	dc.b		nBb4,	$06,	$06,	nRst,	$0C
	smpsLoop	$00,	$03,	ChaosAngel_Loop12
	dc.b		nCs5,	$06,	nBb4,	nRst,	$0C
	smpsLoop	$01,	$04,	ChaosAngel_Loop12
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	smpsStop

; FM3 Data
ChaosAngel_FM3:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$41,	nG4,	$2E,	nRst,	$02,	nFs4
	dc.b		$14,	nRst,	$04,	nD4,	$0C,	nE4,	nF4,	$20
	dc.b		nRst,	$04,	nG4,	$0C,	nE4,	$2A,	nRst,	$06
	dc.b		nG4,	$2E,	nRst,	$02,	nFs4,	$14,	nRst,	$04
	dc.b		nD4,	$0C,	nE4,	nF4,	$20,	nRst,	$04,	nG4
	dc.b		$0C,	nE4,	$2A,	nRst,	$7F,	$47,	nA3,	$17
	dc.b		nD4,	$18,	nRst,	$01,	nC4,	$17,	nBb3,	$14
	dc.b		nRst,	$05,	nG4,	$30,	nRst,	$7F,	$71,	nA3
	dc.b		$17,	nD4,	$18,	nRst,	$01,	nC4,	$17,	nBb3
	dc.b		$16,	nRst,	$03,	nFs4,	$2D,	nRst,	$7F,	$44
ChaosAngel_Loop13:
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$0D
	smpsLoop	$00,	$03,	ChaosAngel_Loop13
	dc.b		nA4,	$05,	nRst,	$01,	nFs4,	$05
ChaosAngel_Loop14:
	dc.b		nRst,	$0D,	nG4,	$05,	nRst,	$01,	nG4,	$05
	smpsLoop	$00,	$03,	ChaosAngel_Loop14
	dc.b		nRst,	$0D,	nA4,	$05,	nRst,	$01,	nFs4,	$05
ChaosAngel_Loop15:
	dc.b		nRst,	$47
	smpsLoop	$00,	$0B,	ChaosAngel_Loop15
	dc.b		nF4,	$2E,	nRst,	$02,	nG4,	$60,	nD4,	$2E
	dc.b		nRst,	$02,	nA4,	$2E,	nRst,	$02,	nBb4,	$48
	dc.b		nAb4,	$16,	nRst,	$02,	nF4,	$16,	nRst,	$02
	dc.b		nCs4,	$16,	nRst,	$02,	nF4,	$2E,	nRst,	$02
	dc.b		nG4,	$16,	nRst,	$02,	nC5,	$16,	nRst,	$02
	dc.b		nG4,	$2C,	nRst,	$04,	nD4,	$16,	nRst,	$02
	dc.b		nF4,	$16,	nRst,	$02,	nA4,	$2E,	nRst,	$02
	dc.b		nBb4,	$16,	nRst,	$02,	nCs5,	$16,	nRst,	$02
	dc.b		nEb5,	$16,	nRst,	$02,	nCs5,	$16,	nRst,	$02
	dc.b		nF5,	$16,	nRst,	$02,	nCs5,	$16,	nRst,	$02
ChaosAngel_Loop16:
	dc.b		nG4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$0D
	smpsLoop	$00,	$03,	ChaosAngel_Loop16
	dc.b		nA4,	$05,	nRst,	$01,	nFs4,	$05,	nRst,	$0D
	smpsLoop	$01,	$04,	ChaosAngel_Loop16
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	smpsStop

; FM4 Data
ChaosAngel_FM4:
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	dc.b		nRst,	$7F,	$41,	nG4,	$03,	nRst,	nG5,	$06
	dc.b		nRst,	$03,	nG4,	nD5,	$06,	nBb4,	$03,	nA4
	dc.b		nG4,	nA4,	nBb4,	nC5,	nD5,	nG5,	nFs4,	nRst
	dc.b		nFs5,	$06,	nRst,	$03,	nFs4,	nD5,	$06,	nBb4
	dc.b		$03,	nA4,	nFs4,	nA4,	nBb4,	nC5,	nD5,	nFs5
	dc.b		nF4,	nRst,	nF5,	$06,	nRst,	$03,	nF4,	nD5
	dc.b		$06,	nBb4,	$03,	nA4,	nF4,	nA4,	nBb4,	nC5
	dc.b		nD5,	nF5,	nBb5,	$06,	nA5,	$03,	nG5,	nRst
	dc.b		nBb5,	nE5,	nRst,	nD5,	$02,	nE5,	nD6,	nC5
	dc.b		nE5,	nC6,	nBb4,	nE5,	nBb5,	nC5,	nE5,	nC6
	dc.b		nD5,	$03,	nRst,	nD6,	$06,	nRst,	$03,	nD5
	dc.b		nC6,	$06,	nD6,	$03,	nC6,	nBb5,	nC6,	nG5
	dc.b		nA5,	nBb5,	nD6,	nD5,	nRst,	nD6,	$06,	nRst
	dc.b		$03,	nD5,	nC6,	$06,	nD6,	$03,	nC6,	nBb5
	dc.b		nC6,	nFs5,	nA5,	nBb5,	nD6,	nD5,	nRst,	nD6
	dc.b		$06,	nRst,	$03,	nD5,	nC6,	$06,	nD6,	$03
	dc.b		nC6,	nBb5,	nC6,	nG5,	nA5,	nBb5,	nD6,	$09
	dc.b		nC6,	$03,	nBb5,	nRst,	nD6,	nBb5,	nRst,	nG5
	dc.b		$02,	nBb5,	nG6,	nF5,	nBb5,	nF6,	nE5,	nBb5
	dc.b		nE6,	nG5,	nBb5,	nG6,	$01,	nD4,	$08,	nRst
	dc.b		$02,	nG4,	$08,	nRst,	$01,	nFs4,	$02,	nRst
	dc.b		$01,	nG4,	$02,	nD4,	$0B,	nRst,	$02,	nG4
	dc.b		$0B,	nD4,	$08,	nRst,	$02,	nG4,	$08,	nRst
	dc.b		$01,	nFs4,	$02,	nRst,	$01,	nG4,	$02,	nRst
	dc.b		$01,	nA4,	$0B,	nRst,	$01,	nC5,	$0B,	nD4
	dc.b		$08,	nRst,	$02,	nG4,	$08,	nRst,	$01,	nBb4
	dc.b		$02,	nRst,	$01,	nC5,	$02,	nRst,	$01,	nD5
	dc.b		$0B,	nRst,	$01,	nF4,	$0B,	nRst,	$01,	nG4
	dc.b		$08,	nRst,	$04,	nD5,	$05,	nRst,	$01,	nC5
	dc.b		$05,	nRst,	$07,	nBb4,	$0B,	nRst,	$01,	nA4
	dc.b		$05,	nRst,	$01,	nF4,	$0B,	nRst,	$01,	nEb5
	dc.b		$05,	nRst,	$01,	nD5,	$0B,	nRst,	$01,	nF5
	dc.b		$0B,	nRst,	$01,	nD5,	$0B,	nRst,	$07,	nC5
	dc.b		$05,	nRst,	$01,	nBb4,	$0B,	nRst,	$01,	nD5
	dc.b		$0B,	nRst,	$07,	nA4,	$0B,	nRst,	$01,	nBb4
	dc.b		$05,	nRst,	$01,	nA4,	$0B,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$01,	nEb4,	$04,	nRst,	$01,	nD4
	dc.b		$06,	nRst,	$30,	nD4,	$08,	nRst,	$02,	nG4
	dc.b		$08,	nRst,	$01,	nFs4,	$02,	nRst,	$01,	nG4
	dc.b		$02,	nD4,	$0B,	nRst,	$02,	nG4,	$0B,	nD4
	dc.b		$08,	nRst,	$02,	nG4,	$08,	nRst,	$01,	nFs4
	dc.b		$02,	nRst,	$01,	nG4,	$02,	nRst,	$01,	nA4
	dc.b		$0B,	nRst,	$01,	nC5,	$0B,	nD4,	$08,	nRst
	dc.b		$02,	nG4,	$08,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nC5,	$02,	nRst,	$01,	nD5,	$0B,	nRst
	dc.b		$01,	nF4,	$0B,	nRst,	$01,	nG4,	$08,	nRst
	dc.b		$04,	nD5,	$05,	nRst,	$01,	nC5,	$05,	nRst
	dc.b		$07,	nBb4,	$0B,	nRst,	$01,	nA4,	$05,	nRst
	dc.b		$01,	nF4,	$0B,	nRst,	$01,	nEb5,	$05,	nRst
	dc.b		$01,	nD5,	$0B,	nRst,	$01,	nF5,	$0B,	nRst
	dc.b		$01,	nD5,	$0B,	nRst,	$07,	nC5,	$05,	nRst
	dc.b		$01,	nBb4,	$0B,	nRst,	$01,	nD5,	$0B,	nRst
	dc.b		$07,	nFs4,	$05,	nRst,	$01,	nBb4,	$05,	nRst
	dc.b		$01,	nEb5,	$05,	nRst,	$01,	nD5,	$0B,	nRst
	dc.b		$01,	nFs5,	$0B,	nRst,	$01,	nD5,	$05,	nRst
	dc.b		$01,	nG5,	$10,	nRst,	$7F,	$30
	smpsPan		panRight,	$00
	dc.b		$0D
@loop1:	dc.b		nG5,	$05,	nRst,	$01,	nG5,	$03,	nRst,	$0F
	smpsLoop	$00,	$03,	@loop1
	dc.b		nFs5,	$05,	nRst,	$01,	nFs5,	$03
@loop2:	dc.b		nRst,	$0F,	nG5,	$05,	nRst,	$01,	nG5,	$03
	smpsLoop	$00,	$03,	@loop2
	dc.b		nRst,	$0F,	nFs5,	$05,	nRst,	$01,	nFs5,	$03
	dc.b		nRst,	$03
	smpsFMvoice	$00
@loop3:	dc.b		nFs4,	$03,	nRst,	nG4,	nRst,	nA4,	nRst,	nD5
	dc.b		nRst,	nFs5,	nRst,	nA5,	nRst,	nFs5,	nRst,	nD5
	dc.b		nRst
	smpsLoop	$00,	$02,	@loop3
@loop4:	dc.b		nG4,	nRst,	nA4,	nRst,	nBb4,	nRst,	nD5,	nRst
	dc.b		nG5,	nRst,	nBb5,	nRst,	nG5,	nRst,	nD5,	nRst
	smpsLoop	$00,	$03,	@loop4
	dc.b		nF4,	nA4,	nF5,	nRst,	$09,	nEb5,	$03,	nRst
	dc.b		$09,	nD5,	$03,	nG5,	nRst,	$06,	nEb5,	$03
	dc.b		nRst,	nF4,	nRst,	nG4,	nRst,	nA4,	nRst,	nC5
	dc.b		nRst,	nF5,	nRst,	nA5,	nRst,	nF5,	nRst,	nD5
	dc.b		nRst,	nG4,	nRst,	nA4,	nRst,	nBb4,	nRst,	nD5
	dc.b		nRst,	nG5,	nRst,	nBb5,	nRst,	nG5,	nRst,	nD5
	dc.b		nRst,	nFs4,	nD4,	nG4,	nD4,	nA4,	nD4,	nD5
	dc.b		nFs4,	nFs5,	nA4,	nA5,	nC5,	nFs5,	nA4,	nD5
	dc.b		nFs4,	nFs4,	nD4,	nA4,	nD4,	nC5,	nD4,	nEb5
	dc.b		nFs4,	nFs5,	nA4,	nA5,	nC5,	nFs5,	nA4,	nEb5
	dc.b		nFs4,	nG4,	nD4,	nA4,	nD4,	nBb4,	nD4,	nD5
	dc.b		nG4,	nG5,	nBb4,	nBb5,	nD5,	nG5,	nBb4,	nD5
	dc.b		nG4,	nG4,	nD4,	nA4,	nD4,	nBb4,	nD4,	nD5
	dc.b		nG4,	nF4,	$02,	nG4,	nA4,	nG4,	nA4,	nBb4
	dc.b		nG4,	nBb4,	nD5,	nF5,	nG5,	nBb5
@loop5:	dc.b		nB5,	$03,	nD5,	nFs5,	nFs4,	nD5,	nFs4
	smpsLoop	$00,	$02,	@loop5
	dc.b		nB5,	nD5,	nFs5,	nFs4,	nAb4,	nB4,	nFs5,	nAb4
	dc.b		nE4,	nB3,	nD5,	nAb4,	nE4,	nB3,	nB4,	nAb5
	dc.b		nAb4,	nE4,	nD5,	nAb5
@loop6:	dc.b		nA5,	nCs5,	nE5,	nG4,	nCs5,	nG4
	smpsLoop	$00,	$02,	@loop6
	dc.b		nA5,	nCs5,	nE5,	nG4,	nBb5,	nCs5,	nF5,	nG4
	dc.b		nCs5,	nG4,	nBb5,	nCs5,	nE4,	$02,	nG4,	nBb4
	dc.b		nG4,	nBb4,	nCs5,	nG4,	nBb4,	nCs5,	nE5,	nG5
	dc.b		nBb5,	$03
@loop7:	dc.b		nRst,	$6C
	smpsLoop	$00,	$09,	@loop7
	smpsFMvoice	$02
@loop8:	dc.b		nG5,	$05,	nRst,	$01,	nG5,	$03,	nRst,	$0F
	smpsLoop	$00,	$03,	@loop8
	dc.b		nFs5,	$05,	nRst,	$01,	nFs5,	$03
@loop9:	dc.b		nRst,	$0F,	nG5,	$05,	nRst,	$01,	nG5,	$03
	smpsLoop	$00,	$03,	@loop9
	dc.b		nRst,	$0F,	nFs5,	$05,	nRst,	$01,	nFs5,	$03
	dc.b		nRst,	$02
	smpsStop

; FM5 Data
ChaosAngel_FM5:
	smpsPan		panCentre,	$00
	smpsFMvoice	$03
ChaosAngel_Loop1C:
	dc.b		nD3,	$03,	nD4,	nD3,	$02,	nRst,	$01,	nD3
	dc.b		$02,	nRst,	$01,	nD4,	$03
ChaosAngel_Loop1D:
	dc.b		nD3,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop1C
	dc.b		nD3,	$03,	nD4,	nD3,	$02,	nRst,	$01
	smpsLoop	$01,	$02,	ChaosAngel_Loop1D
	dc.b		nD3,	$02,	nRst,	$01,	nD4,	$03,	nD3,	$02
	dc.b		nRst,	$01,	nD3,	$03,	nD4,	nD3,	nC3,	nD3
	dc.b		nD4,	nD3,	$02,	nRst,	$01,	nD3,	$02,	nRst
	dc.b		$01,	nD4,	$03,	nD3,	$02,	nRst,	$01,	nD3
	dc.b		$03,	nD4,	nD3,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nD4,	$03,	nD3,	$02,	nRst,	$01
	dc.b		nD3,	$0C,	nBb3,	$06,	nBb4,	$03,	nRst,	nA3
	dc.b		$06,	nA4,	$03,	nRst,	nG3,	$06,	nG4,	$03
	dc.b		nRst,	nFs3,	$0C
ChaosAngel_Loop1E:
	dc.b		nG3,	$02,	nRst,	$01,	nG2,	$06,	nG4,	$02
	dc.b		nRst,	$01,	nG3,	$03,	nG4,	nG3,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop1E
ChaosAngel_Loop1F:
	dc.b		nFs3,	$02,	nRst,	$01,	nFs2,	$06,	nFs4,	$02
	dc.b		nRst,	$01,	nFs3,	$03,	nFs4,	nFs3,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop1F
ChaosAngel_Loop20:
	dc.b		nF3,	$02,	nRst,	$01,	nF2,	$06,	nF4,	$02
	dc.b		nRst,	$01,	nF3,	$03,	nF4,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop20
ChaosAngel_Loop21:
	dc.b		nE3,	$02,	nRst,	$01,	nE2,	$06,	nE4,	$02
	dc.b		nRst,	$01,	nE3,	$03,	nE4,	nE3,	$02,	nRst
	dc.b		$01,	nE2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop21
	smpsLoop	$01,	$03,	ChaosAngel_Loop1E
ChaosAngel_Loop22:
	dc.b		nF3,	$02,	nRst,	$01,	nF2,	$06,	nF4,	$02
	dc.b		nRst,	$01,	nF3,	$03,	nF4,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop22
ChaosAngel_Loop23:
	dc.b		nBb3,	$02,	nRst,	$01,	nBb2,	$06,	nBb4,	$02
	dc.b		nRst,	$01,	nBb3,	$03,	nBb4,	nBb3,	$02,	nRst
	dc.b		$01,	nBb2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop23
ChaosAngel_Loop24:
	dc.b		nEb3,	$02,	nRst,	$01,	nEb2,	$06,	nEb4,	$02
	dc.b		nRst,	$01,	nEb3,	$03,	nEb4,	nEb3,	$02,	nRst
	dc.b		$01,	nEb2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop24
ChaosAngel_Loop25:
	dc.b		nD3,	$02,	nRst,	$01,	nD2,	$06,	nD4,	$02
	dc.b		nRst,	$01,	nD3,	$03,	nD4,	nD3,	$02,	nRst
	dc.b		$01,	nD2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop25
ChaosAngel_Loop26:
	dc.b		nG3,	$02,	nRst,	$01,	nG2,	$06,	nG4,	$02
	dc.b		nRst,	$01,	nG3,	$03,	nG4,	nG3,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop26
ChaosAngel_Loop27:
	dc.b		nFs3,	$02,	nRst,	$01,	nFs2,	$06,	nFs4,	$02
	dc.b		nRst,	$01,	nFs3,	$03,	nFs4,	nFs3,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop27
ChaosAngel_Loop28:
	dc.b		nBb3,	$02,	nRst,	$01,	nBb2,	$06,	nBb4,	$02
	dc.b		nRst,	$01,	nBb3,	$03,	nBb4,	nBb3,	$02,	nRst
	dc.b		$01,	nBb2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop28
ChaosAngel_Loop29:
	dc.b		nE3,	$02,	nRst,	$01,	nE2,	$06,	nE4,	$02
	dc.b		nRst,	$01,	nE3,	$03,	nE4,	nE3,	$02,	nRst
	dc.b		$01,	nE2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop29
ChaosAngel_Loop2A:
	dc.b		nF3,	$02,	nRst,	$01,	nF2,	$06,	nF4,	$02
	dc.b		nRst,	$01,	nF3,	$03,	nF4,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop2A
	dc.b		nG3,	$02,	nRst,	$01,	nG2,	$06,	nG4,	$02
	dc.b		nRst,	$01,	nG3,	$03,	nG4,	nG3,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$01,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$06,	nF4,	$02,	nRst,	$01,	nF3
	dc.b		$03,	nF4,	nF3,	$02,	nRst,	$01,	nF2,	$02
ChaosAngel_Loop2B:
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nD2,	$06
	dc.b		nD4,	$02,	nRst,	$01,	nD3,	$03,	nD4,	nD3
	dc.b		$02,	nRst,	$01,	nD2,	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop2B
ChaosAngel_Loop2C:
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nG2,	$06
	dc.b		nG4,	$02,	nRst,	$01,	nG3,	$03,	nG4,	nG3
	dc.b		$02,	nRst,	$01,	nG2,	$02,	nRst,	$01,	nF3
	dc.b		$02,	nRst,	$01,	nF2,	$06,	nF4,	$02,	nRst
	dc.b		$01,	nF3,	$03,	nF4,	nF3,	$02,	nRst,	$01
	dc.b		nF2,	$02,	nRst,	$01,	nEb3,	$02,	nRst,	$01
	dc.b		nEb2,	$06,	nEb4,	$02,	nRst,	$01,	nEb3,	$03
	dc.b		nEb4,	nEb3,	$02,	nRst,	$01,	nEb2,	$02,	nRst
	dc.b		$01,	nD3,	$02,	nRst,	$01,	nD4,	$06,	nD3
	dc.b		$02,	nRst,	$01,	nD4,	$03,	nD3,	nD3,	$02
	dc.b		nRst,	$01,	nD3,	$02
	smpsLoop	$00,	$04,	ChaosAngel_Loop2C
ChaosAngel_Loop2D:
	dc.b		nRst,	$01,	nD2,	$06,	nD3,	$09,	nRst,	$03
	dc.b		nC3,	$06,	nRst,	$03,	nBb2,	$02,	nRst,	$01
	dc.b		nA2,	$02,	nRst,	$01,	nG2,	$02,	nRst,	$01
	dc.b		nFs2,	$02,	nRst,	$01,	nG2,	$02,	nRst,	$01
	dc.b		nA2,	$02,	nRst,	$01,	nD3,	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop2D
ChaosAngel_Loop2E:
	dc.b		nRst,	$01,	nG2,	$06,	nG3,	$09,	nRst,	$03
	dc.b		nF3,	$06,	nRst,	$03,	nEb3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01,	nC3,	$02,	nRst,	$01
	dc.b		nBb2,	$02,	nRst,	$01,	nC3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01,	nG3,	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop2E
	dc.b		nRst,	$01,	nC3,	$06,	nC4,	$09,	nRst,	$03
	dc.b		nBb3,	$06,	nRst,	$03,	nAb3,	$02,	nRst,	$01
	dc.b		nG3,	$02,	nRst,	$01,	nF3,	$02,	nRst,	$01
	dc.b		nE3,	$02,	nRst,	$01,	nF3,	$02,	nRst,	$01
	dc.b		nG3,	$02,	nRst,	$01,	nC4,	$02,	nRst,	$01
	dc.b		nF2,	$06,	nF3,	$09,	nRst,	$03,	nC3,	$0C
	dc.b		nF3,	$09,	nRst,	$03,	nF2,	$06,	nBb2,	nBb3
	dc.b		$09,	nRst,	$03,	nA3,	$06,	nRst,	$03,	nG3
	dc.b		$02,	nRst,	$01,	nF3,	$02,	nRst,	$01,	nEb3
	dc.b		$02,	nRst,	$01,	nD3,	$02,	nRst,	$01,	nC3
	dc.b		$02,	nRst,	$01,	nD3,	$02,	nRst,	$01,	nBb2
	dc.b		$02,	nRst,	$01,	nEb3,	$06,	nEb4,	$09,	nRst
	dc.b		$03,	nBb3,	$09,	nRst,	$03,	nG3,	$09,	nRst
	dc.b		$03,	nEb3,	$06,	nD2,	nD3,	$09,	nRst,	$03
	dc.b		nC3,	$06,	nRst,	$03,	nBb2,	$02,	nRst,	$01
	dc.b		nA2,	$02,	nRst,	$01,	nG2,	$02,	nRst,	$01
	dc.b		nFs2,	$02,	nRst,	$01,	nG2,	$02,	nRst,	$01
	dc.b		nA2,	$02,	nRst,	$01,	nD3,	$02,	nRst,	$01
	dc.b		nD2,	$06,	nD3,	$09,	nRst,	$03,	nC3,	$06
	dc.b		nRst,	$03,	nBb2,	$02,	nRst,	$01,	nA2,	$02
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$01,	nFs2,	$02
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$01,	nA2,	$02
	dc.b		nRst,	$01,	nD3,	$02
ChaosAngel_Loop2F:
	dc.b		nRst,	$01,	nG2,	$06,	nG3,	$09,	nRst,	$03
	dc.b		nF3,	$06,	nRst,	$03,	nEb3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01,	nC3,	$02,	nRst,	$01
	dc.b		nBb2,	$02,	nRst,	$01,	nC3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01,	nG3,	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop2F
	dc.b		nRst,	$01,	nB2,	$06,	nB3,	$09,	nRst,	$03
	dc.b		nA3,	$06,	nRst,	$03,	nG3,	$02,	nRst,	$01
	dc.b		nFs3,	$02,	nRst,	$01,	nE3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01,	nE3,	$02,	nRst,	$01
	dc.b		nFs3,	$02,	nRst,	$01,	nB3,	$02,	nRst,	$01
	dc.b		nE2,	$06,	nE3,	$09,	nRst,	$03,	nB2,	$0C
	dc.b		nE3,	$09,	nRst,	$03,	nE2,	$06,	nA2,	nA3
	dc.b		$09,	nRst,	$03,	nG3,	$06,	nRst,	$03,	nF3
	dc.b		$02,	nRst,	$01,	nE3,	$02,	nRst,	$01,	nD3
	dc.b		$02,	nRst,	$01,	nCs3,	$02,	nRst,	$01,	nB2
	dc.b		$02,	nRst,	$01,	nCs3,	$02,	nRst,	$01,	nA2
	dc.b		$02,	nRst,	$01,	nA2,	$06,	nA3,	$09,	nRst
	dc.b		$03,	nE3,	$09,	nRst,	$03,	nCs3,	$09,	nRst
	dc.b		$03,	nA2,	$06
ChaosAngel_Loop30:
	dc.b		nF3,	$02,	nRst,	$01,	nF2,	$06,	nF4,	$02
	dc.b		nRst,	$01,	nF3,	$03,	nF4,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop30
ChaosAngel_Loop31:
	dc.b		nG3,	$02,	nRst,	$01,	nG2,	$06,	nG4,	$02
	dc.b		nRst,	$01,	nG3,	$03,	nG4,	nG3,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop31
ChaosAngel_Loop32:
	dc.b		nAb3,	$02,	nRst,	$01,	nAb2,	$06,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$03,	nAb4,	nAb3,	$02,	nRst
	dc.b		$01,	nAb2,	$02,	nRst,	$01
	smpsLoop	$00,	$04,	ChaosAngel_Loop32
ChaosAngel_Loop33:
	dc.b		nA3,	$02,	nRst,	$01,	nA2,	$06,	nA4,	$02
	dc.b		nRst,	$01,	nA3,	$03,	nA4,	nA3,	$02,	nRst
	dc.b		$01,	nA2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop33
ChaosAngel_Loop34:
	dc.b		nBb3,	$02,	nRst,	$01,	nBb2,	$06,	nBb4,	$02
	dc.b		nRst,	$01,	nBb3,	$03,	nBb4,	nBb3,	$02,	nRst
	dc.b		$01,	nBb2,	$02,	nRst,	$01
	smpsLoop	$00,	$02,	ChaosAngel_Loop34
ChaosAngel_Loop35:
	dc.b		nCs4,	$02,	nRst,	$01,	nCs3,	$06,	nCs5,	$02
	dc.b		nRst,	$01,	nCs4,	$03,	nCs5,	nCs4,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01
	smpsLoop	$00,	$04,	ChaosAngel_Loop35
	smpsLoop	$01,	$02,	ChaosAngel_Loop30
ChaosAngel_Loop36:
	dc.b		nG3,	$02,	nRst,	$01,	nG2,	$06,	nG4,	$02
	dc.b		nRst,	$01,	nG3,	$03,	nG4,	nG3,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$01,	nF3,	$02,	nRst
	dc.b		$01,	nF2,	$06,	nF4,	$02,	nRst,	$01,	nF3
	dc.b		$03,	nF4,	nF3,	$02,	nRst,	$01,	nF2,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nEb2,	$06
	dc.b		nEb4,	$02,	nRst,	$01,	nEb3,	$03,	nEb4,	nEb3
	dc.b		$02,	nRst,	$01,	nEb2,	$02,	nRst,	$01,	nD3
	dc.b		$02,	nRst,	$01,	nD4,	$06,	nD3,	$02,	nRst
	dc.b		$01,	nD4,	$03,	nD3,	nD3,	$02,	nRst,	$01
	dc.b		nD3,	$02,	nRst,	$01
	smpsLoop	$00,	$04,	ChaosAngel_Loop36
	smpsPan		panCentre,	$00
	smpsFMvoice	$03
	smpsStop

; PSG3 Data
ChaosAngel_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$7F,	$41
ChaosAngel_Loop37:
	dc.b		nA5,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03
	smpsLoop	$00,	$06,	ChaosAngel_Loop37
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop38:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop38
ChaosAngel_Loop39:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop39
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop3A:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop3A
ChaosAngel_Loop3B:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop3B
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop3C:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop3C
ChaosAngel_Loop3D:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop3D
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop3E:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop3E
ChaosAngel_Loop3F:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop3F
	dc.b		$03,	$03
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop40:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop40
ChaosAngel_Loop41:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$05,	ChaosAngel_Loop41
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
ChaosAngel_Loop42:
	dc.b		$03
	smpsLoop	$00,	$07,	ChaosAngel_Loop42
ChaosAngel_Loop43:
	dc.b		$02,	$02,	$02,	$03,	$03,	$03,	$03,	$03
	dc.b		$03
	smpsLoop	$00,	$06,	ChaosAngel_Loop43
	dc.b		$03,	$03,	$02,	$02,	$02
ChaosAngel_Loop44:
	dc.b		$03
	smpsLoop	$00,	$08,	ChaosAngel_Loop44
ChaosAngel_Loop45:
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsLoop	$00,	$07,	ChaosAngel_Loop45
ChaosAngel_Loop46:
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsLoop	$00,	$03,	ChaosAngel_Loop46
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$08
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$09
	smpsPSGvoice	$02
ChaosAngel_Loop47:
	dc.b		$03,	$03,	$03,	$03,	$03,	$03,	$02,	$02
	dc.b		$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop47
ChaosAngel_Loop48:
	dc.b		$03
	smpsLoop	$00,	$08,	ChaosAngel_Loop48
	dc.b		$02,	$02,	$02
ChaosAngel_Loop49:
	dc.b		$03
	smpsLoop	$00,	$08,	ChaosAngel_Loop49
ChaosAngel_Loop4A:
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsLoop	$00,	$07,	ChaosAngel_Loop4A
ChaosAngel_Loop4B:
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsLoop	$00,	$03,	ChaosAngel_Loop4B
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$1A
ChaosAngel_Loop4C:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03
	smpsLoop	$00,	$06,	ChaosAngel_Loop4C
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop4D:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop4D
ChaosAngel_Loop4E:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop4E
	dc.b		$03,	$03
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop4F:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop4F
ChaosAngel_Loop50:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop50
	dc.b		$03,	$03
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop51:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	ChaosAngel_Loop51
ChaosAngel_Loop52:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$06,	ChaosAngel_Loop52
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$03,	$03
ChaosAngel_Loop53:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$08,	ChaosAngel_Loop53
ChaosAngel_Loop54:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$03,	ChaosAngel_Loop54
	dc.b		$03,	$03
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$08
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03
ChaosAngel_Loop55:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$08,	ChaosAngel_Loop55
ChaosAngel_Loop56:
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$03,	ChaosAngel_Loop56
	dc.b		$03,	$03
	smpsPSGvoice	$03
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$08
	smpsPSGvoice	$03
	smpsPSGvoice	$02
	dc.b		$03,	$03,	$03,	$03
	smpsPSGvoice	$03
	dc.b		$06
	smpsStop

ChaosAngel_PSG1:
	smpsAlterNote	$01
	dc.b		nRst,	$7F,	$41,	nG4,	$03,	nRst,	nG5,	$06
	dc.b		nRst,	$03,	nG4,	nD5,	$06,	nBb4,	$03,	nA4
	dc.b		nG4,	nA4,	nBb4,	nC5,	nD5,	nG5,	nFs4,	nRst
	dc.b		nFs5,	$06,	nRst,	$03,	nFs4,	nD5,	$06,	nBb4
	dc.b		$03,	nA4,	nFs4,	nA4,	nBb4,	nC5,	nD5,	nFs5
	dc.b		nF4,	nRst,	nF5,	$06,	nRst,	$03,	nF4,	nD5
	dc.b		$06,	nBb4,	$03,	nA4,	nF4,	nA4,	nBb4,	nC5
	dc.b		nD5,	nF5,	nBb5,	$06,	nA5,	$03,	nG5,	nRst
	dc.b		nBb5,	nE5,	nRst,	nD5,	$02,	nE5,	nD6,	nC5
	dc.b		nE5,	nC6,	nBb4,	nE5,	nBb5,	nC5,	nE5,	nC6
	dc.b		nD5,	$03,	nRst,	nD6,	$06,	nRst,	$03,	nD5
	dc.b		nC6,	$06,	nD6,	$03,	nC6,	nBb5,	nC6,	nG5
	dc.b		nA5,	nBb5,	nD6,	nD5,	nRst,	nD6,	$06,	nRst
	dc.b		$03,	nD5,	nC6,	$06,	nD6,	$03,	nC6,	nBb5
	dc.b		nC6,	nFs5,	nA5,	nBb5,	nD6,	nD5,	nRst,	nD6
	dc.b		$06,	nRst,	$03,	nD5,	nC6,	$06,	nD6,	$03
	dc.b		nC6,	nBb5,	nC6,	nG5,	nA5,	nBb5,	nD6,	$09
	dc.b		nC6,	$03,	nBb5,	nRst,	nD6,	nBb5,	nRst,	nG5
	dc.b		$02,	nBb5,	nG6,	nF5,	nBb5,	nF6,	nE5,	nBb5
	dc.b		nE6,	nG5,	nBb5,	nG6
@loop1:	dc.b		nRst,	$72
	smpsLoop	$00,	$08,	@loop1
@loop2:	dc.b		nD5,	$02,	nRst,	$01,	nD5,	$06,	$02,	nRst
	dc.b		$01,	nBb4,	$05,	nRst,	$01,	nD5,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02,	nRst
	dc.b		$01,	nA4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nEb5,	$02,	nRst
	dc.b		$01,	nD5,	$02,	nRst,	$01,	nC5,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nD5,	$02,	nRst
	dc.b		$01,	nBb4,	$06,	$02,	nRst,	$01,	nD5,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nF5,	$02
	dc.b		nRst,	$01,	nD5,	$06,	nFs5,	$05,	nRst,	$01
	dc.b		nD5,	$02,	nRst,	$01,	nA5,	$03,	nFs5,	nEb5
	dc.b		nD5
	smpsLoop	$00,	$02,	@loop2
	dc.b		nEb4,	$2E,	nRst,	$02,	nD4,	$60,	nC4,	$48
	dc.b		nBb3,	$16,	nRst,	$02,	nAb3,	$0C,	nEb4,	$22
	dc.b		nRst,	$02,	nG3,	$2E,	nRst,	$02,	nC4,	$2C
	dc.b		nRst,	$04,	nB3,	$16,	nRst,	$02,	nC4,	$16
	dc.b		nRst,	$02,	nD4,	$2C,	nRst,	$04,	nC4,	$16
	dc.b		nRst,	$02,	nD4,	$16,	nRst,	$02,	nEb4,	$2C
	dc.b		nRst,	$04,	nG4,	$16,	nRst,	$02,	nFs4,	$16
	dc.b		nRst,	$02,	nE4,	$16,	nRst,	$02,	nA3,	$16
	dc.b		nRst,	$02,	nC4,	$2E,	nRst,	$02,	nFs4,	$2E
	dc.b		nRst,	$02
@loop5:	dc.b		nF4,	$03,	nRst,	nF5,	$06,	nRst,	$03,	nF4
	dc.b		nC5,	$06,	nAb4,	$03,	nG4,	nF4,	nG4,	nAb4
	dc.b		nBb4,	nC5,	nF5,	nG4,	nRst,	nG5,	$06,	nRst
	dc.b		$03,	nG4,	nD5,	$06,	nBb4,	$03,	nA4,	nG4
	dc.b		nA4,	nBb4,	nC5,	nD5,	nG5,	nG4
@loop3:	dc.b		nG5,	$06,	nD5,	$03,	nAb5,	$02,	nRst,	$01
	dc.b		nD5,	$02,	nRst,	$01,	nG4,	$03
	smpsLoop	$00,	$02,	@loop3
	dc.b		nD5,	nG5,	nAb5,	$02,	nRst,	$01,	nBb5,	$06
	dc.b		nAb5,	$03,	nG5,	nAb5,	nG5,	nF5,	nD5,	$05
	dc.b		nRst,	$01,	nD5,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nD5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	$01,	nD5,	$02
	dc.b		nRst,	$01,	nG5,	$02,	nRst,	$01,	nA4,	$03
	dc.b		nRst,	nA5,	$06,	nRst,	$03,	nA4,	nE5,	$06
	dc.b		nC5,	$03,	nB4,	nA4,	nB4,	nC5,	nD5,	nE5
	dc.b		nA5,	nBb4,	nRst,	nBb5,	$06,	nRst,	$03,	nBb4
	dc.b		nF5,	$06,	nCs5,	$03,	nC5,	nBb4,	nC5,	nCs5
	dc.b		nEb5,	nF5,	nBb5,	nB4
@loop4:	dc.b		nB5,	$06,	nFs5,	$03,	nCs6,	$02,	nRst,	$01
	dc.b		nFs5,	$02,	nRst,	$01,	nB4,	$03
	smpsLoop	$00,	$02,	@loop4
	dc.b		nFs5,	nB5,	nCs6,	$02,	nRst,	$01,	nEb6,	$06
	dc.b		nCs6,	$03,	nB5,	nCs6,	nB5,	nAb5,	nFs5,	$05
	dc.b		nRst,	$01,	nFs5,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nFs5,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nFs5,	$02
	dc.b		nRst,	$01,	nB5,	$02,	nRst,	$01
	smpsLoop	$01,	$02,	@loop5
@loop6:	dc.b		nD5,	$02,	nRst,	$01,	nD5,	$06,	$02,	nRst
	dc.b		$01,	nBb4,	$05,	nRst,	$01,	nD5,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02,	nRst
	dc.b		$01,	nA4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nEb5,	$02,	nRst
	dc.b		$01,	nD5,	$02,	nRst,	$01,	nC5,	$02,	nRst
	dc.b		$01,	nBb4,	$02,	nRst,	$01,	nD5,	$02,	nRst
	dc.b		$01,	nBb4,	$06,	$02,	nRst,	$01,	nD5,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nF5,	$02
	dc.b		nRst,	$01,	nD5,	$06,	nFs5,	$05,	nRst,	$01
	dc.b		nD5,	$02,	nRst,	$01,	nA5,	$03,	nFs5,	nEb5
	dc.b		nD5
	smpsLoop	$00,	$04,	@loop6
	smpsStop

ChaosAngel_PSG2:
	smpsAlterNote	-$01
	dc.b		nRst,	$7F,	$7F,	$7F,	$03,	nG4,	nRst,	nG5
	dc.b		$06,	nRst,	$03,	nG4,	nD5,	$06,	nBb4,	$03
	dc.b		nA4,	nG4,	nA4,	nBb4,	nC5,	nD5,	nG5,	nFs4
	dc.b		nRst,	nFs5,	$06,	nRst,	$03,	nFs4,	nD5,	$06
	dc.b		nBb4,	$03,	nA4,	nFs4,	nA4,	nBb4,	nC5,	nD5
	dc.b		nFs5,	nF4,	nRst,	nF5,	$06,	nRst,	$03,	nF4
	dc.b		nD5,	$06,	nBb4,	$03,	nA4,	nF4,	nA4,	nBb4
	dc.b		nC5,	nD5,	nF5,	nBb5,	$06,	nA5,	$03,	nG5
	dc.b		nRst,	nBb5,	nE5,	nRst,	nD5,	$02,	nE5,	nD6
	dc.b		nC5,	nE5,	nC6,	nBb4,	nE5,	nBb5,	nC5,	nE5
	dc.b		nC6
@loop7:	dc.b		nRst,	$72
	smpsLoop	$00,	$08,	@loop7
@loop8:	dc.b		nBb4,	$02,	nRst,	$01,	nBb4,	$06,	$02,	nRst
	dc.b		$01,	nG4,	$05,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nG4,	$02,	nRst,	$01,	nD4,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$01,	nF4,	$02,	nRst
	dc.b		$01,	nF4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nA4,	$02,	nRst,	$01,	nG4,	$02,	nRst
	dc.b		$01,	nF4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nG4,	$06,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nBb4,	$06,	nD5,	$05,	nRst,	$01
	dc.b		nBb4,	$02,	nRst,	$01,	nFs5,	$03,	nD5,	nC5
	dc.b		nBb4
	smpsLoop	$00,	$02,	@loop8
	dc.b		nRst,	$18,	nD4,	$0C,	nC4,	nEb4,	$16,	nRst
	dc.b		$02,	nFs4,	$2E,	nRst,	$02,	nD4,	$16,	nRst
	dc.b		$02,	nBb3,	$2C,	nRst,	$04,	nG3,	$16,	nRst
	dc.b		$02,	nD4,	$16,	nRst,	$02,	nA3,	$16,	nRst
	dc.b		$02,	nEb4,	$16,	nRst,	$02,	nA3,	$2E,	nRst
	dc.b		$02,	nBb3,	$2E,	nRst,	$1A,	nD4,	$0C,	nC4
	dc.b		nEb4,	$16,	nRst,	$02,	nFs4,	$16,	nRst,	$02
	dc.b		nG4,	$0C,	nD4,	$22,	nRst,	$02,	nBb3,	$2C
	dc.b		nRst,	$04,	nFs3,	$16,	nRst,	$02,	nD4,	$16
	dc.b		nRst,	$02,	nAb3,	$16,	nRst,	$02,	nD4,	$16
	dc.b		nRst,	$02,	nCs4,	$2E,	nRst,	$02,	nE4,	$2E
	dc.b		nRst,	$7F,	$7F,	$7F,	$05,	nC4,	$03,	nRst
	dc.b		nC5,	$06,	nRst,	$03,	nC4,	nG4,	$06,	nEb4
	dc.b		$03,	nD4,	nC4,	nD4,	nEb4,	nF4,	nG4,	nC5
	dc.b		nD4,	nRst,	nD5,	$06,	nRst,	$03,	nD4,	nA4
	dc.b		$06,	nF4,	$03,	nE4,	nD4,	nE4,	nF4,	nG4
	dc.b		nA4,	nD5,	nD4
@loop9:	dc.b		nD5,	$06,	nG4,	$03,	nF5,	$02,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	$01,	nD4,	$03
	smpsLoop	$00,	$02,	@loop9
	dc.b		nG4,	nD5,	nF5,	$02,	nRst,	$01,	nG5,	$06
	dc.b		nF5,	$03,	nD5,	nF5,	nD5,	nB4,	nG4,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nD4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nD5,	$02,	nRst,	$01,	nE4,	$03
	dc.b		nRst,	nE5,	$06,	nRst,	$03,	nE4,	nB4,	$06
	dc.b		nG4,	$03,	nFs4,	nE4,	nFs4,	nG4,	nA4,	nB4
	dc.b		nE5,	nF4,	nRst,	nF5,	$06,	nRst,	$03,	nF4
	dc.b		nC5,	$06,	nAb4,	$03,	nG4,	nF4,	nG4,	nAb4
	dc.b		nBb4,	nC5,	nF5,	nFs4
@loopA:	dc.b		nFs5,	$06,	nCs5,	$03,	nAb5,	$02,	nRst,	$01
	dc.b		nCs5,	$02,	nRst,	$01,	nFs4,	$03
	smpsLoop	$00,	$02,	@loopA
	dc.b		nCs5,	nFs5,	nAb5,	$02,	nRst,	$01,	nBb5,	$06
	dc.b		nAb5,	$03,	nFs5,	nAb5,	nFs5,	nEb5,	nCs5,	$05
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs5,	$02,	nRst,	$01
@loopB:	dc.b		nBb4,	$02,	nRst,	$01,	nBb4,	$06,	$02,	nRst
	dc.b		$01,	nG4,	$05,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nG4,	$02,	nRst,	$01,	nD4,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$01,	nF4,	$02,	nRst
	dc.b		$01,	nF4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nA4,	$02,	nRst,	$01,	nG4,	$02,	nRst
	dc.b		$01,	nF4,	$02,	nRst,	$01,	nBb4,	$02,	nRst
	dc.b		$01,	nG4,	$06,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nBb4,	$06,	nD5,	$05,	nRst,	$01
	dc.b		nBb4,	$02,	nRst,	$01,	nFs5,	$03,	nD5,	nC5
	dc.b		nBb4
	smpsLoop	$00,	$04,	@loopB
	smpsStop

ChaosAngel_Voices:
	dc.b		$27,$14,$30,$51,$62,$5C,$5C,$5C,$5C,$00,$00,$00,$00,$04,$1B,$04
	dc.b		$04,$FA,$F8,$F8,$FA,$10,$10,$10,$10;			Voice 00
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$47,$1C,$22,$15,$00;			Voice 01
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$47,$1C,$22,$15,$00;			Voice 02
	dc.b		$2C,$70,$40,$21,$60,$9F,$1F,$1F,$5F,$0C,$09,$0C,$15,$04,$04,$06
	dc.b		$06,$56,$46,$46,$4F,$0C,$00,$10,$00;			Voice 03
	even
