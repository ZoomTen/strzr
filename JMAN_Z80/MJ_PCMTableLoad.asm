; ===========================================================================
; MJ: You're limit is "DF" (5F samples) because the SMPS engine doesn't allow
; notes higher than "DF" ("E0" to "FF" are flags, and "00" to "7F" are timers).
; ---------------------------------------------------------------------------
PCM:		macro	Pitch, Location
		dc.w	(((((Location&$000000FF)<<$08)+((Location&$00007F00)>>$08))!$0080)&$FFFF)
		dc.w	(((((((\Location\_End-$02)-Location)&$000000FF)<<$08)+((((\Location\_End-$02)-Location)&$00007F00)>>$08))/$02)&$FFFF)
		dc.b	Pitch
		dc.b	((Location&$00008000)>>$08)
		dc.b	((Location&$003F0000)>>$10)
		dc.b	$00
		even
		endm
; ---------------------------------------------------------------------------
incpcm:		macro	File
		if ((*+filesize("JMAN_Z80/Samples/\File\.wav"))&$FF8000)>(*&$FF8000)
		align $8000
		endc
		if (*+filesize("JMAN_Z80/Samples/\File\.wav"))>($803A-$02)
\File\:			incbin	"JMAN_Z80/Samples/\File\.wav", $3A, $8000-$02
			dc.b	$80,$80
\File\_End:		even
		else
\File\:			incbin	"JMAN_Z80/Samples/\File\.wav", $3A
			dc.b	$80,$80
\File\_End:		even
		endc
		endm

NULL:
NULL_End:
; ---------------------------------------------------------------------------
incraw:		macro	File
		align $8000
\File\:			incbin	"JMAN_Z80/Raw/\File\.snd"
			dc.b	$80,$80
\File\_End:		even
		endm
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; PCM Playback Driver (Z80)
; ---------------------------------------------------------------------------

Kos_Z80:	incbin	"JMAN_Z80/KOSZ80.bin"
		even
; ===========================================================================
; ---------------------------------------------------------------------------
; Z80 Table Switcher Routine
; ---------------------------------------------------------------------------

PCMTableLoad:
		cmpi.w	#$1,($FFFFFFB2).w
		beq.s	@LoadS2
		cmpi.w	#$2,($FFFFFFB2).w
		beq.s	@LoadS3K
		cmpi.w	#$3,($FFFFFFB2).w
		beq.s	@Load118
		lea	PCM_Table(pc),a0			; MJ: load the PCM table address to a0
		bra.s	@Cont
@LoadS2: 	lea	S2_Table(pc),a0				; MJ: load the PCM table address to a0
		bra.s	@Cont
@LoadS3K:	lea	S3K_Table(pc),a0			; MJ: load the PCM table address to a0
		bra.s	@Cont
@Load118:	lea	Demo_Table(pc),a0			; MJ: load the PCM table address to a0
@Cont:		lea	($A00150).l,a1				; MJ: load the Z80 area to dump the table
		lsl.w	#$03,d0					; MJ: multiply sample ID by 8
		lea	(a0,d0.w),a0				; MJ: add to table address
		move.b	(a0)+,(a1)+				; MJ: dump data to Z80 table
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		move.b	(a0)+,(a1)+				; MJ: ''
		rts						; MJ: return
; ===========================================================================

; ---------------------------------------------------------------------------
; PCM Table Data
; ---------------------------------------------------------------------------
PCM_Table:
		PCM	$04, RealDrum_K				; 81 ; Kick
		PCM	$04, RealDrum_S				; 82 ; Snare
		PCM	$03, GUS_HandClap			; 83 ; Clap
		PCM	$02, RealDrum_Tom			; 84 ; Tom (high)
		PCM	$06, RealDrum_Tom			; 85 ; Tom (mid)
		PCM	$0A, RealDrum_Tom			; 86 ; Tom (low)
		PCM	$0D, RealDrum_Tom			; 87 ; Tom (floor)
		PCM	$07, GUS_Timpani			; 88 ; Timpani (hi)
		PCM	$0A, GUS_Timpani			; 89 ; Timpani (mid)
		PCM	$0D, GUS_Timpani			; 8A ; Timpani (low)
		PCM	$10, GUS_Timpani			; 8B ; Timpani (lower)
		PCM	$04, RealDrum_S				; 8C ; Snare (idkwhy)
		PCM	$04, RealDrum_Crash			; 8D ; 909 Crash + Kick
		
S2_Table:
		PCM	$17, S1Kick				; 81 ; Kick
		PCM	$04, S1Snare				; 82 ; Snare
		PCM	$06, S2Clap				; 83 ; Clap
		PCM	$05, S2Tom				; 84 ; Tom (high)
		PCM	$08, S2Tom				; 85 ; Tom (mid)
		PCM	$0B, S2Tom				; 86 ; Tom (low)
		PCM	$0D, S2Tom				; 87 ; Tom (floor)
		PCM	$15, S1Timpani				; 88 ; Timpani (hi)
		PCM	$18, S1Timpani				; 89 ; Timpani (mid)
		PCM	$1F, S1Timpani				; 8A ; Timpani (low)
		PCM	$20, S1Timpani				; 8B ; Timpani (lower)
		PCM	$04, S1Snare				; 8C ; Snare (idkwhy)
		PCM	$08, S3Cymbal				; 8D ; Cymbal
		
S3K_Table:
		PCM	$06, S3Kick				; 81 ; Kick
		PCM	$06, S3Snare				; 82 ; Snare
		PCM	$08, S3Clap				; 83 ; Clap
		PCM	$10, S3Tom				; 84 ; Tom (high)
		PCM	$16, S3Tom				; 85 ; Tom (mid)
		PCM	$1C, S3Tom				; 86 ; Tom (low)
		PCM	$22, S3Tom				; 87 ; Tom (floor)
		PCM	$0D, S3Timpani				; 88 ; Timpani (hi)
		PCM	$15, S3Timpani				; 89 ; Timpani (mid)
		PCM	$18, S3Timpani				; 8A ; Timpani (low)
		PCM	$1B, S3Timpani				; 8B ; Timpani (lower)
		PCM	$06, S3KS				; 8C ; Kick + Snare
		PCM	$08, S3Cymbal				; 8D ; Cymbal
		
Demo_Table:
		PCM	$06, StR118_Kick			; 81 ; Kick
		PCM	$04, StR118_Snare			; 82 ; Snare
		PCM	$06, S2Clap				; 83 ; Clap
		PCM	$05, S2Tom				; 84 ; Tom (high)
		PCM	$08, S2Tom				; 85 ; Tom (mid)
		PCM	$0B, S2Tom				; 86 ; Tom (low)
		PCM	$0D, S2Tom				; 87 ; Tom (floor)
		PCM	$15, S1Timpani				; 88 ; Timpani (hi)
		PCM	$18, S1Timpani				; 89 ; Timpani (mid)
		PCM	$1F, S1Timpani				; 8A ; Timpani (low)
		PCM	$20, S1Timpani				; 8B ; Timpani (lower)
		PCM	$04, S1Snare				; 8C ; Snare (idkwhy)
		PCM	$08, S3Cymbal				; 8D ; Cymbal

; ===========================================================================

; ---------------------------------------------------------------------------
; includes
; ---------------------------------------------------------------------------
		incpcm	RealDrum_K
		incpcm	RealDrum_S
		incpcm	GUS_Timpani
		incpcm	RealDrum_Tom
		incpcm	GUS_HandClap
		incpcm	RealDrum_Crash

		incpcm	S1Kick
		incpcm	S1Snare
		incraw	S1Timpani
		incraw	S2Tom
		incraw	S2Clap
		
		incraw	S3Kick
		incraw	S3Snare
		incraw	S3Tom
		incraw	S3Cymbal
		incraw	S3Timpani
		incraw	S3Clap
		incraw	S3KS
		
		incraw	StR118_Kick
		incraw	StR118_Snare
; ===========================================================================