; ===========================================================================
; Sonic 2 prototype spin dash
; ===========================================================================
Sonic_Spindash:
        tst.b   $39(a0)
        bne.s   loc_10594
        cmpi.b  #$8, $1C(a0)
        bne.s   loc_10592
        move.b  ($FFFFF603).w,d0
        andi.b  #$70,d0
        beq     loc_10592
        move.b  #$2, $1C(a0)
        move.w  #$800, $14(a0)
        move.w  #$BE,d0
        jsr     PlaySound
        addq.l  #$4,a7
        move.b  #$1, $39(a0)
loc_10592:
        rts
loc_10594:
        move.b  ($FFFFF602).w,d0
        btst    #$1,d0
        bne.s   loc_105DA
        move.b  #$E, $16(a0)
        move.b  #$7, $17(a0)
        move.b  #$2, $1C(a0)
        addq.w  #$5, $C(a0)
        move.b  #$00, $39(a0)
        ;move.w  #$2000,($FFFFEED0).w
        ;move.w  #$800, $14(a0)
        btst    #$00, $22(a0)
        beq.s   loc_105D2
        neg.w   $14(a0)
loc_105D2:
        bset    #$2, $22(a0)
        rts
loc_105DA:
        move.b  ($FFFFF603).w,d0
        andi.b  #$70,d0
        beq     loc_105E8
        nop
loc_105E8:
        addq.l  #$4,a7
        rts
; ===========================================================================