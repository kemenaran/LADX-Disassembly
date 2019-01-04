; Disassembly of "game.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

; Data for sprite loading - 3 bytes per sprite ID
; Sprite ID table
; 36 - Heart Container
; 3D - Secret Seashell
;
data_020_4000:
    db $34, $6A, $03, $61, $44, $19, $96, $66, $03, $E3, $7B, $18, $B2, $69, $03, $28
    db $53, $03, $49, $52, $03, $DD, $7B, $07, $66, $79, $18, $E9, $57, $03, $26, $6A
    db $03, $27, $58, $03, $CC, $6A, $03, $C7, $78, $06, $F5, $7E, $04, $4E, $74, $06
    db $0D, $5C, $04, $08, $5C, $04, $0D, $5C, $04, $D8, $59, $03, $41, $79, $07, $76
    db $78, $06, $35, $66, $06, $35, $66, $06, $7B, $73, $06, $30, $67, $06, $B4, $4A
    db $06, $19, $7C, $06, $FE, $7B, $06, $00, $00, $00, $96, $4E, $15, $85, $7E, $06
    db $3C, $4F, $06, $28, $76, $06, $F1, $65, $06, $DC, $7D, $06, $FB, $4F, $03, $44
    db $4C, $03, $44, $4C, $03, $10, $75, $06, $AF, $6A, $19, $95, $5A, $04, $61, $6C
    db $04, $D6, $75, $15, $A4, $77, $07, $38, $5D, $03, $9E, $60, $03, $5B, $61, $03
    db $89, $5C, $03, $99, $5B, $03, $88, $5B, $03, $6D, $5B, $03, $5D, $5B, $03, $51
    db $5A, $03, $DC, $59, $03, $7D, $60, $03, $C2, $5F, $03, $93, $5D, $03, $4B, $5D
    db $03, $57, $60, $03, $FD, $5F, $03, $D3, $5F, $03, $62, $4E, $05, $6A, $49, $05
    db $D3, $47, $05, $F5, $67, $06, $7A, $5E, $18, $93, $44, $15, $3F, $44, $15, $65
    db $43, $15, $00, $41, $15, $CA, $41, $15, $3C, $42, $15, $AE, $42, $15, $7F, $58
    db $36, $26, $53, $03, $00, $00, $00, $EB, $76, $04, $CA, $76, $04, $7C, $6E, $04
    db $A9, $79, $06, $AE, $69, $04, $24, $68, $04, $24, $68, $04, $5C, $5F, $04, $0D
    db $7E, $04, $1F, $7D, $04, $F1, $5D, $04, $FC, $5E, $04, $AD, $56, $04, $70, $50
    db $04, $C9, $49, $04, $00, $40, $04, $DC, $6C, $05, $E5, $7B, $05, $41, $6A, $07
    db $6F, $68, $05, $11, $42, $19, $14, $63, $05, $80, $5A, $05, $E9, $5D, $18, $76
    db $55, $05, $24, $43, $15, $6B, $55, $05, $38, $74, $15, $CE, $53, $18, $5E, $53
    db $05, $85, $5D, $18, $24, $45, $05, $38, $40, $05, $C9, $6B, $06, $DA, $48, $19
    db $0E, $62, $06, $7F, $60, $06, $7F, $60, $06, $0E, $62, $06, $47, $4E, $18, $17
    db $4D, $18, $9D, $4B, $18, $0E, $5C, $06, $E8, $59, $06, $76, $5B, $06, $99, $5C
    db $06, $95, $5E, $06, $B3, $62, $06, $9F, $63, $06, $FC, $63, $06, $01, $73, $18
    db $7C, $6A, $06, $6D, $6C, $06, $E3, $6E, $06, $F8, $7C, $15, $A7, $70, $06, $3C
    db $72, $06, $0B, $7B, $06, $E8, $55, $06, $DE, $52, $06, $B8, $4F, $06, $1F, $6E
    db $36, $1F, $6E, $36, $A1, $4E, $06, $15, $4F, $06, $7A, $4B, $06, $BC, $47, $19
    db $31, $49, $06, $3A, $42, $06, $09, $45, $06, $4A, $41, $06, $98, $71, $07, $20
    db $40, $06, $C0, $5B, $19, $47, $48, $19, $F2, $75, $07, $35, $75, $07, $06, $74
    db $07, $AF, $72, $07, $5B, $72, $07, $22, $40, $19, $1C, $71, $07, $DA, $65, $07
    db $09, $67, $07, $4E, $68, $07, $D5, $6E, $36, $58, $63, $07, $58, $63, $07, $32
    db $64, $07, $D2, $61, $07, $C0, $5D, $07, $07, $60, $07, $F9, $5B, $07, $54, $6B
    db $19, $54, $6B, $19, $C7, $6B, $19, $42, $58, $07, $4D, $56, $07, $10, $55, $07
    db $22, $53, $07, $0C, $51, $07, $0D, $75, $15, $97, $4C, $07, $B1, $4E, $07, $B5
    db $4B, $07, $1B, $4A, $07, $BB, $46, $07, $84, $42, $07, $59, $77, $18, $21, $78
    db $18, $22, $40, $07, $D6, $6F, $18, $FC, $69, $18, $CC, $64, $18, $8D, $63, $18
    db $92, $62, $18, $8A, $61, $18, $D7, $5E, $18, $00, $40, $18, $01, $55, $18, $AB
    db $73, $15, $30, $73, $15, $00, $45, $18, $A6, $52, $18, $F8, $7E, $05, $DD, $4E
    db $18, $D4, $49, $18, $BB, $44, $15, $11, $6F, $19, $38, $49, $18, $BC, $71, $19
    db $2E, $7F, $05, $96, $7F, $15, $6B, $52, $18, $D8, $51, $18, $18, $5E, $19, $DC
    db $59, $19, $DD, $58, $19, $C5, $56, $19, $B4, $57, $19, $8B, $55, $19, $F0, $53
    db $19, $90, $53, $19, $BD, $51, $19, $75, $7E, $15, $CB, $4A, $19, $24, $45, $19
    db $7B, $76, $15, $9D, $78, $15, $43, $4D, $15, $E1, $4B, $15, $B6, $46, $15, $1C
    db $7B, $06, $80, $50, $15, $9F, $40, $15, $87, $7A, $17, $68, $66, $36, $68, $66
    db $36, $68, $66, $36, $C9, $63, $36, $C9, $63, $36, $C9, $63, $36, $41, $62, $36
    db $41, $62, $36, $41, $62, $36, $A2, $5F, $36, $A2, $5F, $36, $F7, $5B, $36, $5E
    db $5B, $36, $3F, $59, $36, $3F, $59, $36, $E2, $54, $36, $B6, $4C, $36, $12, $49
    db $36, $F0, $EB, $5F, $50, $21, $00, $40, $19, $19, $19, $5E, $23, $56

    inc hl
    ld a, [hl]
    ld l, e
    ld h, d
    ret


    ld a, [$c5a0]
    ld [$c5a1], a
    xor a
    ld [$c5a0], a
    ld [wC10c], a
    ldh [hFFB2], a
    ld [wC117], a
    ld [$c19d], a
    ld [$c147], a
    ld [$c5a8], a
    ld [$d45e], a
    ret


    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld l, [hl]
    ld d, c
    ld l, l
    ld d, b
    ld c, h
    ld c, e
    xor a
    ld c, a
    ld c, h
    ld c, e
    xor a
    ld c, a
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld e, h
    ld c, e
    ld c, h
    ld c, e
    or l
    ld c, a
    or l
    ld c, a
    or l
    ld c, a
    rst $10
    ld e, c
    ld [c], a
    ld c, [hl]
    xor b
    ld c, [hl]
    adc $4e
    call nz, $4c4e
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld d, e
    ld c, c
    ld c, h
    ld c, e
    rst $10
    ld c, [hl]
    ld [de], a
    dec sp
    ld [de], a
    dec sp
    ld c, h
    ld c, e
    rst $10
    ld c, [hl]
    ld c, h
    ld c, e
    ld [de], a
    dec sp
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld b, h
    ld c, h
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    xor e
    dec a
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld e, $4f
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    dec l
    ld c, a
    ld a, b
    ld c, d
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    ld d, [hl]
    ld c, e
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    and c
    ld c, a
    ld d, [hl]
    ld c, e
    ld e, $4f
    ld e, $4f
    ei
    ld c, [hl]
    add b
    ld c, d
    adc $4a
    ld b, d
    ld c, e
    ld [hl], e
    ld c, d
    ld c, h
    ld c, e
    and c
    ld c, a
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    rra
    ld c, h
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld b, e
    ld c, e
    ld c, h
    ld c, e
    dec [hl]
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    dec [hl]
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    or [hl]
    dec a
    pop bc
    dec a
    call z, $d73d
    dec a
    ld [c], a
    dec a
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    db $ed
    dec a
    ld [hl], b
    ld c, a
    ld hl, sp+$3d
    inc bc
    ld a, $57
    ld c, e
    ld c, $3e
    ld c, h
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    call nc, $1b49
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld e, e
    ld c, d
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    cpl
    ld c, e
    add hl, de
    ld c, d
    daa
    ld c, d
    cpl
    ld c, e
    cpl
    ld c, e
    cpl
    ld c, e
    jr z, jr_020_445a

    cpl
    ld c, e
    ld d, [hl]
    ld c, e
    ld c, $4b
    ld d, [hl]
    ld c, e
    cpl
    ld c, e
    add e
    ld c, a
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld a, h
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    xor l
    ld c, c
    inc [hl]
    ld c, d
    ld d, [hl]
    ld c, e
    db $f4
    ld c, c
    ld [c], a
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    add e
    ld c, a
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ret z

    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    add b
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld h, $49
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e

jr_020_445a::
    xor b
    ld c, [hl]
    ld d, [hl]
    ld c, e
    jp nz, Jump_020_5649

    ld c, e
    ld d, [hl]
    ld c, e
    dec a
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    or l
    ld c, c
    ld c, h
    ld c, e
    ld l, b
    ld c, a
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    add e
    ld c, a
    ld [hl], h
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    or c
    ld c, c
    ld d, [hl]
    ld c, e
    ld h, l
    ld c, c
    ld [hl], e
    ld c, c
    add e
    ld c, a
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld e, d
    ld c, c
    inc [hl]
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld h, c
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    xor b
    ld c, [hl]
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    and $49
    and [hl]
    ld c, c
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    ld c, e
    add c
    ld c, e
    add c
    ld c, e
    add c
    ld c, e
    adc a
    ld c, e
    sbc d
    ld c, e
    and [hl]
    ld c, e
    ret nz

    ld c, e
    cp b
    ld c, e
    call c, Call_020_564b
    ld c, e
    db $eb
    ld c, e
    ld bc, $2d4c
    ld c, h
    bit 1, e
    ld d, [hl]
    ld c, e
    ldh a, [$eb]
    ld e, a
    ld d, $00
    ld hl, $4322
    sla e
    rl d
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    ret


    nop
    nop
    call z, Call_020_4856
    ld h, a
    ld [hl], $63
    jr z, jr_020_4598

    ld c, l
    ld h, h
    adc c
    ld h, l
    ld d, c
    sub $e9
    ld h, d
    ret


    ld h, a
    adc a
    ld l, c
    or $68
    ld h, b
    ld h, [hl]
    ld l, l
    ld l, d
    xor $6a
    add b
    ld l, l
    adc e
    ld l, a
    ld a, [bc]
    ld [hl], c
    ld [hl+], a
    ld [hl], h
    db $e3
    ld [hl], l
    xor b
    ld h, d
    add e
    ld [hl], d
    adc h
    ld d, a
    push af
    ld e, d
    ret z

    ld e, e
    inc c
    ld e, l
    ld e, e
    ld e, [hl]
    ld b, a
    ld e, a
    inc b
    ld h, b
    inc b
    ld h, b
    sbc d
    ld c, [hl]
    ld d, b
    ld d, b
    rst $28
    ld d, c
    adc [hl]
    ld d, e
    dec l
    ld d, l
    add c
    ld [hl], a
    call nc, $374d
    ld l, h
    ld hl, $452b
    ld b, $00
    ld a, [wBGMapToLoad]
    sla a
    ld c, a
    add hl, bc
    ld a, [hl]
    ld e, a
    inc hl
    ld a, [hl]
    ld d, a
    ret


    ld c, h
    ld h, d
    ld h, e
    ld h, [hl]
    ld l, e
    ld h, e
    ld h, l
    ld h, h
    ld h, b
    ld c, h
    ld c, l
    ld c, h
    ld c, h
    ld c, h
    ld c, [hl]

jr_020_4598::
    ld c, [hl]
    ld c, [hl]
    ld c, l
    ld c, l
    ld c, a
    ld h, c
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld c, l
    ld b, b
    ld b, b
    ld l, h
    ld b, b
    ld b, b
    ld l, h
    ld b, b
    ld l, [hl]
    ld c, d
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld c, b
    ld b, [hl]
    ld c, b
    ld c, d
    ld b, b
    ld b, [hl]
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld b, [hl]
    ld c, d
    ld a, c
    ld a, c
    ld [hl], a
    ld a, c
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    ld h, e
    ld a, d
    nop
    nop
    nop
    ld a, e
    ld a, e
    ld a, e
    ld a, d
    ld a, e
    ld a, c
    ld a, h
    ld a, d
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, e
    ld a, d
    ld e, [hl]
    dec l
    ld e, [hl]
    dec l
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld e, [hl]
    dec l
    ld e, [hl]
    dec l
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld d, b
    dec l
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld d, b
    dec l
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    ld h, d
    dec [hl]
    push de
    ldh a, [hMapIndex]
    and a
    jr z, jr_020_4620

    cp $05
    jr nz, jr_020_4640

jr_020_4620::
    ld a, [$d6fb]
    and a
    jr z, jr_020_4640

    ld a, c
    cp $40
    jr z, jr_020_462f

    cp $80
    jr nz, jr_020_4640

jr_020_462f::
    xor $c0
    ld l, a
    ld h, $5e
    ld a, [$d6fb]
    ldh [$bb], a
    ld [$d6fa], a
    pop de
    ld a, $2d
    ret


jr_020_4640::
    ld hl, $45ea
    ldh a, [hMapIndex]
    sla a
    ld e, a
    ld d, $00
    add hl, de
    inc hl
    ld a, [hl]
    ld e, a
    dec hl
    ld a, [hl]
    ld h, a
    ld l, $00
    add hl, bc
    ld a, e
    pop de
    ret


    dec e
    sla e
    ld d, $00
    ld hl, $4664
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    sbc e
    jr nc, @-$07

    jr z, @-$2f

jr_020_4669::
    dec hl
    inc bc
    inc l
    dec l
    dec l
    jr z, jr_020_469c

    dec l
    dec l
    ldh a, [$28]
    ld [hl], e
    ld l, $69
    inc b
    jp hl


    dec l
    ld l, c
    inc b
    ld e, [hl]
    ld l, $fc
    jr c, jr_020_4669

    jr z, jr_020_46fc

    dec l
    and a
    dec l
    db $10
    ld l, $41
    ld l, $06
    ld l, $66
    ld a, [hl+]
    cp $2a
    ld sp, hl
    ld a, [hl+]
    ld [$812a], a
    dec hl
    ld [hl], d
    dec hl
    ld h, $2b
    ld [hl], d
    dec hl

jr_020_469c::
    xor [hl]
    ld a, [hl+]
    scf
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    dec bc
    ld l, $21
    ld l, $15
    add hl, sp
    dec e
    add hl, sp
    ld d, c
    dec [hl]
    ld c, a
    dec [hl]
    nop
    nop
    ld c, e
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    dec [hl]
    ld c, [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld sp, $0000
    ld c, h
    dec [hl]
    ld d, c
    ld l, $45
    dec [hl]
    ld b, l
    dec [hl]
    nop
    nop
    ld b, l
    dec [hl]
    nop
    nop
    ld b, l
    dec [hl]
    nop
    nop
    ld c, c
    dec [hl]
    nop
    nop
    nop
    nop
    ld b, l
    dec [hl]
    nop
    nop
    ld b, l
    dec [hl]
    nop
    nop

jr_020_46fc::
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    ld c, d
    dec [hl]
    nop
    nop
    ld b, [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    dec [hl]
    nop
    nop
    ld b, a
    dec [hl]
    ld b, a
    dec [hl]
    nop
    nop
    ld b, a
    dec [hl]
    nop
    nop
    ld b, a
    dec [hl]
    ld b, a
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    dec [hl]
    nop
    nop
    ld hl, $46aa
    ldh a, [hMapIndex]
    rla
    ld e, a
    ld d, $00
    inc e
    push de
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_4776

    ld d, a
    dec hl
    ld a, [hl]
    ld b, a
    ld c, $04
    ld a, d
    ld h, $20
    call label_A13

jr_020_4776::
    pop de
    push de
    ld hl, $46d6
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_478c

    ld d, a
    dec hl
    ld a, [hl]
    ld b, a
    ld c, $05
    ld a, d
    ld h, $20
    call label_A13

jr_020_478c::
    pop de
    push de
    ld hl, $4702
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_47a2

    ld d, a
    dec hl
    ld a, [hl]
    ld b, a
    ld c, $06
    ld a, d
    ld h, $20
    call label_A13

jr_020_47a2::
    pop de
    ld hl, $472e
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_47b7

    ld d, a
    dec hl
    ld a, [hl]
    ld b, a
    ld c, $07
    ld a, d
    ld h, $20
    call label_A13

jr_020_47b7::
    ldh a, [hMapIndex]
    cp $01
    jr nz, jr_020_47c2

    ld a, $20
    call label_A32

jr_020_47c2::
    ret


    nop
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ldh a, [hMapIndex]
    ld c, a
    ld hl, $47cb
    ld a, b
    and a
    jr z, jr_020_4804

    ld hl, $47e1

jr_020_4804::
    ld b, $00
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld b, a
    ld c, $00
    ldh a, [$a6]
    rra
    rra
    rra
    and $07
    ld e, a
    ld d, $00
    ld hl, $47c3
    add hl, de
    ld l, [hl]
    ld h, $00
    ld de, $6000
    add hl, bc
    add hl, de
    ld de, $8fc0
    ld bc, $0040
    ld a, $35
    and a
    ret


    di
    ld bc, $d700
    ld de, $d000
    ld hl, $ff70

jr_020_4837::
    ld a, [bc]
    cp $56
    jr z, jr_020_4840

    cp $57
    jr nz, jr_020_484b

jr_020_4840::
    ld [hl], $05
    ld a, [de]
    ld [hl], $00
    and a
    jr z, jr_020_484b

    ld a, $0d
    ld [bc], a

jr_020_484b::
    inc bc
    inc de
    ld a, e
    cp $c0
    jr nz, jr_020_4837

    ei
    ret


Call_020_4854::
    ldh a, [hIsGBC]

Call_020_4856::
    and a
    ret z

    di
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000

jr_020_4860::
    xor a
    ld [hl+], a
    ld a, l
    cp $c0
    jr nz, jr_020_4860

    xor a
    ldh [rSVBK], a
    ei
    ret


    add hl, bc
    dec b
    ld [$0a08], sp
    ld a, [bc]
    rlca
    inc c

Call_020_4874::
    ld hl, $486c
    add hl, de
    ldh a, [$d7]
    add [hl]
    sub $08
    and $f0
    ldh [$ce], a
    swap a
    ldh [$d7], a
    ld hl, $4870
    add hl, de
    ldh a, [$d8]
    add [hl]
    sub $10
    and $f0
    ld e, a
    ldh [$cd], a
    ldh a, [$d7]
    or e
    ld e, a
    ret


Call_020_4898::
    push de
    ld hl, wRequestDestinationHigh
    ld a, [wRequests]
    ld e, a
    add $0a
    ld [wRequests], a
    ld d, $00
    add hl, de
    pop de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    ret


    ld a, [wFreeMovementMode]
    and a
    ret nz

    ldh a, [hMapTileset]
    cp $ff
    ret nz

    ldh a, [$cd]
    ld d, a
    ldh a, [$ce]
    ld e, a
    push de
    ld d, $00
    ldh a, [hFF9E]
    ld e, a
    ldh a, [hLinkPositionX]
    ldh [$d7], a
    ldh a, [hLinkPositionY]
    ldh [$d8], a
    call Call_020_4874
    ld hl, wTileMap
    add hl, de
    ld a, [hl]
    cp $53
    jr z, jr_020_48fc

    cp $55
    jr z, jr_020_48fc

    cp $54
    jr nz, jr_020_490a

jr_020_48fc::
    ld a, [$c146]
    and a
    jr nz, jr_020_4917

    call Call_020_4954
    call UseRocksFeather
    jr jr_020_4917

jr_020_490a::
    cp $56
    jr z, jr_020_4912

    cp $57
    jr nz, jr_020_4917

jr_020_4912::
    call $4923
    jr jr_020_4917

jr_020_4917::
    pop de
    ld a, d
    ldh [$cd], a
    ld a, e
    ldh [$ce], a
    ret


    db $10
    ld [de], a
    ld de, $3e13
    dec c
    ld [$ddd8], a
    ld [hl], a
    ld a, [wAddRupeeBufferHigh]
    add $05
    ld [wAddRupeeBufferHigh], a
    di
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d011
    add hl, de
    ld [hl], a
    xor a
    ldh [rSVBK], a
    ei
    call label_2887
    push bc
    ld a, $20
    call label_91D
    pop bc
    ld de, $491f
    call Call_020_4898
    ret


    db $76
    ld [hl], a
    db $76
    ld [hl], a

Call_020_4954::
    ld a, [hl]
    inc a
    ldh [$d7], a
    dec a
    cp $55
    jr nz, jr_020_4961

    ld a, $ae
    ldh [$d7], a

jr_020_4961::
    ldh a, [$d7]
    ld [hl], a
    call label_2887
    push bc
    ldh a, [$d7]
    ld [$ddd8], a
    ld a, $20
    call label_91D
    pop bc
    ldh a, [$d7]
    cp $ae
    jr nz, jr_020_497f

    ld de, $4950
    call Call_020_4898

jr_020_497f::
    ret


    dec [hl]
    inc sp
    inc de
    dec d

jr_020_4984::
    rla
    push bc
    push de
    ld hl, $4980
    ld a, [$ddd9]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld hl, hFFE9
    cp [hl]
    jr nz, jr_020_49af

    ld a, [$ddd9]
    inc a
    ld [$ddd9], a
    cp $05
    jr nz, jr_020_49af

    ld a, $80
    ld [$ddd9], a
    ld a, $02
    ldh [$f2], a
    call Call_020_4854

jr_020_49af::
    pop de
    pop bc
    ret


    db $10
    ldh a, [$08]
    ld [label_C0C], sp
    ldh a, [rNR10]
    ldh a, [hFF9E]
    ld e, a
    ld d, $00
    ld hl, $49b2
    add hl, de
    ldh a, [hLinkPositionX]
    add [hl]
    ld [wC179], a
    ld hl, $49b6
    add hl, de
    ldh a, [hLinkPositionY]
    add [hl]
    ld [wC17a], a
    ld a, $02
    ld [wC178], a
    ret


    ldh a, [$e0]
    ld h, a
    ldh a, [$e1]
    ld l, a
    ldh a, [$e2]
    ld b, a
    ldh a, [$e3]
    ld c, a
    ldh a, [$e4]
    ld d, a
    ldh a, [$e5]
    ld e, a
    ret


    ld bc, $2001
    jr nz, jr_020_4984

    sub e
    inc de
    inc de

Call_020_49f4::
    ld a, [$c127]
    ld [wRequestDestinationLow], a
    ld a, [$c126]
    or $98
    ld [wRequestDestinationHigh], a
    ld hl, $49f0
    add hl, bc
    ld a, [hl]
    ld [wRequestLength], a
    ld a, $00
    ld [$d618], a
    ld a, $ee
    ld [$d614], a
    ld [$d615], a
    ld [$d616], a
    ld [$d617], a
    ld b, $d6
    ld c, $04
    ret


Call_020_4a22::
    ld a, [$c127]
    ld [wRequestDestinationLow], a
    ld [$dc92], a
    ld a, [$c126]
    or $98
    ld [wRequestDestinationHigh], a
    ld [$dc91], a
    ld hl, $49f0
    add hl, bc
    ld a, [hl]
    ld [wRequestLength], a
    ld [$dc93], a
    ld a, $00
    ld [$d618], a
    ld [$dca8], a
    ld a, $ee
    ld [$d614], a
    ld [$d615], a
    ld [$d616], a
    ld [$d617], a
    ld b, $d6
    ld c, $04
    ld [$dca4], a
    ld [$dca5], a
    ld [$dca6], a
    ld [$dca7], a
    ld a, $dc
    ldh [$e2], a
    ldh [$e4], a
    ld a, $94
    ldh [$e3], a
    ld a, $ab
    ldh [$e5], a
    ret


    ld a, [$c125]
    ld c, a
    ld b, $00
    ld a, [$c12a]
    ldh [$d9], a
    ld hl, $49ec
    add hl, bc
    ldh a, [hIsGBC]
    and a
    jr nz, jr_020_4a8f

    call Call_020_49f4
    jr jr_020_4a92

jr_020_4a8f::
    call Call_020_4a22

jr_020_4a92::
    ret


    ld [$0c06], sp
    ld a, [bc]
    rst $38
    inc b
    ld a, [bc]
    inc c
    ld b, $08
    ld a, [bc]
    inc c
    rst $38
    inc b
    inc c
    ld a, [bc]
    inc hl
    inc hl
    ld h, e
    ld h, e
    inc bc
    inc bc
    ld b, e
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, e
    ld b, e
    inc hl
    inc hl
    push hl
    ldh a, [$d7]
    add h
    ld [bc], a
    inc bc
    ldh a, [$d8]
    add l
    ld [bc], a
    inc bc
    ld hl, $4a93
    ldh a, [$d9]
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [bc], a
    cp $ff
    jr nz, jr_020_4ad4

    dec bc
    ld a, $f0
    ld [bc], a
    inc bc

jr_020_4ad4::
    inc bc
    ld hl, $4aa3
    add hl, de
    ld a, [hl]
    ld hl, $ffda
    or [hl]
    ld [bc], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_4aef

    ldh a, [$da]
    and a
    jr z, jr_020_4aef

    ld a, [bc]
    and $f8
    or $04
    ld [bc], a

jr_020_4aef::
    inc bc
    pop hl
    ldh a, [$d7]
    add h
    ld [bc], a
    inc bc
    ldh a, [$d8]
    add l
    add $08
    ld [bc], a
    inc bc
    ld hl, $4a94
    add hl, de
    ld a, [hl]
    ld [bc], a
    inc bc
    ld hl, $4aa4
    add hl, de
    ld a, [hl]
    ld hl, $ffda
    or [hl]
    ld [bc], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_4b1e

    ldh a, [$da]
    and a
    jr z, jr_020_4b1e

    ld a, [bc]
    and $f8
    or $04
    ld [bc], a

jr_020_4b1e::
    ret


    xor a
    ld [wHasPlacedBomb], a
    ld [wProjectileCount], a
    ld [$c1a4], a
    ld [wC15C], a
    ld [$c1ae], a
    ld a, [$c144]
    and a
    jr z, jr_020_4b39

    dec a
    ld [$c144], a

jr_020_4b39::
    ret


    stop
    ld [$0308], sp
    inc bc
    ld [label_808], sp
    ld [$0d00], sp
    ld [$0308], sp
    inc b
    ldh a, [hFF9E]
    ld e, a
    ld d, $00
    ld hl, $4b3a
    add hl, de
    ldh a, [hLinkPositionX]
    add [hl]
    ld [$c140], a
    ld hl, $4b3e
    add hl, de
    ld a, [hl]
    ld [$c141], a
    ld hl, $4b42
    add hl, de
    ld a, [$c145]
    add [hl]
    ld [$c142], a
    ld hl, $4b46
    add hl, de
    ld a, [hl]
    ld [$c143], a
    xor a
    ld [$c5b0], a
    ret


    ld [$00f8], sp
    nop
    nop
    nop
    db $fd
    inc b
    ld hl, wEntitiesUnknowTableF
    add hl, de
    ld [hl], $10
    ld a, [$c1c0]
    and a
    jp z, Jump_020_4b9e

    xor a
    ld [$c1c0], a
    ld a, [$c1c2]
    ld c, a
    ld b, d
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $01
    ret


Jump_020_4b9e::
    ld a, $06
    ld [$c1c0], a
    ld a, e
    ld [$c1c1], a
    ld a, $0c
    ld [$c19b], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $a0
    ld hl, $c3b0
    add hl, de
    ld [hl], d
    ld hl, $c480
    add hl, de
    ld [hl], $03
    ldh a, [$f9]
    and a
    jr nz, jr_020_4bc8

    ld a, $09
    ldh [$f2], a
    jr jr_020_4bcd

jr_020_4bc8::
    ld hl, $c310
    add hl, de
    ld [hl], d

jr_020_4bcd::
    ld hl, $c240
    add hl, de
    ld [hl], d
    ld hl, $c250
    add hl, de
    ld [hl], d
    ld hl, $c320
    add hl, de
    ld [hl], d
    ldh a, [hFF9E]
    ld c, a
    ld b, d
    ld hl, $4b79

jr_020_4be3::
    add hl, bc
    ldh a, [hLinkPositionX]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $4b7d
    add hl, bc
    ldh a, [hLinkPositionY]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ret


    jr jr_020_4be3

    nop
    add sp, $18
    nop
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $28
    ld c, $04
    ld b, $00
    ldh a, [hPressedButtonsMask]

jr_020_4c0b::
    srl a
    jr nc, jr_020_4c10

    inc b

jr_020_4c10::
    dec c
    jr nz, jr_020_4c0b

    ld a, b
    cp $02
    jr c, jr_020_4c3e

    ldh a, [hPressedButtonsMask]
    and $03
    ld c, a
    ld b, $00
    ld hl, $4bf8
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ldh a, [hPressedButtonsMask]
    srl a
    srl a
    and $03
    ld c, a
    ld b, $00
    ld hl, $4bfb
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a

jr_020_4c3e::
    ret


    ld c, $f2
    nop
    nop
    nop
    nop
    db $f4
    inc c
    ld a, $05
    ldh [$f2], a
    ld a, $0e
    ld [$c19b], a
    ld a, [$db4c]
    sub $01
    daa
    ld [$db4c], a
    jr nz, jr_020_4c6d

    ld hl, wAButtonSlot
    ld a, [hl]
    cp $0c
    jr nz, jr_020_4c65

    ld [hl], $00

jr_020_4c65::
    inc hl
    ld a, [hl]
    cp $0c
    jr nz, jr_020_4c6d

    ld [hl], $00

jr_020_4c6d::
    push bc
    ldh a, [hFF9E]
    ld c, a
    ld hl, $4c3f
    add hl, bc
    ldh a, [hLinkPositionX]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $4c43
    add hl, bc
    ldh a, [hLinkPositionY]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$a2]
    ld hl, $c310
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $17
    pop bc
    ret


    ld a, [$c5ac]
    and a
    jr nz, jr_020_4ca2

    ld a, $2d
    ldh [hFFF4], a

jr_020_4ca2::
    ret


    xor a
    ldh [$e6], a
    ld [$c19c], a
    ld [$c504], a
    ld [$dbc8], a
    ld [$dbc9], a
    ld [$c1a2], a
    ld [$c1c6], a
    ld [$d6fa], a
    ld [$c50a], a
    ldh [$ac], a
    ld [wC113], a
    ld [$d460], a
    ld [$c1be], a
    ld [$c50e], a
    ld [$c3c8], a
    ld [$c5a6], a
    ld [$d462], a
    ld [$c3cd], a
    ld [$ddd9], a
    ld a, $ff
    ld [$d401], a
    ld [$c50f], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
    push hl
    add sp, -$15
    xor $f1
    db $f4
    rst $30
    ld a, [$00fd]
    inc bc
    ld b, $09
    inc c
    rrca
    ld [de], a
    dec d
    jr jr_020_4d68

    ld e, $21
    inc h
    daa
    ld a, [hl+]
    dec l
    jr nc, jr_020_4d88

    ld [hl], $39
    inc a
    ccf
    ld b, d
    ld b, l
    ld c, b
    inc sp
    ld [hl], $39
    inc a
    ccf
    ld b, d
    ld b, l
    ld c, b
    ldh a, [$f0]
    ldh a, [$f0]

jr_020_4d68::
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ld [c], a
    db $e4
    and $e8
    ld [$eeec], a
    ldh a, [$f2]
    db $f4
    or $f8
    ld a, [$fefc]
    nop
    ld [bc], a
    inc b
    ld b, $08

jr_020_4d88::
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    inc e
    dec e
    ld e, $20
    ld [hl+], a
    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $20
    ld [hl+], a
    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $f0
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $18
    ldh [$e2], a
    db $e3
    push hl
    and $e8
    jp hl


    db $eb
    db $ec
    xor $ef
    pop af
    ld a, [c]
    db $f4
    push af
    rst $30
    ld hl, sp-$06
    ei
    db $fd
    cp $00
    ld bc, $0403
    ld b, $07
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    rrca
    db $10
    ld [de], a
    inc de
    dec d
    ld d, $18
    add hl, de
    dec de
    inc e
    ld e, $1f
    ld hl, $2422
    add hl, de
    dec de
    inc e
    ld e, $1f
    ld hl, $2422
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [c], a
    db $e3
    push hl
    and $e8
    jp hl


    db $eb
    db $ec
    xor $f0
    ld a, [c]
    di
    or $f7
    ld hl, sp-$07
    ld a, [$fdfc]
    cp $ff
    nop
    ld bc, $0403
    ld b, $07
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    rrca
    db $10
    ld [de], a
    inc de
    dec d
    ld d, $18
    add hl, de
    dec de
    inc e
    ld e, $1f
    ld hl, $2222
    inc h
    dec h
    daa
    add hl, hl
    dec hl
    inc l
    ld l, $2f
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    pop hl
    ld [c], a
    db $e4
    push hl
    and $e8
    jp hl


    ld [$edec], a
    xor $f0
    pop af
    ld a, [c]
    db $f4
    push af
    or $f8
    ld sp, hl
    ld a, [$fefc]
    rst $38
    nop
    ld bc, $0402
    dec b
    ld b, $08
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld c, $10
    ld de, $1412
    dec d
    ld d, $18
    add hl, de
    ld a, [de]
    inc e
    dec e
    ld e, $20
    ld [hl+], a
    inc hl
    inc h
    dec h
    daa
    jr z, jr_020_4e8d

    dec hl
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e2]
    db $e3
    db $e4
    push hl
    and $e8
    jp hl


    ld [$edec], a
    xor $ef
    pop af
    ld a, [c]
    di
    push af
    or $f8
    ld sp, hl
    ld a, [$fdfb]
    cp $ff
    nop
    ld bc, $0302
    dec b
    ld b, $07
    ld [$0b0a], sp

jr_020_4e8d::
    inc c
    dec c
    rrca
    db $10
    ld de, $1412
    dec d

jr_020_4e95::
    ld d, $17
    add hl, de
    ld a, [de]
    dec de
    dec e
    ld e, $20
    ld hl, $2322
    dec h
    ld h, $27
    jr z, jr_020_4e95

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e3]
    db $e4
    push hl
    and $e7
    add sp, -$17
    db $eb
    db $ec
    db $ed
    xor $f0
    pop af
    ld a, [c]
    di
    db $f4
    or $f7
    ld hl, sp-$07
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld c, $10
    ld de, $1312
    inc d
    dec d
    ld d, $18
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    rra
    jr nz, jr_020_4f01

    ld [hl+], a
    inc hl
    inc h
    dec h
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e4]
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f8
    ld sp, hl
    ld a, [$fcfb]
    db $fd

jr_020_4f01::
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld hl, $2322
    ldh a, [$f0]
    ldh a, [$f0]
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_020_4f76

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @-$0e

    ldh a, [$f0]
    and $e7
    add sp, -$18
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f0]
    pop af
    ld a, [c]

jr_020_4f76::
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$08
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_020_4fb8

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ldh a, [$f0]
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ec
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    ld a, [c]
    di
    db $f4
    push af

jr_020_4fb8::
    or $f7
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $16
    rla
    jr jr_020_4ffb

    ld a, [de]
    dec de
    ldh a, [hFFE9]
    jp hl


    ld [$ebeb], a
    db $ec
    db $ed
    xor $ee
    rst $28
    ldh a, [$f0]
    pop af
    ld a, [c]
    di
    db $f4
    db $f4
    push af
    or $f7
    ld hl, sp-$08

jr_020_4ffb::
    ld sp, hl
    ld a, [$fcfb]
    db $fc
    db $fd
    cp $ff
    nop
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $0e
    db $10
    ld de, $1212
    inc de
    inc d
    dec d
    dec d
    ld d, $17
    jr @+$1a

    db $eb
    db $ec
    db $ec
    db $ed
    xor $ee
    rst $28
    ldh a, [$f0]
    pop af
    ld a, [c]
    ld a, [c]
    di
    db $f4
    db $f4
    push af
    or $f6
    rst $30
    ld hl, sp-$08
    ld sp, hl
    ld a, [$fbfa]
    db $fc
    db $fc
    db $fd
    cp $fe
    rst $38
    nop
    nop
    ld bc, $0202
    inc bc
    inc b
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    db $10
    ld de, $1212
    inc de
    inc d
    inc d
    dec d
    db $ed
    xor $ee
    rst $28
    ldh a, [$f0]
    pop af
    pop af
    ld a, [c]
    ld a, [c]
    di
    di
    di
    db $f4
    push af
    push af
    or $f6
    rst $30
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld a, [$fbfb]
    db $fc
    db $fc
    cp $ff
    rst $38
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0f
    rrca
    db $10
    db $10
    ld de, $1212
    inc de
    ldh a, [$f1]
    pop af
    ld a, [c]
    ld a, [c]
    di
    di
    db $f4
    db $f4
    push af
    push af
    or $f6
    rst $30
    rst $30
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld a, [$fbfa]
    ei
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    db $10
    di
    db $f4
    db $f4
    db $f4
    push af
    push af
    or $f6
    or $f7
    rst $30
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ld a, [$fafa]
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    push af
    or $f6
    or $f7
    rst $30
    rst $30
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ld sp, hl
    ld a, [$fafa]
    ei
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $07
    rlca
    rlca
    ld [label_808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    db $fc
    db $fc
    ei
    ei
    ei
    ei
    ld a, [$fafa]
    ld a, [$fbfb]
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$fb08], sp
    ei
    ei
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc h
    ld c, l
    ld h, h
    ld c, l
    and h
    ld c, l
    inc h
    ld c, [hl]
    and h
    ld c, [hl]
    db $e4
    ld c, [hl]
    ld h, h
    ld c, a
    and h
    ld c, a
    db $e4
    ld c, a
    ld h, h
    ld d, b
    and h
    ld d, b
    db $e4
    ld d, b
    inc h
    ld d, c
    ld h, h
    ld d, c
    and h
    ld d, c
    db $e4
    ld d, c
    db $e4
    ld c, h
    jr z, @+$2c

    inc l
    inc l
    ld l, $2e
    jr nc, @+$32

    ld sp, $3333
    inc [hl]
    dec [hl]
    ld [hl], $38
    ld a, [hl-]
    ld a, [hl-]
    ld a, [wGameplaySubtype]
    cp $0a
    ret nc

    ld hl, $c17c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld d, $00
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_020_527c

    ld a, [$c17e]
    inc a
    cp $10
    jr c, jr_020_5279

    ld a, $10
    ld [$c17e], a
    ret


jr_020_5279::
    ld [$c17e], a

jr_020_527c::
    ld a, [$c17e]
    ld e, a
    ld hl, $5246
    add hl, de
    ld a, [hl]
    ldh [$d7], a
    sla e
    ld hl, $5224
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_020_5290::
    ldh a, [rLY]
    cp $10
    jr nz, jr_020_5290

jr_020_5296::
    ldh a, [rSTAT]
    and $03
    jr nz, jr_020_5296

    ld hl, $ffd8
    ld [hl], $01
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_52a8

    ld [hl], $03

jr_020_52a8::
    ld a, [$c17d]
    inc a
    ld [$c17d], a
    and [hl]
    jr nz, jr_020_52a8

    ldh a, [$d7]
    ld l, a
    ld a, [$c17c]
    ld e, a
    inc a
    ld [$c17c], a
    cp $3a
    jr z, jr_020_52dc

    cp l
    jr c, jr_020_52ce

    ldh a, [hIsGBC]
    and a
    jr nz, jr_020_52dc

    xor a
    ldh [rBGP], a
    jr jr_020_5296

jr_020_52ce::
    ld hl, $0000
    add hl, de
    add hl, bc
    ld a, [hl]
    ld hl, hBaseScrollY
    add [hl]
    ldh [rSCY], a
    jr jr_020_5296

jr_020_52dc::
    ldh a, [hBaseScrollY]
    sub $38
    ldh [rSCY], a

jr_020_52e2::
    ldh a, [rLY]
    cp $48
    jr c, jr_020_52e2

jr_020_52e8::
    ldh a, [rSTAT]
    and $03
    jr nz, jr_020_52e8

    ldh a, [hBaseScrollY]
    ldh [rSCY], a
    ld a, [wBGPalette]
    ldh [rBGP], a
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, $98
    ldh [rBGPI], a
    ld hl, $ff69
    ld b, $08

jr_020_5311::
    ld [hl], $ff
    ld [hl], $7f
    dec b
    jr nz, jr_020_5311

    ret


    nop
    ld [bc], a
    ld [bc], a
    nop
    db $10
    ld [bc], a
    ld [de], a
    nop
    inc b
    ld b, $06
    inc b
    ld [$0c0a], sp
    ld c, $18
    ld a, [bc]
    inc e
    ld c, $0a
    ld [$0c0e], sp
    ld a, [bc]
    jr jr_020_5342

    inc e
    jr nz, jr_020_5359

    inc h
    ld h, $28
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_020_536e

    ld [hl-], a
    jr nz, jr_020_5363

    inc [hl]

jr_020_5342::
    ld [hl], $24
    ld h, $38
    ld a, [hl-]
    jr z, @+$2c

    ld a, [hl-]
    jr c, jr_020_5376

    jr z, jr_020_538e

    ld b, b
    ld b, d
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, b
    ld c, d
    ld c, h
    ld c, [hl]
    ld d, b
    ld d, d

jr_020_5359::
    ld c, [hl]
    ld c, h
    ld d, d
    ld d, b
    add b
    ld [bc], a
    add d
    nop
    add h
    add [hl]

jr_020_5363::
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    sub h
    sub [hl]
    sbc b
    sbc d
    sbc h

jr_020_536e::
    sbc [hl]
    sbc d
    and d
    and h
    ld [$0ca6], sp
    xor b

jr_020_5376::
    xor d
    xor h
    xor [hl]
    or b
    or d
    or h
    or [hl]
    or b
    or d
    or h
    or [hl]
    inc b
    ret nz

    ld b, $c2
    ld e, d
    ld e, b
    ld e, [hl]
    ld e, h
    ld e, b
    ld e, d
    ld e, h
    ld e, [hl]
    ld b, h

jr_020_538e::
    ld b, [hl]
    ld l, [hl]
    ld l, [hl]
    ld b, b
    ld b, b
    ld d, [hl]
    ld d, [hl]
    ld a, d
    ld a, b
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, d
    ld a, h
    ld a, [hl]
    ld [hl], h
    db $76
    db $76
    ld [hl], h
    ld [hl], b
    ld [hl], d
    ld [hl], d
    ld [hl], b
    jp z, $d6c8

    call nc, $cac8
    call nc, $ccd6
    adc $d8
    jp c, $c4c4

    add $c6
    call c, $dedc
    sbc $ea
    db $ec
    xor $f0
    ld a, [c]
    db $f4
    or $f6
    ld hl, sp-$06
    ldh [$e2], a
    db $e4
    and $e8
    add sp, $10
    ld [de], a
    inc d
    ld d, $18
    inc e
    ld [de], a
    db $10
    ld d, $14
    inc e
    jr jr_020_543c

    ld l, b
    ld l, d
    ld l, h
    ld l, b
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ld l, h
    ld l, d
    ld h, [hl]
    ld l, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, b
    ld h, b
    ld d, h
    ld d, h
    inc a
    ld a, $fe
    cp $18
    ld a, [de]
    inc e
    ld e, $2c
    ld l, $b8
    cp d
    ld l, $2c
    cp d
    cp b
    cp h
    cp [hl]
    ret nc

    jp nc, $fca0

    db $fc
    and b
    nop
    nop
    jr nz, jr_020_542b

    nop
    nop
    nop
    jr nz, jr_020_5410

jr_020_5410::
    nop
    jr nz, jr_020_5433

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_020_5441

    jr nz, jr_020_5443

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_544b

jr_020_542b::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_5433::
    nop
    nop
    nop
    nop
    jr nz, jr_020_5459

    jr nz, jr_020_545b

    nop

jr_020_543c::
    jr nz, jr_020_543e

jr_020_543e::
    jr nz, jr_020_5440

jr_020_5440::
    nop

jr_020_5441::
    nop
    nop

jr_020_5443::
    nop
    nop
    nop
    nop
    jr nz, jr_020_5469

    jr nz, jr_020_546b

jr_020_544b::
    nop
    nop
    nop
    jr nz, jr_020_5450

jr_020_5450::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_5459::
    nop
    nop

jr_020_545b::
    nop
    nop
    jr nz, jr_020_545f

jr_020_545f::
    nop
    jr nz, jr_020_5462

jr_020_5462::
    jr nz, jr_020_5464

jr_020_5464::
    nop
    nop
    nop
    nop
    nop

jr_020_5469::
    nop
    nop

jr_020_546b::
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_5473

jr_020_5473::
    jr nz, jr_020_5495

    jr nz, jr_020_5497

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_5480

jr_020_5480::
    jr nz, jr_020_5482

jr_020_5482::
    jr nz, jr_020_54a4

    jr nz, jr_020_54a6

    jr nz, jr_020_5488

jr_020_5488::
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

    nop
    nop
    jr nz, jr_020_54b3

    jr nz, jr_020_54b5

jr_020_5495::
    jr nz, @+$22

jr_020_5497::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_54a2

jr_020_54a2::
    jr nz, jr_020_54a4

jr_020_54a4::
    jr nz, jr_020_54a6

jr_020_54a6::
    jr nz, jr_020_54a8

jr_020_54a8::
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_54b0

jr_020_54b0::
    nop
    nop
    nop

jr_020_54b3::
    nop
    nop

jr_020_54b5::
    nop
    jr nz, jr_020_54b8

jr_020_54b8::
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_54df

    jr nz, @+$22

    jr nz, jr_020_54e3

    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_020_54eb

    jr nz, jr_020_54ed

    ld b, b
    ld b, b
    nop
    jr nz, jr_020_54d2

jr_020_54d2::
    jr nz, jr_020_54d4

jr_020_54d4::
    jr nz, jr_020_5516

    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    nop
    jr nz, jr_020_54de

jr_020_54de::
    nop

jr_020_54df::
    nop
    jr nz, jr_020_54e2

jr_020_54e2::
    nop

jr_020_54e3::
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

jr_020_54eb::
    jr nz, @+$22

jr_020_54ed::
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

    ldh a, [hLinkAnimationState]
    cp $ff
    ret z

    ld hl, $5319
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld e, [hl]
    push hl
    ld hl, $5407
    add hl, bc
    ld a, [wC11D]
    and $98
    or [hl]
    ld [wC11D], a
    inc hl
    ld a, [wC11E]

jr_020_5516::
    and $98
    or [hl]
    ld [wC11E], a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld hl, $5800
    add hl, de
    ld c, l
    ld b, h
    ld hl, vTiles0
    ld d, $20
    call $1d0a
    pop hl
    inc hl
    ld e, [hl]
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld hl, $5800
    add hl, de
    ld c, l
    ld b, h
    ld hl, $8020
    ld d, $20
    call $1d0a
    ret


    ld [$0a08], sp
    ld a, [bc]
    ld bc, $f0ff
    stop
    nop
    inc bc
    nop
    ld bc, $e01f
    jr nz, @+$20

    rst $38
    ld a, [$c125]
    ld c, a
    ld b, $00
    and $02
    jr nz, jr_020_557e

    ld e, $df

jr_020_557e::
    ld hl, $5560
    add hl, bc
    ld a, [hl]
    ld [$c128], a
    ld a, [$c129]
    and $01
    jr z, jr_020_5598

    ld hl, $5564
    add hl, bc
    ld a, [$c12a]
    add [hl]
    ld [$c12a], a

jr_020_5598::
    ld hl, $556c
    add hl, bc
    ld a, [$c127]
    add [hl]
    rr d
    and e
    ld [$c127], a
    ld hl, $5568
    add hl, bc
    ld a, [$c126]
    rl d
    adc [hl]
    and $03
    ld [$c126], a
    ld a, [$c129]
    dec a
    ld [$c129], a
    jr nz, jr_020_55c1

    jp Jump_020_55c2


jr_020_55c1::
    ret


Jump_020_55c2::
    ld a, [wMapSlideTransitionState]
    inc a
    ld [wMapSlideTransitionState], a
    ret


    ldh a, [$a8]
    and a
    jr z, jr_020_55f0

    ld a, [wTransitionSequenceCounter]
    cp $03
    jr nz, jr_020_55f0

    ld a, [wC16C]
    and $03
    cp $03
    jr nz, jr_020_55f0

    ld hl, hWindowYUnused
    ld a, [hl]
    inc hl
    or [hl]
    jr z, jr_020_55f0

    ldh a, [$a8]
    and $fc
    or $01
    ldh [$a8], a
    ret


jr_020_55f0::
    ld hl, wC16C
    inc [hl]
    ld a, [hl]
    and $03
    jr nz, jr_020_562e

    ld hl, wTransitionSequenceCounter
    ld a, [hl]
    cp $04
    jr z, jr_020_562e

    inc [hl]
    xor a
    ldh [$d7], a

jr_020_5605::
    ldh a, [$d7]
    cp $03
    jr z, jr_020_562e

    ld hl, wBGPalette
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld c, a
    ld b, $00

jr_020_5616::
    ld a, c
    and $03
    jr z, jr_020_561c

    dec c

jr_020_561c::
    rrc c
    rrc c
    inc b
    ld a, b
    cp $04
    jr nz, jr_020_5616

    ld a, c
    ld [hl], a
    ld hl, $ffd7
    inc [hl]
    jr jr_020_5605

jr_020_562e::
    ret


    nop
    ld bc, $0302
    nop
    inc bc
    ld bc, $0000
    ld bc, $0302
    ld hl, wC16C
    inc [hl]
    ld a, [wC16C]
    and $03
    jr nz, jr_020_568a

    ld hl, wTransitionSequenceCounter

Jump_020_5649::
    ld a, [hl]
    inc [hl]

Call_020_564b::
    cp $04
    jr z, jr_020_568a

    xor a
    ldh [$d7], a

jr_020_5652::
    ldh a, [$d7]
    cp $03
    jr z, jr_020_568a

    ld hl, wBGPalette
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    push hl
    ld c, a
    ld b, $00

jr_020_5664::
    ldh a, [$d7]
    sla a
    sla a
    or b
    ld e, a
    ld hl, $562f
    add hl, de
    ld a, c
    and $03
    cp [hl]
    jr z, jr_020_5677

    inc c

jr_020_5677::
    rrc c
    rrc c
    inc b
    ld a, b
    cp $04
    jr nz, jr_020_5664

    ld a, c
    pop hl
    ld [hl], a
    ld hl, $ffd7
    inc [hl]
    jr jr_020_5652

jr_020_568a::
    ret


    daa
    ld l, d
    ld l, h
    ld hl, $2322
    inc h
    dec h
    ld h, $6a
    rst $38
    ld l, h
    ld l, d
    ld l, h
    ld l, d
    ld l, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $67
    ld l, b
    ld h, h
    ld h, a
    ld l, c
    ld h, l
    ld h, [hl]
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, [$63fa]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    rst $38
    ld a, [$4948]
    ld c, d
    ld_long a, $fffa
    ld h, d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    rst $38
    nop
    ld bc, $0100
    ld a, [$5eff]
    ld e, a
    inc b
    dec b
    ld b, $07
    jr z, @+$2b

    add hl, hl
    ld a, [hl+]
    db $10
    ld de, $1110
    ld a, [$6efa]
    ld l, a
    inc d
    dec d
    ld d, $17
    jr c, jr_020_5709

    jr nz, jr_020_5725

    nop
    ld bc, $0100
    ei
    rst $38
    cp $fe
    ld [$0a09], sp
    dec bc
    jr c, jr_020_5719

    jr nz, @+$3c

    db $10
    ld de, $1110
    ei
    ei
    cp $fe
    jr jr_020_571e

    ld a, [de]
    dec de
    ld c, b
    ld c, c

jr_020_5709::
    ld c, c
    ld c, d
    ei
    rst $38
    inc c
    dec c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld_long a, $fffa
    ld e, b
    ld c, $0f

jr_020_5719::
    ld a, [$fbfa]
    ei
    inc e

jr_020_571e::
    dec e
    ld a, [$fafa]
    ld a, [$fafa]

jr_020_5725::
    ld a, [$1e5d]
    rra
    ld a, [$0cfa]
    dec c
    inc c
    dec c
    ei
    ei
    jr z, jr_020_575d

    ld a, [$fafa]
    ld e, b
    dec l
    ld l, $2e
    cpl
    inc e
    dec e
    inc e
    dec e
    ei
    ld d, [hl]
    ld h, c
    ld c, d
    ld a, [$59fa]
    ld e, d
    dec a
    ld a, $3e
    ccf
    db $fd
    db $fd
    db $fd
    db $fd
    ei
    ei
    ei
    ei
    jr z, jr_020_577e

    ld e, e
    ld_long a, $ffff
    ld d, h
    ld d, h
    db $fd
    db $fd

jr_020_575d::
    db $fd
    db $fd
    ei
    ei
    rst $38
    ei
    jr c, jr_020_5795

    ld a, [hl-]
    ld_long a, $ffff
    ld d, h
    ld d, h
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    db $fd
    ei
    ei
    ld c, b
    cp $4a
    ld a, [$5756]
    ld d, h
    ld d, h
    inc bc
    ld [de], a
    inc de

jr_020_577e::
    ld [de], a
    inc de
    ld [bc], a
    rst $38
    ei
    ld e, h
    dec hl
    ld a, [$fafa]
    ld a, [$5454]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc

jr_020_5795::
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0400
    inc b
    inc b
    inc b
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    ld b, $04
    inc b
    inc b
    rlca
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld b, $04
    inc b
    inc b
    rlca
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc b
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    ld bc, $0001
    nop
    inc b
    inc b
    nop
    nop
    nop
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0001
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    rlca
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    nop
    nop
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, $8b
    ldh [$e1], a
    ld a, $56
    ldh [$e2], a
    xor a
    ldh [$e3], a
    call Call_020_58ad
    ldh a, [hIsGBC]
    and a
    ret z

    ld a, $8b
    ldh [$e1], a
    ld a, $57
    ldh [$e2], a
    ld hl, $ffe3
    inc [hl]
    call Call_020_58ad
    ret


Call_020_58ad::
    ld de, $9822
    ld bc, $0000

jr_020_58b3::
    ld a, [$c5a2]
    and a
    jr nz, jr_020_58cb

    ld a, [wGameplayType]
    cp $01
    jr z, jr_020_58cb

    ld hl, wMinimapTiles
    add hl, bc
    ld a, [hl]
    and $80
    ld a, $2c
    jr z, jr_020_58d3

jr_020_58cb::
    ldh a, [$e1]
    ld l, a
    ldh a, [$e2]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_020_58d3::
    ld h, a
    ldh a, [$e3]
    and a
    jr z, jr_020_58ea

    ld a, $01
    ldh [rVBK], a
    ld a, h
    cp $2c
    jr nz, jr_020_58e4

    ld a, $01

jr_020_58e4::
    ld [de], a
    xor a
    ldh [rVBK], a
    jr jr_020_58ec

jr_020_58ea::
    ld a, h
    ld [de], a

jr_020_58ec::
    inc c
    jr z, jr_020_5903

    inc e
    ld a, e
    and $1f
    cp $12
    jr nz, jr_020_5901

    ld a, e
    and $e0
    add $22
    ld e, a
    ld a, d
    adc $00
    ld d, a

jr_020_5901::
    jr jr_020_58b3

jr_020_5903::
    ret


    ld a, [wGameplaySubtype]
    rst $00
    ld [hl+], a
    ld e, c
    ld b, e
    ld e, c
    ret nc

    ld e, c
    db $fd
    ld e, d
    dec h
    ld e, l
    ld d, d
    ld e, l
    ld a, [de]
    ld e, [hl]
    rst $28
    ld e, [hl]
    call nz, $8363
    ld h, l
    xor b
    ld h, l
    cp b
    ld h, l
    jp nc, $f065

    cp $a7
    jr z, jr_020_5940

    ld hl, $dc10
    ld c, $80
    di

jr_020_592d::
    xor a
    ldh [rSVBK], a
    ld b, [hl]
    ld a, $03
    ldh [rSVBK], a
    ld [hl], b
    inc hl
    dec c
    ld a, c
    and a
    jr nz, jr_020_592d

    xor a
    ldh [rSVBK], a
    ei

jr_020_5940::
    call Call_020_6683
    call label_1A22
    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_020_5969 ; Jump to 5969 which returns back to render palettes if transition isn't finished

    xor a
    ld [wInventoryAppearing], a
    ld a, $03
    ldh [hWindowYUnused], a
    ld a, $30
    ldh [hWindowXUnused], a
    xor a
    ld [$de06], a
    ld [$de07], a
    ld [$de08], a
    ld [$de09], a
    call Call_020_6683

jr_020_5969::
    ret ; Returns to 0346 (Render Palettes)

; Palette Data ?
data_596A::
    db $9C, $AA, $81, $06, $06, $9C, $AC, $81
    db $06, $06, $9C, $AE, $81, $06, $06, $9C
    db $B0, $81, $06, $06, $9C, $B2, $81, $06
    db $06, $9C, $71, $81, $03, $03, $00, $9C
    db $AC, $81, $04, $04, $9C, $AE, $81, $03
    db $03, $00
; Sprite Data ?
; Start of data copied for inventory display
data_5994::
    db $9C, $6A, $83, $94, $95, $C0, $C1, $9C
    db $6C, $83, $A0, $A1, $C2, $C3, $9C, $6E
    db $83, $9A, $9B, $C4, $C5, $9C, $6F, $81
    db $9C, $9D, $9C, $B0, $81, $C6, $C7, $9C
    db $71, $81, $9E, $9F, $9C, $B2, $81, $CA
    db $CB, $9C, $92, $01, $7F, $7F, $9C, $D3
    db $00, $7F, $00
; Location for overwriting each inventory sprite
data_59c7::
    db $03, $0A, $11, $22, $05
    db $0C, $13, $1D, $27

; Start building display of inventory
; Called from jp hl in 00:28CE (TABLEJUMP)
; Copies 51 bytes from 5994 (above) to wRequestDestination (D601)
    ld hl, wRequestDestinationHigh
    ld bc, $5994
    ld e, $33

jr_020_59d8::
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_020_59d8

    ldh a, [hIsGBC]
    and a
    jr z, InventoryDisplayEntryPoint

; GBC Exclusive code
; Load 32 bytes from 596a into DC91
    ld hl, $dc91
    ld bc, $596a
    ld e, $1f

jr_020_59eb::
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_020_59eb

    ld a, $1e
    ld [$dc90], a
    ld a, [wActiveRoom] ; Check if in dungeon, jump to InventoryDisplayEntryPoint if not
    and a
    jr z, InventoryDisplayEntryPoint

; Jump ahead if hMapTileset is FF (special)
    ldh a, [hMapTileset]
    cp $ff
    jr z, jr_020_5a06

; Jump ahead if hMapTileset is greater than 0A
    cp $0a
    jr nc, InventoryDisplayEntryPoint

; Set BC and E to point to the end of the "Palette Data?" (12 bytes) above
jr_020_5a06::
    ld hl, $dc91
    ld a, [$dc90]
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $5989
    ld e, $0b

; Copy the remaining palette data
jr_020_5a15::
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_020_5a15

    ld a, [$dc90]
    add $0a
    ld [$dc90], a

; Palette loading complete, start building inventory
InventoryDisplayEntryPoint::
    ld de, wHasFlippers
    ld bc, $0000

InventoryDisplayLoop::
    ld a, c
    cp $02
    jr nz, jr_020_5a34

; Only executed for Trade Sequence Item
    ld a, [$db7f]
    and a
    jr nz, OverwriteInventoryDisplaySprite

jr_020_5a34::
    ld a, c
    cp $04
    jr nz, jr_020_5a4f

; Only executed for unlabeled DB10
    ld de, wHasTailKey
    ld a, [wActiveRoom]
    and a
    jr z, jr_020_5a4f

; Jump ahead if hMapTileset is FF (special)
    ldh a, [hMapTileset]
    cp $ff
    jr z, jr_020_5a4c

; Jump ahead if hMapTileset is greater than 0A
    cp $0a
    jr nc, jr_020_5a4f

jr_020_5a4c::
    ld de, wHasDungeonMap

jr_020_5a4f::
    ; Load current inventory display item memory
    ld a, [de]
    cp $ff
    jr z, OverwriteInventoryDisplaySprite

    and a
    jr nz, IncrementInventoryDisplay

OverwriteInventoryDisplaySprite::
    ; Push current inventory item to stack
    push de

    ld hl, $59c7
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de

    ; Write $7f over sprite data (won't display)
    ld a, $7f
    ld [hl+], a
    ld [hl+], a

    ld a, c
    cp $02
    jr nz, jr_020_5a74

    ; Only executed for Trade sequence item
    ld de, $0005
    add hl, de
    ld a, $7f
    ld [hl+], a
    ld [hl], a

; Reload item mem location to de
jr_020_5a74::
    pop de

; Increment inventory memory pointer to display next item
IncrementInventoryDisplay::
    inc de
    inc c

    ld a, c
    cp $09
    jr nz, InventoryDisplayLoop

    ; Inventory display 0 - 8 now complete (hasFlippers to hasBirdKey)
    ld hl, wRequestDestinationHigh
    ld de, $002c
    add hl, de
    ld a, [wSeashellsCount]
    and a
    jr z, jr_020_5a97

    ; Offset seashell count sprites to reflect seashell count in inventory
    ld e, a
    swap a
    and $0f
    add $b0
    ld [hl+], a
    ld a, e
    and $0f
    add $b0
    ld [hl+], a

jr_020_5a97::
    ld hl, wRequestDestinationHigh
    ld de, $0031
    add hl, de
    ld a, [wActiveRoom]
    and a
    jr z, jr_020_5ad1

    ldh a, [hMapTileset]
    cp $ff
    jr z, jr_020_5aae

    cp $0a
    jr nc, jr_020_5ad1

jr_020_5aae::
    ld a, [$dbd0]
    and a
    jr z, jr_020_5ade

    push af
    push hl
    ld b, $00
    ld a, [$dc90]
    ld c, a
    ld hl, $dc91
    add hl, bc
    ld a, l
    sub $11
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld [hl], $01
    inc hl
    ld [hl], $01
    pop hl
    pop af
    jr jr_020_5adb

jr_020_5ad1::
    ld a, [wGoldenLeavesCount]
    and a
    jr z, jr_020_5ade

    cp $06
    jr nc, jr_020_5ade

jr_020_5adb::
    add $b0
    ld [hl], a

jr_020_5ade::
    ld a, $32
    ld [wRequests], a
    ld a, $03
    ldh [hWindowYUnused], a
    ld a, $30
    ldh [hWindowXUnused], a
    jp Jump_020_5d34


    nop
    dec b
    ld [bc], a
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    ld b, $01
    ld [bc], a
    ld [bc], a
    dec b
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_5b3d

    ld b, $00
    ld a, [wTradeSequenceItem]
    ld c, a
    ld hl, $5aee
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    ld a, $9c
    ld [$dc91], a
    ld [$dc95], a
    ld a, $6e
    ld [$dc92], a
    ld a, $8e
    ld [$dc96], a
    ld a, $41
    ld [$dc93], a
    ld [$dc97], a
    ldh a, [$d7]
    ld [$dc94], a
    ld [$dc98], a
    xor a
    ld [$dc99], a
    ld a, [$dc90]
    add $08
    ld [$dc90], a

jr_020_5b3d::
    ld a, $03
    ldh [hWindowYUnused], a
    ld a, $30
    ldh [hWindowXUnused], a
    call Call_020_6683
    ret


Call_020_5b49::
    ldh a, [$d8]
    cp $09
    jr z, jr_020_5b8b

    cp $0c
    jr z, jr_020_5b80

    dec a
    jr z, jr_020_5b73

    dec a
    jr z, jr_020_5ba5

    dec a
    jr z, jr_020_5b69

    dec a
    jr z, jr_020_5b6e

    dec a
    jr z, jr_020_5ba0

Jump_020_5b62::
jr_020_5b62::
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


jr_020_5b69::
    ld a, [wPowerBraceletLevel]
    jr jr_020_5b76

jr_020_5b6e::
    ld a, [wShieldLevel]
    jr jr_020_5b76

jr_020_5b73::
    ld a, [wDidFindSword]

jr_020_5b76::
    add $b0
    ld c, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, c
    inc de
    ld [hl+], a
    ret


jr_020_5b80::
    ld a, [$db4b]
    and a
    jr nz, jr_020_5b62

    ld a, [$db4c]
    jr jr_020_5ba8

jr_020_5b8b::
    ld a, [$db49]
    and a
    jp z, Jump_020_5b62

    ld a, [$db4a]
    inc a
    swap a
    call Call_020_5ba8
    dec hl
    ld [hl], $7f
    inc hl
    ret


jr_020_5ba0::
    ld a, [wArrowCount]
    jr jr_020_5ba8

jr_020_5ba5::
    ld a, [wBombCount]

Call_020_5ba8::
jr_020_5ba8::
    push af
    and $0f
    add $b0
    ld c, a
    pop af
    swap a
    and $0f
    add $b0
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


Call_020_5bb9::
    push bc
    ld a, [$dc90]
    ld e, a
    ld d, $00
    ld hl, $dc91
    add hl, de
    add $05
    ld [$dc90], a
    push hl
    sla c
    ld hl, $5c84
    add hl, bc
    push hl
    pop de
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    push hl
    ldh a, [$d8]
    sla a
    ld c, a
    ld hl, $5c14
    add hl, bc
    push hl
    pop de
    pop hl
    cp $06
    jr nz, jr_020_5bf9

    ld a, [wPowerBraceletLevel]
    cp $02
    jr nz, jr_020_5bf9

    ld a, $02
    ld [hl+], a
    ld [hl+], a
    jr jr_020_5c10

jr_020_5bf9::
    cp $18
    jr nz, jr_020_5c0b

    ld a, [$db4b]
    and a
    jr z, jr_020_5c0b

    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    jr jr_020_5c10

jr_020_5c0b::
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a

jr_020_5c10::
    xor a
    ld [hl], a
    pop bc
    ret


    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0202
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add h
    ld a, a
    ld a, a
    add l
    cp d
    ld a, a
    add b
    ld a, a
    ld a, a
    add c
    ld a, a
    ld a, a
    add d
    ld a, a
    ld a, a
    add e
    cp d
    ld a, a
    add [hl]
    ld a, a
    ld a, a
    add a
    cp d
    ld a, a
    adc b
    ld a, a
    ld a, a
    adc c
    ld a, a
    ld a, a
    adc d
    ld a, a
    ld a, a
    adc e
    ld a, a
    ld a, a
    adc h
    ld a, a
    ld a, a
    adc l
    ld a, a
    ld a, a
    sbc b
    ld a, a
    ld a, a
    sbc c
    ld a, a
    ld a, a
    sub b
    ld a, a
    ld a, a
    sub c
    ld a, a
    ld a, a
    sub d
    ld a, a
    ld a, a
    sub e
    ld a, a
    ld a, a
    sub [hl]
    ld a, a
    ld a, a
    sub a
    ld a, a
    ld a, a
    adc [hl]
    ld a, a
    ld a, a
    adc a
    ld a, a
    ld a, a
    and h
    ld a, a
    ld a, a
    and l
    ld a, a
    ld a, a
    sbc h
    ld bc, $069c
    sbc h
    ld h, c
    sbc h
    ld h, l
    sbc h
    pop bc
    sbc h
    push bc
    sbc l
    ld hl, $259d
    sbc l
    add c
    sbc l
    add l
    sbc l
    pop hl
    sbc l
    push hl

Call_020_5c9c::
Jump_020_5c9c::
    push de
    push bc
    ld hl, wAButtonSlot
    add hl, bc
    ld a, [hl]
    ldh [$d8], a
    sla a
    ld e, a
    sla a
    add e
    ldh [$d7], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_5cb5

    call Call_020_5bb9

jr_020_5cb5::
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $0c
    ld [wRequests], a
    push hl
    sla c
    ld hl, $5c84
    add hl, bc
    push hl
    pop de
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    push hl
    ldh a, [$d7]
    ld c, a
    ld hl, $5c30
    add hl, bc
    push hl
    pop de
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    pop bc
    push bc
    push hl
    sla c
    ld hl, $5c84
    add hl, bc
    push hl
    pop de
    pop hl
    inc de
    inc hl
    ld a, [de]
    add $20
    ld [hl], a
    dec de
    dec hl
    ld a, [de]
    inc de
    inc de
    adc $00
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    push hl
    ldh a, [$d7]
    ld c, a
    ld hl, $5c33
    add hl, bc
    push hl
    pop de
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    call Call_020_5b49
    xor a
    ld [hl], a
    pop bc
    pop de
    dec c
    ld a, c
    cp e
    jp nz, Jump_020_5c9c

    ret


    ld a, [$c154]
    ld c, a
    ld b, $00
    ld e, $ff
    call Call_020_5c9c
    xor a
    ld [$c154], a

Jump_020_5d34::
    call Call_020_6683
    call LCDOff
    ld a, $20
    call label_AB5
    xor a
    ld [wRequests], a
    ld [wRequestDestinationHigh], a
    ld [$dc90], a
    ld [$dc91], a
    ld a, [wLCDControl]
    ldh [rLCDC], a
    ret


    call LCDOff
    call $3fd1
    ld a, [wLCDControl]
    ldh [rLCDC], a
    call Call_020_6683
    ret


    rst $38
    ld d, a
    call nz, $2126
    dec d
    nop
    nop
    rst $38
    ld d, a
    ld sp, $c552
    jr z, jr_020_5d70

jr_020_5d70::
    nop
    rst $38
    ld d, a
    ld a, a
    inc l
    ld c, $14
    nop
    nop
    rst $38
    ld d, a
    reti


    ld de, $10ce
    nop
    nop
    rst $38
    ld d, a
    xor [hl]
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    rst $38
    ld d, a
    rst $38
    ld a, a
    ld b, d
    ld b, $00
    nop
    rst $38
    ld d, a
    cp e
    ld [de], a
    ld d, c
    ld bc, $0000
    rst $38
    ld d, a
    ld [bc], a
    dec hl
    nop
    ld a, [bc]
    nop
    nop
    rst $38
    ld d, a
    nop
    nop
    and d
    ld [hl+], a
    rst $38
    ld c, [hl]
    nop
    ld a, h
    nop
    nop
    rst $38
    dec b
    rst $38
    ld c, [hl]
    nop
    ld a, h
    nop
    nop
    inc bc
    ld a, [hl]
    rst $38
    ld c, [hl]
    nop
    ld a, h
    nop
    nop
    ld sp, $ff52
    ld a, a
    nop
    ld a, h
    rst $18
    ld a, [de]
    ld a, l
    jr jr_020_5dc8

jr_020_5dc8::
    nop
    nop
    ld a, h
    nop
    nop
    and d
    ld [hl+], a
    rst $38
    ld a, a
    nop
    ld a, h
    nop
    nop
    rra
    nop
    rst $38
    ld a, a
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld b, d
    ld b, $be
    rrca
    inc de
    ld [bc], a
    ld a, a
    rrca
    ldh [$09], a
    rst $18
    ld [hl-], a
    ld a, l
    jr @+$01

    ld a, a
    dec a
    ld [$7eae], sp
    nop
    ld a, h
    rst $38
    ld a, a
    ld sp, $e152
    ld e, l
    push hl
    ld e, l
    jp hl


    ld e, l
    db $ed
    ld e, l
    pop af
    ld e, l
    push af
    ld e, l
    ld sp, hl
    ld e, l
    nop
    ld bc, $0700
    ld [bc], a
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld b, $af
    ld [wWindowY], a
    ld a, $01
    ld [$ddd5], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_5e6d

    ld bc, $5d61
    ld hl, $dc10
    di
    ld a, $02
    ldh [rSVBK], a

jr_020_5e33::
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, l
    cp $90
    jr nz, jr_020_5e33

    xor a
    ldh [rSVBK], a
    ei
    ld hl, $5e0b
    ld a, [wTradeSequenceItem]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_5e6d

    sla a
    ld e, a
    ld hl, $5dfb
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $dc3a
    ld c, $04
    di
    ld a, $02
    ldh [rSVBK], a

jr_020_5e61::
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    ld a, c
    and a
    jr nz, jr_020_5e61

    xor a
    ldh [rSVBK], a
    ei

jr_020_5e6d::
    xor a
    ld [wTransitionSequenceCounter], a
    call Call_020_6683
    ret


    add b
    ld h, $00
    ld de, $3a20
    ldh [rNR23], a
    and b
    ld d, c
    ret nz

    jr nz, jr_020_5e8a

    ld a, l
    add h
    inc [hl]
    xor l
    ld a, h
    ld b, [hl]
    jr nc, @+$52

jr_020_5e8a::
    ld e, h
    daa
    jr z, jr_020_5ea0

    ld b, b
    ld [$151c], sp
    jr nc, jr_020_5e9d

    inc d
    rla
    inc d
    add hl, bc
    nop
    rst $10
    inc b
    ld l, d
    inc b

jr_020_5e9d::
    scf
    dec b
    adc d

jr_020_5ea0::
    inc b
    sub a
    add hl, bc
    xor d
    inc b
    push af
    add hl, bc
    ret


    inc b
    db $10
    ld a, [bc]
    rst $20
    inc b
    ld c, e
    ld b, $05
    dec b
    and b
    ld [bc], a
    jr nz, @+$03

Call_020_5eb5::
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_5eee

    ld a, [$de07]
    ld c, a
    ld a, [$de06]
    inc a
    ld [$de06], a
    cp $08
    jr c, jr_020_5ed6

    xor a
    ld [$de06], a
    ld a, c
    add $04
    and $3c
    ld [$de07], a
    ld c, a

jr_020_5ed6::
    ld b, $00
    ld hl, $5e75
    add hl, bc
    ld bc, $dc4a
    ld e, $04

jr_020_5ee1::
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    ld a, e
    and a
    jr nz, jr_020_5ee1

    ld a, $01
    ld [$ddd1], a

jr_020_5eee::
    ret


    call Call_020_635c
    call label_1A39
    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_020_5eff

    call Call_020_6683

jr_020_5eff::
    ret


    nop
    ld bc, $00ff
    cp $02

Call_020_5f06::
    ld a, [$dba3]
    ld [$c1b6], a
    ld a, [$c1b8]
    ld hl, $c1b9
    or [hl]
    jr nz, jr_020_5f59

    ld a, [$c1b5]
    and a
    jr nz, jr_020_5f38

    ldh a, [hFFCC]
    and $03
    ld e, a
    ld d, $00
    ld hl, $5f00
    add hl, de
    ld a, [$dba3]
    add [hl]
    cp $0a
    jr c, jr_020_5f35

    rla
    ld a, $00
    jr nc, jr_020_5f35

    ld a, $09

jr_020_5f35::
    ld [$dba3], a

jr_020_5f38::
    ldh a, [hFFCC]
    srl a
    srl a
    and $03
    ld e, a
    ld d, $00
    ld hl, $5f03
    add hl, de
    ld a, [$dba3]
    add [hl]
    cp $0a
    jr c, jr_020_5f56

    rla
    ld a, $00
    jr nc, jr_020_5f56

    ld a, $09

jr_020_5f56::
    ld [$dba3], a

jr_020_5f59::
    ldh a, [hPressedButtonsMask]
    and $0f
    jr z, jr_020_5f69

    ld a, [$c1b5]
    and a
    jr nz, jr_020_5f69

    xor a
    ld [wInventoryCursorFrameCounter], a

jr_020_5f69::
    ld a, [$c1b5]
    and a
    jr z, jr_020_5f85

    ld a, [$c1b8]
    ld hl, $c1b9
    or [hl]
    jr nz, jr_020_5f85

    ldh a, [hFFCC]
    and $80
    jr z, jr_020_5f85

    ld a, $01
    ld [$c1ba], a
    jr jr_020_5fb2

jr_020_5f85::
    ld a, [$dba3]
    ld hl, $c1b6
    cp [hl]
    jr z, jr_020_5fc1

    ld hl, $fff2
    ld [hl], $0a
    ld e, a
    ld d, $00
    ld hl, wInventoryItem1
    add hl, de
    ld a, [hl]
    cp $09
    jr nz, jr_020_5fb2

    ld a, [$db49]
    and a
    jr z, jr_020_5fb2

    ld a, $08
    ldh [hNeedsUpdatingBGTiles], a
    ld a, $10
    ld [$c1b8], a
    ld a, $01
    jr jr_020_5fbe

jr_020_5fb2::
    ld a, [$c1b5]
    and a
    jr z, jr_020_5fc1

    ld a, $10
    ld [$c1b9], a
    xor a

jr_020_5fbe::
    ld [$c1b5], a

jr_020_5fc1::
    ld hl, $c1b9
    ld a, [$c1b8]
    or [hl]
    jp nz, Jump_020_604a

    ldh a, [hFFCC]
    and $10
    jr z, jr_020_5fed

    ld a, [wBButtonSlot]
    push af
    ld hl, wInventoryItem1
    ld a, [$dba3]

Jump_020_5fdb::
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [wBButtonSlot], a
    pop af
    ld [hl], a
    ld c, $01
    ld b, $00
    ld e, $00
    jr jr_020_600d

jr_020_5fed::
    ldh a, [hFFCC]
    and $20
    jr z, jr_020_604a

    ld a, [wAButtonSlot]
    push af
    ld hl, wInventoryItem1
    ld a, [$dba3]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [wAButtonSlot], a
    pop af
    ld [hl], a
    ld c, $00
    ld b, $00
    ld e, $ff

jr_020_600d::
    cp $09
    jr nz, jr_020_6027

    ld a, [$db49]
    and a
    jr z, jr_020_6027

    ld a, $08
    ldh [hNeedsUpdatingBGTiles], a
    ld a, $10
    ld [$c1b8], a
    ld a, $01
    ld [$c1b5], a
    jr jr_020_6036

jr_020_6027::
    ld a, [$c1b5]
    and a
    jr z, jr_020_6036

    xor a
    ld [$c1b5], a
    ld a, $10
    ld [$c1b9], a

jr_020_6036::
    call Call_020_5c9c

Call_020_6039::
    ld a, $13
    ldh [$f2], a
    ld a, [$dba3]
    add $02
    ld c, a
    ld b, $00
    dec a
    ld e, a
    call Call_020_5c9c

Jump_020_604a::
jr_020_604a::
    ret


    ld hl, sp-$10
    ld [hl+], a
    ld bc, $f8f8
    ld [hl+], a
    ld hl, $00f8
    inc h
    ld [bc], a
    ld hl, sp+$08
    inc h
    ld [hl+], a
    ld hl, sp+$10
    ld h, $00
    ld hl, sp+$18
    ld h, $20
    ld [$20f0], sp
    nop
    ld [$20f8], sp
    nop
    ld [$2000], sp
    nop
    ld [$2008], sp
    nop
    ld [$2010], sp
    nop
    ld [$2018], sp
    nop
    ei
    db $f4
    jr nz, jr_020_607f

jr_020_607f::
    ei
    db $fc
    jr nz, jr_020_60a3

    ei
    nop
    jr nz, jr_020_6087

jr_020_6087::
    ei
    ld [$2020], sp
    ei
    inc c
    jr nz, jr_020_608f

jr_020_608f::
    ei
    inc d
    jr nz, jr_020_60b3

    dec b
    db $f4
    jr nz, jr_020_6097

jr_020_6097::
    dec b
    db $fc
    jr nz, jr_020_609b

jr_020_609b::
    dec b
    nop
    jr nz, jr_020_609f

jr_020_609f::
    dec b
    ld [$0020], sp

jr_020_60a3::
    dec b
    inc c
    jr nz, jr_020_60a7

jr_020_60a7::
    dec b
    inc d
    jr nz, jr_020_60ab

jr_020_60ab::
    db $fd
    ld hl, sp+$20
    nop
    db $fd
    db $10
    jr nz, jr_020_60d3

jr_020_60b3::
    db $fd
    nop
    jr nz, jr_020_60b7

jr_020_60b7::
    db $fd
    ld [$2020], sp
    db $fd
    ld [$0020], sp
    db $fd
    db $10
    jr nz, jr_020_60e3

    inc bc
    ld hl, sp+$20
    nop
    inc bc
    db $10
    jr nz, jr_020_60cb

jr_020_60cb::
    inc bc
    nop
    jr nz, jr_020_60cf

jr_020_60cf::
    inc bc
    ld [$0020], sp

jr_020_60d3::
    inc bc
    ld [$0020], sp
    inc bc
    db $10
    jr nz, jr_020_60db

jr_020_60db::
    nop
    nop
    jr nz, jr_020_60df

jr_020_60df::
    nop
    ld [$2020], sp

jr_020_60e3::
    nop
    nop
    jr nz, jr_020_60e7

jr_020_60e7::
    nop
    ld [$2020], sp
    nop
    nop
    jr nz, jr_020_60ef

jr_020_60ef::
    nop
    ld [$2020], sp
    nop
    nop
    jr nz, jr_020_60f7

jr_020_60f7::
    nop
    ld [$0020], sp
    nop
    nop
    jr nz, jr_020_60ff

jr_020_60ff::
    nop
    ld [$0020], sp
    nop
    nop
    jr nz, jr_020_6107

jr_020_6107::
    nop
    ld [$0020], sp
    ld d, b
    ld h, b
    ld [hl], b
    inc b
    ld [bc], a
    ld bc, $b9fa
    pop bc
    and a
    jr z, jr_020_6131

    dec a
    ld [$c1b9], a
    jr nz, jr_020_612e

    ld hl, hNeedsUpdatingBGTiles
    ld [hl], $0b
    ld a, [$c1ba]
    and a
    jr z, jr_020_612d

    ld a, $0c
    ld [wGameplaySubtype], a

jr_020_612d::
    ret


jr_020_612e::
    cpl
    jr jr_020_613b

jr_020_6131::
    ld a, [$c1b8]
    and a
    jr z, jr_020_6141

    dec a
    ld [$c1b8], a

jr_020_613b::
    rra
    rra
    and $03
    jr jr_020_614a

jr_020_6141::
    ld a, [$c1b5]
    and a
    jp z, Jump_020_6214

    ld a, $00

jr_020_614a::
    ld [$c1b7], a
    ld a, [$c1b7]
    ld d, $00
    sla a
    sla a
    sla a
    sla a
    ld e, a
    sla a
    add e
    ld e, a
    ld hl, $604b
    add hl, de
    ld de, $c018
    ld c, $0c
    ld b, $04

jr_020_616a::
    ld a, [hl+]
    add $30
    ld [de], a
    inc de
    ld a, [hl+]
    add $60
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    cp $22
    jr z, jr_020_6185

    cp $24
    jr z, jr_020_6189

    cp $26
    jr z, jr_020_618d

    jr jr_020_619a

jr_020_6185::
    ld b, $04
    jr jr_020_618f

jr_020_6189::
    ld b, $02
    jr jr_020_618f

jr_020_618d::
    ld b, $01

jr_020_618f::
    ld a, [$db49]
    and b
    jr nz, jr_020_619a

    dec de
    ld a, $20
    ld [de], a
    inc de

jr_020_619a::
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_020_616a

    ld a, [$c1b7]
    cp $00
    jr nz, jr_020_6214

    ldh a, [hFFCC]
    and $01
    jr z, jr_020_61c5

jr_020_61ad::
    ld hl, $db4a
    ld a, [hl]
    inc a
    cp $03
    jr nz, jr_020_61b7

    xor a

jr_020_61b7::
    ld [hl], a
    ld e, a
    ld d, $00
    ld hl, $610e
    add hl, de
    ld a, [$db49]
    and [hl]
    jr z, jr_020_61ad

jr_020_61c5::
    ldh a, [hFFCC]
    and $02
    jr z, jr_020_61e4

jr_020_61cb::
    ld hl, $db4a
    ld a, [hl]
    dec a
    cp $80
    jr c, jr_020_61d6

    ld a, $02

jr_020_61d6::
    ld [hl], a
    ld e, a
    ld d, $00
    ld hl, $610e
    add hl, de
    ld a, [$db49]
    and [hl]
    jr z, jr_020_61cb

jr_020_61e4::
    ldh a, [hFFCC]
    and $03
    jr z, jr_020_61ed

    call Call_020_6039

jr_020_61ed::
    ld hl, $c010
    ld a, $38
    ld [hl+], a
    push hl
    ld a, [$db4a]
    ld e, a
    ld d, $00
    ld hl, $610b
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    push af
    ld a, $28
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    pop af
    add $08
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld [hl], $26

Jump_020_6214::
jr_020_6214::
    ret


Call_020_6215::
    ld a, [wActiveRoom]
    and a
    jr z, jr_020_628d

    ldh a, [hMapTileset]
    cp $ff
    jr z, jr_020_6226

    cp $08
    jp nc, Jump_020_628d

jr_020_6226::
    ld a, [$d46b]
    and $f8
    add $50
    ld h, a
    ld a, [$d46b]
    rla
    rla
    rla
    and $38
    add $60
    ld l, a
    ld a, [$dbb0]
    and $20
    jr z, jr_020_624d

    ld a, [$d46b]
    and $38
    cp $20
    jr nc, jr_020_624d

    ld a, h
    sub $08
    ld h, a

jr_020_624d::
    ld a, [$dbb0]
    and $10
    jr z, jr_020_6261

    ld a, [$d46b]
    and $07
    cp $04
    jr c, jr_020_6261

    ld a, l
    add $08
    ld l, a

jr_020_6261::
    ld a, h
    ld [wOAMBuffer], a
    ld a, l
    ld [$c001], a
    ld a, $3f
    ld [$c002], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_6285

    ld a, $01
    ld [$c003], a
    ldh a, [hFrameCounter]
    and $08
    jr z, jr_020_628d

    ld a, $04
    ld [$c003], a
    jr jr_020_628d

jr_020_6285::
    ldh a, [hFrameCounter]
    rla
    and $10
    ld [$c003], a

Jump_020_628d::
jr_020_628d::
    ret


    ld [$0828], sp
    jr z, jr_020_629b

    jr z, jr_020_629d

    jr z, jr_020_629f

    jr z, jr_020_62c1

    jr z, @+$42

jr_020_629b::
    ld b, b
    ld e, b

jr_020_629d::
    ld e, b
    ld [hl], b

jr_020_629f::
    ld [hl], b
    adc b
    adc b

Call_020_62a2::
    ld a, [wInventoryCursorFrameCounter]
    inc a
    ld [wInventoryCursorFrameCounter], a
    and $10
    jr nz, jr_020_62dd

    ld a, [$dba3]
    ld e, a
    ld d, $00
    ld hl, $6298
    add hl, de
    ld a, [hl]
    ld [$c004], a
    ld [$c008], a
    ld hl, $628e

jr_020_62c1::
    add hl, de
    ld a, [hl]
    ld [$c005], a
    add $20
    ld [$c009], a
    ld a, $be
    ld [$c006], a
    ld [$c00a], a
    ld a, $34
    ld [$c007], a
    ld a, $14
    ld [$c00b], a

jr_020_62dd::
    ret


Call_020_62de::
    ld a, [$de09]
    ld b, a
    ld a, [$de08]
    inc a
    ld [$de08], a
    cp $10
    jr c, jr_020_62f2

    xor a
    ld [$de08], a
    inc b

jr_020_62f2::
    ld a, b
    ld [$de09], a
    ldh [$e6], a
    ld hl, $c050
    ld b, $4a
    ld c, $53
    ld d, $08
    ld a, $90
    ld [hl+], a
    ld a, c
    ld [hl+], a
    add $08
    ld c, a
    ld a, b
    inc b
    inc b
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    ldh a, [$e6]
    and $03
    jr nz, jr_020_631a

    ld c, $9b
    jr jr_020_632e

jr_020_631a::
    ld a, $90
    ld [hl+], a
    ld a, c
    ld [hl+], a
    add $08
    ld c, a
    ld a, b
    ld [hl+], a
    inc b
    inc b
    ld a, $06
    ld [hl+], a
    dec d
    ld a, d
    and a
    jr nz, jr_020_631a

jr_020_632e::
    ld a, $90
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, $4a
    ld [hl+], a
    ld a, $26
    ld [hl], a
    ret


    db $10
    jr c, jr_020_634d

    jr nc, jr_020_634f

    jr nc, jr_020_6351

    jr nc, @+$12

    jr nc, jr_020_6355

    jr nc, jr_020_6355

    ld c, $26
    ld h, $3e
    ld a, $56

jr_020_634d::
    ld d, [hl]
    ld l, [hl]

jr_020_634f::
    ld l, [hl]
    add [hl]

jr_020_6351::
    add [hl]
    ld a, [wBGPalette]

jr_020_6355::
    cp $e4
    ret c

    ld d, $02
    jr jr_020_635e

Call_020_635c::
    ld d, $0c

jr_020_635e::
    ld hl, wAButtonSlot
    ld e, $00

jr_020_6363::
    ld a, [hl+]
    cp $01
    jr z, jr_020_636e

    inc e
    ld a, e
    cp d
    jr nz, jr_020_6363

    ret


jr_020_636e::
    ld d, $00
    ld hl, $633a
    add hl, de
    ld a, [hl]
    ldh [$d7], a
    ld hl, $6346
    add hl, de
    ld a, [hl]
    ldh [$d8], a
    ld a, [wActivePowerUp]
    dec a
    jr nz, jr_020_63be

    ldh a, [hFrameCounter]
    and $08
    jr nz, jr_020_63be

    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, $c030
    ld a, [wGameplayType]
    cp $0c
    jr nz, jr_020_63a1

    ld a, [wGameplaySubtype]
    cp $02
    jr nc, jr_020_63a2

jr_020_63a1::
    add hl, de

jr_020_63a2::
    ld a, [$c1b5]
    and a
    jr z, jr_020_63ab

    ld hl, $c09c

jr_020_63ab::
    ld a, [wWindowY]
    push hl
    ld hl, $ffd8
    add [hl]
    pop hl
    ld [hl+], a
    ldh a, [$d7]
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $54
    ld [hl+], a

jr_020_63be::
    ld a, $01
    call label_3DA0
    ret


    call Call_020_5eb5
    call Call_020_6215
    call Call_020_5f06
    call $6111
    call Call_020_62a2
    call Call_020_635c
    call Call_020_62de
    ld a, [$c1ba]
    and a
    jr z, jr_020_63f5

    ld a, [wGameplaySubtype]
    cp $0c
    jr nz, jr_020_6445

    xor a
    ld [$c1ba], a
    ld [$c1b5], a
    ld [$c1b8], a
    ld [$c1b9], a
    jr jr_020_6436

jr_020_63f5::
    ldh a, [hFFCC]
    and $40
    jr z, jr_020_641e

    ld a, $09
    ld [wGameplaySubtype], a
    ld a, $90
    ld [$de0a], a
    ld a, [$0005]
    and a
    jr z, jr_020_641c

    ld a, [wFreeMovementMode]
    xor $01
    ld [wFreeMovementMode], a
    ld a, $01
    ld [wPhotos1], a
    xor a
    ld [wPhotos2], a

jr_020_641c::
    jr jr_020_6445

jr_020_641e::
    ld a, [$c1b5]
    ld hl, $c1b8
    or [hl]
    ld hl, $c1b9
    or [hl]
    jr nz, jr_020_6445

    ldh a, [hFFCC]
    and $80
    jr z, jr_020_6445

    ld a, $0c
    ld [wGameplaySubtype], a

jr_020_6436::
    xor a
    ld [wTransitionSequenceCounter], a
    ld [wC16C], a
    inc a
    ld [$ddd5], a
    ld a, $12
    ldh [$f2], a

jr_020_6445::
    ret


Call_020_6446::
jr_020_6446::
    ldh a, [$e2]
    ld [hl+], a
    ldh a, [$e1]
    ld [hl+], a
    add $08
    ldh [$e1], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    ld a, c
    and a
    jr nz, jr_020_6446

    ret


    ld b, b
    dec b
    ld b, b
    dec h
    ld e, h
    inc bc
    ld e, [hl]
    inc bc
    ld b, b
    ld b, $40
    ld h, $60
    inc bc
    ld h, d
    inc bc
    ld b, b
    rlca
    ld b, b
    daa
    ld h, h
    inc bc
    ld a, [hl]
    inc bc
    ld e, h
    ld h, h
    ld h, h
    ld h, h
    ld l, h
    ld h, h
    ld b, d
    ld b, $42
    ld h, $66
    inc bc
    ld a, d
    inc bc
    ld l, [hl]
    inc bc
    ld b, [hl]
    ld b, $42
    ld h, $68
    inc bc
    ld a, d
    inc bc
    ld l, [hl]
    inc bc
    ld b, h
    ld b, $42
    ld h, $6a
    inc bc
    ld a, d
    inc bc
    ld l, [hl]
    inc bc
    ld b, h
    ld b, $46
    ld h, $6c
    inc bc
    ld a, d
    inc bc
    ld l, [hl]
    inc bc
    ld a, d
    ld h, h
    add h
    ld h, h
    adc [hl]
    ld h, h
    sbc b
    ld h, h
    ld a, h
    inc bc
    ld c, b
    inc bc
    ld c, b
    inc hl
    ld h, [hl]
    inc bc
    ld h, [hl]
    inc bc
    ld h, [hl]
    inc bc
    ld l, b
    inc bc
    ld h, [hl]
    inc bc
    ld l, d
    inc bc
    ld h, [hl]
    inc bc
    ld l, h
    inc bc
    ld h, [hl]
    inc bc
    ld l, [hl]
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], b
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], d
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], h
    inc bc
    ld h, [hl]
    inc bc
    db $76
    inc bc
    ld h, [hl]
    inc bc
    ld a, b
    inc bc
    ld l, b
    inc bc
    ld h, [hl]
    inc bc
    ld l, b
    inc bc
    ld l, b
    inc bc
    ld l, b
    inc bc
    ld l, d
    inc bc
    ld a, d
    inc bc
    ld l, b
    inc bc
    ld l, d
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc

Call_020_64ee::
    ld hl, $c010
    ld a, $53
    ldh [$e1], a
    ld a, [$de0a]
    ldh [$e2], a
    push hl
    ld c, $04
    ld hl, $6474
    ld a, [wTunicType]
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_020_6446
    ldh a, [$e2]
    ld [hl+], a
    ldh a, [$e1]
    ld [hl+], a
    add $08
    ldh [$e1], a
    ld a, $7c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    push hl
    ld c, $06
    ld de, $64a2
    ld h, $00
    ld a, [$db5c]
    sla a
    ld l, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_020_6446
    ld a, $53
    ldh [$e1], a
    ld a, [$de0a]
    add $10
    ldh [$e2], a
    ld c, $03
    ld de, $64aa
    call Call_020_6446
    ld e, $00
    ld a, [wPhotos1]

jr_020_654e::
    bit 0, a
    jr z, jr_020_6553

    inc e

jr_020_6553::
    srl a
    and a
    jr nz, jr_020_654e

    ld a, [wPhotos2]
    and $0f

jr_020_655d::
    bit 0, a
    jr z, jr_020_6562

    inc e

jr_020_6562::
    srl a
    and a
    jr nz, jr_020_655d

    ld d, $00
    sla e
    sla e
    push hl
    ld c, $02
    ld hl, $64b0
    add hl, de
    push hl
    pop de
    pop hl
    call Call_020_6446
    ld c, $05
    ld de, $64e4
    call Call_020_6446
    ret


    call Call_020_5eb5
    call Call_020_64ee
    ldh a, [hPressedButtonsMask]
    and $40
    jr nz, jr_020_6596

    ld a, $0b
    ld [wGameplaySubtype], a
    jr jr_020_65a7

jr_020_6596::
    ld a, [$de0a]
    sub $04
    cp $78
    jr nc, jr_020_65a4

    call Call_020_6683
    ld a, $78

jr_020_65a4::
    ld [$de0a], a

jr_020_65a7::
    ret


    call Call_020_5eb5
    call Call_020_64ee
    ldh a, [hPressedButtonsMask]
    and $40
    jr nz, jr_020_65b7

    call Call_020_6683

jr_020_65b7::
    ret


    call Call_020_5eb5
    call Call_020_64ee
    ld a, [$de0a]
    add $04
    cp $90
    jr c, jr_020_65ce

    ld a, $08
    ld [wGameplaySubtype], a
    ld a, $90

jr_020_65ce::
    ld [$de0a], a
    ret


    call Call_020_635c
    call label_1A22
    ld a, [wTransitionSequenceCounter]
    cp $04
    jp nz, Jump_020_6682

    ld a, $01
    ld [$ddd5], a
    xor a
    ld [$c50a], a
    ld [wC116], a
    ldh [hBaseScrollX], a
    ldh [hBaseScrollY], a
    ld [wC167], a
    ld [wInventoryAppearing], a
    ld a, $07
    ldh [hWindowYUnused], a
    ld a, $70
    ldh [hWindowXUnused], a
    ld a, $0b
    ld [wGameplayType], a
    ldh [hFFBC], a
    ld a, $02
    ld [wGameplaySubtype], a
    ld a, [wActiveRoom]
    and a
    ld a, $06
    jr nz, jr_020_6628

    ldh a, [hMapIndex]
    cp $64
    jr nz, jr_020_6626

    ld hl, $c193
    ld [hl], $a4
    inc hl
    ld [hl], $e5
    inc hl
    ld [hl], $82
    inc hl
    ld [hl], $a2

jr_020_6626::
    ld a, $07

jr_020_6628::
    ld [wTileMapToLoad], a
    ld hl, wMapSlideTransitionState
    ld e, $00

jr_020_6630::
    xor a
    ld [hl+], a
    inc e
    ld a, e
    cp $0c
    jr nz, jr_020_6630

    ld a, $80
    ld [wWindowY], a
    ld a, $07
    ldh [rWX], a
    ld a, $08
    ld [$c150], a
    ld a, $07
    ldh [hWindowYUnused], a
    ld a, $70
    ldh [hWindowXUnused], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_020_6682

    ld hl, $dc10
    ld c, $80
    di

jr_020_6659::
    ld a, $03
    ldh [rSVBK], a
    ld b, [hl]
    dec a
    ldh [rSVBK], a
    ld [hl], b
    inc hl
    dec c
    ld a, c
    and a
    jr nz, jr_020_6659

    xor a
    ldh [rSVBK], a
    ld a, [wLCDControl]
    and $7f
    ldh [rLCDC], a
    ldh a, [hMapTileset]
    cp $ff
    jr nz, jr_020_667c

    ld a, $01
    ldh [hNeedsUpdatingEnnemiesTiles], a

jr_020_667c::
    ld a, [wLCDControl]
    ldh [rLCDC], a
    ei

Jump_020_6682::
jr_020_6682::
    ret


Call_020_6683::
    ld hl, wGameplaySubtype
    inc [hl]
    ret


    nop
    ld [$0248], sp
    nop
    nop
    ld b, b
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    nop
    ld [$024a], sp
    nop
    nop
    ld c, h
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, d
    ld [hl+], a
    nop
    ld [$224c], sp
    nop
    ld [$ffff], sp
    nop
    nop
    ld c, b
    ld [hl+], a
    nop
    ld [$2240], sp
    nop
    ld [$ffff], sp
    nop
    inc c
    ld b, h
    ld [bc], a
    nop
    inc b
    ld b, [hl]
    ld [bc], a
    nop
    db $fc
    ld b, b
    ld [bc], a
    nop
    db $fc
    ld b, h
    ld [hl+], a
    nop
    inc b
    ld b, [hl]
    ld [hl+], a
    nop
    inc c
    ld b, b
    ld [hl+], a
    nop
    db $fc
    ld b, h
    ld [hl+], a
    nop
    inc b
    ld b, d
    ld [hl+], a
    nop
    inc c
    ld b, b
    ld [hl+], a
    nop
    inc c
    ld b, h
    ld [bc], a
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    db $fc
    ld b, b
    ld [bc], a
    nop
    ld [$0048], sp
    nop
    nop
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld [$004a], sp
    nop
    nop
    ld c, h
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, d
    jr nz, jr_020_6705

jr_020_6705::
    ld [$204c], sp
    nop
    ld [$ffff], sp
    nop
    nop
    ld c, b
    jr nz, jr_020_6711

jr_020_6711::
    ld [$2040], sp
    nop
    ld [$ffff], sp
    nop
    inc c
    ld b, h
    nop
    nop
    inc b
    ld b, [hl]
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, h
    jr nz, jr_020_6729

jr_020_6729::
    inc b
    ld b, [hl]
    jr nz, jr_020_672d

jr_020_672d::
    inc c
    ld b, b
    jr nz, jr_020_6731

jr_020_6731::
    db $fc
    ld b, h
    jr nz, jr_020_6735

jr_020_6735::
    inc b
    ld b, d
    jr nz, jr_020_6739

jr_020_6739::
    inc c
    ld b, b
    jr nz, jr_020_673d

jr_020_673d::
    inc c
    ld b, h
    nop
    nop
    inc b
    ld b, d
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    ld [$0348], sp
    nop
    nop
    ld b, b
    inc bc
    nop
    nop
    rst $38
    rst $38
    nop
    ld [$034a], sp
    nop
    nop
    ld c, h
    inc bc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, d
    inc hl
    nop
    ld [$234c], sp
    nop
    ld [$ffff], sp
    nop
    nop
    ld c, b
    inc hl
    nop
    ld [$2340], sp
    nop
    ld [$ffff], sp
    nop
    inc c
    ld b, h
    inc bc
    nop
    inc b
    ld b, [hl]
    inc bc
    nop
    db $fc
    ld b, b
    inc bc
    nop
    db $fc
    ld b, h
    inc hl
    nop
    inc b
    ld b, [hl]
    inc hl
    nop
    inc c
    ld b, b
    inc hl
    nop
    db $fc
    ld b, h
    inc hl
    nop
    inc b
    ld b, d
    inc hl
    nop
    inc c
    ld b, b
    inc hl
    nop
    inc c
    ld b, h
    inc bc
    nop
    inc b
    ld b, d
    inc bc
    nop
    db $fc
    ld b, b
    inc bc
    nop
    nop
    ld c, h
    ld [bc], a
    nop
    ld [$024e], sp
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld [hl+], a
    nop
    ld [$224c], sp
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    ld d, b
    ld [bc], a
    nop
    ld [$025a], sp
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    ld e, d
    ld [hl+], a
    nop
    ld [$2250], sp
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    ld c, h
    nop
    nop
    ld [$004e], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld c, [hl]
    jr nz, jr_020_67e9

jr_020_67e9::
    ld [$204c], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld [$005a], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld e, d
    jr nz, jr_020_6801

jr_020_6801::
    ld [$2050], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld c, h
    inc bc
    nop
    ld [$034e], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld c, [hl]
    inc hl
    nop
    ld [$234c], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld d, b
    inc bc
    nop
    ld [$035a], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld e, d
    inc hl
    nop
    ld [$2350], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld a, b
    inc bc
    nop
    ld [$037a], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld a, h
    inc bc
    nop
    ld [$037e], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld a, d
    inc hl
    nop
    ld [$2378], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    ld a, [hl]
    inc hl
    nop
    ld [label_237C], sp
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    db $fd
    db $10
    ld [hl+], a
    inc hl
    db $fd
    db $fd
    ld [hl+], a
    inc bc
    nop
    nop
    ld a, b
    inc bc
    nop
    ld [$037a], sp
    rlca
    db $10
    ld [hl+], a
    inc bc
    rlca
    db $fd
    ld [hl+], a
    inc hl
    rst $38
    nop
    ld a, b
    inc bc
    rst $38
    ld [$037a], sp
    db $fd
    dec bc
    ld [hl+], a
    inc hl
    db $fd
    ld hl, sp+$22
    inc bc
    nop
    nop
    ld a, d
    inc hl
    nop
    ld [$2378], sp
    rlca
    dec bc
    ld [hl+], a
    inc bc
    rlca
    ld hl, sp+$22
    inc hl
    rst $38
    nop
    ld a, d
    inc hl
    rst $38
    ld [$2378], sp
    db $f4
    ld hl, sp+$40
    rlca
    db $f4
    nop
    ld b, d
    rlca
    db $f4
    ld [$0744], sp
    db $f4
    db $10
    ld b, [hl]
    rlca
    inc b
    ld hl, sp+$48
    rlca
    inc b
    nop
    ld c, d
    rlca
    inc b
    ld [$074c], sp
    inc b
    db $10
    ld c, [hl]
    rlca
    db $f4
    db $10
    ld b, b
    daa
    db $f4
    ld [$2742], sp
    db $f4
    nop
    ld b, h
    daa
    db $f4
    ld hl, sp+$46
    daa
    inc b
    db $10
    ld c, b
    daa
    inc b
    ld [$274a], sp
    inc b
    nop
    ld c, h
    daa
    inc b
    ld hl, sp+$4e
    daa
    db $f4
    db $10
    ld d, b
    daa
    db $f4
    ld [$2752], sp
    db $f4
    nop
    ld d, h
    daa
    db $f4
    ld hl, sp+$56
    daa
    inc b
    db $10
    ld e, b
    daa
    inc b
    ld [$275a], sp
    inc b
    nop
    ld e, h
    daa
    inc b
    ld hl, sp+$5e
    daa
    db $f4
    ld hl, sp+$50
    rlca
    db $f4
    nop
    ld d, d
    rlca
    db $f4
    ld [$0754], sp
    db $f4
    db $10
    ld d, [hl]
    rlca
    inc b
    ld hl, sp+$58
    rlca
    inc b
    nop
    ld e, d
    rlca
    inc b
    ld [$075c], sp
    inc b
    db $10
    ld e, [hl]
    rlca
    ld [bc], a
    db $fc
    ld b, b
    rlca
    ld [bc], a
    inc b
    ld b, d
    rlca
    ld [bc], a
    inc c
    ld b, b
    daa
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, [c]
    nop
    ld b, h
    rlca
    ld a, [c]
    ld [$2744], sp
    ld [bc], a
    nop
    ld b, [hl]
    rlca
    ld [bc], a
    ld [$2746], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, [c]
    nop
    ld c, b
    rlca
    ld a, [c]
    ld [$2748], sp
    ld [bc], a
    nop
    ld c, d
    rlca
    ld [bc], a
    ld [$274a], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, [c]
    nop
    ld c, h
    rlca
    ld a, [c]
    ld [$274c], sp
    ld [bc], a
    ld hl, sp+$4e
    rlca
    ld [bc], a
    nop
    ld d, b
    rlca
    ld [bc], a
    ld [$2750], sp
    ld [bc], a
    db $10
    ld c, [hl]
    daa
    ld a, [c]
    db $fc
    ld d, d
    rlca
    ld a, [c]
    inc b
    ld d, [hl]
    rlca
    ld a, [c]
    inc c
    ld e, d
    rlca
    ld [bc], a
    db $fc
    ld d, h
    rlca
    ld [bc], a
    inc b
    ld e, b
    rlca
    ld [bc], a
    inc c
    ld e, h
    rlca
    ld a, [c]
    db $fc
    ld e, d
    daa
    ld a, [c]
    inc b
    ld d, [hl]
    daa
    ld a, [c]
    inc c
    ld d, d
    daa
    ld [bc], a
    db $fc
    ld e, h
    daa
    ld [bc], a
    inc b
    ld e, b
    daa
    ld [bc], a
    inc c
    ld d, h
    daa
    ld a, [c]
    nop
    ld c, h
    inc b
    ld a, [c]
    ld [$244c], sp
    ld [bc], a
    ld hl, sp+$4e
    inc b
    ld [bc], a
    nop
    ld d, b
    inc b
    ld [bc], a
    ld [$2450], sp
    ld [bc], a
    db $10
    ld c, [hl]
    inc h
    ldh a, [$fc]
    ld d, b
    ld bc, $04f0
    ld d, d
    ld bc, $0cf0
    ld d, h
    ld bc, $fc00
    ld d, [hl]
    ld bc, $0400
    ld e, b
    ld bc, label_C00
    ld e, d
    ld bc, $fcf0
    ld d, b
    ld bc, $04f0
    ld d, d
    ld bc, $0cf0
    ld d, h
    ld bc, $fc00
    ld e, h
    ld bc, $0400
    ld e, b
    ld bc, label_C00
    ld e, [hl]
    ld bc, $04f4
    jr nz, @+$23

    nop
    inc b
    adc [hl]
    ld d, $f4
    inc b
    jr nz, jr_020_6a1d

    nop

jr_020_6a1d::
    inc b
    adc [hl]
    ld d, $f4
    nop
    ld b, b
    inc bc
    db $f4
    ld [$2340], sp
    db $f4
    nop
    ld b, b
    ld [bc], a
    db $f4
    ld [$2240], sp

Call_020_6a30::
    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld a, e
    cp $03
    ret c

    ld a, $01
    ldh [$e4], a
    ld a, $02
    ldh [$e5], a
    ld a, $04
    ldh [$e6], a
    ld hl, $dc10
    ld d, $40
    ld a, e
    cp $06
    jr nc, jr_020_6a52

    ld d, $28

jr_020_6a52::
    and $10
    jr z, jr_020_6a68

    ldh a, [$e4]
    sla a
    ldh [$e4], a
    ldh a, [$e5]
    sla a
    ldh [$e5], a
    ldh a, [$e6]
    sla a
    ldh [$e6], a

Call_020_6a68::
jr_020_6a68::
    push hl
    ldh a, [$e4]
    ld c, a
    ld a, [hl]
    and $1f
    add c
    cp $20
    jr c, jr_020_6a76

    ld a, $1f

jr_020_6a76::
    ldh [$d7], a
    ldh a, [$e5]
    ld c, a
    ld a, [hl+]
    and $e0
    swap a
    ld b, a
    ld a, [hl]
    and $03
    swap a
    or b
    and $3e
    add c
    cp $40
    jr c, jr_020_6a90

    ld a, $3e

jr_020_6a90::
    ldh [$d8], a
    ldh a, [$e6]
    ld c, a
    ld a, [hl]
    and $7c
    add c
    cp $80
    jr c, jr_020_6a9f

    ld a, $7c

jr_020_6a9f::
    ldh [$d9], a
    pop hl
    ldh a, [$d7]
    ld b, a
    ldh a, [$d8]
    swap a
    ld c, a
    and $e0
    or b
    ld [hl+], a
    ldh a, [$d9]
    ld b, a
    ld a, c
    and $03
    or b
    ld [hl+], a
    dec d
    ld a, d
    and a
    jr nz, jr_020_6a68

    ld a, $03
    ld [$ddd1], a
    ret


    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld a, e
    cp $06
    ret c

    ld a, $01
    ldh [$e4], a
    ld a, $02
    ldh [$e5], a
    ld a, $04
    ldh [$e6], a
    ld hl, $dc10
    ld a, $40
    ldh [$da], a
    ld a, e
    and $10
    jr z, jr_020_6af5

    ldh a, [$e4]
    sla a
    ldh [$e4], a
    ldh a, [$e5]
    sla a
    ldh [$e5], a
    ldh a, [$e6]
    sla a
    ldh [$e6], a

Call_020_6af5::
Jump_020_6af5::
jr_020_6af5::
    push hl
    ld a, $02
    ldh [rSVBK], a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    dec hl
    xor a
    ldh [rSVBK], a
    ldh a, [$e4]
    ld c, a
    ld a, e
    and $1f
    ld b, a
    ld a, [hl]
    and $1f
    cp b
    jr c, jr_020_6b17

    jr z, jr_020_6b17

    sub c
    jr c, jr_020_6b17

    cp b
    jr nc, jr_020_6b18

jr_020_6b17::
    ld a, b

jr_020_6b18::
    ldh [$d7], a
    ld a, e
    and $e0
    swap a
    ld b, a
    ld a, d
    and $03
    swap a
    or b
    ld b, a
    ld a, [hl+]
    and $e0
    swap a
    ld c, a
    ld a, [hl]
    and $03
    swap a
    or c
    push af
    ldh a, [$e5]
    ld c, a
    pop af
    cp b
    jr c, jr_020_6b43

    jr z, jr_020_6b43

    sub c
    jr c, jr_020_6b43

    cp b
    jr nc, jr_020_6b44

jr_020_6b43::
    ld a, b

jr_020_6b44::
    ldh [$d8], a
    ldh a, [$e6]
    ld c, a
    ld a, d
    and $7c
    ld b, a
    ld a, [hl]
    and $7c
    cp b
    jr c, jr_020_6b5b

    jr z, jr_020_6b5b

    sub c
    jr c, jr_020_6b5b

    cp b
    jr nc, jr_020_6b5c

jr_020_6b5b::
    ld a, b

jr_020_6b5c::
    ldh [$d9], a
    pop hl
    ldh a, [$d7]
    ld b, a
    ldh a, [$d8]
    swap a
    ld c, a
    and $e0
    or b
    ld [hl+], a
    ldh a, [$d9]
    ld b, a
    ld a, c
    and $03
    or b
    ld [hl+], a
    ldh a, [$da]
    dec a
    ldh [$da], a
    and a
    jp nz, Jump_020_6af5

    ld a, $03
    ld [$ddd1], a

Jump_020_6b81::
    xor a
    ld [$ddd5], a
    ret


Call_020_6b86::
    ld a, $02
    ldh [rSVBK], a
    ld a, [bc]
    or [hl]
    ld e, a
    inc bc
    inc hl
    ld a, [bc]
    or [hl]
    ld d, a
    dec bc
    dec hl
    xor a
    ldh [rSVBK], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ret


    nop
    nop
    add h
    db $10
    adc h
    ld sp, $1084
    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld a, [wIntroSubTimer]
    and a
    jr z, jr_020_6bb4

    cp $18
    jr nc, jr_020_6bdb

jr_020_6bb4::
    ld hl, $6b9c
    sla e
    add hl, de
    push hl
    pop bc
    ld hl, $dc10
    ld a, $08
    ldh [$d7], a

jr_020_6bc3::
    call Call_020_6b86
    call Call_020_6b86
    call Call_020_6b86
    inc hl
    inc hl
    ldh a, [$d7]
    dec a
    and a
    ldh [$d7], a
    jr nz, jr_020_6bc3

    ld a, $01
    ld [$ddd1], a

jr_020_6bdb::
    ret


    ldh a, [hIsGBC]
    and a
    ret z

    ld hl, $dc10
    ld bc, $dc50
    ld d, $20

jr_020_6be8::
    ld a, $ff
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [hl+], a
    ld [bc], a
    inc bc
    dec d
    ld a, d
    and a
    jr nz, jr_020_6be8

    ld a, $03
    ld [$ddd1], a
    ld a, $01
    ld [$ddd5], a
    ret


    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld c, $80
    ld hl, $dc10

jr_020_6c0b::
    ld a, $02
    ldh [rSVBK], a
    ld b, [hl]
    xor a
    ldh [rSVBK], a
    ld [hl], b
    inc hl
    dec c
    ld a, c
    and a
    jr nz, jr_020_6c0b

    ld a, $03
    ld [$ddd1], a
    xor a
    ld [$ddd5], a
    ret


    ldh a, [hIsGBC]
    and a
    jr z, jr_020_6c4e

    ld hl, $dc50
    ld a, [wTunicType]
    and a
    jr z, jr_020_6c3d

    inc a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    add hl, bc

jr_020_6c3d::
    ld b, $08

jr_020_6c3f::
    ld a, $02
    ldh [rSVBK], a
    ld c, [hl]
    xor a
    ldh [rSVBK], a
    ld [hl], c
    inc hl
    dec b
    ld a, b
    and a
    jr nz, jr_020_6c3f

jr_020_6c4e::
    ret


    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld a, [wC16C]
    and $01
    jr z, jr_020_6c60

    ld a, $02
    jr jr_020_6c76

jr_020_6c60::
    ld a, $04
    ldh [$e4], a
    ld a, $08
    ldh [$e5], a
    ld a, $10
    ldh [$e6], a
    ld hl, $dc10
    ld d, $40
    call Call_020_6a68
    ld a, $01

jr_020_6c76::
    ld [$ddd1], a
    ret


    ldh a, [hIsGBC]
    and a
    jp z, Jump_020_6b81

    ld a, [wC16C]
    and $01
    jr z, jr_020_6c8b

    ld a, $02
    jr jr_020_6ca3

jr_020_6c8b::
    ld a, $04
    ldh [$e4], a
    ld a, $08
    ldh [$e5], a
    ld a, $10
    ldh [$e6], a
    ld hl, $dc10
    ld a, $40
    ldh [$da], a
    call Call_020_6af5
    ld a, $01

jr_020_6ca3::
    ld [$ddd1], a
    ret


    ld a, [$c3ca]
    cp $20
    jr z, jr_020_6d0d

    push af
    and $02
    jr nz, jr_020_6cb5

    ld a, $01

jr_020_6cb5::
    or $80
    ld [$ddd1], a
    ld a, [$c3ca]
    and $01
    swap a
    ld [$ddd3], a
    ld a, $10
    ld [$ddd4], a
    pop af
    inc a
    ld [$c3ca], a
    ld a, $08
    ldh [$e4], a
    ld a, $10
    ldh [$e5], a
    ld a, $20
    ldh [$e6], a
    ld hl, $dc10
    ld a, $40
    ldh [$da], a
    ld a, [wTransitionSfx]
    cp $03
    jr z, jr_020_6cfa

    ld a, [$ddd1]
    push af
    call Call_020_6a30
    pop af
    ld [$ddd1], a
    ld a, $01
    ld [$ddd5], a
    jr jr_020_6d0d

jr_020_6cfa::
    ld a, [$c3ca]
    dec a
    and $03
    jr nz, jr_020_6d0d

    ld a, [$ddd1]
    push af
    call Call_020_6af5
    pop af
    ld [$ddd1], a

jr_020_6d0d::
    ret


    ld a, [hl]
    dec a
    cp $04
    jr c, jr_020_6d51

    ldh a, [hFrameCounter]
    and $01
    jr z, jr_020_6d1e

    ld a, $02
    jr jr_020_6d4e

jr_020_6d1e::
    ld a, [hl]
    dec a
    cp $0e
    jr c, jr_020_6d38

    ld a, $01
    ldh [$e4], a
    ld a, $02
    ldh [$e5], a
    ld a, $04
    ldh [$e6], a
    ld hl, $dc30
    ld d, $20
    call Call_020_6a68

jr_020_6d38::
    ld a, $01
    ldh [$e4], a
    ld a, $02
    ldh [$e5], a
    ld a, $04
    ldh [$e6], a
    ld hl, $dc10
    ld d, $20
    call Call_020_6a68
    ld a, $01

jr_020_6d4e::
    ld [$ddd1], a

jr_020_6d51::
    ret


    ld e, $20
    ld a, [hl]
    cp $30
    jr c, jr_020_6d60

    ld hl, $dc50
    ld a, $02
    jr jr_020_6d65

jr_020_6d60::
    ld hl, $dc10
    ld a, $01

jr_020_6d65::
    ld [$ddd1], a

jr_020_6d68::
    push hl
    ld a, [hl]
    inc a
    and $1f
    jr nz, jr_020_6d71

    ld a, $1f

jr_020_6d71::
    ldh [$d7], a
    ld a, [hl+]
    and $e0
    swap a
    ld d, a
    ld a, [hl]
    and $03
    swap a
    or d
    add $02
    and $3e
    jr nz, jr_020_6d87

    ld a, $3e

jr_020_6d87::
    ldh [$d8], a
    ld a, [hl]
    add $04
    and $7c
    jr nz, jr_020_6d92

    ld a, $7c

jr_020_6d92::
    ldh [$d9], a
    pop hl
    ldh a, [$d7]
    ld d, a
    ldh a, [$d8]
    swap a
    and $e0
    or d
    ld [hl+], a
    ldh a, [$d9]
    ld d, a
    ldh a, [$d8]
    swap a
    and $03
    or d
    ld [hl+], a
    dec e
    jr nz, jr_020_6d68

    ret


    ld a, [wActiveRoom]
    and a
    ret nz

    ldh a, [hMapIndex]
    cp $0e
    jr nz, jr_020_6dc6

    ld a, [$d80e]
    and $10
    jr z, jr_020_6e1a

    ld hl, $5090
    jr jr_020_6e14

jr_020_6dc6::
    cp $8c
    jr nz, jr_020_6dd6

    ld a, [$d88c]
    and $10
    jr z, jr_020_6e1a

    ld hl, $51d0
    jr jr_020_6e14

jr_020_6dd6::
    cp $79
    jr nz, jr_020_6de6

    ld a, [$d879]
    and $10
    jr z, jr_020_6e1a

    ld hl, $5180
    jr jr_020_6e14

jr_020_6de6::
    cp $06
    jr nz, jr_020_6df6

    ld a, [$d806]
    and $10
    jr z, jr_020_6e1a

    ld hl, $5040
    jr jr_020_6e14

jr_020_6df6::
    cp $1b
    jr nz, jr_020_6e06

    ld a, [$d82b]
    and $10
    jr z, jr_020_6e1a

    ld hl, $50e0
    jr jr_020_6e14

jr_020_6e06::
    cp $2b
    jr nz, jr_020_6e1a

    ld a, [$d82b]
    and $10
    jr z, jr_020_6e1a

    ld hl, $5130

jr_020_6e14::
    ld a, $27
    ldh [$d7], a
    jr jr_020_6e3c

jr_020_6e1a::
    ld a, $26
    ldh [$d7], a
    ldh a, [hMapIndex]
    cp $cc
    jr c, jr_020_6e2a

    ld hl, $ffd7
    inc [hl]
    sub $cc

jr_020_6e2a::
    ld hl, $4000
    ld b, a
    and b

jr_020_6e2f::
    jr z, jr_020_6e3c

    ld a, l
    add $50
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr jr_020_6e2f

jr_020_6e3c::
    ld de, wTileMap

jr_020_6e3f::
    ld bc, $000a
    push de
    call label_0B1A
    pop de
    ld a, e
    add $10
    ld e, a
    cp $91
    jr nz, jr_020_6e3f

    ret


    push hl
    ld c, [hl]
    ld b, $0e
    ld hl, $6e65

jr_020_6e57::
    ld a, [hl+]
    cp c
    jr nz, jr_020_6e5f

    scf
    ccf
    jr jr_020_6e63

jr_020_6e5f::
    dec b
    jr nz, jr_020_6e57

    scf

jr_020_6e63::
    pop hl
    ret


    inc bc
    inc b
    add hl, bc
    ld e, [hl]
    sub c
    and c
    xor d
    call nz, $ccc6
    db $db
    pop hl
    db $e3
    add sp, $1c
    inc e
    ld a, $3c
    ld a, $3e
    ld a, $30
    rrca
    ld [hl], $36
    ld a, [de]
    rrca
    inc [hl]
    rrca
    ld a, $20
    jr nz, @+$11

    jr c, jr_020_6eb0

    jr z, jr_020_6ebc

    ld [hl-], a
    jr nz, jr_020_6ead

    jr c, jr_020_6ec7

    jr z, @+$2a

    ld [hl-], a
    ld [hl-], a
    rrca
    ld h, $0f
    inc h
    rrca
    ld e, $2a
    rrca
    ld h, $26
    ld l, $2e
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    rrca
    inc h
    ld l, $2e
    ld a, [hl-]
    rrca
    ld h, $2c
    ld [hl+], a
    ld [hl+], a

jr_020_6ead::
    ld [hl+], a
    rrca
    ld a, [hl-]

jr_020_6eb0::
    ld a, [hl-]
    rrca
    inc l
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0500
    nop

jr_020_6ebc::
    add hl, bc
    nop
    nop
    dec b
    dec b
    dec b
    rst $38
    nop
    nop
    rst $38
    rst $38

jr_020_6ec7::
    ld [bc], a
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    rst $38
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    ld bc, vBlankContinue.drawLinkSprite
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    add hl, bc
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0005
    nop
    nop
    nop
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    ld b, $07
    rlca
    rlca
    rst $38
    rst $38
    ld b, $06
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    dec b
    rst $38
    rst $38
    dec b
    dec b
    dec b
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    rst $38
    rst $38
    inc bc
    ld c, $03
    ld c, $ff
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rst $38
    ld c, $0e
    rst $38
    ld c, $0e
    ld c, $0e
    add hl, bc
    nop
    ld c, $09
    rst $38
    rst $38
    ld c, $09
    nop
    ld c, $ff
    ld [bc], a
    ld c, $0e
    ld c, $02
    rst $38
    ld bc, $0101
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    ld [label_C00], sp
    inc c
    inc bc
    inc c
    inc c
    inc c
    nop
    nop
    nop
    inc c
    nop
    inc bc
    inc bc
    nop
    add hl, de
    nop
    ld [$030c], sp
    inc c
    inc c
    ld [$0c19], sp
    dec b
    inc c
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    ld bc, restoreSavedWRAMBankAndReturn
    inc bc
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld b, $ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $0e
    rst $38
    rst $38
    ld c, $0e
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rla
    rla
    rla
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld bc, $0000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ff0c
    rst $38
    rst $38
    ld a, [de]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, label_C0C
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec b
    dec b
    dec b
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    inc b
    nop
    ld [$0404], sp
    ld [$0008], sp
    ld [label_808], sp
    ld [label_808], sp
    dec b
    dec b
    ld [label_C0C], sp
    ld [vBlankContinue.linkSpriteDone], sp
    inc c
    inc b
    ld [$0505], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    dec b
    inc c
    inc c
    inc c
    inc c
    inc bc
    inc bc
    nop
    inc bc
    rst $38
    ld [label_C00], sp
    inc c
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    rst $38
    ld bc, $0100
    ld bc, $0008
    ld [label_808], sp
    ld [IsZero], sp
    inc c
    rst $38
    ld [InterruptSerial], sp
    inc c
    inc c
    inc c
    inc c
    nop
    ld [label_C0C], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    inc c
    inc c
    nop
    inc c
    inc c
    jr jr_020_70b5

    nop
    ld [$0000], sp
    nop

jr_020_70b5::
    dec bc
    dec bc
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0b
    dec bc
    dec bc
    jr jr_020_70d3

    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_020_70d3::
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    nop
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld b, h
    ld d, b
    jr nz, jr_020_7159

    ld l, e
    ld l, h
    ld l, l
    ld l, l
    scf
    scf
    ld c, a
    inc e
    ld c, a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld [bc], a
    ld a, l
    nop
    ld c, $48
    ld b, a
    scf
    ld b, $06
    nop
    ld d, c
    ld d, b
    ld d, b
    ld h, d
    ld h, d
    ld h, d
    ld [bc], a
    ld a, l
    nop
    ld c, $48
    ld b, a
    scf
    ld b, $06
    nop
    ld d, c
    ld d, c
    nop
    ld h, d
    ld h, d
    ld h, d
    nop
    ld b, c
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld b, $28
    jr z, @+$13

    ld de, $6364
    dec l
    dec l
    dec l
    dec l
    ld bc, $742e
    ld a, a
    jr c, jr_020_7151

    jr z, jr_020_7154

    ld de, $1111
    ld h, h
    dec l
    dec l
    dec l
    dec l
    nop
    nop
    ld a, [hl]
    nop
    nop
    jr z, jr_020_7163

    dec b
    ld e, b
    ld e, c
    ld e, d
    nop
    dec l
    dec l
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl-]
    ld a, [hl-]
    jr z, jr_020_7174

    ld e, e
    ld e, h
    nop
    ld [de], a
    dec l
    dec l

jr_020_7151::
    dec l
    dec l
    dec a

jr_020_7154::
    inc bc
    ld a, [bc]
    dec bc
    add hl, sp
    ld h, c

jr_020_7159::
    jr jr_020_7173

    ld c, d
    inc l
    ld [hl], d
    nop
    ld a, [hl+]
    ld l, a
    dec l
    dec l

jr_020_7163::
    nop
    nop
    ld b, e
    ld a, [bc]
    ld b, b
    ld a, $00
    nop
    ld [hl], l
    ld e, a
    ld [hl], e
    ld [hl], b
    ld a, [hl+]
    ld l, a
    dec l
    dec l

jr_020_7173::
    inc de

jr_020_7174::
    inc c
    ld a, [bc]
    nop
    dec sp
    nop
    dec sp
    dec sp
    ld e, a
    ld d, h
    scf
    ld [hl], c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    nop
    rrca
    inc c
    add hl, bc
    add hl, bc
    nop
    dec sp
    dec sp
    dec sp
    ld [hl], a
    ld [hl], d
    ld [hl], b
    ld c, e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld [$0708], sp
    rlca
    inc a
    inc a
    inc a
    nop
    ld a, b
    inc hl
    ld h, $57
    inc [hl]
    dec [hl]
    dec e
    ld a, e
    rlca
    rlca
    rlca
    rlca
    inc a
    inc a
    inc a
    ld a, d
    ld a, c
    ld h, $1f
    ld d, e
    cpl
    inc [hl]
    nop
    ld c, l
    rlca
    rlca
    nop
    ld b, d
    nop
    sub b
    sub c
    ld h, $26
    dec h
    ld [hl], $33
    ld sp, $7c30
    ld c, l
    rlca
    rlca
    rlca
    nop
    sub b
    sub b
    sub c
    nop
    rra
    ld h, $1f
    nop
    jr nc, jr_020_71f2

    ld c, h
    ld a, h
    ld bc, label_E03
    rlca
    rlca
    nop
    dec b
    ld bc, $0300
    inc e
    dec b
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    ld h, e

jr_020_71f2::
    ld h, e
    inc d
    nop
    inc d
    inc d
    nop
    ld b, $13
    ld b, $13
    inc de
    ld c, $08
    inc de
    ld [$0706], sp
    ld b, $06
    nop
    nop
    dec de
    dec de
    ld b, $1b
    ld b, $00
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    jr @+$1a

    jr jr_020_722f

    nop
    dec d
    nop
    nop
    rla
    nop
    rla
    rla
    ld b, $17
    ld b, $00
    jr jr_020_7261

    inc a
    inc a
    rla
    rla
    rla
    rla
    rla
    ld c, $16
    nop

jr_020_722f::
    rla
    ld bc, $3333
    nop
    nop
    ld c, $31
    add hl, de
    jr nc, jr_020_726c

    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    nop
    ld [hl-], a
    jr nc, jr_020_7273

    nop
    jr nc, jr_020_7278

    nop
    jr nc, jr_020_7279

    nop
    jr nc, jr_020_727c

    jr nc, jr_020_727e

    jr nc, jr_020_7283

    inc sp
    nop
    ld bc, $1e1e
    rrca
    ld e, $1e
    dec e
    nop
    nop
    inc h
    inc h
    inc h
    nop
    inc h
    inc h

jr_020_7261::
    inc h
    inc h
    inc h
    nop
    ld e, $1f
    rra
    ld e, $1e
    inc b
    inc b

jr_020_726c::
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b

jr_020_7273::
    inc b
    inc b
    inc sp
    inc sp
    inc sp

jr_020_7278::
    inc sp

jr_020_7279::
    inc sp
    inc sp
    inc sp

jr_020_727c::
    inc sp
    ld h, h

jr_020_727e::
    ld h, h
    add b
    nop
    nop
    nop

jr_020_7283::
    jr z, jr_020_72ad

    jr z, jr_020_72af

    ld h, c
    rrca
    ld h, c
    nop
    nop
    jr z, jr_020_72b6

    nop
    dec h
    ld h, $61
    add hl, hl
    daa
    nop
    jr z, jr_020_72f8

    nop
    ld h, $00
    add hl, hl
    ld a, [hl+]
    nop
    nop
    ld h, d
    nop
    ld h, c
    nop
    daa
    ld h, c
    ld h, c
    daa
    daa
    daa
    daa
    nop
    ld h, c
    ld h, e
    ld h, e

jr_020_72ad::
    inc sp
    inc sp

jr_020_72af::
    inc sp
    inc sp
    nop
    nop
    ld b, h
    ld b, h
    ld b, h

jr_020_72b6::
    nop
    ld c, d
    ld h, a
    ld h, a
    nop
    ld a, a
    nop
    nop
    inc sp
    inc sp
    nop
    ld l, [hl]
    ld a, [de]
    ld h, a
    ld h, a
    nop
    add b
    ld c, d
    ld a, [hl]
    ld h, a
    nop
    ld a, a
    ld a, a
    dec a
    add b
    stop
    ld l, [hl]
    ld a, [de]
    nop
    nop
    ccf
    inc l
    inc l
    ld e, [hl]
    inc [hl]
    add hl, sp
    nop
    ld e, a
    ld h, b
    ld a, $39
    dec hl
    dec hl
    nop
    add hl, sp
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld l, $2d
    dec l
    dec l
    ld l, $00
    dec l
    dec l
    nop
    ld [hl], $00
    dec [hl]
    rrca
    scf

jr_020_72f8::
    dec [hl]
    dec [hl]
    nop
    scf
    nop
    jr c, jr_020_7334

    rrca
    dec [hl]
    jr c, jr_020_7304

    rrca

jr_020_7304::
    ld e, h
    ld d, [hl]
    nop
    ld d, b
    ld e, h
    nop
    ld d, c
    ld d, [hl]
    ld e, b
    ld e, e
    ld e, e
    nop
    ld d, h
    nop
    ld d, c
    ld e, d
    nop
    ld e, c
    ld e, c
    nop
    ld d, a
    ld e, d
    ld e, c
    ld e, c
    nop
    ld e, h
    ld e, h
    ld d, d
    nop
    ld d, l
    nop
    ld e, h
    ld e, h
    nop
    ld d, e
    ld d, d
    ld d, d
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld d, e
    ld d, d
    ld e, e
    ld e, d
    ld d, e
    inc sp

jr_020_7334::
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0101
    dec a
    ld bc, $0101
    ld bc, Init
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld bc, $6601
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    dec a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    dec c
    dec c
    add hl, bc
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld c, c
    db $10
    ld de, $2f20
    ld bc, $0a0a
    dec bc
    inc c
    add hl, bc
    ld c, e
    ld h, l
    ld h, l
    ld c, h
    ld h, l
    ld h, l
    db $10
    ld [de], a
    dec bc
    ld h, l
    add hl, bc
    ld bc, $6565
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    dec c
    dec c
    nop
    nop
    ld hl, $2121
    ld hl, $2221
    ld h, [hl]
    ld h, l
    ld h, l
    add hl, bc
    add hl, bc
    ld h, [hl]
    dec c
    dec c
    ld h, a
    ld h, a
    ld hl, $2121
    ld hl, $4021
    ld h, [hl]
    ld b, c
    ld a, l
    ld c, l
    ld c, l
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl-]
    ld c, [hl]
    ld a, [hl-]
    add hl, bc
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    dec sp
    ld b, a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld a, [hl-]
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld a, h
    ld h, l
    ld h, l
    dec sp
    ld h, a
    ld h, a
    ld b, e
    ld bc, $4845
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    and h
    rst $38
    rst $38
    rst $38
    and h
    adc [hl]
    ld a, h
    ret z

    and h
    ld c, d
    ld a, h
    sub e
    and h
    push hl
    rst $38
    ld c, [hl]
    and h
    sub c
    add e
    and d
    and h
    ld b, d
    adc d
    rst $38
    and h
    ld b, d
    add e
    and d
    and h
    add c
    db $e3
    and d
    and h
    push hl
    db $e3
    rst $38
    and h
    push hl
    ld b, e
    rst $20
    and h
    push hl
    and $ff
    and h
    push hl
    and $e7
    and h
    push hl
    ld b, e
    and h
    and h
    adc [hl]
    add e
    and h
    and h
    ld c, d
    add e
    ld b, b
    and h
    push hl
    ld c, h
    rst $20
    and h
    ld c, l
    add e
    rst $38
    and h
    ld b, d
    sub d
    ld e, d
    and h
    ld h, c
    sub d
    ld h, a
    and h
    push hl
    rst $38
    rst $38
    and h
    db $e3
    adc e
    rst $38
    and h
    db $e3
    add e
    db $76
    and h
    add c
    ld a, c
    db $76
    and h
    ld h, c
    adc e
    rst $38
    and h
    ld l, h
    adc e
    ld l, e
    and h
    rst $38
    adc e
    rst $38
    and h
    db $e3
    adc e
    and d
    and h
    push hl
    rst $38
    rst $38
    and h
    ld c, d
    adc a
    ld l, l
    and h
    add c
    ld l, [hl]
    ld d, d
    and h
    ld c, l
    ld b, e
    and d
    and h
    ld h, c
    ld a, c
    db $76
    and h
    add $7c
    ld b, c
    and h
    push bc
    ld l, [hl]
    ld l, a
    and h
    push bc
    rst $38
    ld [hl], b
    and h
    ld h, c
    rst $38
    ld [hl], c
    and h
    ld h, c
    rst $38
    ld [hl], d
    and h
    ld h, c
    ld a, c
    ld [hl], e
    and h
    ld h, c
    ld a, c
    rst $38
    and h
    db $e3
    ld a, c
    db $76
    and h
    ld b, d
    add d
    and d
    and h
    ld b, d
    rst $38
    add d
    and h
    ld h, c
    ld a, b
    and d
    and h
    add c
    adc a
    rst $20
    and h
    db $e3
    adc e
    adc h
    and h
    add a
    ld a, b
    and d
    and h
    ld l, h
    ld a, h
    ret z

    and h
    call nz, $cfe6
    and h
    rst $38
    ld l, [hl]
    ld l, a
    and h
    rst $38
    and $cf
    and h
    rst $38
    add e
    rst $38
    and h
    call nz, Call_020_7679
    and h
    call nz, $ffff
    and h
    call nz, $cf43
    and h
    rst $38
    ld a, c
    rst $38
    and h
    rst $38
    rst $38
    and d
    and h
    ld h, c
    ld a, c
    and d
    and h
    push hl
    rst $38
    rst $38
    and h
    push hl
    add d
    and d
    and h
    db $e3
    add e
    and d
    and h
    sub c
    add e
    db $76
    and h
    rst $38
    ld a, h
    and d
    and h
    db $e3
    adc e
    and d
    and h
    db $e3
    rst $38
    db $76
    and h
    rst $38
    and $a2
    and h
    rst $38
    ld a, h
    and d
    and h
    add c
    db $e3
    call nc, $e5a4
    and $dc
    and h
    add a
    sub $d7
    and h
    ld d, b
    ld d, c
    and d
    and h
    ld l, h
    adc a
    and d
    and h
    ld c, d
    add e
    and d
    and h
    ld c, d
    add e
    rst $38
    and h
    add c
    adc a
    db $76
    and h
    db $e3
    adc e
    rst $38
    and h
    rst $38
    ld a, c
    rst $38
    and h
    add c
    ld l, [hl]
    rst $38
    and h
    add c
    ld l, [hl]
    adc h
    and h
    add a
    adc a
    db $76
    and h
    rst $38
    adc a
    rst $38
    and h
    add a
    rst $38
    rst $38
    and h
    add a
    add e
    db $76
    and h
    add a
    add e
    sbc b
    and h
    rst $38
    ld a, c
    db $76
    and h
    db $e3
    add e
    and d
    and h
    ld h, c
    ld a, c
    sub e
    and h
    rst $38
    ld a, c
    sub e
    and h
    call nz, $ff79
    and h
    rst $38
    sub d
    ld e, d
    and h
    ld h, c
    sub d
    adc h
    and h
    ld b, d
    sub d
    rst $38
    and h
    ld h, c
    rst $38
    rst $38
    and h
    ld h, c
    rst $38
    adc h
    and h
    rst $38
    add e
    sub e
    and h
    ld h, c
    adc e
    rst $38
    and h
    db $e3
    rst $38
    rst $38
    and h
    ld h, c
    rst $38
    ld h, a
    and h
    rst $38
    rst $38
    and d
    and h
    add a
    db $e3
    sub e
    and h
    add a
    rst $38
    rst $38
    and h
    add a
    sub d
    ld e, d
    and h
    add $9c
    sbc b
    and h
    add $9c
    rst $38
    and h
    rst $38
    sbc h
    sub e
    and h
    add c
    rst $38
    rst $38
    and h
    rst $38
    sbc h
    sbc b
    and h
    rst $38
    add e
    rst $38
    and h
    add c
    rst $38
    sub e
    and h
    add c
    sbc h
    sub e
    and h
    ld b, h
    sbc h
    sbc b
    and h
    sub c
    ld a, b
    and d
    and h
    rst $38
    ld a, b
    and d
    and h
    ld h, c
    rst $38
    and d
    and h
    rst $38
    ld a, c
    and d
    and h
    ld h, c
    add e
    rst $38
    and h
    rst $38
    add e
    and d
    and h
    rst $38
    ld a, h
    rst $38
    and h
    db $e3
    adc e
    and d
    and h
    db $e3
    add e
    rst $38
    and h
    rst $38
    add e
    db $76
    and h
    ld h, c
    add e
    rst $38
    and h
    ld h, c
    rst $38
    db $76
    and h
    ld h, c
    rst $38
    and d
    and h
    add c
    ld l, [hl]
    rst $38
    and h
    add c
    rst $38
    adc h
    and h
    ld c, d
    ld a, h
    sub e
    and h
    sub c
    ld a, h
    and d
    and h
    ld c, l
    ld a, h
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and h
    add c
    adc a
    call nc, $81a4
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    sub c
    sub d
    sbc b
    sub b
    sub c
    xor e
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub b
    sub c
    sub h
    sbc a
    sub b
    sub c
    or b
    or c
    sub b
    sub c
    sbc h
    sub e
    sub b
    sub c
    sub a
    sbc e
    rst $38
    rst $38
    or [hl]
    or a
    and h
    ld c, h
    ld c, c
    ld b, [hl]
    and h
    rst $38
    ld b, l
    ld l, l
    and h
    rst $38
    ld b, a
    ld c, b
    and h
    rst $38
    ld c, h
    ld c, e
    sub b
    sub c
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld c, a
    ld d, b
    rst $38
    rst $38

Call_020_7679::
    ld c, a
    ld d, c
    and h
    add a
    add h
    adc c
    and h
    rst $38
    adc b
    rst $00
    and b
    and c
    add h
    add e
    sub b
    sub c
    ld d, h
    and [hl]
    sub b
    sub c
    sub a
    sub e
    sub b
    sub c
    xor d
    rst $38
    sub b
    sub c
    or h
    or l
    sub b
    sub c
    sbc h
    sbc [hl]
    sub b
    sub c
    sbc h
    sbc l
    ld l, b
    sub c
    ld d, [hl]
    ld h, b
    xor h
    xor l
    xor [hl]
    xor a
    sub b
    sub c
    ld e, b
    sbc e
    sub b
    sub c
    and [hl]
    ld e, c
    rst $38
    rst $38
    cp b
    cp c
    sub b
    sub c
    ld h, d
    ld h, e
    sub b
    sub c
    xor b
    sbc a
    and h
    rst $18
    and e
    rst $38
    sub b
    sub c
    sub d
    sbc d
    and h
    ld e, e
    ld e, h
    rst $38
    and [hl]
    sub c
    sub a
    sbc e
    sub b
    sub c
    sbc h
    ld h, b
    rst $38
    rst $38
    or d
    or e
    and [hl]
    sub c
    ld d, a
    rst $38
    and [hl]
    sub c
    sub l
    sbc b
    and [hl]
    sub c
    ld e, [hl]
    ld h, b
    and [hl]
    sub c
    xor d
    sub e
    and [hl]
    sub c
    ld e, b
    sbc c
    sub b
    sub c
    sub l
    sub e
    ld e, a
    sub c
    ld d, l
    sbc c
    ld h, [hl]
    sub c
    ld e, [hl]
    ld e, c
    ld h, [hl]
    sub c
    ld d, h
    ld e, c
    adc l
    adc [hl]
    adc a
    ld l, d
    ld l, b
    sub c
    sbc e
    ld h, b
    ld l, b
    sub c
    sub h
    sbc a
    ld l, b
    sub c
    sbc h
    ld h, b
    ld e, a
    ld h, l
    ld e, l
    ld h, h
    rst $38
    sub c
    ld d, l
    rst $38
    ld e, a
    sub c
    sub l
    sbc c
    ld e, a
    sub c
    ld e, [hl]
    sbc c
    ld e, a
    sub c
    xor c
    rst $38
    ld e, a
    sub c
    sub h
    sbc a
    sub b
    sub c
    ld d, l
    sub e
    and h
    rst $38
    ld a, h
    rst $38
    cp h
    cp l
    cp [hl]
    cp a
    and [hl]
    sub c
    sbc h
    sbc l
    rst $38
    push de
    ld a, b
    ld d, e
    sub b
    sub c
    rst $38
    rst $38
    ld e, a
    sub c
    ld d, l
    sbc b
    and h
    rst $38
    rst $38
    ld l, c
    and h
    rst $38
    ld c, h
    ld [hl], h
    and b
    and c
    ld [hl], l
    ld c, [hl]
    and h
    ld a, l
    ld a, [hl]
    ld a, a
    and h
    rst $38
    rst $38
    rst $00
    ret nz

    pop bc
    jp nz, $a4c3

    call z, $cecd
    and h
    ret


    jp z, $a4cb

    pop de
    jp nc, $dd6a

    push hl
    db $d3
    db $dd
    db $dd
    rst $38
    sbc $ff
    and h
    adc l
    rst $38
    rst $38
    rst $38
    rst $18
    ld c, c
    rst $38
    rst $38
    call nz, $ffff
    and h
    add b
    ld a, h
    and l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    cp e
    ld [hl], a
    sub c
    and a
    rst $38
    ld a, e
    sub c
    ld a, d
    xor e
    ld a, e
    sub c
    ld d, a
    sbc c
    ld [hl], a
    sub c
    ld a, d
    xor d
    ld a, e
    sub c
    ld d, h
    sbc c
    ld a, e
    sub c
    ld d, [hl]
    rst $38
    ld [hl], a
    sub c
    ld d, h
    sbc c
    ld a, e
    sub c
    rst $38
    rst $38
    ld e, a
    sub c
    sbc l
    sbc c
    ld a, e
    sub c
    sub [hl]
    sbc c
    ld a, e
    sub c
    ld a, d
    sbc c
    ld [hl], a
    sub c
    ld a, d
    sbc c
    ld [hl], a
    sub c
    sub [hl]
    sbc c
    ld e, a
    sub c
    ld d, l
    sub e
    rst $38
    sub c
    sub l
    sub e
    sub b
    sub c
    ld d, l
    sub e
    and [hl]
    sub c
    sub l
    ld h, b
    and [hl]
    sub c
    sub l
    sbc c
    ld e, a
    reti


    jp c, Jump_020_5fdb

    reti


    jp c, $ff64

    sub c
    sub b
    db $76
    rst $38
    sub c
    sub b
    sbc b
    rst $38
    ld c, d
    sub b
    db $76
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    sub b
    and [hl]
    and h
    rst $38
    rst $38
    db $f4
    add sp, -$17
    ld_long $ffeb, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    and c
    ld [hl], l
    ld c, [hl]
    rst $38
    ld h, c
    rst $38
    rst $38
    and h
    rst $38
    add [hl]
    rst $38
    and h
    rst $38
    adc e
    rst $38
    and h
    ld c, l
    rst $38
    rst $38
    ld b, l
    ld a, b
    ld a, l
    ld a, b
    or l
    ld a, b
    nop
    nop
    push bc
    ld c, h
    ld l, b
    ld a, l
    rst $38
    ld a, a
    nop
    nop
    ld h, d
    inc a
    push hl
    ld l, b
    sub $5e
    nop
    nop
    nop
    jr nz, jr_020_785a

jr_020_785a::
    ld d, b
    xor l
    dec [hl]
    nop
    nop
    rrca
    ld h, [hl]
    sub $6e
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    rrca
    ld h, [hl]
    sub $6e
    rst $38
    ld a, a
    xor h
    ld e, c
    rrca
    ld h, [hl]
    sub $6e
    rst $38
    ld a, a
    ld c, c
    ld c, l
    rrca
    ld h, [hl]
    sub $6e
    rst $38
    ld a, a
    nop
    nop
    ld l, b
    ld a, l
    rst $38
    ld a, a
    push bc
    ld c, h
    nop

jr_020_7886::
    nop
    push hl
    ld l, b
    sub $5e
    ld h, d
    inc a
    nop
    nop
    nop
    ld d, b
    xor l
    dec [hl]
    nop
    jr nz, jr_020_7896

jr_020_7896::
    nop
    sub $6e
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    push bc
    ld c, h
    sub $6e
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    ld h, d
    inc a
    sub $6e
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    nop
    jr nz, jr_020_7886

    ld l, [hl]
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    nop
    nop
    rst $38
    ld a, a
    push bc
    ld c, h
    ld l, b
    ld a, l
    nop
    nop
    sub $5e
    ld h, d
    inc a
    push hl
    ld l, b
    nop
    nop
    xor l
    dec [hl]
    nop
    jr nz, jr_020_78cc

jr_020_78cc::
    ld d, b
    nop
    nop
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    sub $6e
    ld l, b
    ld a, l
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    sub $6e
    push hl
    ld l, b
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    sub $6e
    nop
    ld d, b
    rst $38
    ld a, a
    rrca
    ld h, [hl]
    sub $6e
    ld a, [$d000]
    sla a
    ld e, a
    ld d, $00
    ld hl, $783f
    add hl, de
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, b
    ld bc, $0038
    ld de, $dc10
    call CopyData
    xor a
    ld [$ddd3], a
    ld a, $1c
    ld [$ddd4], a
    ld a, $81
    ld [$ddd1], a
    ret


    nop
    nop
    db $10
    rla
    nop
    ld [$1704], sp
    nop
    db $10
    ld b, $17
    nop
    jr jr_020_792a

    scf
    nop
    jr nz, jr_020_792c

    scf
    nop

jr_020_792a::
    jr z, jr_020_793c

jr_020_792c::
    scf
    stop
    ld [$1017], sp
    ld [$170a], sp
    db $10
    db $10
    inc c
    rla
    db $10
    jr @+$0e

jr_020_793c::
    scf
    db $10
    jr nz, @+$0c

    scf
    db $10
    jr z, @+$0a

    scf
    jr nz, jr_020_7957

    jr nz, @+$19

    jr nz, @+$1a

    jr nc, jr_020_7964

    jr nc, jr_020_795f

    jr nz, @+$19

    jr nc, @+$1a

    jr nc, jr_020_796c

    ld b, b
    db $10

jr_020_7957::
    jr nz, @+$19

    ld b, b
    jr jr_020_798c

    rla
    ld d, b
    db $10

jr_020_795f::
    jr nz, @+$19

    ld d, b
    jr jr_020_7994

jr_020_7964::
    rla
    ld h, b
    db $10
    jr nz, @+$19

    ld h, b
    jr @+$32

jr_020_796c::
    rla
    ld [hl], b
    db $10
    jr nz, @+$19

    ld [hl], b
    jr jr_020_79a4

    rla
    add b
    db $10
    jr nz, @+$19

    add b
    jr jr_020_79ac

    rla
    sub b
    db $10
    jr nz, jr_020_7998

    sub b
    jr @+$32

    rla
    and b
    db $10
    jr nz, @+$19

    and b
    jr jr_020_79bc

jr_020_798c::
    rla
    or b
    db $10
    jr nz, jr_020_79a8

    or b
    jr jr_020_79c4

jr_020_7994::
    rla
    nop
    nop
    ld [de], a

jr_020_7998::
    rla
    nop
    ld [$1714], sp
    nop
    db $10
    ld d, $17
    nop
    jr jr_020_79ba

jr_020_79a4::
    scf
    nop
    jr nz, jr_020_79bc

jr_020_79a8::
    scf
    nop
    jr z, jr_020_79be

jr_020_79ac::
    scf
    stop
    jr jr_020_79c8

    db $10
    ld [$171a], sp
    db $10
    db $10
    inc e
    rla
    db $10

jr_020_79ba::
    jr jr_020_79d8

jr_020_79bc::
    scf
    db $10

jr_020_79be::
    jr nz, jr_020_79da

    scf
    db $10
    jr z, jr_020_79dc

jr_020_79c4::
    scf
    jr nz, jr_020_79d7

    ld b, b

jr_020_79c8::
    rla
    jr nz, @+$1a

    ld d, b
    rla
    jr nc, jr_020_79df

    ld b, b
    rla
    jr nc, @+$1a

    ld d, b
    rla
    ld b, b
    db $10

jr_020_79d7::
    ld b, b

jr_020_79d8::
    rla
    ld b, b

jr_020_79da::
    jr jr_020_7a2c

jr_020_79dc::
    rla
    ld d, b
    db $10

jr_020_79df::
    ld b, b
    rla
    ld d, b
    jr @+$52

    rla
    ld h, b
    db $10
    ld b, b
    rla
    ld h, b
    jr jr_020_7a3c

    rla
    ld [hl], b
    db $10
    ld b, b
    rla
    ld [hl], b
    jr jr_020_7a44

    rla
    add b
    db $10
    ld b, b
    rla
    add b
    jr jr_020_7a4c

    rla
    sub b
    db $10
    ld b, b
    rla
    sub b
    jr jr_020_7a54

    rla
    and b
    db $10
    ld b, b
    rla
    and b
    jr jr_020_7a5c

    rla
    or b
    db $10
    ld b, b
    rla
    or b
    jr jr_020_7a64

    rla
    nop
    nop
    ld [hl+], a
    rla
    nop
    ld [$1724], sp
    nop
    db $10
    ld h, $17
    nop
    jr @+$28

    scf
    nop
    jr nz, jr_020_7a4c

    scf
    nop
    jr z, @+$24

jr_020_7a2c::
    scf
    stop
    jr z, jr_020_7a48

    db $10
    ld [$172a], sp
    db $10
    db $10
    inc l
    rla
    db $10
    jr jr_020_7a68

jr_020_7a3c::
    scf
    db $10
    jr nz, jr_020_7a6a

    scf
    db $10
    jr z, jr_020_7a6c

jr_020_7a44::
    scf
    jr nz, jr_020_7a57

    ld h, b

jr_020_7a48::
    rla
    jr nz, @+$1a

    ld [hl], b

jr_020_7a4c::
    rla
    jr nc, jr_020_7a5f

    ld h, b
    rla
    jr nc, @+$1a

    ld [hl], b

jr_020_7a54::
    rla
    ld b, b
    db $10

jr_020_7a57::
    ld h, b
    rla
    ld b, b
    jr jr_020_7acc

jr_020_7a5c::
    rla
    ld d, b
    db $10

jr_020_7a5f::
    ld h, b
    rla
    ld d, b
    jr jr_020_7ad4

jr_020_7a64::
    rla
    ld h, b
    db $10
    ld h, b

jr_020_7a68::
    rla
    ld h, b

jr_020_7a6a::
    jr jr_020_7adc

jr_020_7a6c::
    rla
    ld [hl], b
    db $10
    ld h, b
    rla
    ld [hl], b
    jr jr_020_7ae4

    rla
    add b
    db $10
    ld h, b
    rla
    add b
    jr jr_020_7aec

    rla
    sub b
    db $10
    ld h, b
    rla
    sub b
    jr jr_020_7af4

    rla
    and b
    db $10
    ld h, b
    rla
    and b
    jr jr_020_7afc

    rla
    or b
    db $10
    ld h, b
    rla
    or b
    jr jr_020_7b04

    rla
    nop
    nop
    ld [hl-], a
    rla
    nop
    ld [$1734], sp
    nop
    db $10
    ld [hl], $17
    nop
    jr jr_020_7ada

    scf
    nop
    jr nz, jr_020_7adc

    scf
    nop
    jr z, jr_020_7ade

    scf
    stop
    jr c, jr_020_7ac8

    db $10
    ld [$173a], sp
    db $10
    db $10
    inc a
    rla
    db $10
    jr jr_020_7af8

    scf
    db $10
    jr nz, jr_020_7afa

    scf
    db $10
    jr z, jr_020_7afc

    scf
    jr nz, jr_020_7ad7

    ld d, d

jr_020_7ac8::
    rla
    jr nz, @+$1a

    ld h, d

jr_020_7acc::
    rla
    jr nc, jr_020_7adf

    ld d, d
    rla
    jr nc, @+$1a

    ld h, d

jr_020_7ad4::
    rla
    ld b, b
    db $10

jr_020_7ad7::
    ld d, d
    rla
    ld b, b

jr_020_7ada::
    jr jr_020_7b3e

jr_020_7adc::
    rla
    ld d, b

jr_020_7ade::
    db $10

jr_020_7adf::
    ld d, d
    rla
    ld d, b
    jr @+$64

jr_020_7ae4::
    rla
    ld h, b
    db $10
    ld d, d
    rla
    ld h, b
    jr @+$64

jr_020_7aec::
    rla
    ld [hl], b
    db $10
    ld d, d
    rla
    ld [hl], b
    jr jr_020_7b56

jr_020_7af4::
    rla
    add b
    db $10
    ld d, d

jr_020_7af8::
    rla
    add b

jr_020_7afa::
    jr jr_020_7b5e

jr_020_7afc::
    rla
    sub b
    db $10
    ld d, d
    rla
    sub b
    jr jr_020_7b66

jr_020_7b04::
    rla
    and b
    db $10
    ld d, d
    rla
    and b
    jr jr_020_7b6e

    rla
    or b
    db $10
    ld d, d
    rla
    or b
    jr jr_020_7b76

    rla
    nop
    nop
    ld b, d
    rla
    nop
    ld [$1744], sp
    nop
    db $10
    ld b, [hl]
    rla
    nop
    jr jr_020_7b6a

jr_020_7b24::
    scf
    nop
    jr nz, jr_020_7b6c

    scf
    nop
    jr z, jr_020_7b6e

    scf
    stop
    ld c, b
    rla
    db $10
    ld [$174a], sp
    db $10
    db $10
    ld c, h
    rla
    db $10
    jr jr_020_7b88

    scf
    db $10

jr_020_7b3e::
    jr nz, jr_020_7b8a

    scf
    db $10
    jr z, jr_020_7b4c

    scf
    jr nz, jr_020_7b57

    ld d, [hl]
    rla
    jr nz, @+$1a

    ld h, [hl]

jr_020_7b4c::
    rla
    jr nc, jr_020_7b5f

    ld d, [hl]
    rla
    jr nc, @+$1a

    ld h, [hl]
    rla
    ld b, b

jr_020_7b56::
    db $10

jr_020_7b57::
    ld d, [hl]
    rla
    ld b, b
    jr jr_020_7bc2

    rla
    ld d, b

jr_020_7b5e::
    db $10

jr_020_7b5f::
    ld d, [hl]
    rla
    ld d, b
    jr @+$68

    rla
    ld h, b

jr_020_7b66::
    db $10
    ld d, [hl]
    rla
    ld h, b

jr_020_7b6a::
    jr @+$68

jr_020_7b6c::
    rla
    ld [hl], b

jr_020_7b6e::
    db $10
    ld d, [hl]
    rla
    ld [hl], b
    jr jr_020_7bda

    rla
    add b

jr_020_7b76::
    db $10
    ld d, [hl]
    rla
    add b
    jr jr_020_7be2

    rla
    sub b
    db $10
    ld d, [hl]
    rla
    sub b
    jr @+$68

    rla
    and b
    db $10
    ld d, [hl]

jr_020_7b88::
    rla
    and b

jr_020_7b8a::
    jr @+$68

    rla
    or b
    db $10
    ld d, [hl]
    rla
    or b
    jr jr_020_7bfa

    rla
    ld [hl], b
    ld l, b
    ld h, b
    ld e, b
    ld d, b
    ld c, b
    ld b, b
    jr c, jr_020_7bce

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_020_7b24

    ld a, b
    push bc
    ldh a, [$ec]
    swap a
    and $0f
    ld e, a
    ld d, b
    ld hl, $7b95
    add hl, de
    ld b, [hl]
    ld hl, $7915
    ldh a, [$f1]
    cp $05
    jr z, jr_020_7bfc

    and a
    jr z, jr_020_7bd4

    ld hl, $7995

jr_020_7bc2::
    dec a
    jr z, jr_020_7bd4

    ld hl, $7a15
    dec a
    jr z, jr_020_7bd4

    ld hl, $7a95

jr_020_7bce::
    dec a
    jr z, jr_020_7bd4

    ld hl, $7b15

jr_020_7bd4::
    ld de, $c00c
    ld c, $00

jr_020_7bd9::
    ld a, c

jr_020_7bda::
    and $03
    cp $00
    jr nz, jr_020_7be4

    ldh a, [$ec]

jr_020_7be2::
    jr jr_020_7bf0

jr_020_7be4::
    cp $01
    jr nz, jr_020_7bf3

    push hl
    ld hl, wScreenShakeHorizontal
    ldh a, [$ee]
    sub [hl]
    pop hl

jr_020_7bf0::
    add [hl]
    jr jr_020_7bf4

jr_020_7bf3::
    ld a, [hl]

jr_020_7bf4::
    ld [de], a
    inc hl
    inc de
    inc c
    ld a, c
    cp b

jr_020_7bfa::
    jr nz, jr_020_7bd9

jr_020_7bfc::
    pop bc
    ret


    ld c, b
    ld [hl], c
    ld sp, label_3156
    ld d, [hl]
    sbc h
    ld [hl], e
    daa
    ld h, l
    rst $28
    ld c, l
    rst $28
    ld c, l
    add hl, sp
    ld h, a
    ld b, $69
    xor l
    ld b, l
    xor l
    ld b, l
    sub $5a
    push hl
    ld c, h
    ld l, e
    dec a
    ld l, e
    dec a
    ld [hl], e
    ld c, [hl]
    and h
    inc a
    add hl, hl
    ld sp, $3129
    rst $28
    dec a
    ld a, [$d00d]
    cp $50
    ret nc

    ld b, a
    and $0f
    ret nz

    ld a, b
    and $f0
    srl a
    ld c, a
    ld b, $00
    push bc
    ld hl, $7bfe
    add hl, bc
    ld bc, $0008
    ld de, $dc10
    call CopyData
    pop bc
    ld a, c
    cp $20
    jr z, jr_020_7c50

    ld a, $04
    jr jr_020_7c5b

jr_020_7c50::
    ld hl, $dc48
    ld a, $a4
    ld [hl+], a
    ld a, $3c
    ld [hl], a
    ld a, $20

jr_020_7c5b::
    ld [$ddd4], a
    xor a
    ld [$ddd3], a
    ld a, $81
    ld [$ddd1], a
    ret


    nop
    add hl, de
    ld e, e
    ld b, $03
    db $10
    ld e, d
    ld b, $05
    ld [$0659], sp
    ld [$eb20], sp
    dec b
    nop
    jr nz, @-$14

    dec b
    ld [$df18], sp
    dec b
    nop
    jr @-$20

    dec b
    ld [$cf10], sp
    dec b
    nop

jr_020_7c89::
    db $10
    adc $05
    ld [wNameIndex], sp
    dec b
    nop
    ld [$05c0], sp
    stop
    ld e, l
    dec b
    ld [$5c00], sp
    dec b
    ld [$eb20], sp
    dec b
    nop
    jr nz, @-$14

    dec b
    ld [$df18], sp
    dec b
    nop
    jr jr_020_7c89

    dec b
    ld [$cf10], sp
    dec b
    nop

jr_020_7cb1::
    db $10
    adc $05
    ld [wNameIndex], sp
    dec b
    nop
    ld [$05c0], sp
    stop
    ld e, a
    dec b
    ld [$5e00], sp
    dec b
    ld [$eb20], sp
    dec b
    nop
    jr nz, @-$14

    dec b
    ld [$df18], sp
    dec b
    nop
    jr jr_020_7cb1

    dec b
    ld [$cf10], sp
    dec b
    nop

jr_020_7cd9::
    db $10
    adc $05
    ld [$d108], sp
    dec b
    nop
    ld [$05d0], sp
    stop
    db $ed
    dec b
    ld [$ec00], sp
    dec b
    ld [$eb20], sp
    dec b
    nop
    jr nz, @-$14

    dec b
    ld [$df18], sp
    dec b
    nop
    jr jr_020_7cd9

    dec b
    ld [$cf10], sp
    dec b
    nop
    db $10
    adc $05
    ld [$d108], sp
    dec b
    nop
    ld [$05d0], sp
    stop
    rst $28
    dec b
    ld [$ee00], sp
    dec b
    ld [hl], h
    ld a, h
    sbc h
    ld a, h
    call nz, $ec7c
    ld a, h
    ld a, $6c
    ld [$c3c0], a
    ldh a, [hFrameCounter]
    and $60
    swap a
    ld e, a
    ld d, $00
    ld hl, $7d14
    add hl, de
    ld a, [hl+]
    ld d, a
    ld h, [hl]
    ld l, d
    ld c, $28
    call Call_020_7d40
    ld hl, $7c68
    ld c, $0c
    call Call_020_7d40
    ret


Call_020_7d40::
    push bc
    push hl
    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, wOAMBuffer
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    srl a
    srl a
    ld c, a

jr_020_7d55::
    ldh a, [$ec]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ldh a, [$ee]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_020_7d55

    pop bc
    ld a, [$c3c0]
    add c
    cp $a0
    jr c, jr_020_7d74

    xor a

jr_020_7d74::
    ld [$c3c0], a
    ld a, [$c123]
    ld c, a
    ret


    ld a, $03
    ldh [$e4], a
    ld a, $06
    ldh [$e5], a
    ld a, $0c
    ldh [$e6], a
    ld hl, $dc10
    ld d, $24
    call Call_020_7d97
    ld a, $01
    ld [$ddd1], a
    xor a
    ret


Call_020_7d97::
jr_020_7d97::
    push hl
    ldh a, [$e4]
    ld c, a
    ld a, [hl]
    and $1f
    jr z, jr_020_7da4

    sub c
    jr nc, jr_020_7da4

    xor a

jr_020_7da4::
    ldh [$d7], a
    ldh a, [$e5]
    ld c, a
    ld a, [hl+]
    and $e0
    swap a
    ld b, a
    ld a, [hl]
    and $03
    swap a
    or b
    and $3e
    jr z, jr_020_7dbd

    sub c
    jr nc, jr_020_7dbd

    xor a

jr_020_7dbd::
    ldh [$d8], a
    ldh a, [$e6]
    ld c, a
    ld a, [hl]
    and $7c
    jr z, jr_020_7dcb

    sub c
    jr nc, jr_020_7dcb

    xor a

jr_020_7dcb::
    ldh [$d9], a
    pop hl
    ldh a, [$d7]
    ld b, a
    ldh a, [$d8]
    swap a
    ld c, a
    and $e0
    or b
    ld [hl+], a
    ldh a, [$d9]
    ld b, a
    ld a, c
    and $03
    or b
    ld [hl+], a
    dec d
    jr nz, jr_020_7d97

    ret


    ld c, $10
    ld b, $68
    ld a, $38
    ld h, $20
    call label_A13
    ld c, $11
    ld b, $69
    ld a, $38
    ld h, $20
    call label_A13
    ld c, $12
    ld b, $6a
    ld a, $38
    ld h, $20
    call label_A13
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
