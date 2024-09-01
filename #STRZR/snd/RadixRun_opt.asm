; =============================================================================================
; Project Name:		Radix Run Zone [Sonic 2 Gold Edition]
; Author:		DM Ashura (cv: Cinossu)
; Created:		6th March 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

RadixRun_Header:
	smpsHeaderVoice	RadixRun_Voices
	smpsHeaderChan	$06,	$01
	smpsHeaderTempo	$01,	$08

	smpsHeaderDAC	RadixRun_DAC
	smpsHeaderFM	RadixRun_FM1,	smpsPitch00+1,	$0C
	smpsHeaderFM	RadixRun_FM2,	smpsPitch00+1,	$0C
	smpsHeaderFM	RadixRun_FM3,	smpsPitch00+1,	$06
	smpsHeaderFM	RadixRun_FM4,	smpsPitch00+1,	$06
	smpsHeaderFM	RadixRun_FM5,	smpsPitch00+1,	$06
	smpsHeaderPSG	RadixRun_PSG1,	smpsPitch00+1,	$08,	$00

; FM1 Data
RadixRun_FM1:
	smpsFMvoice	$01
	smpsCall	@pattern00
	smpsCall	@pattern01
	smpsCall	@pattern02
	smpsCall	@pattern00
	dc.b		$7F,$7F,$7F,$7F,$7F,$7F,$06
	smpsCall	@pattern02
	smpsCall	@pattern03
	smpsJump	RadixRun_FM1

@pattern00:
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$07
	dc.b		nG2,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$0B,	nRst,	$01
	dc.b		nD2,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	dc.b		nD2,	$0B,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$07,	nG2,	$05,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nD3,	$0B,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	smpsLoop	$00,	$04,	@pattern00
	smpsReturn

@pattern01:
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$07
	dc.b		nG2,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$0B,	nRst,	$01
	dc.b		nD2,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	dc.b		nG2,	$0B,	nRst,	$01,	nC3,	$05,	nRst,	$01
	dc.b		nC3,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nC3,	$05,	nRst,	$07,	nC3,	$05,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nBb2,	$0B,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	smpsLoop	$00,	$04,	@pattern01
	smpsReturn

@pattern02:
	dc.b		nEb2,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
	dc.b		nEb3,	$05,	nRst,	$01,	nEb3,	$05,	nRst,	$07
	dc.b		nEb2,	$05,	nRst,	$07,	nEb2,	$05,	nRst,	$01
	dc.b		nEb3,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$07
	dc.b		nEb3,	$05,	nRst,	$07,	nEb3,	$05,	nRst,	$01
	dc.b		nEb2,	$05,	nRst,	$07,	nBb2,	$05,	nRst,	$01
	dc.b		nBb2,	$05,	nRst,	$01,	nBb3,	$05,	nRst,	$01
	dc.b		nBb3,	$05,	nRst,	$07,	nBb2,	$05,	nRst,	$07
	dc.b		nBb2,	$05,	nRst,	$01,	nBb3,	$05,	nRst,	$01
	dc.b		nBb2,	$05,	nRst,	$07,	nBb3,	$05,	nRst,	$07
	dc.b		nBb3,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$07
	smpsLoop	$00,	$04,	@pattern02
	smpsReturn
	
@pattern03:
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$07
	dc.b		nG2,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nG2,	$0B,	nRst,	$01
	dc.b		nD2,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	dc.b		nD2,	$0B,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nG3,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$07,	nG2,	$05,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nD3,	$0B,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nF2,	$0B,	nRst,	$01
	smpsLoop	$00,	$02,	@pattern03
	smpsReturn

; FM2 Data
RadixRun_FM2:
	smpsFMvoice	$02
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$06
	dc.b		nBb4,	$05,	nRst,	$07,	nA4,	$05,	nRst,	$07
	dc.b		nG4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$07
	dc.b		nG4,	$05,	nRst,	$07,	nD4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nBb4,	$05,	nRst,	$07,	nA4,	$05,	nRst,	$07
	dc.b		nG4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$07
	dc.b		nG4,	$1D,	nRst,	$01,	nBb4,	$05,	nRst,	$07
	dc.b		nA4,	$05,	nRst,	$07,	nG4,	$0B,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$05,	nRst,	$07
	dc.b		nD4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$07
	dc.b		nC4,	$05,	nRst,	$01,	nD4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$35,	nRst,	$01
	dc.b		nBb4,	$05,	nRst,	$07,	nA4,	$05,	nRst,	$07
	dc.b		nG4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$07
	dc.b		nG4,	$05,	nRst,	$07,	nD4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$01
	dc.b		nBb4,	$05,	nRst,	$07,	nA4,	$05,	nRst,	$07
	dc.b		nG4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$07,	nF4,	$05,	nRst,	$07
	dc.b		nG4,	$1D,	nRst,	$01,	nBb4,	$05,	nRst,	$07
	dc.b		nA4,	$05,	nRst,	$07,	nG4,	$0B,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nG4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$07,	nG4,	$05,	nRst,	$07
	dc.b		nD4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$05,	nRst,	$01,	nBb4,	$05,	nRst,	$07
	dc.b		nC5,	$05,	nRst,	$01,	nD5,	$05,	nRst,	$07
	dc.b		nBb4,	$05,	nRst,	$07,	nG4,	$35
RadixRun_Loop06:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop06
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nA4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nBb3,	$11
RadixRun_Loop07:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop07
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nD5,	$05,	nRst,	$07,	nEb5,	$05
	dc.b		nRst,	$07,	nF5,	$05,	nRst,	$01,	nEb5,	$05
	dc.b		nRst,	$01,	nD5,	$05
RadixRun_Loop08:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop08
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nA4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nBb3,	$11
RadixRun_Loop09:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop09
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nD5,	$05,	nRst,	$07,	nEb5,	$05
	dc.b		nRst,	$07,	nF5,	$05,	nRst,	$01,	nEb5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nD5,	$7F
	dc.b		nRst,	$41,	$7F,	$7F,	$7F,	$7F,	$44,	nBb4
	dc.b		$05,	nRst,	$07,	nA4,	$05,	nRst,	$07,	nG4
	dc.b		$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$07,	nF4,	$05,	nRst,	$07,	nG4
	dc.b		$05,	nRst,	$07,	nD4,	$05,	nRst,	$01,	nF4
	dc.b		$05,	nRst,	$01,	nG4,	$05,	nRst,	$01,	nBb4
	dc.b		$05,	nRst,	$07,	nA4,	$05,	nRst,	$07,	nG4
	dc.b		$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$07,	nF4,	$05,	nRst,	$07,	nG4
	dc.b		$1D,	nRst,	$01,	nBb4,	$05,	nRst,	$07,	nA4
	dc.b		$05,	nRst,	$07,	nG4,	$0B,	nRst,	$01,	nF4
	dc.b		$05,	nRst,	$01,	nG4,	$05,	nRst,	$07,	nF4
	dc.b		$05,	nRst,	$07,	nG4,	$05,	nRst,	$07,	nD4
	dc.b		$05,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$01,	nF4,	$05,	nRst,	$07,	nC4
	dc.b		$05,	nRst,	$01,	nD4,	$05,	nRst,	$07,	nF4
	dc.b		$05,	nRst,	$07,	nG4,	$35,	nRst,	$01,	nBb4
	dc.b		$05,	nRst,	$07,	nA4,	$05,	nRst,	$07,	nG4
	dc.b		$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$07,	nF4,	$05,	nRst,	$07,	nG4
	dc.b		$05,	nRst,	$07,	nD4,	$05,	nRst,	$01,	nF4
	dc.b		$05,	nRst,	$01,	nG4,	$05,	nRst,	$01,	nBb4
	dc.b		$05,	nRst,	$07,	nA4,	$05,	nRst,	$07,	nG4
	dc.b		$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$07,	nF4,	$05,	nRst,	$07,	nG4
	dc.b		$1D,	nRst,	$01,	nBb4,	$05,	nRst,	$07,	nA4
	dc.b		$05,	nRst,	$07,	nG4,	$0B,	nRst,	$01,	nF4
	dc.b		$05,	nRst,	$01,	nG4,	$05,	nRst,	$07,	nF4
	dc.b		$05,	nRst,	$07,	nG4,	$05,	nRst,	$07,	nD4
	dc.b		$05,	nRst,	$01,	nF4,	$05,	nRst,	$01,	nG4
	dc.b		$05,	nRst,	$01,	nBb4,	$05,	nRst,	$07,	nC5
	dc.b		$05,	nRst,	$01,	nD5,	$05,	nRst,	$07,	nBb4
	dc.b		$05,	nRst,	$07,	nG4,	$35
RadixRun_Loop0A:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop0A
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nA4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nBb3,	$11
RadixRun_Loop0B:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop0B
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nD5,	$05,	nRst,	$07,	nEb5,	$05
	dc.b		nRst,	$07,	nF5,	$05,	nRst,	$01,	nEb5,	$05
	dc.b		nRst,	$01,	nD5,	$05
RadixRun_Loop0C:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop0C
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nA4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nBb3,	$11
RadixRun_Loop0D:
	dc.b		nRst,	$01,	nA4,	$05,	nRst,	$07,	nF4,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop0D
	dc.b		nRst,	$07,	nBb4,	$35,	nRst,	$01,	nA4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nBb4,	$05
	dc.b		nRst,	$07,	nD5,	$05,	nRst,	$07,	nEb5,	$05
	dc.b		nRst,	$07,	nF5,	$05,	nRst,	$01,	nEb5,	$05
	dc.b		nRst,	$01,	nC5,	$05,	nRst,	$01,	nD5,	$7F
	dc.b		nRst,	$40
	smpsFMvoice	$02
	dc.b		$7F,	$41
	smpsJump	RadixRun_FM2

; FM3 Data
RadixRun_FM3:
	smpsFMvoice	$00
	smpsFMvoice	$00
	smpsFMvoice	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$0F
RadixRun_Loop0E:
	dc.b		nD4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsLoop	$00,	$02,	RadixRun_Loop0E
	dc.b		nD4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nE4,	$0B,	nRst,	$01,	nC4,	$0B,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$0D
RadixRun_Loop0F:
	dc.b		nD4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsLoop	$00,	$02,	RadixRun_Loop0F
	dc.b		nD4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$0D
	smpsLoop	$01,	$05,	RadixRun_Loop0E
RadixRun_Loop10:
	dc.b		nD4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsLoop	$00,	$02,	RadixRun_Loop10
	dc.b		nD4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nE4,	$0B,	nRst,	$01,	nC4,	$0B,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$0D
RadixRun_Loop11:
	dc.b		nD4,	$05,	nRst,	$07,	nC4,	$05,	nRst,	$01
	smpsLoop	$00,	$02,	RadixRun_Loop11
	dc.b		nD4,	$0B,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nG4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nC4,	$05
RadixRun_Loop12:
	dc.b		nRst,	$01,	nBb4,	$05,	nRst,	$01,	nBb4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$13,	nBb4,	$06
	dc.b		nRst,	$12,	nBb4,	$05,	nRst,	$0D,	nBb4,	$0B
	smpsLoop	$00,	$08,	RadixRun_Loop12
	dc.b		nRst,	$01
RadixRun_Loop13:
	dc.b		$7F
	smpsLoop	$00,	$0C,	RadixRun_Loop13
	dc.b		$0C
RadixRun_Loop14:
	dc.b		nBb4,	$05,	nRst,	$01,	nBb4,	$05,	nRst,	$07
	dc.b		nBb4,	$05,	nRst,	$13,	nBb4,	$06,	nRst,	$12
	dc.b		nBb4,	$05,	nRst,	$0D,	nBb4,	$0B,	nRst,	$01
	smpsLoop	$00,	$07,	RadixRun_Loop14
	dc.b		nBb4,	$05,	nRst,	$01,	nBb4,	$05,	nRst,	$07
	dc.b		nBb4,	$05,	nRst,	$13,	nBb4,	$06,	nRst,	$12
	dc.b		nBb4,	$05,	nRst,	$0D,	nBb4,	$0B
	smpsFMvoice	$03
	dc.b		nRst,	$01,	$7F,	$7F,	$7C,	nC5,	$05
	smpsFMvoice	$03
	smpsJump	RadixRun_FM3

; FM4 Data
RadixRun_FM4:
	smpsFMvoice	$00
	smpsFMvoice	$00
	smpsFMvoice	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$09
RadixRun_Loop17:
	dc.b		nG3,	$05
RadixRun_Loop15:
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$07,	nF3,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop15
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nA3,	$0B,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nA3,	$05,	nRst,	$07,	nG3,	$05
RadixRun_Loop16:
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$07,	nF3,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop16
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nC4,	$0B,	nRst,	$01,	nA3,	$0B
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07
	smpsLoop	$01,	$05,	RadixRun_Loop17
	dc.b		nG3,	$05
RadixRun_Loop18:
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$07,	nF3,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop18
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nA3,	$0B,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nA3,	$05,	nRst,	$07,	nG3,	$05
RadixRun_Loop19:
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$07,	nF3,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop19
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nC4,	$0B,	nRst,	$01,	nA3,	$0B
	dc.b		nRst,	$01,	nF3,	$05
RadixRun_Loop1A:
	dc.b		nRst,	$01,	nEb4,	$05
	smpsLoop	$00,	$04,	RadixRun_Loop1A
RadixRun_Loop1B:
	dc.b		nRst,	$07,	nEb4,	$05
	smpsLoop	$00,	$05,	RadixRun_Loop1B
	dc.b		nRst,	$01,	nEb4,	$0B
RadixRun_Loop1C:
	dc.b		nRst,	$01,	nD4,	$05
	smpsLoop	$00,	$04,	RadixRun_Loop1C
RadixRun_Loop1D:
	dc.b		nRst,	$07,	nD4,	$05
	smpsLoop	$00,	$05,	RadixRun_Loop1D
	dc.b		nRst,	$01,	nD4,	$0B
	smpsLoop	$01,	$04,	RadixRun_Loop1A
	dc.b		nRst,	$01
RadixRun_Loop1E:
	dc.b		$7F
	smpsLoop	$00,	$0C,	RadixRun_Loop1E
	dc.b		$0C
RadixRun_Loop1F:
	dc.b		nEb4,	$05,	nRst,	$01
	smpsLoop	$00,	$03,	RadixRun_Loop1F
RadixRun_Loop20:
	dc.b		nEb4,	$05,	nRst,	$07
	smpsLoop	$00,	$05,	RadixRun_Loop20
	dc.b		nEb4,	$05,	nRst,	$01,	nEb4,	$0B
RadixRun_Loop21:
	dc.b		nRst,	$01,	nD4,	$05
	smpsLoop	$00,	$04,	RadixRun_Loop21
RadixRun_Loop22:
	dc.b		nRst,	$07,	nD4,	$05
	smpsLoop	$00,	$05,	RadixRun_Loop22
	dc.b		nRst,	$01,	nD4,	$0B,	nRst,	$01
	smpsLoop	$01,	$03,	RadixRun_Loop1F
RadixRun_Loop23:
	dc.b		nEb4,	$05,	nRst,	$01
	smpsLoop	$00,	$03,	RadixRun_Loop23
RadixRun_Loop24:
	dc.b		nEb4,	$05,	nRst,	$07
	smpsLoop	$00,	$05,	RadixRun_Loop24
	dc.b		nEb4,	$05,	nRst,	$01,	nEb4,	$0B
RadixRun_Loop25:
	dc.b		nRst,	$01,	nD4,	$05
	smpsLoop	$00,	$04,	RadixRun_Loop25
RadixRun_Loop26:
	dc.b		nRst,	$07,	nD4,	$05
	smpsLoop	$00,	$05,	RadixRun_Loop26
	dc.b		nRst,	$01,	nD4,	$0B
	smpsFMvoice	$03
	dc.b		nRst,	$01,	$7F,	$7F,	$7C,	nC4,	$05
	smpsFMvoice	$03
	smpsJump	RadixRun_FM4

; FM5 Data
RadixRun_FM5:
	smpsFMvoice	$00
	smpsFMvoice	$00
	smpsFMvoice	$00
RadixRun_Loop27:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$0C,	RadixRun_Loop27
	dc.b		$0C
RadixRun_Loop28:
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$13,	nF4,	$05,	nRst,	$13
	dc.b		nF4,	$05,	nRst,	$0D,	nF4,	$0B,	nRst,	$01
	smpsLoop	$00,	$08,	RadixRun_Loop28
RadixRun_Loop29:
	dc.b		$7F
	smpsLoop	$00,	$0C,	RadixRun_Loop29
	dc.b		$0C
RadixRun_Loop2A:
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$13,	nF4,	$05,	nRst,	$13
	dc.b		nF4,	$05,	nRst,	$0D,	nF4,	$0B,	nRst,	$01
	smpsLoop	$00,	$07,	RadixRun_Loop2A
	dc.b		nF4,	$05,	nRst,	$01,	nF4,	$05,	nRst,	$07
	dc.b		nF4,	$05,	nRst,	$13,	nF4,	$05,	nRst,	$13
	dc.b		nF4,	$05,	nRst,	$0D,	nF4,	$0B
	smpsFMvoice	$03
	dc.b		nRst,	$01,	$7F,	$7F,	$7C,	nC4,	$05
	smpsFMvoice	$03
	smpsJump	RadixRun_FM5

; PSG1 Data
RadixRun_PSG1:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$0C
	dc.b		nBb1,	$05,	nRst,	$07,	nA1,	$05,	nRst,	$07
	dc.b		nG1,	$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$07,	nF1,	$05,	nRst,	$07
	dc.b		nG1,	$05,	nRst,	$07,	nD1,	$05,	nRst,	$01
	dc.b		nF1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nBb1,	$05,	nRst,	$07,	nA1,	$05,	nRst,	$07
	dc.b		nG1,	$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$07,	nF1,	$05,	nRst,	$07
	dc.b		nG1,	$1D,	nRst,	$01,	nBb1,	$05,	nRst,	$07
	dc.b		nA1,	$05,	nRst,	$07,	nG1,	$0B,	nRst,	$01
	dc.b		nF1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$07
	dc.b		nF1,	$05,	nRst,	$07,	nG1,	$05,	nRst,	$07
	dc.b		nD1,	$05,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nF1,	$05,	nRst,	$07
	dc.b		nC1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$07
	dc.b		nF1,	$05,	nRst,	$07,	nG1,	$35,	nRst,	$01
	dc.b		nBb1,	$05,	nRst,	$07,	nA1,	$05,	nRst,	$07
	dc.b		nG1,	$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$07,	nF1,	$05,	nRst,	$07
	dc.b		nG1,	$05,	nRst,	$07,	nD1,	$05,	nRst,	$01
	dc.b		nF1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nBb1,	$05,	nRst,	$07,	nA1,	$05,	nRst,	$07
	dc.b		nG1,	$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$07,	nF1,	$05,	nRst,	$07
	dc.b		nG1,	$1D,	nRst,	$01,	nBb1,	$05,	nRst,	$07
	dc.b		nA1,	$05,	nRst,	$07,	nG1,	$0B,	nRst,	$01
	dc.b		nF1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$07
	dc.b		nF1,	$05,	nRst,	$07,	nG1,	$05,	nRst,	$07
	dc.b		nD1,	$05,	nRst,	$01,	nF1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nBb1,	$05,	nRst,	$07
	dc.b		nC2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$07
	dc.b		nBb1,	$05,	nRst,	$07,	nG1,	$35
RadixRun_Loop2B:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop2B
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nA1,	$05,	nRst,	$07,	nF1,	$05
	dc.b		nRst,	$07,	nBb0,	$11
RadixRun_Loop2C:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop2C
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nD2,	$05,	nRst,	$07,	nEb2,	$05
	dc.b		nRst,	$07,	nF2,	$05,	nRst,	$01,	nEb2,	$05
	dc.b		nRst,	$01,	nD2,	$05
RadixRun_Loop2D:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop2D
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nA1,	$05,	nRst,	$07,	nF1,	$05
	dc.b		nRst,	$07,	nBb0,	$11
RadixRun_Loop2E:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop2E
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nD2,	$05,	nRst,	$07,	nEb2,	$05
	dc.b		nRst,	$07,	nF2,	$05,	nRst,	$01,	nEb2,	$05
	dc.b		nRst,	$01,	nC2,	$05,	nRst,	$01,	nD2,	$7F
	dc.b		nRst,	$41,	$7F,	$7F,	$7F,	$7F,	$44,	nBb1
	dc.b		$05,	nRst,	$07,	nA1,	$05,	nRst,	$07,	nG1
	dc.b		$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$07,	nF1,	$05,	nRst,	$07,	nG1
	dc.b		$05,	nRst,	$07,	nD1,	$05,	nRst,	$01,	nF1
	dc.b		$05,	nRst,	$01,	nG1,	$05,	nRst,	$01,	nBb1
	dc.b		$05,	nRst,	$07,	nA1,	$05,	nRst,	$07,	nG1
	dc.b		$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$07,	nF1,	$05,	nRst,	$07,	nG1
	dc.b		$1D,	nRst,	$01,	nBb1,	$05,	nRst,	$07,	nA1
	dc.b		$05,	nRst,	$07,	nG1,	$0B,	nRst,	$01,	nF1
	dc.b		$05,	nRst,	$01,	nG1,	$05,	nRst,	$07,	nF1
	dc.b		$05,	nRst,	$07,	nG1,	$05,	nRst,	$07,	nD1
	dc.b		$05,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$01,	nF1,	$05,	nRst,	$07,	nC1
	dc.b		$05,	nRst,	$01,	nD1,	$05,	nRst,	$07,	nF1
	dc.b		$05,	nRst,	$07,	nG1,	$35,	nRst,	$01,	nBb1
	dc.b		$05,	nRst,	$07,	nA1,	$05,	nRst,	$07,	nG1
	dc.b		$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$07,	nF1,	$05,	nRst,	$07,	nG1
	dc.b		$05,	nRst,	$07,	nD1,	$05,	nRst,	$01,	nF1
	dc.b		$05,	nRst,	$01,	nG1,	$05,	nRst,	$01,	nBb1
	dc.b		$05,	nRst,	$07,	nA1,	$05,	nRst,	$07,	nG1
	dc.b		$0B,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$07,	nF1,	$05,	nRst,	$07,	nG1
	dc.b		$1D,	nRst,	$01,	nBb1,	$05,	nRst,	$07,	nA1
	dc.b		$05,	nRst,	$07,	nG1,	$0B,	nRst,	$01,	nF1
	dc.b		$05,	nRst,	$01,	nG1,	$05,	nRst,	$07,	nF1
	dc.b		$05,	nRst,	$07,	nG1,	$05,	nRst,	$07,	nD1
	dc.b		$05,	nRst,	$01,	nF1,	$05,	nRst,	$01,	nG1
	dc.b		$05,	nRst,	$01,	nBb1,	$05,	nRst,	$07,	nC2
	dc.b		$05,	nRst,	$01,	nD2,	$05,	nRst,	$07,	nBb1
	dc.b		$05,	nRst,	$07,	nG1,	$35
RadixRun_Loop2F:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop2F
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nA1,	$05,	nRst,	$07,	nF1,	$05
	dc.b		nRst,	$07,	nBb0,	$11
RadixRun_Loop30:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop30
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nD2,	$05,	nRst,	$07,	nEb2,	$05
	dc.b		nRst,	$07,	nF2,	$05,	nRst,	$01,	nEb2,	$05
	dc.b		nRst,	$01,	nD2,	$05
RadixRun_Loop31:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop31
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nA1,	$05,	nRst,	$07,	nF1,	$05
	dc.b		nRst,	$07,	nBb0,	$11
RadixRun_Loop32:
	dc.b		nRst,	$01,	nA1,	$05,	nRst,	$07,	nF1,	$05
	smpsLoop	$00,	$02,	RadixRun_Loop32
	dc.b		nRst,	$07,	nBb1,	$35,	nRst,	$01,	nA1,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$01,	nBb0,	$05
	dc.b		nRst,	$07,	nF1,	$05,	nRst,	$07,	nBb1,	$05
	dc.b		nRst,	$07,	nD2,	$05,	nRst,	$07,	nEb2,	$05
	dc.b		nRst,	$07,	nF2,	$05,	nRst,	$01,	nEb2,	$05
	dc.b		nRst,	$01,	nC2,	$05,	nRst,	$01,	nD2,	$7F
	dc.b		nRst,	$40,	$7F,	$3B
	smpsJump	RadixRun_PSG1

RadixRun_PSG2:
RadixRun_PSG3:
	smpsStop


; DAC Data
RadixRun_DAC:
	dc.b		dKick,$0C,dKick
	dc.b		dSnare,$0C,dKick,$18
	dc.b		dKick,$0C,dSnare,$0C
	dc.b		dKick,$0C,dKick,dKick
	dc.b		dSnare,$0C,dKick,$06,dKick,dKick,$0C,dKick,dSnare,$0C
	dc.b		dClap,$06,$06
	smpsLoop	$00,	$10,	RadixRun_DAC

RadixRun_Loop34:
	dc.b		dKick,	$18
	smpsLoop	$00,	$1C,	RadixRun_Loop34 

RadixRun_Loop35:
	dc.b		dSnare,	$06,$06,$06,$0C,$0C,$06,$03,$03,$06,$06,$06
	dc.b		$03,$03,$03,$03
	dc.b		$03,$03,$03,$03
RadixRun_Loop39:
	dc.b		dKick,$0C,dKick
	dc.b		dSnare,$0C,dKick,$18
	dc.b		dKick,$0C,dSnare,$0C
	dc.b		dKick,$0C,dKick,dKick
	dc.b		dSnare,$0C,dKick,$06,dKick,dKick,$0C,dKick,dSnare,$0C
	dc.b		dClap,$06,$06
	smpsLoop	$01,	$05,	RadixRun_Loop39
	smpsJump	RadixRun_DAC

RadixRun_Voices:
	dc.b		$04,$7E,$31,$31,$01,$9F,$5F,$9F,$98,$06,$0D,$04,$04,$04,$08,$03
	dc.b		$03,$56,$56,$43,$45,$3D,$10,$1B,$0C;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$00;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$9F,$9F,$9F,$5F,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$AA,$13,$08,$18,$28,$27,$80;			Voice 02
	dc.b		$0C,$7E,$01,$01,$01,$80,$40,$80,$80,$06,$8D,$04,$04,$04,$08,$03
	dc.b		$03,$56,$56,$43,$45,$3D,$10,$1B,$0C;			Voice 03
	even
