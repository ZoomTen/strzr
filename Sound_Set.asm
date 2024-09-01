; ---------------------------------------------------------------------------
; Music	Pointers
; ---------------------------------------------------------------------------
MusicIndex:	dc.l Music81, Music82
		dc.l Music83, Music84
		dc.l Music85, Music86
		dc.l Music87, Music88
		dc.l Music89, Music8A
		dc.l Music8B, Music8C
		dc.l Music8D, Music8E
		dc.l Music8F, Music90
		dc.l Music91, Music92
		dc.l Music93, Music94
		dc.l Music95, Music96
		dc.l Music97, Music98
		dc.l Music99, Music9A
		dc.l Music9B, Music9C
		dc.l Music9D, Music9E
                dc.l Music9F

;Green Hill Zone
Music81:	include	"#STRZR/snd/RadixRun_opt.asm"
		even
Music82:	incbin	newsound\ghz2.bin
		even
Music83:	include	newsound\ghz3.asm
		even

;Labyrinth Zone
Music84:	incbin	newsound\lz1.bin
		even
Music85:	incbin	newsound\lz2.bin
		even
Music86:	incbin	newsound\lz3.bin
		even

;Marble Zone
Music87:	include	newsound\87.asm
		even
Music88:	incbin	newsound\mz2.bin
		even
Music89:	incbin	newsound\mz3.bin
		even
		
;Star Light Zone
Music8A:	incbin	newsound\slz1.bin
		even
Music8B:	incbin	newsound\slz2.bin
		even
Music8C:	incbin	newsound\slz3.bin
		even
		
;Spring Yard Zone
Music8D:	include	newsound\84.asm
		even
Music8E:	incbin	"newsound\Sonic 2 - Casino Night.bin"
		even
Music8F:	incbin	"newsound\Sonic 2 - Casino Night (2P).bin"
		even
		
;Scrap Brain Zone
Music90:	incbin	newsound\sbz1.bin
		even
Music91:	incbin	newsound\sbz2.bin
		even
Music92:	include	newsound\futurefballs.asm
		even

;Final Zone
Music93:	include newsound\1A.asm
		even
		
; Vladikcomper:	Here goes extra music slots to fit 3 different songs per zone
; [Zy BG9K: That means the miscellaneous songs have to be relocated.. here]

;Continue
Music94:	incbin	newsound\music94.bin
		even

;Special Stage
Music95:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"
		even

;Emerald Get
Music96:	incbin	newsound\music96.bin
		even

;Ending
Music97:	incbin	newsound\music97.bin
		even
		
;Invincible
Music98:	incbin	newsound\music98.bin
		even
		
;Act Clear
Music99:	include	"#STRZR/snd/ChaotixClear.asm"
		even

;Countdown
Music9A:	incbin	newsound\music9A.bin
		even
		
;Title Screen
Music9B:	include	"#STRZR/snd/EndlessPossibility.asm"
		even

;Boss
Music9C:	include	"newsound\music9c.asm"
		even
		
;Staff Roll
Music9D:	incbin	newsound\music9D.bin
		even

;Game Over
Music9E:	incbin	newsound\music9E.bin
		even
		
;1-up
Music9F:	incbin	newsound\music9F.bin
		even
; ---------------------------------------------------------------------------
; Sound	effect pointers
; ---------------------------------------------------------------------------

SoundIndex:	dc.l SoundA0, SoundA1, SoundA2
		dc.l SoundA3, SoundA4, SoundA5
		dc.l SoundA6, SoundA7, SoundA8
		dc.l SoundA9, SoundAA, SoundAB
		dc.l SoundAC, SoundAD, SoundAE
		dc.l SoundAF, SoundB0, SoundB1
		dc.l SoundB2, SoundB3, SoundB4
		dc.l SoundB5, SoundB6, SoundB7
		dc.l SoundB8, SoundB9, SoundBA
		dc.l SoundBB, SoundBC, SoundBD
		dc.l SoundBE, SoundBF, SoundC0
		dc.l SoundC1, SoundC2, SoundC3
		dc.l SoundC4, SoundC5, SoundC6
		dc.l SoundC7, SoundC8, SoundC9
		dc.l SoundCA, SoundCB, SoundCC
		dc.l SoundCD, SoundCE, SoundCF
                dc.l SoundD1

SoundD0Index:	dc.l SoundD0
SoundA0:	incbin	newsound\soundA0_new.bin ;SCD sound
		even
SoundA1:	incbin	newsound\soundA1.bin
		even
SoundA2:	incbin	newsound\soundA2.bin
		even
SoundA3:	incbin	newsound\soundA3.bin
		even
SoundA4:	incbin	newsound\soundA4_new.bin ;SCD sound
		even
SoundA5:	incbin	newsound\soundA5.bin
		even
SoundA6:	incbin	newsound\soundA6.bin
		even
SoundA7:	incbin	newsound\soundA7.bin
		even
SoundA8:	incbin	newsound\soundA8.bin
		even
SoundA9:	incbin	newsound\soundA9.bin
		even
SoundAA:	incbin	newsound\soundAA.bin
		even
SoundAB:	incbin	newsound\soundAB.bin
		even
SoundAC:	incbin	newsound\soundAC.bin
		even
SoundAD:	incbin	newsound\soundAD.bin
		even
SoundAE:	incbin	newsound\soundAE.bin
		even
SoundAF:	incbin	newsound\soundAF.bin
		even
SoundB0:	incbin	newsound\soundB0.bin
		even
SoundB1:	incbin	newsound\soundB1.bin
		even
SoundB2:	incbin	newsound\soundB2.bin
		even
SoundB3:	incbin	newsound\soundB3.bin
		even
SoundB4:	incbin	newsound\soundB4.bin
		even
SoundB5:	incbin	newsound\soundB5.bin
		even
SoundB6:	incbin	newsound\soundB6.bin
		even
SoundB7:	incbin	newsound\soundB7.bin
		even
SoundB8:	incbin	newsound\soundB8.bin
		even
SoundB9:	incbin	newsound\soundB9.bin
		even
SoundBA:	incbin	newsound\soundBA.bin
		even
SoundBB:	incbin	newsound\soundBB.bin
		even
SoundBC:	incbin	newsound\soundBC.bin
		even
SoundBD:	incbin	newsound\soundBD.bin
		even
SoundBE:	incbin	newsound\soundBE.bin
		even
SoundBF:	incbin	newsound\soundBF.bin
		even
SoundC0:	incbin	newsound\soundC0.bin
		even
SoundC1:	incbin	newsound\soundC1.bin
		even
SoundC2:	incbin	newsound\soundC2.bin
		even
SoundC3:	incbin	newsound\soundC3.bin
		even
SoundC4:	incbin	newsound\soundC4.bin
		even
SoundC5:	incbin	newsound\soundC5.bin
		even
SoundC6:	incbin	newsound\soundC6.bin
		even
SoundC7:	incbin	newsound\soundC7.bin
		even
SoundC8:	incbin	newsound\soundC8.bin
		even
SoundC9:	incbin	newsound\soundC9.bin
		even
SoundCA:	incbin	newsound\soundCA.bin
		even
SoundCB:	incbin	newsound\soundCB.bin
		even
SoundCC:	incbin	newsound\soundCC.bin
		even
SoundCD:	incbin	newsound\soundCD.bin
		even
SoundCE:	incbin	newsound\soundCE.bin
		even
SoundCF:	incbin	newsound\soundCF.bin
		even
SoundD0:	incbin	newsound\soundD0.bin
		even
SoundD1:	incbin	newsound\soundD2.bin
		even
SegaPCM:	incbin	#SEGA_Logo\Sega29000Hz.bin    ;29000 Hz SEGA sound

SegaPCM_End
		even
; ---------------------------------------------------------------------------
; Music	Pointers
; ---------------------------------------------------------------------------
ExMusicIndex:
	        dc.l MusicE5, MusicE6
		dc.l MusicE7, MusicE8
		dc.l MusicE9, MusicEA
		dc.l MusicEB, MusicEC
		dc.l MusicED, MusicEE
		dc.l MusicEF, MusicF0
		dc.l MusicF1, MusicF2
		dc.l MusicF3, MusicF4
		dc.l MusicF5, MusicF6
		dc.l MusicF7, MusicF8
		dc.l MusicF9, MusicFA
		dc.l MusicFB, MusicFC
		dc.l MusicFD, MusicFE
		dc.l MusicFF

MusicE5:	include newsound/musicE5.asm		; Level Select & Options
		even
MusicE6:	include	"#STRZR/snd/NGOpen02.asm"			; Cutscene Theme 1
		even
MusicE7:	include	newsound/musicE7.asm		; Cutscene Theme 2
		even
MusicE8:	include	"#STRZR/snd/GH_AllClear.asm"			; All Clear!
		even
MusicE9:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicEA:	include	newsound/final.asm		; Hidden 3 [XXXXXX]
		even
MusicEB:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicEC:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicED:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicEE:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicEF:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicF0:	include	newsound/musicF0.asm		; Ending & Credits
		even
MusicF1:	incbin	"#STRZR/snd/FNAF_Looped.bin"			; PROVISORY
		even
MusicF2:	incbin	"#STRZR/snd/FNAF_NonLooped.bin"		; PROVISORY
		even
MusicF3:	incbin	"#STRZR/snd/BelovedTomboySis.bin"		; PROVISORY
		even
MusicF4:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicF5:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicF6:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicF7:	incbin	"#STRZR/snd/Ylvis_WhatDoesTheFoxSay.BIN"	; Hidden 4 [What Does The Firefox Say?]
		even
MusicF8:	include	"#STRZR/snd/samroll.asm"			; Hidden 2 [Samroll'd]
		even
MusicF9:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicFA:	incbin	"#STRZR/snd/M&SatOG_DS_CircuitResults_v2.bin"; PROVISORY
		even
MusicFB:	include	newsound/musicFB.asm		; Hidden 1 [Sam & Dash]
		even
MusicFC:	include	newsound/29.asm		; SFCW Splash Music [Type A]
		even
MusicFD:	include	"#STRZR/snd/RistarSEGA.asm"			; SFCW Splash Music [Type B]
		even
MusicFE:	include	newsound\s3k_zone_end.asm	; SFCW Splash Music [Type C]
		even
MusicFF:	include	"#STRZR/snd/TH01_01.asm"			; PROVISORY
		even