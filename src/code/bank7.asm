; Disassembly of "game.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Call_007_4000:
    ld a, $04
    ldh [hFFF4], a
    ret


Call_007_4005:
    ld hl, $c250
    add hl, bc
    ret


    ld a, h
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [hl+], a
    ld a, h
    ld [hl+], a
    db $f4
    ld d, $f6
    ld d, $f0
    rla
    ld a, [c]
    rla
    db $f4
    ld d, $f6
    ld d, $f0
    ld d, $f2
    ld d, $21
    or b
    jp nz, Jump_007_7e09

    cp $02
    jp z, Jump_007_41f0

    and a
    jr nz, jr_007_4053

    inc [hl]
    ldh a, [$ee]
    rla
    rla
    and $40
    push af
    ld hl, $c430
    add hl, bc
    or [hl]
    ld [hl], a
    pop af
    sla a
    ld hl, $c350
    add hl, bc
    or [hl]
    ld [hl], a
    ldh a, [$ee]
    rra
    rra
    rra
    rra
    and $01
    ld hl, $c440
    add hl, bc
    ld [hl], a

jr_007_4053:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ldh a, [$ec]
    sub [hl]
    ldh [$ec], a
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    ldh [$f1], a
    ld de, $4012
    ld a, [wActiveRoom]
    and a
    jr z, jr_007_406f

    ld de, $401a

jr_007_406f:
    call label_3BC0
    call label_3D8A
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_408a

    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    ldh [$f1], a
    ld de, $400a
    call label_3BC0

jr_007_408a:
    call Call_007_7d96
    ld hl, $c360
    add hl, bc
    ld [hl], $04
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_40c1

    ld [hl], b
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    xor $01
    call label_3B0C
    ld hl, $c3a0
    add hl, bc
    ld [hl], $05
    ld hl, hFFF4
    ld [hl], $05
    call label_C00
    ld [hl], $1f
    ld hl, $c340
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    jp Jump_007_4198


jr_007_40c1:
    call label_C56
    call label_3B39
    ldh a, [$f0]
    rst $00
    sub $40
    cp c
    ld b, c
    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    ldh a, [rNR10]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], b
    call IsEntityFrameCounterZero
    jr nz, jr_007_4128

    call Call_007_7e6d
    add $08
    cp $10
    jr c, jr_007_40f9

    push de
    call Call_007_7e5d
    add $08
    pop de
    cp $10
    jr nc, jr_007_4128

    ld a, e
    cp $02
    jr z, jr_007_4128

jr_007_40f9:
    call IncrementEntityWalkingAttr
    call Call_007_7e7d
    ld d, b
    ld hl, $40ce
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $40d2
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    ld hl, $c340
    add hl, bc
    res 7, [hl]
    ld hl, $c350
    add hl, bc
    res 2, [hl]
    call label_3AEA
    call IsEntityFrameCounterZero
    ld [hl], $30
    ret


jr_007_4128:
    ld hl, $c340
    add hl, bc
    set 7, [hl]
    ld hl, $c350
    add hl, bc
    set 2, [hl]
    call label_3AEA
    call label_3B5A
    ret nc

    ld a, [$c19b]
    and a
    ret nz

    ld a, [wAButtonSlot]
    cp $03
    jr nz, jr_007_414e

    ldh a, [hFFCC]
    and $20
    jr nz, jr_007_415a

    ret


jr_007_414e:
    ld a, [wBButtonSlot]
    cp $03
    ret nz

    ldh a, [hFFCC]
    and $10
    jr z, jr_007_41b8

jr_007_415a:
    ld a, [$c3cf]
    and a
    ret nz

    inc a
    ld [$c3cf], a
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $07
    ld hl, $c390
    add hl, bc
    ld [hl], $01
    ld hl, $c490
    add hl, bc
    ld [hl], b
    ldh a, [hFF9E]
    ld [wC15D], a
    call IsEntityFrameCounterZero
    ld [hl], $02
    ld hl, hSFX
    ld [hl], $02
    ld hl, $c3a0
    add hl, bc
    ld [hl], $05
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    xor $01
    call label_3B0C

Jump_007_4198:
    ld a, $bb
    call label_3B86
    ret c

    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $40

jr_007_41b8:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_41c8

jr_007_41be:
    call IsEntityFrameCounterZero
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_007_41c8:
    call Call_007_7e0a
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_41be

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], $04
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


    ldh a, [hFFF4]
    nop
    inc c
    db $10
    inc c
    nop
    db $f4
    ldh a, [hFFF4]

Jump_007_41f0:
    ld de, $400a
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    call Call_007_7e0a
    call label_3B23
    call label_3B39
    call IsEntityFrameCounterZero
    jr nz, jr_007_4233

    call GetRandomByte
    and $1f
    add $20
    ld [hl], a
    and $07
    ld e, a
    ld d, b
    ld hl, $41e8
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $41e6
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a

jr_007_4233:
    ret


    nop
    ldh a, [$78]
    ld bc, $f800
    ld a, d
    ld bc, $0000
    ld [hl], b
    ld bc, label_800
    ld [hl], d
    ld bc, $f000
    ld a, h
    ld bc, $f800
    ld a, [hl]
    ld bc, $0000
    ld [hl], b
    ld bc, label_800
    ld [hl], d
    ld bc, $f000
    ld a, b
    ld bc, $f800
    ld a, d
    ld bc, $0000
    ld [hl], h
    ld bc, label_800
    db $76
    ld bc, $f0fc
    ld h, h
    ld bc, $f8fc
    ld h, [hl]
    ld bc, $0000
    ld h, b
    ld bc, label_800
    ld h, d
    ld bc, $f0fc
    ld h, h
    ld bc, $f8fc
    ld h, [hl]
    ld bc, $0000
    ld [hl], h
    ld bc, label_800
    db $76
    ld bc, $b021
    jp nz, Jump_007_7e09

    cp $02
    jp z, $45f7

    and a
    jr nz, jr_007_42c4

    inc [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $08
    ld [hl], a
    ld a, $b8
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    add $06
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    add $10
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ld hl, $c350
    add hl, de
    ld [hl], $ac
    push bc
    ld c, e
    ld b, d
    call label_3AEA
    pop bc

jr_007_42c4:
    ldh a, [$f0]
    cp $06
    jr nc, jr_007_42dc

    ld a, [wDialogState]
    and a
    jr z, jr_007_42dc

    ldh a, [$f1]
    cp $03
    ld a, $02
    jr nz, jr_007_42da

    ld a, $04

jr_007_42da:
    ldh [$f1], a

jr_007_42dc:
    call Call_007_4594
    ldh a, [$f0]
    cp $0a
    jr c, jr_007_42e8

    call Call_007_43fd

jr_007_42e8:
    call Call_007_7d96
    ld a, [wPhotos1]
    bit 0, a
    jp z, Jump_007_4328

    bit 7, a
    jp nz, Jump_007_4328

    ld a, [wTradeSequenceItem]
    cp $0d
    jp c, Jump_007_4328

    ldh a, [$f0]
    cp $02
    jr c, jr_007_4309

    call Call_007_434e

jr_007_4309:
    ldh a, [$f0]
    rst $00
    dec [hl]
    ld b, e
    ld d, [hl]
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], a
    ld b, e
    add d
    ld b, e
    adc h
    ld b, e
    add hl, bc
    ld b, l
    xor l
    ld b, e
    push bc
    ld b, e
    ld a, [de]
    ld b, h
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld [hl], l
    ld b, h
    sbc c
    ld b, h

Jump_007_4328:
    ldh a, [$f0]
    rst $00
    or b
    ld b, h
    add sp, $44
    add hl, bc
    ld b, l
    scf
    ld b, l
    adc e
    ld b, l
    ld hl, $c3a0

jr_007_4338:
    ld a, [hl+]
    cp $fa
    jr z, jr_007_4342

    ld a, l
    and $0f
    jr nz, jr_007_4338

jr_007_4342:
    ld a, l
    dec a
    and $0f
    ld hl, $c390
    add hl, bc
    ld [hl], a
    jp IncrementEntityWalkingAttr


Call_007_434e:
    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    ret


    call Call_007_7d43
    jp nc, Jump_007_44dc

    ldh a, [hLinkAnimationState]
    cp $06
    jp nz, Jump_007_44dc

    call Call_007_434e
    ld a, $02
    call label_3B0C
    ld a, $25

jr_007_436d:
    call label_2373
    jp IncrementEntityWalkingAttr


    ld a, $e9
    jr jr_007_436d

    call IsEntityFrameCounterZero
    ld [hl], $40
    call IncrementEntityWalkingAttr
    jp Jump_007_44dc


    call Call_007_44dc
    call IsEntityFrameCounterZero
    ret nz

    jp IncrementEntityWalkingAttr


    call Call_007_44dc
    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, wEntity0PosX
    add hl, de
    ld a, [hl]
    cp $2a
    ret nz

    ld a, $08
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $c0
    jp IncrementEntityWalkingAttr


    ldh a, [hFrameCounter]
    and $07
    ret nz

    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, wEntitiesPosYTable
    add hl, de
    dec [hl]
    ld a, [hl]
    cp $50
    ret nc

    jp IncrementEntityWalkingAttr


    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld d, $00
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_43d7

    ld hl, wEntity0PosX
    add hl, de
    inc [hl]

jr_007_43d7:
    ldh a, [hFrameCounter]
    and $01
    ret nz

    ld hl, wEntitiesPosYTable
    add hl, de
    dec [hl]
    ld e, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $02
    cp e
    ret c

    ld a, $24
    call label_2373
    ld a, $04
    call label_3B0C
    call IsEntityFrameCounterZero
    ld [hl], $50
    jp IncrementEntityWalkingAttr


Call_007_43fd:
    push bc
    ld bc, $c010
    ldh a, [hLinkPositionY]
    ldh [$d7], a
    ldh a, [hLinkPositionX]
    ldh [$d8], a
    ld a, $06
    ldh [$d9], a
    ld h, $f0
    ld l, $fc
    call label_1819
    pop bc
    ld a, $6c
    ldh [hLinkAnimationState], a
    ret


    ld a, $04
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_007_4429

    ld [hl], $30
    call IncrementEntityWalkingAttr

Call_007_4429:
jr_007_4429:
    ldh a, [$f0]
    cp $0c
    jr c, jr_007_4436

    call Call_007_4005
    ld a, [hl]
    bit 7, a
    ret z

jr_007_4436:
    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $1a
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ret


    call Call_007_4429
    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $10
    ld a, $04
    call label_3B0C
    call IncrementEntityWalkingAttr
    ld a, [hl]
    cp $0c
    ret nz

    ld hl, $c240
    add hl, bc
    ld [hl], $f8
    call Call_007_4005
    ld [hl], $f8
    ret


    call Call_007_4429
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    cp $4c
    jr c, jr_007_4491

    call Call_007_48fd
    ld a, $17
    call label_2373
    ld a, $04
    call label_3B0C
    jp IncrementEntityWalkingAttr


jr_007_4491:
    call Call_007_7e0a
    call Call_007_4005
    inc [hl]
    ret


    call Call_007_4429
    ld a, $40
    ldh [hFFF4], a
    ld a, $16
    ld [wGameplayType], a
    xor a
    ld [wGameplaySubtype], a
    ld [wTransitionSequenceCounter], a
    ld [wC16C], a
    ret


    call Call_007_7d43
    jr nc, jr_007_44dc

    ldh a, [hLinkAnimationState]
    cp $58
    jr c, jr_007_44bf

    cp $5e
    jr c, jr_007_44dc

jr_007_44bf:
    ld a, [wTradeSequenceItem]
    cp $0b
    jr nz, jr_007_44ce

    ld a, $e8
    call label_2373
    jp IncrementEntityWalkingAttr


jr_007_44ce:
    cp $0c
    jr nc, jr_007_44d7

    ld a, $e7
    jp label_2373


jr_007_44d7:
    ld a, $ed
    jp label_2373


Call_007_44dc:
Jump_007_44dc:
jr_007_44dc:
    ldh a, [hFrameCounter]
    and $30
    ld e, b
    jr z, jr_007_44e4

    inc e

jr_007_44e4:
    ld a, e
    jp label_3B0C


    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr nz, jr_007_4503

    ld a, $01
    ld [$db7f], a
    ld [wC167], a
    call IsEntityFrameCounterZero
    ld [hl], $d0
    ld a, $e9
    jp label_2373


jr_007_4503:
    ld [hl], b
    ld a, $ea
    jp label_2373


    ld a, $02
    ldh [$a1], a
    ld a, $01
    ld [wC10b], a
    call IsEntityFrameCounterZero
    jr nz, jr_007_4521

    ld [hl], $20
    ld a, $eb
    call label_2373
    call IncrementEntityWalkingAttr

jr_007_4521:
    ld e, $03
    cp $30
    jr c, jr_007_4533

    cp $80
    jr nc, jr_007_44dc

    ldh a, [hFrameCounter]
    and $18
    ld e, b
    jr z, jr_007_4533

    inc e

jr_007_4533:
    ld a, e
    jp label_3B0C


    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    jr nz, jr_007_4586

    ld [wC10b], a
    call IncrementEntityWalkingAttr
    ld a, $54
    call label_3B86
    ldh a, [$d7]
    sub $20
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh [$ee], a
    ldh a, [$d8]
    add $08
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh [$ec], a
    ld hl, $c320
    add hl, de
    ld [hl], $20
    ld hl, $c440
    add hl, de
    ld [hl], $01
    push bc
    ld c, e
    ld b, d
    ld a, $0a
    call label_3BAA
    pop bc
    call Call_007_48fd
    ld a, $08
    ldh [$f2], a
    ld a, $0c
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a

jr_007_4586:
    ld a, $03
    jp label_3B0C


    ld a, $02
    ldh [$a1], a
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


Call_007_4594:
    ldh a, [$f1]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $4234
    add hl, de
    ld c, $04
    jp label_3CE6


    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    rst $38
    cp $fe
    ld bc, $0101
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0101
    cp $fe
    rst $38
    nop
    nop
    ld bc, $0202
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $2100
    ret nc

    jp Jump_007_7e09


    rra
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $45ef
    add hl, de
    ldh a, [$ec]
    add [hl]
    ldh [$ec], a
    ld a, [wEntitiesWalkingTable]
    cp $0c
    jr nc, jr_007_461a

    ldh a, [$ec]
    sub $10
    ld [wEntitiesPosYTable], a

jr_007_461a:
    call Call_007_467b
    call label_3B5A
    jr nc, jr_007_4640

    ldh a, [$9b]
    and $80
    jr nz, jr_007_4640

    call Call_007_7e6d
    add $08
    bit 7, a
    jr z, jr_007_4640

    ldh a, [$ec]
    sub $0f
    ldh [hLinkPositionY], a
    ld a, $02
    ldh [$9b], a
    ld a, $01
    ld [$c147], a

jr_007_4640:
    call Call_007_7d96
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $07
    jr nz, jr_007_4666

    ld e, $48
    ld a, [$c147]
    and a
    jr z, jr_007_4657

    ld e, $4b

jr_007_4657:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub e
    jr z, jr_007_4666

    and $80
    jr z, jr_007_4665

    inc [hl]
    inc [hl]

jr_007_4665:
    dec [hl]

jr_007_4666:
    ret


    nop
    ld hl, sp+$68
    ld [bc], a
    nop
    nop
    ld l, d
    ld [bc], a
    nop
    ld [$026a], sp
    nop
    db $10
    ld l, d
    ld [bc], a
    nop
    jr jr_007_46e6

    ld [bc], a

Call_007_467b:
    ld hl, $4667
    ld c, $05
    jp label_3CE6


    ld [hl], d
    ld hl, $2170
    ld [hl], b
    ld bc, $0172
    db $76
    ld bc, $0178
    ld a, b
    ld hl, $2176
    ld [hl], h
    nop
    ld [hl], h
    jr nz, @+$76

    db $10
    ld [hl], h
    jr nc, jr_007_469c

jr_007_469c:
    db $fc
    ld a, d
    ld bc, $0400
    ld a, h
    ld bc, label_C00
    ld a, [hl]
    ld bc, $fc00
    ld a, [hl]
    ld hl, $0400
    ld a, h
    ld hl, label_C00
    ld a, d
    ld hl, $0000
    ld bc, $0202
    ld [bc], a
    ld bc, $2100
    ret nc

    jp nz, Jump_007_7e09

    and a
    jp nz, Jump_007_490f

    ldh a, [$f0]
    cp $02
    jr nc, jr_007_46e4

    ldh a, [hFFF8]
    and $20
    jr z, jr_007_46d2

    inc [hl]
    ret


jr_007_46d2:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $46b3
    add hl, de
    ldh a, [$ec]
    add [hl]
    ldh [$ec], a

jr_007_46e4:
    ldh a, [$f1]

jr_007_46e6:
    cp $04
    jr c, jr_007_4702

    sub $04
    rla
    rla
    and $fc
    ld e, a
    rla
    and $f8
    add e
    ld e, a
    ld d, b
    ld hl, $469b
    add hl, de
    ld c, $03
    call label_3CE6
    jr jr_007_470b

jr_007_4702:
    ld de, $4683
    call label_3BC0
    call label_3D8A

jr_007_470b:
    ldh a, [$f0]
    cp $05
    jr z, jr_007_4715

    cp $03
    jr nc, jr_007_4727

jr_007_4715:
    ldh a, [$ec]
    add $0b
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $4693
    call label_3BC0
    call label_3D8A

jr_007_4727:
    ldh a, [$f0]
    cp $07
    jr c, jr_007_4734

    ld a, $02
    ldh [$a1], a
    ld [wC167], a

jr_007_4734:
    call Call_007_7d96
    ldh a, [$f0]
    rst $00
    ld d, b
    ld b, a
    ld e, c
    ld b, a
    xor [hl]
    ld b, a
    or c
    ld b, a
    reti


    ld b, a
    push af
    ld b, a
    ld a, [bc]
    ld c, b
    ld h, a
    ld c, b
    adc [hl]
    ld c, b
    or b
    ld c, b
    jp z, $2148

    or b
    jp nz, $3609

    jr nc, @-$3b

    ld [de], a
    dec sp
    ld a, [wGameplayType]
    cp $0b
    ret nz

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    call Call_007_7e5d
    ld a, e
    call label_3B0C
    call Call_007_7cf0
    call Call_007_7e5d
    add $12
    cp $24
    jr nc, jr_007_4793

    call Call_007_7e6d
    add $12
    cp $24
    jr nc, jr_007_4793

    ldh a, [$9c]
    and a
    jr z, jr_007_4793

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $14
    ld a, $f1
    jp label_2373


jr_007_4793:
    call Call_007_7d43
    ret nc

    ld a, [wTradeSequenceItem]
    cp $0c
    jr nz, jr_007_47a9

    ld a, $f2
    call label_2373
    call IncrementEntityWalkingAttr
    ld [hl], $05
    ret


jr_007_47a9:
    ld a, $f0
    jp label_2373


    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    call IsEntityFrameCounterZero
    jr nz, jr_007_47c8

    ld [hl], $40
    call Call_007_48fd
    call IncrementEntityWalkingAttr
    ld a, $ff
    jp label_3B0C


jr_007_47c8:
    ld e, $ff
    cp $10
    jr nc, jr_007_47d5

    ld e, $02
    cp $08
    jr c, jr_007_47d5

    inc e

jr_007_47d5:
    ld a, e
    jp label_3B0C


    call IsEntityFrameCounterZero
    ret nz

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    ld hl, wEntity0PosX
    add hl, bc
    add [hl]
    ld [hl], a
    ldh [$ee], a
    call IncrementEntityWalkingAttr
    ld [hl], $01
    jp Jump_007_48fd


    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr nz, jr_007_4804

    call IsEntityFrameCounterZero
    ld [hl], $c0
    ret


jr_007_4804:
    ld [hl], b
    ld a, $f4
    jp label_2373


    ld a, [wDialogState]
    and a
    ret nz

    call IsEntityFrameCounterZero
    jr z, jr_007_4854

    cp $70
    jr nz, jr_007_4820

    dec [hl]
    push af
    ld a, $f3
    call label_2373
    pop af

jr_007_4820:
    cp $90
    jr nz, jr_007_483a

    ldh a, [hLinkPositionY]
    sub $03
    ldh [$d8], a
    ldh a, [hLinkPositionX]
    ldh [$d7], a
    ld a, $0e
    ldh [$f2], a
    ld a, $01
    call label_CC7
    call IsEntityFrameCounterZero

jr_007_483a:
    ld e, $00
    cp $20
    jr c, jr_007_4846

    cp $90
    jr nc, jr_007_4846

    ld e, $01

jr_007_4846:
    ld a, e
    ldh [$9c], a
    ld hl, $ffa1
    ld [hl], $02
    ld a, $04
    ld [$c13b], a
    ret


jr_007_4854:
    ld a, $0d
    ld [wTradeSequenceItem], a
    ldh [$a5], a
    call label_C0C
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $30
    ret


    call IsEntityFrameCounterZero
    ret nz

    call IncrementEntityWalkingAttr
    ldh a, [$f1]
    add $04
    call label_3B0C
    ld e, $08
    cp $04
    jr nz, jr_007_487d

    ld e, $f8

jr_007_487d:
    ld hl, $c240
    add hl, bc
    ld [hl], e
    ld hl, $c320
    add hl, bc
    ld [hl], $20
    call Call_007_48fd
    jp Jump_007_733f


    call Call_007_7e0a
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_007_48af

    ld [hl], b
    call IncrementEntityWalkingAttr
    call Call_007_48fd
    call IsEntityFrameCounterZero
    ld [hl], $10

jr_007_48af:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_48bf

    ld [hl], $20
    ld a, $ff
    call label_3B0C
    jp IncrementEntityWalkingAttr


jr_007_48bf:
    ld e, $02
    cp $08
    jr nc, jr_007_48c6

    inc e

jr_007_48c6:
    ld a, e
    jp label_3B0C


    call IsEntityFrameCounterZero
    ret nz

    ld hl, $c390
    add hl, bc
    ld a, [hl]
    cp $03
    jr nz, jr_007_48e0

    xor a
    ldh [$a1], a
    ld [wC167], a
    jp Jump_007_7ea4


jr_007_48e0:
    inc [hl]
    call GetRandomByte
    and $01
    call label_3B0C
    ld e, $10
    and a
    jr z, jr_007_48f0

    ld e, $f0

jr_007_48f0:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], $07
    ret


Call_007_48fd:
Jump_007_48fd:
    ldh a, [$ec]
    ldh [$d8], a
    ldh a, [$ee]
    ldh [$d7], a
    ld a, $01
    call label_CC7
    ld a, $0e
    ldh [$f2], a
    ret


Jump_007_490f:
    push bc
    sla c
    sla c
    ld hl, $d580
    add hl, bc
    inc hl
    ld a, $0a
    ld [hl+], a
    ld a, $fc
    ld [hl+], a
    ld a, $10
    ld [hl], a
    pop bc
    ldh a, [$f0]
    rst $00
    ld l, $49
    ld b, l
    ld c, c
    ld e, c
    ld c, c
    add d
    ld c, c
    call Call_007_7d96
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $58
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $80
    ld a, [$c130]
    and a
    ret z

    jp IncrementEntityWalkingAttr


    call Call_007_7d96
    ld hl, $c320
    add hl, bc
    ld [hl], $20
    call Call_007_4005
    ld [hl], $fc
    call Call_007_48fd
    jp IncrementEntityWalkingAttr


    call $49dc
    call Call_007_7d96
    call Call_007_7e0a
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_007_4977

    ld [hl], b
    call IncrementEntityWalkingAttr

jr_007_4977:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


    call Call_007_7cf0
    call Call_007_7e5d
    ld a, e
    add $02
    ldh [$f1], a
    call $49dc
    call Call_007_7d96
    call Call_007_7d43
    ret nc

    ld a, $f7
    jp label_2373


    ldh a, [rP1]
    ld [hl], b
    ld bc, label_8F0
    ld [hl], d
    ld bc, $0000
    ld [hl], h
    ld bc, label_800
    db $76
    ld bc, $00f0
    ld [hl], d
    ld hl, label_8F0
    ld [hl], b
    ld hl, $0000
    db $76
    ld hl, label_800
    ld [hl], h
    ld hl, $fff0
    ld [hl], d
    ld hl, $07f0
    ld [hl], b
    ld hl, $0000
    ld a, d
    ld hl, label_800
    ld a, b
    ld hl, $01f0
    ld [hl], b
    ld bc, $09f0
    ld [hl], d
    ld bc, $0000
    ld a, b
    ld bc, label_800
    ld a, d
    ld bc, $f1f0
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $499c
    add hl, de
    ld c, $04
    jp label_3CE6


    ld l, [hl]
    jr nz, @+$6e

    jr nz, @+$6e

    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld [hl], d
    ld bc, $0074
    db $76
    ld bc, $0078
    ld a, d
    ld bc, $007c
    db $76
    ld bc, $2072
    ld [hl], b
    ld hl, $2076
    ld [hl], h
    ld hl, $207a
    ld a, b
    ld hl, $2076
    ld a, h
    ld hl, $017e
    ld a, [hl]
    ld hl, $a5fa
    db $db
    and a
    jr z, jr_007_4a69

    ld a, [wTradeSequenceItem]
    cp $08
    jr nc, jr_007_4a30

    ld a, [wHasInstrument3]
    and $02
    jp nz, Jump_007_7ea4

jr_007_4a30:
    ld de, $4a07
    ld a, [wTradeSequenceItem]
    cp $08
    jr nc, jr_007_4a43

    call Call_007_7e5d
    ld a, e
    ldh [$f1], a
    ld de, $49ef

jr_007_4a43:
    call label_3BC0
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call Call_007_7cf0
    call Call_007_7d43
    ret nc

    ld a, [wTradeSequenceItem]
    cp $08
    jr nc, jr_007_4a64

    ld a, $27
    jp label_2385


jr_007_4a64:
    ld a, $76
    jp label_2373


jr_007_4a69:
    ldh a, [hFFF8]
    and $20
    jp nz, Jump_007_7ea4

    ld de, $49f7
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_4a7e

    ld de, $4a07

jr_007_4a7e:
    call label_3BC0
    ld a, [wTradeSequenceItem]
    cp $08
    jr nc, jr_007_4aa0

    ldh a, [$ee]
    add $10
    ldh [$ee], a
    ldh a, [$ec]
    sub $10
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $4a17
    call label_3BC0
    call label_3D8A

jr_007_4aa0:
    call Call_007_7d96
    call Call_007_7cf0
    ldh a, [$f0]
    rst $00
    or e
    ld c, d
    di
    ld c, d
    inc e
    ld c, e
    ld d, b
    ld c, e
    ld e, e
    ld c, e
    call Call_007_7e5d
    ld hl, $c380
    add hl, bc
    ld [hl], e
    add $24
    cp $48
    jr nc, jr_007_4ae9

    call Call_007_7e6d
    add $24
    cp $48
    jr nc, jr_007_4ae9

    call Call_007_7d43
    jr nc, jr_007_4ae5

    ld a, [wTradeSequenceItem]
    cp $07
    ld a, $70
    jr z, jr_007_4ada

    ld a, $77

jr_007_4ada:
    call label_2373
    call IncrementEntityWalkingAttr
    ld a, $01
    ld [wC167], a

jr_007_4ae5:
    xor a
    jp label_3B0C


jr_007_4ae9:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


    ld a, [wC177]
    and a
    jr nz, jr_007_4b0e

    ld a, [wTradeSequenceItem]
    cp $07
    jr nz, jr_007_4b0e

    ld a, $72
    call label_2373
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $c0
    ret


jr_007_4b0e:
    ld a, $71
    call label_2373
    xor a
    ld [wC167], a
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


    ld a, [wDialogState]
    and a
    jr nz, jr_007_4b44

    call IsEntityFrameCounterZero
    jr nz, jr_007_4b3b

    ld [wC10b], a
    ld a, $73
    call label_2373
    ld a, $08
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a
    jp IncrementEntityWalkingAttr


jr_007_4b3b:
    ld a, $02
    ldh [$a1], a
    ld a, $01
    ld [wC10b], a

Call_007_4b44:
jr_007_4b44:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    add $02
    jp label_3B0C


    ld a, [wDialogState]
    and a
    ret nz

    call label_C0C
    jp IncrementEntityWalkingAttr


    call Call_007_4b44
    call Call_007_7d43
    ret nc

    xor a
    ld [wC167], a
    ld a, $75
    jp label_2373


    ld a, [$7000]
    inc bc
    ld a, [$7208]
    inc bc
    ld a, [$7410]
    inc bc
    ld a, [$7018]
    inc hl
    ld a, [bc]
    nop
    db $76
    inc bc
    ld a, [bc]
    ld [$0378], sp
    ld a, [bc]
    db $10
    ld a, b
    inc hl
    ld a, [bc]
    jr jr_007_4c00

    inc hl
    ld a, [$7000]
    inc bc
    ld a, [$7408]
    inc hl
    ld a, [$7210]
    inc hl
    ld a, [$7018]
    inc hl
    ld a, [bc]
    nop
    db $76
    inc bc
    ld a, [bc]
    ld [$0378], sp
    ld a, [bc]
    db $10
    ld a, b
    inc hl
    ld a, [bc]
    jr @+$78

    inc hl
    ld a, [hl]
    rlca
    ld a, d
    ld bc, $017c
    ld a, h
    ld hl, $217a
    xor a
    ldh [$f1], a
    ld a, $4a
    ldh [$ec], a
    ld de, $4bad
    call label_3BC0
    ld a, $68
    ldh [$ee], a
    ld de, $4bb1
    call label_3BC0
    ld a, [wTradeSequenceItem]
    cp $06
    jr nz, jr_007_4be1

    ld a, $74
    ldh [$ee], a
    ld a, $38
    ldh [$ec], a
    ld de, $4bab
    call label_3C77

jr_007_4be1:
    call label_3D8A
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    ld hl, $4b6b
    and a
    jr z, jr_007_4bf2

    ld hl, $4b8b

jr_007_4bf2:
    ld c, $08
    call label_3CE6
    ld a, $06
    call label_3DA0
    xor a
    call label_3B0C

jr_007_4c00:
    call Call_007_7d96
    ldh a, [hFrameCounter]
    and $20
    call label_3B0C
    call Call_007_7cf0
    ldh a, [$f0]
    rst $00
    ld d, $4c
    ld c, c
    ld c, h
    ld [hl], b
    ld c, h
    call Call_007_7d36
    ret nc

    ld e, $d3
    ld a, [$d8fd]
    and $30
    jr nz, jr_007_4c45

    ld a, [wTradeSequenceItem]
    cp $06
    jr nz, jr_007_4c32

    ld a, $cf
    call Call_007_4c83
    jp IncrementEntityWalkingAttr


jr_007_4c32:
    ld e, $d4
    ld a, [wIsMarinFollowingLink]
    and a
    jr nz, jr_007_4c45

    ld e, $ce
    ld a, [wTradeSequenceItem]
    cp $07
    jr nz, jr_007_4c45

Call_007_4c43:
    ld e, $d2

jr_007_4c45:
    ld a, e
    jp Jump_007_4c83


    ld a, [wDialogState]
    and a
    jr nz, jr_007_4c6f

    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr z, jr_007_4c5e

    ld [hl], b
    ld a, $d1
    jp Jump_007_4c83


jr_007_4c5e:
    ld a, $07
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a
    call label_C0C
    call IsEntityFrameCounterZero
    ld [hl], $70

jr_007_4c6f:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_4c82

    ld a, [wDialogState]
    and a
    jr nz, jr_007_4c82

    call Call_007_4c43
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_4c82:
    ret


Call_007_4c83:
Jump_007_4c83:
    ld e, a
    ldh a, [hLinkPositionY]
    push af
    ld a, $10
    ldh [hLinkPositionY], a
    ld a, e
    call label_2373
    pop af
    ldh [hLinkPositionY], a
    ret


    ld [hl], b
    ld bc, $2170
    ldh a, [hFFF8]
    and $20
    jp nz, Jump_007_7ea4

    ld hl, $c440
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_007_4d84

    ld a, c
    ld [$d201], a
    call IsEntityFrameCounterZero
    and $20
    jr z, jr_007_4cb6

    ld hl, $ffee
    dec [hl]

jr_007_4cb6:
    ld de, $4c93
    call label_3BC0
    call Call_007_7d96
    ldh a, [$f0]
    rst $00
    call z, $1f4c
    ld c, l
    daa
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld c, l
    ld a, [$db7f]
    cp $02
    jr nz, jr_007_4ce7

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $10
    ld [hl], a
    ld hl, $c310
    add hl, bc
    ld [hl], $10
    call IncrementEntityWalkingAttr
    ld [hl], $04
    ret


jr_007_4ce7:
    xor a
    ld [$d202], a
    call IncrementEntityWalkingAttr

Call_007_4cee:
    ld a, $b3
    call label_3B86
    jr c, jr_007_4d1d

    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c440
    add hl, de
    ld [hl], $01
    ld hl, $c240
    add hl, de
    ld [hl], $0e
    ld hl, $c340
    add hl, de
    ld [hl], $c1
    ld hl, $c350
    add hl, de
    ld [hl], $00
    and a
    ret


jr_007_4d1d:
    scf
    ret


    ld a, [$d202]
    and a
    jp nz, IncrementEntityWalkingAttr

    ret


    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jp z, IncrementEntityWalkingAttr

    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_4d4c

    call Call_007_4cee
    jr c, jr_007_4d4c

    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld hl, $c3d0
    add hl, de
    ld [hl], a
    ld hl, $c240
    add hl, de
    ld [hl], b

jr_007_4d4c:
    ret


    ret


    call IsEntityFrameCounterZero
    ret nz

    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ret z

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b
    call label_3B5A
    ret nc

    xor a
    ld [$db7f], a
    ld a, $06
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a
    call label_C0C
    jp Jump_007_7ea4


    ld [hl], d
    nop
    ld [hl], d
    ld b, b

Jump_007_4d84:
    ld de, $4d80
    call label_3C77
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    call label_3B0C
    call Call_007_7d96
    ldh a, [$f0]
    rst $00
    and l
    ld c, l
    dec h
    ld c, [hl]
    adc h
    ld c, [hl]
    ld bc, $10ff
    ldh a, [$0b]
    push af
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_007_4dea

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $4d9f
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $4da1
    add hl, de
    cp [hl]
    jr nz, jr_007_4dcb

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_007_4dcb:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $4d9f
    add hl, de
    ld a, [hl]
    call Call_007_4005
    add [hl]
    ld [hl], a
    ld hl, $4da3
    add hl, de
    cp [hl]
    jr nz, jr_007_4dea

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_007_4dea:
    call Call_007_7e0a
    ld a, [$d202]
    and a
    jp nz, IncrementEntityWalkingAttr

    ret


    ldh a, [hFFE8]
    add sp, -$20
    ldh [$d8], a
    db $10
    jr @+$1a

    jr nz, jr_007_4e20

    jr z, jr_007_4e02

jr_007_4e02:
    ld hl, sp+$08
    ld hl, sp+$08
    nop
    nop
    ld [$08f8], sp
    ld hl, sp+$00
    nop
    ld hl, sp+$08

jr_007_4e10:
    ld hl, sp+$08
    nop
    nop
    ld [$08f8], sp
    ld hl, sp+$00
    db $10
    jr jr_007_4e34

    jr nz, jr_007_4e3e

    jr z, jr_007_4e10

jr_007_4e20:
    add sp, -$18
    ldh [$e0], a
    ret c

    ld a, $22
    ldh [$f2], a
    ld a, [$d204]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a

jr_007_4e34:
    jp z, Jump_007_7ea4

    ldh a, [hFrameCounter]
    and $07
    ld hl, $c3d0

jr_007_4e3e:
    add hl, bc
    cp [hl]
    jr nz, jr_007_4e89

    ld a, [$d204]
    ld e, a
    ld d, b
    ld hl, $c380
    add hl, de
    ld a, [hl]
    ld e, a
    ld hl, $c3d0
    add hl, bc
    rla
    rla
    and $fc
    add e
    add e
    add [hl]
    ld e, a
    ld d, b
    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    push bc
    ld a, [$d204]
    ld c, a
    ld hl, $4df5
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    add [hl]
    ldh [hLinkPositionX], a
    ld hl, $4e0d
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    add [hl]
    ldh [hLinkPositionY], a
    pop bc
    ld a, $24
    call label_3BAA
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a

jr_007_4e89:
    jp Jump_007_7e0a


    ret


    ld e, d
    ld [hl+], a
    ld e, b
    ld [hl+], a
    ld e, [hl]
    ld [hl+], a
    ld e, h
    ld [hl+], a
    ld e, b
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, h
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, [hl]
    ld [hl+], a
    ld d, h
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [hl+], a
    ld d, b
    ld [hl+], a
    ld [hl], h
    ld [bc], a
    db $76
    ld [bc], a
    ld a, c
    ld [$d204], a
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_4ec5

    inc [hl]
    ldh a, [hFFF8]
    and $40
    jp nz, Jump_007_7ea4

jr_007_4ec5:
    ld a, [wHasInstrument3]
    and $02
    jp z, Jump_007_7ea4

    ld de, $4e8d
    call label_3BC0
    call Call_007_7d96
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_007_4eee

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b

jr_007_4eee:
    ldh a, [$f0]
    rst $00
    rst $38
    ld c, [hl]
    rra
    ld c, a
    ld d, [hl]
    ld c, a
    add $4f
    ld c, [hl]
    ld d, b
    or h
    ld d, b
    db $e3
    ld d, b
    ld a, $02
    call label_3B0C
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $60
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $58
    call Call_007_7cf0
    call Call_007_7d43
    ret nc

    ld a, $c0
    call label_2373
    jp IncrementEntityWalkingAttr


    call Call_007_7cf0
    ld a, [wDialogState]
    and a
    jr nz, jr_007_4f4d

    ld a, [wC177]
    and a
    jr nz, jr_007_4f44

    ld a, $02
    ld [$db7f], a
    ld hl, $d887
    set 6, [hl]
    call IsEntityFrameCounterZero
    ld [hl], $a0
    ld a, $01
    ldh [$f2], a
    jp IncrementEntityWalkingAttr


jr_007_4f44:
    ld a, $c2
    call label_2373
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_4f4d:
    ret


    ld a, b
    ld bc, $00ff
    ld a, d
    ld bc, $017c
    ld a, $01
    ldh [$a1], a
    ld [wC167], a
    call IsEntityFrameCounterZero
    cp $30
    jr c, jr_007_4f7b

    xor a
    ldh [$f1], a
    ldh a, [$ec]
    sub $10
    ldh [$ec], a
    ld de, $4f4e
    call label_3BC0
    call label_3D8A
    ld a, $08
    jp label_3B0C


jr_007_4f7b:
    cp $18
    jr nc, jr_007_4fa5

    ld a, $02
    ldh [hFF9E], a
    ld hl, $c240
    add hl, bc
    ld [hl], $fe
    call Call_007_4005
    ld [hl], $f4
    call Call_007_7e0a
    call IsEntityFrameCounterZero
    jr nz, jr_007_4fa5

    ld a, $34
    ld [wWorldMusicTrack], a
    ldh [$b0], a
    call IsEntityFrameCounterZero
    ld [hl], $c0
    jp IncrementEntityWalkingAttr


jr_007_4fa5:
    ld a, $01
    ldh [$f1], a
    ldh a, [$ee]
    sub $0c
    ldh [$ee], a
    ld de, $4f4e
    call label_3BC0
    call label_3D8A
    call IsEntityFrameCounterZero
    rra
    rra
    rra
    rra
    and $01
    add $02
    jp label_3B0C


    ld a, $01
    ldh [$a1], a
    call IsEntityFrameCounterZero
    jr nz, jr_007_4fd4

    ld [hl], $0c
    call IncrementEntityWalkingAttr

jr_007_4fd4:
    call IsEntityFrameCounterZero
    cp $20
    jr nz, jr_007_4fe5

    ld hl, $c320
    add hl, bc
    ld [hl], $18
    call Call_007_733f
    xor a

jr_007_4fe5:
    cp $60
    jr nz, jr_007_4fed

    ld hl, $d202
    inc [hl]

jr_007_4fed:
    cp $a0
    jr nz, jr_007_4ffc

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $a0

jr_007_4ffc:
    and $20
    jr z, jr_007_5012

    ld a, $01
    ldh [$f1], a
    ldh a, [$ee]
    sub $0e
    ldh [$ee], a
    ldh a, [$ec]
    sub $08
    ldh [$ec], a
    jr jr_007_501b

jr_007_5012:
    xor a
    ldh [$f1], a
    ldh a, [$ec]
    sub $10
    ldh [$ec], a

jr_007_501b:
    ld de, $4f4e
    call label_3BC0
    call label_3D8A
    call IsEntityFrameCounterZero
    ld e, $02
    and $20
    jr z, jr_007_502e

    inc e

jr_007_502e:
    ld a, e
    jp label_3B0C


    jr nz, jr_007_5034

jr_007_5034:
    ldh [rP1], a
    nop
    ldh [rP1], a
    jr nz, jr_007_503b

jr_007_503b:
    ld [bc], a
    ld bc, $1603
    jr z, jr_007_5069

    jr z, @+$2a

    jr z, jr_007_506d

    jr z, @+$2a

    jr z, jr_007_5071

    jr z, jr_007_504b

jr_007_504b:
    ld [bc], a
    inc b
    ld b, $3e
    ld bc, $a1e0
    call IsEntityFrameCounterZero
    jr nz, jr_007_506e

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $0b
    jp z, IncrementEntityWalkingAttr

    ld e, a
    ld d, b
    ld hl, $503d
    add hl, de

jr_007_5069:
    ld e, [hl]
    call IsEntityFrameCounterZero

jr_007_506d:
    ld [hl], e

jr_007_506e:
    ld hl, $c3d0

jr_007_5071:
    add hl, bc
    ld a, [hl]
    and $03
    ld e, a
    ld d, b
    ld hl, $5032
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $5036
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    ld hl, $503a
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, bc
    ld [hl], a
    call Call_007_7e7d
    ld a, e
    xor $01

jr_007_509a:
    ldh [hFF9E], a
    call Call_007_7e0a
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $504a
    add hl, de
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    or [hl]
    jp label_3B0C


    ld a, $01
    ldh [$a1], a
    ld hl, $c380
    add hl, bc
    ld a, $01
    ld [hl], a
    ld hl, $c240
    add hl, bc
    ld [hl], $e4
    call Call_007_4005
    ld [hl], $08
    call Call_007_7e0a
    ldh a, [$ee]
    cp $c0
    jr c, jr_007_50df

    cp $c4
    jp nc, Jump_007_50df

    xor a
    ld [wC167], a
    call IncrementEntityWalkingAttr

Jump_007_50df:
jr_007_50df:
    ld a, $01
    jr jr_007_509a

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesWalkingTable
    add hl, de
    inc [hl]
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $50
    ld hl, wEntitiesPosYTable
    add hl, de
    ld a, [hl]
    add $10
    ld [hl], a
    ld hl, $c310
    add hl, de
    ld [hl], $10
    jp Jump_007_7ea4


    ld b, b
    ld [bc], a
    ld b, b
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld b, d
    ld [hl+], a
    ld de, $5104
    call label_3BC0
    call Call_007_7d96
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [$f0]
    rst $00
    cpl
    ld d, c
    ld a, h
    ld d, c
    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$08
    call Call_007_7cf0
    jr nc, jr_007_516e

    ldh a, [hPressedButtonsMask]
    and $0f
    jr z, jr_007_516e

    ld a, $01
    ld [$c144], a
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $10
    jr nz, jr_007_5173

    call IncrementEntityWalkingAttr
    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld a, e
    xor $01
    ld e, a
    ld [hl], e

Call_007_5159:
    ld d, b
    ld hl, $5127
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $512b
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    ret


jr_007_516e:
    ld hl, $c3d0
    add hl, bc
    ld [hl], b

jr_007_5173:
    ret


    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    ldh a, [rNR10]
    ld a, $01
    ldh [$a1], a
    ld a, $3e
    ldh [$f2], a
    ldh a, [hFFCC]
    and $0f
    ld d, a
    jr z, jr_007_51aa

    and $03
    jr z, jr_007_5198

    ld e, $00
    and $01
    jr nz, jr_007_5196

    inc e

jr_007_5196:
    jr jr_007_519f

jr_007_5198:
    ld e, $02
    bit 2, d
    jr nz, jr_007_519f

    inc e

jr_007_519f:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor e
    cp $01
    jr z, jr_007_51aa

    ld [hl], e

jr_007_51aa:
    call Call_007_7e0a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $08
    ld hl, wEntitiesPosYTable
    add hl, bc
    or [hl]
    and $0f
    jp nz, Jump_007_529f

    ld a, [hl]
    sub $10
    ldh [$cd], a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $08
    ldh [$ce], a
    swap a
    and $0f
    ld e, a
    ldh a, [$cd]
    and $f0
    or e
    ld e, a
    ld d, b
    ld hl, wTileMap
    add hl, de
    ld [hl], $0d
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_51f2

    push bc
    ld a, $0d
    ld [$ddd8], a
    ld a, $07
    call label_91D
    pop bc

jr_007_51f2:
    ld hl, wRequestDestinationHigh
    ld a, [wRequests]
    ld e, a
    add $0a
    ld [wRequests], a
    ld d, $00
    add hl, de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $11
    ld [hl+], a
    ld a, $13
    ld [hl+], a
    ld [hl], b
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    call Call_007_5159
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $5174
    add hl, de
    ldh a, [$ce]
    add [hl]
    swap a
    and $0f
    push af
    ld hl, $5178
    add hl, de
    pop af
    ld e, a
    ldh a, [$cd]
    add [hl]
    and $f0
    or e
    ld e, a
    ld d, b
    ld hl, wTileMap
    add hl, de
    ld e, [hl]
    ld d, $01
    call label_2A26
    cp $0b
    jr z, jr_007_529f

    cp $50
    jr z, jr_007_529f

    cp $51
    jr z, jr_007_529f

    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $2f
    ldh [$f2], a
    ld a, $02
    call label_CC7
    ld hl, $c520
    add hl, de
    ld [hl], $0f
    call Call_007_7ea4
    ld a, [$c18e]
    and $0f
    cp $0e
    jr nz, jr_007_529f

    push bc
    ld c, b
    ld hl, $d700

jr_007_5287:
    ld a, [hl+]
    push hl
    ld e, a
    ld d, $01
    call label_2A26
    pop hl
    cp $50
    jr z, jr_007_529e

    cp $51
    jr z, jr_007_529e

    dec c
    jr nz, jr_007_5287

    call label_C60

jr_007_529e:
    pop bc

Jump_007_529f:
jr_007_529f:
    ret


    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $08
    ld [$0707], sp
    rlca
    ld b, $06
    ld b, $08
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $04
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $0c
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

Call_007_52e0:
    ldh a, [$d7]
    rlca
    and $01
    ld e, a
    ldh a, [$d8]
    rlca
    rla
    and $02
    or e
    rla
    rla
    rla
    and $18
    ld h, a
    ldh a, [$d8]
    bit 7, a
    jr z, jr_007_52fb

    cpl
    inc a

jr_007_52fb:
    ld d, a
    ldh a, [$d7]
    bit 7, a
    jr z, jr_007_5304

    cpl
    inc a

jr_007_5304:
    cp d
    jr nc, jr_007_5314

    sra a
    sra a
    add h
    ld e, a
    ld d, b
    ld hl, $52a0
    add hl, de
    ld a, [hl]
    ret


jr_007_5314:
    ld a, d
    sra a
    sra a
    add h
    ld e, a
    ld d, b
    ld hl, $52c0
    add hl, de
    ld a, [hl]
    ret


    ld hl, $c470
    add hl, bc
    ld [hl], b
    ld hl, $c3f0
    add hl, bc
    ld [hl], b
    ld hl, $c400
    add hl, bc
    ld [hl], b
    call Call_007_5453
    call Call_007_7d96
    call label_C56
    ldh a, [$f0]
    rst $00
    ld c, c
    ld d, e
    ld e, d
    ld d, e
    add e
    ld d, e
    cp l
    ld d, e
    call $d853
    ld d, e
    ldh a, [$ee]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ldh a, [$ef]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    jr nz, jr_007_537f

    ld hl, $c340
    add hl, bc
    set 6, [hl]
    call Call_007_7e5d
    add $20
    cp $40
    jr nc, jr_007_537f

    call Call_007_7e6d
    add $20
    cp $40
    jr nc, jr_007_537f

    call IsEntityFrameCounterZero
    ld [hl], $30
    call IncrementEntityWalkingAttr

jr_007_537f:
    xor a
    jp label_3B0C


    call IsEntityFrameCounterZero
    jr nz, jr_007_539e

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    call label_3B0C
    call IsEntityFrameCounterZero
    ld [hl], $18
    ld hl, $c340
    add hl, bc
    res 6, [hl]
    jp IncrementEntityWalkingAttr


jr_007_539e:
    cp $10
    jr nz, jr_007_53b8

    ld a, $1f
    call label_3BAA
    call Call_007_52e0
    sra a
    add $02
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], a
    ld a, $18
    call label_3BAA

jr_007_53b8:
    ld a, $01
    jp label_3B0C


    call Call_007_7e0a
    call IsEntityFrameCounterZero
    jr nz, jr_007_53ca

    ld [hl], $20
    call IncrementEntityWalkingAttr

jr_007_53ca:
    jp label_3B39


    call IsEntityFrameCounterZero
    jr nz, jr_007_53d5

    call IncrementEntityWalkingAttr

jr_007_53d5:
    jp label_3B39


    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionX], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionY], a
    ld a, $10
    call label_3BAA
    call Call_007_7e5d
    add $02
    cp $04
    jr nc, jr_007_541f

    call Call_007_7e6d
    add $02
    cp $04
    jr nc, jr_007_541f

    ld hl, wEntity0PosX
    add hl, bc
    ldh a, [hLinkPositionX]
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ldh a, [hLinkPositionY]
    ld [hl], a
    xor a
    call label_3B0C
    call IncrementEntityWalkingAttr
    ld [hl], $01
    call IsEntityFrameCounterZero
    ld [hl], $20

jr_007_541f:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call Call_007_7e0a
    jp label_3B39


    rst $38
    nop
    rst $38
    jr nz, jr_007_549c

    ld [bc], a
    ld l, h
    ld [hl+], a
    ld h, h
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld l, b
    ld [hl+], a
    ld h, [hl]
    ld [hl+], a
    ld h, b
    ld [bc], a
    ld h, b
    ld [hl+], a
    ld h, [hl]
    ld [bc], a
    ld l, b
    ld [bc], a
    ld h, d
    ld [bc], a
    ld h, h
    ld [bc], a
    ld h, [hl]
    ld b, d
    ld l, b
    ld b, d
    ld h, b
    ld b, d
    ld h, b
    ld h, d
    ld l, b
    ld h, d
    ld h, [hl]
    ld h, d

Call_007_5453:
    ld de, $542b
    call label_3BC0
    ldh a, [$f0]
    cp $03
    ret c

    ldh a, [$ee]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    sub [hl]
    sra a
    sra a
    ldh [$d7], a
    ldh [$d9], a
    ldh a, [$ec]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    sub [hl]
    sra a
    sra a
    ldh [$d8], a
    ldh [$da], a
    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, $c030
    add hl, de
    ld e, l
    ld d, h
    ld a, $03

jr_007_548a:
    ldh [$db], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ldh a, [$d8]
    add [hl]
    ld [de], a
    inc de
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ldh a, [$d7]
    add [hl]

jr_007_549c:
    add $04
    ld [de], a
    inc de
    ld a, $6a
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ldh a, [$d7]
    ld hl, $ffd9
    add [hl]
    ldh [$d7], a
    ldh a, [$d8]
    ld hl, $ffda
    add [hl]
    ldh [$d8], a
    ldh a, [$db]
    dec a
    jr nz, jr_007_548a

    ld a, $03
    jp label_3DA0


    ld b, h
    add hl, hl
    add d
    bit 4, h
    pop bc
    ret nc

    ld [hl], h
    ld l, d
    ld [hl], $5e
    db $ec
    push af
    sbc l
    sbc d
    ld d, $9c
    ld d, $74
    nop
    halt
    sbc d
    rla
    sbc h
    rla
    sbc d
    rla
    sbc h
    rla
    sbc d
    rla
    sbc h
    rla
    sbc d
    rla
    sbc h
    rla
    sbc d
    inc d
    sbc h
    inc d
    sbc d
    inc d
    sbc h
    inc d
    sbc d
    rla
    sbc h
    rla
    sbc d
    inc d
    sbc h
    inc d
    sbc d
    rla
    sbc h
    rla
    sbc d
    ld d, $9c
    ld d, $9a
    rla
    sbc h
    rla
    sbc d
    ld d, $9c
    ld d, $9a
    rla
    sbc h
    rla
    sbc d
    rla
    sbc h
    rla
    ld a, [wActiveRoom]
    and a
    jr nz, jr_007_552e

    ldh a, [hMapIndex]
    cp $6b
    jr z, jr_007_5528

    cp $7a
    jr z, jr_007_5528

    cp $8b
    jr z, jr_007_5528

    cp $7b
    jr nz, jr_007_552e

jr_007_5528:
    ld a, [$d87b]
    and $10
    ret z

jr_007_552e:
    ldh a, [hFFF8]
    and $20
    jp nz, Jump_007_7ea4

    ldh a, [hIsGBC]
    and a
    jr z, jr_007_555a

    ldh a, [$f9]
    and a
    jr z, jr_007_5545

    ldh a, [$ec]
    add $02
    ldh [$ec], a

jr_007_5545:
    push hl
    ld de, $54d8
    ld a, [wTradeSequenceItem]
    dec a
    sla a
    sla a
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    jr jr_007_5572

jr_007_555a:
    ld de, $54d4
    ld a, [wTradeSequenceItem]
    cp $04
    jr z, jr_007_5572

    ldh a, [$f9]
    and a
    jr z, jr_007_556f

    ldh a, [$ec]
    add $02
    ldh [$ec], a

jr_007_556f:
    ld de, $54d0

jr_007_5572:
    call label_3BC0
    call IsEntityFrameCounterZero
    jr nz, jr_007_559a

    call label_3B5A
    jr nc, jr_007_5599

    ld a, $10
    ld [wWorldMusicTrack], a
    ld [wC167], a
    ldh a, [$bf]
    ldh [$b0], a
    call IsEntityFrameCounterZero
    ld a, $68
    ld [hl], a
    ld a, $66
    ld [wC111], a
    jp label_CAF


jr_007_5599:
    ret


jr_007_559a:
    cp $10
    jr nz, jr_007_55ba

    dec [hl]
    ld a, [wTradeSequenceItem]
    ld e, a
    ld d, b
    ld hl, $54c1
    add hl, de
    ld a, [hl]
    cp $9d
    jr z, jr_007_55b1

    cp $44
    jr nz, jr_007_55b6

jr_007_55b1:
    call label_2385
    jr jr_007_55b9

jr_007_55b6:
    call label_2373

jr_007_55b9:
    xor a

jr_007_55ba:
    dec a
    jr nz, jr_007_55cd

    xor a
    ld [$db7f], a
    ld [wC167], a
    call Call_007_560d
    or $20
    ld [hl], a
    jp Jump_007_7ea4


jr_007_55cd:
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ldh a, [hMapIndex]
    cp $c9
    jr nz, jr_007_55df

    ld a, $04
    ld [$c13b], a

jr_007_55df:
    ld hl, $c13b
    ldh a, [hLinkPositionY]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    sub $10
    ld [hl], a
    ldh a, [$a2]
    ld hl, $c310
    add hl, bc
    ld [hl], a
    ld a, $6c
    ldh [hLinkAnimationState], a
    ld a, $02
    ldh [$a1], a
    ld a, $03
    ldh [hFF9E], a
    xor a
    ld [$c137], a
    ld [wC16A], a
    ld [$c122], a
    ld [wIsUsingSpinAttack], a
    ret


Call_007_560d:
    ld hl, wMinimapTiles
    ldh a, [hMapIndex]
    ld e, a
    ld a, [wActiveRoom]
    ld d, a
    ldh a, [hMapTileset]
    cp $1a
    jr nc, jr_007_5622

    cp $06
    jr c, jr_007_5622

    inc d

jr_007_5622:
    add hl, de
    ld a, [hl]
    ret


    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$08
    ld d, b
    ld [bc], a
    ld d, b
    ld [hl+], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [hl+], a
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld b, d
    ld d, d
    ld h, d
    ld d, h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, d
    ld [bc], a
    ld d, [hl]
    ld [hl+], a
    ld d, h
    ld [hl+], a
    ld e, d
    ld [hl+], a
    ld e, b
    ld [hl+], a
    ld de, $562d
    call label_3BC0
    call $5805
    call Call_007_7d96
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_566f

    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, $01
    ld [hl], a
    ldh [$f0], a
    call IsEntityFrameCounterZero
    ld [hl], $40

jr_007_566f:
    call Call_007_7dc3
    call Call_007_7e0a
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_007_5693

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], b

jr_007_5693:
    call label_3B23
    ldh a, [$f0]
    cp $02
    jp z, Jump_007_577a

    and a
    jr z, jr_007_56ff

    call IsEntityFrameCounterZero
    jr z, jr_007_56bd

    cp $0a
    jr nz, jr_007_56b7

    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld a, e
    cp [hl]
    jr nz, jr_007_56b7

    call Call_007_57b0

jr_007_56b7:
    call label_3D7F
    jp Jump_007_5721


jr_007_56bd:
    call GetRandomByte
    and $1f
    or $20
    ld [hl], a
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $00
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    cp $00
    jr nz, jr_007_56dd

    call Call_007_7e7d
    jr jr_007_56e0

jr_007_56dd:
    call GetRandomByte

jr_007_56e0:
    and $03
    ld hl, $c380
    add hl, bc
    ld [hl], a
    ld e, a
    ld d, b
    ld hl, $5625
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $5629
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    jp Jump_007_5721


jr_007_56ff:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $0f
    jr nz, jr_007_570d

    call IsEntityFrameCounterZero
    jr nz, jr_007_571e

jr_007_570d:
    call GetRandomByte
    and $0f
    or $10
    ld [hl], a
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $01
    call label_3D7F

jr_007_571e:
    call Call_007_7d1a

Jump_007_5721:
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_5777

    call Call_007_7e5d
    add $20
    cp $40
    jr nc, jr_007_5777

    call Call_007_7e6d
    add $20
    cp $40
    jr nc, jr_007_5777

    ld a, [wAButtonSlot]
    cp $01
    jr nz, jr_007_574a

    ldh a, [hFFCC]
    and $20
    jr nz, jr_007_5757

    jr jr_007_5777

jr_007_574a:
    ld a, [wBButtonSlot]
    cp $01
    jr nz, jr_007_5777

    ldh a, [hFFCC]
    and $10
    jr z, jr_007_5777

jr_007_5757:
    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $01
    cp e
    jr z, jr_007_5777

    ld hl, $c320
    add hl, bc
    ld [hl], $18
    ld a, $10
    call label_3BAA
    call IncrementEntityWalkingAttr
    ld [hl], $02
    jp Jump_007_733f


jr_007_5777:
    jp label_3B39


Jump_007_577a:
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a
    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld [hl], e
    call Call_007_7d1a
    ldh a, [hFFE8]
    and a
    jr z, jr_007_579f

    call IncrementEntityWalkingAttr
    ld [hl], $01
    call IsEntityFrameCounterZero
    ld [hl], $20

jr_007_579f:
    ret


    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$08
    jr nz, @-$1e

    nop
    nop
    nop
    nop
    ldh [rNR41], a

Call_007_57b0:
    ld a, $0a
    call label_3B86
    jr c, jr_007_57f4

    push bc
    ld hl, $c3b0
    add hl, de
    ld [hl], $01
    ldh a, [$d9]
    ld hl, $c380
    add hl, de
    ld [hl], a
    ld c, a
    ld hl, $57a0
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $57a4
    add hl, bc
    ldh a, [$d8]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $57a8
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $57ac
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a
    pop bc
    and a

jr_007_57f4:
    ret


    nop
    db $fc
    ld [hl+], a
    ld b, b
    nop
    inc c
    ld [hl+], a
    ld h, b
    nop
    db $fc
    ld [hl+], a
    nop
    nop
    inc c
    ld [hl+], a
    jr nz, jr_007_5827

    ret nz

    jp nz, Jump_007_7e09

    rla
    rla
    rla
    and $f8
    ld e, a
    ld d, b
    ld hl, $57f5
    add hl, de
    ld c, $02
    jp label_3CE6


    ld a, b
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld a, d
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld a, h

jr_007_5827:
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld [hl], h
    ld [bc], a
    db $76
    ld [bc], a
    ld [hl], d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld a, [hl]
    ld [hl+], a
    ld a, h
    ld [hl+], a
    db $76
    ld [hl+], a
    ld [hl], h
    ld [hl+], a
    ldh a, [hFFF8]
    and $10
    jp nz, Jump_007_7ea4

    ld de, $581a
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_5857

    ld de, $582e

jr_007_5857:
    call label_3BC0
    ld hl, $c480
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_5874

    xor a
    ldh [$f1], a
    ldh a, [$ec]
    sub $0e
    ldh [$ec], a
    ld de, $594d
    call label_3BC0
    call label_3D8A

jr_007_5874:
    call Call_007_7d96
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_007_5891

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b

jr_007_5891:
    ldh a, [$f0]
    rst $00
    xor b
    ld e, b
    ld a, [de]
    ld e, c
    inc [hl]
    ld e, c
    ld d, c
    ld e, c
    sub a
    ld e, c
    xor h
    ld e, d
    dec h
    ld e, e
    ld l, c
    ld e, e
    reti


    ld e, e
    ldh a, [$5b]
    ld a, [wIsBowWowFollowingLink]
    cp $01
    jr nz, jr_007_58de

    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_58c9

    call Call_007_7e5d
    add $18
    cp $30
    jr nc, jr_007_58dd

    call Call_007_7e6d
    add $18
    cp $30
    jr nc, jr_007_58dd

jr_007_58c9:
    call IsEntityFrameCounterZero
    ld [hl], $10
    call IncrementEntityWalkingAttr
    ld [hl], $05
    ld a, $60

Call_007_58d5:
Jump_007_58d5:
    call label_2373
    ld a, $14
    ld [wDialogSFX], a

jr_007_58dd:
    ret


jr_007_58de:
    call Call_007_7cf0
    call Call_007_7d43
    jr nc, jr_007_58fa

    ld a, [wTradeSequenceItem]
    cp $04
    jr nz, jr_007_58f5

    ld a, $65
    call Call_007_58d5
    jp IncrementEntityWalkingAttr


jr_007_58f5:
    ld a, $61
    call Call_007_58d5

Call_007_58fa:
jr_007_58fa:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_007_5919

    call GetRandomByte
    and $01
    jr nz, jr_007_5919

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_007_5919:
    ret


    ld a, [wDialogState]
    and a
    ret nz

    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr nz, jr_007_592e

    call IsEntityFrameCounterZero
    ld [hl], $10
    ret


jr_007_592e:
    ld [hl], b
    ld a, $61
    jp Jump_007_58d5


    call IsEntityFrameCounterZero
    jr nz, jr_007_5948

    ld [hl], $80
    ld hl, $c480
    add hl, bc
    ld [hl], $80
    ld a, $01
    ldh [$f2], a
    call IncrementEntityWalkingAttr

jr_007_5948:
    ld a, $02
    ldh [$a1], a
    ret


    sbc d
    rla
    sbc h
    rla
    ld a, $03
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_007_596a

    ld a, $36
    ld [wWorldMusicTrack], a
    ldh [$b0], a
    call label_BFB
    ld [hl], $80
    jp IncrementEntityWalkingAttr


jr_007_596a:
    cp $10
    jr nz, jr_007_5973

    ld a, $62
    call Call_007_58d5

jr_007_5973:
    ld a, $02
    ldh [$a1], a
    ret


    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    jr jr_007_59a1

    jr z, @+$32

    jr c, jr_007_59c5

    ld c, b
    nop
    ld a, b
    jr z, jr_007_59e2

    ld b, b
    jr nc, @+$62

    nop
    nop
    add b
    add b
    nop
    add b
    nop
    db $10
    jr nc, @+$22

    ld a, $02
    ldh [$a1], a
    call Call_007_58fa
    call label_BFB

jr_007_59a1:
    jr nz, jr_007_59c8

    ld a, $02
    ldh [$f2], a
    ld a, [$d87b]
    or $10
    ld [$d87b], a
    ld a, $01
    ld [$db7f], a
    ld a, $63
    ld [wC168], a
    call Call_007_58d5
    call IncrementEntityWalkingAttr
    ld [hl], $05
    ld hl, $c3d0
    add hl, bc

jr_007_59c5:
    ld [hl], $06
    ret


jr_007_59c8:
    cp $01
    jr nz, jr_007_59d5

    ld a, $05
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a

jr_007_59d5:
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_007_5a2a

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $07

jr_007_59e2:
    jr z, jr_007_5a2a

    ld a, $ad
    call label_3B86
    jr c, jr_007_5a2a

    push bc
    call Call_007_733f
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld c, [hl]
    inc [hl]
    ld hl, $5978
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], a
    ld hl, $597f
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, de
    ld [hl], a
    ld hl, $5986
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $598d
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $07
    ld hl, $c300
    add hl, de
    ld [hl], $80
    pop bc

jr_007_5a2a:
    call label_BFB
    cp $40
    ret nc

    ldh a, [hFrameCounter]
    and $3f
    ret nz

    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $03
    ret nc

    ld e, a
    ld d, b
    inc [hl]
    ld hl, $5994
    add hl, de
    ld a, [hl]
    ldh [$cd], a
    ld a, $40
    ldh [$ce], a
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_5a5f

    push bc
    ld a, $db
    ld [$ddd8], a
    ld a, $07
    call label_91D
    pop bc

jr_007_5a5f:
    ld hl, wRequestDestinationHigh
    ld a, [wRequests]
    ld e, a
    add $0a
    ld [wRequests], a
    ld d, $00
    add hl, de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $1d
    ld [hl+], a
    ld [hl], b
    ld hl, $d725
    ld [hl], $db
    ld a, $87
    call label_B2F
    ld hl, $d735
    ld [hl], $db
    ld a, $87
    call label_B2F
    ld hl, $d745
    ld [hl], $db
    ld a, $87
    jp label_B2F


    call IsEntityFrameCounterZero
    jr nz, jr_007_5b19

    call IncrementEntityWalkingAttr
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jr c, jr_007_5ade

    call GetRandomByte
    and $0f
    add $10
    ld hl, $c320
    add hl, bc
    ld [hl], a
    ld e, $10
    and $01
    jr z, jr_007_5ad1

    ld e, $f0

jr_007_5ad1:
    ld hl, $c240
    add hl, bc
    ld [hl], e
    call Call_007_4005
    ld [hl], $f0
    jp Jump_007_5b08


jr_007_5ade:
    ld hl, $c320
    add hl, bc
    ld [hl], $18
    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld a, [$d154]
    ld e, a
    ld d, b
    ld hl, wEntity0PosX
    add hl, de
    ld a, [hl]
    ldh [hLinkPositionX], a
    ld hl, wEntitiesPosYTable
    add hl, de
    ld a, [hl]
    ldh [hLinkPositionY], a
    ld a, $14
    call label_3BAA
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a

Call_007_5b08:
Jump_007_5b08:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld e, $00
    and $80
    jr z, jr_007_5b14

    inc e

jr_007_5b14:
    ld hl, $c380
    add hl, bc
    ld [hl], e

jr_007_5b19:
    call Call_007_58fa
    call label_C00
    ret z

    ld a, $04
    jp label_3B0C


    call Call_007_7e0a
    ldh a, [$ef]
    cp $08
    jp c, Jump_007_7ea4

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jr nc, jr_007_5b3b

    call label_3B23

jr_007_5b3b:
    ldh a, [hFFE8]
    and a
    jr z, jr_007_5b64

    call IncrementEntityWalkingAttr
    ld [hl], $05
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jr c, jr_007_5b59

    call IsEntityFrameCounterZero
    ld [hl], $10
    call label_C00
    ld [hl], $10
    ret


jr_007_5b59:
    call IsEntityFrameCounterZero
    call GetRandomByte
    and $3f
    add $30
    ld [hl], a

jr_007_5b64:
    ld a, $03
    jp label_3B0C


    call IsEntityFrameCounterZero
    jr nz, jr_007_5bca

    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionX], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionY], a
    ld hl, $c300
    add hl, bc
    ld a, [wC168]
    or [hl]
    ld a, $10
    ld e, $10
    jr nz, jr_007_5b94

    ld a, $08
    ld e, $08

jr_007_5b94:
    push de
    call label_3BAA
    pop de
    ld hl, $c320
    add hl, bc
    ld [hl], e
    ld a, [wC168]
    and a
    jr z, jr_007_5bbe

    ldh a, [$d7]
    call Call_007_4005
    cpl
    inc a
    ld [hl], a
    ldh a, [$d8]
    ld hl, $c240
    add hl, bc
    cpl
    inc a
    ld [hl], a
    ldh a, [$ef]
    cp $90
    jr c, jr_007_5bbe

    call Call_007_7ea4

jr_007_5bbe:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call IncrementEntityWalkingAttr
    call Call_007_5b08

jr_007_5bca:
    call Call_007_4005
    ld a, [hl]
    and $80
    ld a, $02
    jr z, jr_007_5bd6

    ld a, $04

jr_007_5bd6:
    jp label_3B0C


    ldh a, [hFFE8]
    and a
    jr z, jr_007_5be8

    call IsEntityFrameCounterZero
    ld [hl], $08
    call IncrementEntityWalkingAttr
    dec [hl]
    dec [hl]

jr_007_5be8:
    ld a, $03
    call label_3B0C
    jp Jump_007_7e0a


    ret


    ld l, d
    nop
    ld l, d
    jr nz, jr_007_5c5e

    nop
    ld l, b
    jr nz, jr_007_5c0b

    pop af
    ld e, e
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    call label_3B39
    call Call_007_7e0a

jr_007_5c0b:
    call label_3B23
    ld hl, $c470
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_5c2a

    ld hl, $c480
    add hl, bc
    ld [hl], $10
    ldh a, [$ee]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ldh a, [$ef]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a

jr_007_5c2a:
    xor a
    call label_3B0C
    ldh a, [$f0]
    rst $00
    dec [hl]
    ld e, h
    ld a, c
    ld e, h
    call IsEntityFrameCounterZero
    jr nz, jr_007_5c58

    call Call_007_7e6d
    ld a, e
    cp $03
    jr z, jr_007_5c58

    call label_3D7F
    call IsEntityFrameCounterZero
    ld [hl], $25
    call Call_007_7e5d
    ld hl, $c380
    add hl, bc
    ld [hl], e
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ret


jr_007_5c58:
    call Call_007_4005
    ld a, [hl]
    sub $04

jr_007_5c5e:
    jr z, jr_007_5c67

    and $80
    jr z, jr_007_5c66

    inc [hl]
    inc [hl]

jr_007_5c66:
    dec [hl]

jr_007_5c67:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_5c76

    and $80
    jr z, jr_007_5c75

    inc [hl]
    inc [hl]

jr_007_5c75:
    dec [hl]

jr_007_5c76:
    ret


    ld bc, $cdff
    dec b
    inc c
    jr nz, jr_007_5c85

    ld [hl], $40
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_007_5c85:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_007_5ca0

    call Call_007_4005
    dec [hl]
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $5c77
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    add [hl]
    ld [hl], a

jr_007_5ca0:
    ld a, $01
    jp label_3B0C


Call_007_5ca5:
    ldh a, [$f1]
    inc a
    jr z, jr_007_5cf3

    push hl
    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, $c030
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_007_5cb8:
    ldh a, [$ec]
    add [hl]
    cp $7e
    jr c, jr_007_5cc0

    xor a

jr_007_5cc0:
    ld [de], a
    inc hl
    inc de
    push bc
    ld a, [wScreenShakeHorizontal]
    ld c, a
    ldh a, [$ee]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ldh a, [hFFF5]
    ld c, a
    ld a, [hl+]
    push af
    add c
    ld [de], a
    pop af
    cp $ff
    jr nz, jr_007_5cdf

    dec de
    xor a
    ld [de], a
    inc de

jr_007_5cdf:
    pop bc
    inc de
    ldh a, [$ed]
    xor [hl]
    inc hl
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5cb8

    ld a, [$c123]
    ld c, a
    ld a, $0a
    jp label_3DA0


jr_007_5cf3:
    ld a, [$c123]
    ld c, a
    ret


    nop
    nop
    ld c, h
    rlca
    nop
    ld [$274c], sp
    ldh a, [rP1]
    ld c, d
    rlca
    ldh a, [$08]
    ld c, d
    daa
    ldh [rP1], a
    ld c, d
    rlca
    ldh [$08], a
    ld c, d
    daa
    ret nc

    nop
    ld c, d
    rlca
    ret nc

    ld [$274a], sp
    ret nz

    nop
    ld c, b
    rlca
    ret nz

    ld [$2748], sp
    nop
    nop
    ld c, d
    rlca
    nop
    ld [$274a], sp
    ldh a, [rP1]
    ld c, d
    rlca
    ldh a, [$08]
    ld c, d
    daa
    ldh [rP1], a
    ld c, d
    rlca
    ldh [$08], a
    ld c, d
    daa
    ret nc

    nop
    ld c, b
    rlca
    ret nc

    ld [$2748], sp
    ret nz

    nop
    rst $38
    rlca
    ret nz

    ld [label_27F2.skip], sp
    nop
    nop
    ld c, d
    rlca
    nop
    ld [$274a], sp
    ldh a, [rP1]
    ld c, d
    rlca
    ldh a, [$08]
    ld c, d
    daa
    ldh [rP1], a
    ld c, b
    rlca
    ldh [$08], a
    ld c, b
    daa
    ret nc

    nop
    rst $38
    rlca
    ret nc

    ld [label_27F2.skip], sp
    ret nz

    nop
    rst $38
    rlca
    ret nz

    ld [label_27F2.skip], sp
    nop
    nop
    ld c, d
    rlca
    nop
    ld [$274a], sp
    ldh a, [rP1]
    ld c, b
    rlca
    ldh a, [$08]
    ld c, b
    daa
    ldh [rP1], a
    rst $38
    rlca
    ldh [$08], a
    rst $38
    daa
    ret nc

    nop
    rst $38
    rlca
    ret nc

    ld [label_27F2.skip], sp
    ret nz

    nop
    rst $38
    rlca
    ret nz

    ld [label_27F2.skip], sp
    nop
    nop
    ld c, b
    rlca
    nop
    ld [$2748], sp
    ldh a, [rP1]
    rst $38
    rlca
    ldh a, [$08]
    rst $38
    daa
    ldh [rP1], a
    rst $38
    rlca
    ldh [$08], a
    rst $38
    daa
    ret nc

    nop
    rst $38
    rlca
    ret nc

    ld [label_27F2.skip], sp
    ret nz

    nop
    rst $38
    rlca
    ret nz

    ld [label_27F2.skip], sp
    ldh a, [hLinkPositionY]
    ld e, a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub e
    jr c, jr_007_5dd0

    ld a, $01
    ld [$de00], a

jr_007_5dd0:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $02
    jp z, Jump_007_5fab

    and a
    jp nz, Jump_007_5f4d

    ldh a, [hFFF8]
    and $20
    jp nz, Jump_007_7ea4

    ld a, [wMapSlideTransitionState]
    and a
    jr nz, jr_007_5df5

    ld hl, $c3e0
    add hl, bc
    ldh a, [hMapIndex]
    cp [hl]
    jp nz, Jump_007_7ea4

jr_007_5df5:
    ldh a, [$f1]
    cp $05
    jr nc, jr_007_5e12

    rla
    rla
    and $fc
    sla a
    ld e, a
    sla a
    sla a
    add e
    ld e, a
    ld d, b

Jump_007_5e09:
    ld hl, $5cf8
    add hl, de
    ld c, $0a
    call Call_007_5ca5

jr_007_5e12:
    call label_C56
    call label_3B70
    call Call_007_7cf0
    ldh a, [$f0]
    rst $00
    ld a, [hl+]
    ld e, [hl]
    dec hl
    ld e, [hl]
    ld b, e
    ld e, [hl]
    push bc
    ld e, [hl]
    ld a, [c]
    ld e, [hl]
    ld de, $c95f
    call Call_007_5eea
    call IsEntityFrameCounterZero
    jr nz, jr_007_5e36

    jp IncrementEntityWalkingAttr


Call_007_5e36:
jr_007_5e36:
    ld e, $00
    and $04
    jr z, jr_007_5e3e

    ld e, $02

jr_007_5e3e:
    ld a, e
    ld [wScreenShakeHorizontal], a
    ret


    call Call_007_5eea
    ldh a, [hFrameCounter]
    call Call_007_5e36
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_007_5e67

    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $05
    jp z, Jump_007_5ea7

    call GetRandomByte
    and $03
    jr z, jr_007_5e67

    call Call_007_5f61

jr_007_5e67:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_007_5ea6

    ld a, $a7
    call label_3B86
    jr c, jr_007_5ea6

    call GetRandomByte
    and $07
    sub $04
    ld hl, $ffd8
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    call GetRandomByte
    and $1f
    sub $10
    ld hl, $ffd7
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $c340
    add hl, de
    ld [hl], $c2
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $10
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01

jr_007_5ea6:
    ret


Jump_007_5ea7:
    ld a, $00
    ld [wScreenShakeHorizontal], a
    ld a, [wDB62]
    inc a
    ld [wDB62], a
    cp $04
    jr c, jr_007_5ebf

    call IsEntityFrameCounterZero
    ld [hl], $20
    jp IncrementEntityWalkingAttr


jr_007_5ebf:
    call Call_007_6e7f
    jp Jump_007_7ea4


    call IsEntityFrameCounterZero
    jr nz, jr_007_5ede

    ld [hl], $20
    ld a, $08
    ld [wGameplayType], a
    xor a
    ld [wTransitionSequenceCounter], a
    ld [wC16C], a
    ld [wGameplaySubtype], a
    jp IncrementEntityWalkingAttr


jr_007_5ede:
    ld e, $00
    and $04
    jr z, jr_007_5ee6

    ld e, $02

jr_007_5ee6:
    ld a, e
    ld [wScreenShakeHorizontal], a

Call_007_5eea:
Jump_007_5eea:
    ld a, $02
    ldh [$a1], a
    ld [wC111], a
    ret


    xor a
    ld [wScreenShakeHorizontal], a
    call IsEntityFrameCounterZero
    jr nz, jr_007_5f06

    call Call_007_6e7f
    ld hl, wHasInstrument7
    set 2, [hl]
    jp Jump_007_7ea4


jr_007_5f06:
    jp Jump_007_5eea


    nop
    ld [bc], a
    inc b
    ld b, $06
    inc b
    ld [bc], a
    nop
    xor a
    ld [wScreenShakeVertical], a
    call IsEntityFrameCounterZero
    jr nz, jr_007_5f1d

    jp Jump_007_7ea4


jr_007_5f1d:
    push af
    and $07
    ld e, a
    ld d, b
    ld hl, $5f09
    add hl, de
    ld a, [hl]
    ld [wScreenShakeVertical], a
    pop af
    cp $20
    jr nc, jr_007_5f37

    and $03
    jr nz, jr_007_5f37

    call Call_007_5f61
    xor a

jr_007_5f37:
    cp $40
    jr c, jr_007_5f44

    and $07
    jr nz, jr_007_5f44

    ld hl, hFFF4
    ld [hl], $0c

jr_007_5f44:
    ret


    jr nc, @+$03

    jr nc, @+$23

    ld [hl-], a
    ld bc, $2132

Jump_007_5f4d:
    ld de, $5f45
    call label_3BC0
    call IsEntityFrameCounterZero
    jp z, Jump_007_7ea4

    cp $04
    ret nz

    ld a, $01
    jp label_3B0C


Call_007_5f61:
    ld a, $a7
    call label_3B86
    jr c, jr_007_5f9a

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ld hl, $c340
    add hl, de
    ld [hl], $d1
    ld hl, $c310
    add hl, de
    ld [hl], $70
    call GetRandomByte
    and $3f
    sub $20
    ld hl, $ffd7
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    call GetRandomByte
    and $3f
    sub $20
    ld hl, $ffd8
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a

jr_007_5f9a:
    ret


    ld d, $03
    ld d, $23
    jr jr_007_5fb1

    inc c
    ld [$f40c], sp
    inc c
    db $f4
    db $f4
    db $f4
    inc c
    inc c

Jump_007_5fab:
    ldh a, [$ec]
    add $08
    ldh [$ec], a

jr_007_5fb1:
    ld de, $5f9b
    call label_3C77
    call Call_007_7e0a
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ret z

    ld [hl], b
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, [hl]
    inc [hl]
    cp $04
    jp z, Jump_007_7ea4

    ld e, a
    ld d, b
    ld hl, $5f9f
    add hl, de
    ld a, [hl]
    ld hl, $c320
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $03
    ld e, a
    ld d, b
    ld hl, $5fa3
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $5fa7
    add hl, de

jr_007_5ff8:
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    ld a, e
    and $01
    jp label_3B0C


    ld c, [hl]
    nop
    ld c, [hl]
    jr nz, jr_007_5ff8

    ld [$07fe], a
    jr nz, jr_007_602a

    ld a, [wLinkMotionState]
    cp $05
    jr nz, jr_007_6019

    ld a, $10
    ld [$c5ae], a

jr_007_6019:
    ldh a, [hMapIndex]
    ld hl, $c3e0
    add hl, bc
    ld [hl], a
    ld hl, $c220
    add hl, bc
    ld [hl], b
    ld hl, $c230
    add hl, bc
    ld [hl], b

jr_007_602a:
    ld de, $6003
    call label_3BC0
    ld a, [wMapSlideTransitionState]
    and a
    ret nz

    ldh a, [hMapIndex]
    ld [wDB6F], a
    ldh a, [$ee]
    ld [wDB70], a
    ldh a, [$ef]
    ld [wDB71], a
    ld a, [wDialogState]
    and a
    ret nz

    ldh a, [$ea]
    cp $02
    ret z

    call label_C56
    call label_3B70
    call Call_007_7e0a
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    ldh [hFFE9], a
    and $80
    ldh [hFFE8], a
    jr z, jr_007_608f

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    sra a
    cpl
    cp $07
    jr c, jr_007_6082

    push af
    ld a, $17
    ldh [hFFF4], a
    pop af
    jr jr_007_6083

jr_007_6082:
    xor a

jr_007_6083:
    ld [hl], a
    ld hl, $c240
    add hl, bc
    sra [hl]
    call Call_007_4005
    sra [hl]

jr_007_608f:
    ld hl, $c410
    add hl, bc
    ld [hl], $03
    ld e, $03
    ld a, e
    ldh [$ed], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a
    ldh a, [$ef]
    add e
    ldh [$ef], a
    call label_3B23
    ldh a, [$ed]
    ld e, a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub e
    ld [hl], a
    ldh a, [$ef]
    sub e
    ldh [$ef], a
    ldh a, [$f0]
    rst $00
    pop bc
    ld h, b
    inc [hl]
    ld h, c
    dec [hl]
    ld h, c
    ldh a, [hFFE9]
    dec a
    and $80
    jr z, jr_007_60dd

    ld hl, $c250
    call Call_007_60d1
    ld hl, $c240

Call_007_60d1:
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_60dd

    and $80
    jr z, jr_007_60dc

    inc [hl]
    inc [hl]

jr_007_60dc:
    dec [hl]

jr_007_60dd:
    call label_3B5A
    jr nc, jr_007_6133

    ld a, [$c19b]
    and a
    jr nz, jr_007_6133

    ld a, [wAButtonSlot]
    cp $03
    jr nz, jr_007_60f7

    ldh a, [hFFCC]
    and $20
    jr nz, jr_007_6104

    jr jr_007_6133

jr_007_60f7:
    ld a, [wBButtonSlot]
    cp $03
    jr nz, jr_007_6133

    ldh a, [hFFCC]
    and $10
    jr z, jr_007_6133

jr_007_6104:
    ld a, [$c3cf]
    and a
    jr nz, jr_007_6133

    inc a
    ld [$c3cf], a
    ldh a, [$ea]
    cp $07
    jr z, jr_007_6133

    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $07
    ld hl, $c490
    add hl, bc
    ld [hl], b
    ldh a, [hFF9E]
    ld [wC15D], a
    call IsEntityFrameCounterZero
    ld [hl], $02
    ld hl, hSFX
    ld [hl], $02

jr_007_6133:
    ret


    ret


    ldh a, [hFFE8]
    and a
    jr nz, jr_007_6159

    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6164

Call_007_6142:
    ld a, $07
    ldh [$f2], a
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    sra a
    ld [hl], a
    call Call_007_4005
    ld a, [hl]
    cpl
    inc a
    sra a
    ld [hl], a

jr_007_6159:
    ld hl, $c5d0
    add hl, bc
    ld [hl], $ff
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_007_6164:
    call Call_007_7d96
    ld a, $0b
    ld [$c19e], a
    call label_3B7B
    ld e, $0f
    ld d, b

jr_007_6172:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_007_6188

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $a7
    jr nz, jr_007_6188

    push de
    call Call_007_618f
    pop de

jr_007_6188:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_007_6172

    ret


Call_007_618f:
    call IsEntityFrameCounterZero
    jr nz, jr_007_61cd

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$ee]
    sub [hl]
    add $10
    cp $20
    jr nc, jr_007_61cd

    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$ec]
    sub [hl]
    add $18
    cp $28
    jr nc, jr_007_61cd

    call Call_007_6142
    ld a, $25
    ldh [hFFF4], a
    ld a, $0b
    ldh [$f2], a
    call IsEntityFrameCounterZero
    ld [hl], $10
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_007_61cd

    inc [hl]
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $50

jr_007_61cd:
    ret


    ld d, b
    rlca
    ld d, b
    daa
    ld de, $61ce
    call label_3BC0
    call Call_007_7d96
    call Call_007_639e
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ld e, a
    and a
    jr nz, jr_007_61fa

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6248

    call Call_007_631c
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $f0
    ld e, $10

jr_007_61fa:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_007_620e

    call Call_007_4005
    ld a, [hl]
    sub e
    jr z, jr_007_620e

    and $80
    jr z, jr_007_620d

    inc [hl]
    inc [hl]

jr_007_620d:
    dec [hl]

jr_007_620e:
    ld hl, $c350
    add hl, bc
    ld [hl], $02
    call Call_007_4005
    ld a, [hl]
    push hl
    push af
    ld [hl], e
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    push hl
    push af
    call label_3B23
    pop af
    pop hl
    ld [hl], a
    pop af
    pop hl
    ld [hl], a
    ld hl, $c350
    add hl, bc
    ld [hl], $30
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6246

    call Call_007_4005
    ld [hl], b
    call Call_007_631c
    ld hl, $c250
    add hl, de
    ld [hl], $00

jr_007_6246:
    jr jr_007_625f

jr_007_6248:
    call Call_007_4005
    ld a, [hl]
    and a
    jr z, jr_007_6256

    and $80
    jr z, jr_007_6255

    inc [hl]
    inc [hl]

jr_007_6255:
    dec [hl]

jr_007_6256:
    call Call_007_631c
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $00

jr_007_625f:
    ldh a, [$ef]
    and $0f
    cp $00
    jr nz, jr_007_62d1

    ldh a, [$ef]
    sub $10
    ldh [$cd], a
    and $f0
    ld e, a
    ldh a, [$ee]
    sub $08
    ldh [$ce], a
    swap a
    and $0f
    or e
    ld e, a
    ld d, b
    call Call_007_4005
    ld a, [hl]
    and a
    jr z, jr_007_62d1

    and $80
    jr nz, jr_007_62d2

    ld hl, wTileMap
    add hl, de
    ld [hl], $4d
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_62a2

    push bc
    ld a, $4d
    ld [$ddd8], a
    ld a, $07
    call label_91D
    pop bc

jr_007_62a2:
    ld hl, wRequestDestinationHigh
    ld a, [wRequests]
    ld e, a
    add $0a
    ld [wRequests], a
    ld d, $00
    add hl, de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $44
    ld [hl+], a
    ld a, $54
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $45
    ld [hl+], a
    ld a, $55
    ld [hl+], a
    ld [hl], b

jr_007_62d1:
    ret


jr_007_62d2:
    ld hl, wTileMap
    add hl, de
    ld [hl], $04
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_62ec

    push bc
    ld a, $04
    ld [$ddd8], a
    ld a, $07
    call label_91D
    pop bc

jr_007_62ec:
    ld hl, wRequestDestinationHigh
    ld a, [wRequests]
    ld e, a
    add $0a
    ld [wRequests], a
    ld d, $00
    add hl, de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld [hl], b
    ret


Call_007_631c:
    ld hl, $c460
    add hl, bc
    ld a, [hl]
    xor $01
    ldh [$d7], a
    ld e, b
    ld d, b

jr_007_6327:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_007_6341

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $a6
    jr nz, jr_007_6341

    ld hl, $c460
    add hl, de
    ldh a, [$d7]
    cp [hl]
    jr z, jr_007_6347

jr_007_6341:
    inc e
    ld a, e
    cp $10
    jr nz, jr_007_6327

jr_007_6347:
    ret


    nop
    nop
    ld d, b
    rlca
    nop
    ld [$0752], sp
    nop
    db $10
    ld d, d
    daa
    nop
    jr @+$52

    daa
    ld hl, $6348
    ld c, $04
    call label_3CE6
    call Call_007_7d96
    call IsEntityFrameCounterZero
    ld e, a
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $03
    or e
    jr nz, jr_007_639e

    ldh a, [$eb]
    cp $a4
    jp z, $63fb

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $63f7
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $63f9
    add hl, de
    cp [hl]
    jr nz, jr_007_639e

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $6a

Call_007_639e:
Jump_007_639e:
jr_007_639e:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], b
    ldh a, [$ee]
    push af
    call Call_007_7e0a
    pop af
    ld e, a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub e
    ldh [hFFE8], a
    call label_3B23
    call label_3B5A
    jr nc, jr_007_63f6

    ldh a, [$9b]
    and $80
    jr nz, jr_007_63f6

    call Call_007_7e6d
    add $08
    bit 7, a
    jr z, jr_007_63f6

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub $10
    ldh [hLinkPositionY], a
    ldh a, [hFF9A]
    push af
    ldh a, [hFFE8]
    ldh [hFF9A], a
    ld hl, hLinkPositionX
    add [hl]
    ld [hl], a
    push bc
    call label_3E19
    pop bc
    pop af
    ldh [hFF9A], a
    ld a, $02
    ldh [$9b], a
    ld a, $01
    ld [$c147], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], $10

jr_007_63f6:
    ret


    ld bc, $06ff
    ld a, [$b021]
    jp nz, Jump_007_5e09

    ld d, b
    ld hl, $63f7
    add hl, de
    ld a, [hl]
    call Call_007_4005
    add [hl]
    ld [hl], a
    ld hl, $63f9
    add hl, de
    cp [hl]
    jr nz, jr_007_641f

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $6a

jr_007_641f:
    jp Jump_007_639e


    nop
    nop
    ld d, b
    rlca
    nop
    ld [$0752], sp
    nop
    db $10
    ld d, d
    daa
    nop
    jr jr_007_6481

    daa
    call label_C00
    jr z, jr_007_643b

    ld a, $04
    ldh [hFFF5], a

jr_007_643b:
    ld hl, $6422
    ld c, $04
    call label_3CE6
    call Call_007_7d96
    call Call_007_639e
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6489

    ld e, $04
    ldh a, [hMapIndex]
    cp $3b
    jr z, jr_007_6466

    call label_C00
    ld [hl], $08
    ld a, [$c3cf]
    and a
    jr z, jr_007_6489

    ld e, $04

jr_007_6466:
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_007_6478

    inc [hl]
    cp $03
    jr nz, jr_007_6478

    ld a, $11
    ldh [hFFF4], a

jr_007_6478:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_007_6488

    call Call_007_4005

jr_007_6481:
    ld a, [hl]
    sub e
    and $80
    jr z, jr_007_6488

    inc [hl]

jr_007_6488:
    ret


jr_007_6489:
    call Call_007_4005
    ld [hl], b
    ld hl, $c440
    add hl, bc
    ld [hl], b
    ret


    sbc b
    nop
    ld d, e
    ld a, a
    sbc b
    jr nz, jr_007_64ed

    ld a, a
    sbc b
    ld b, b
    ld d, e
    ld a, a
    sbc b
    ld h, b
    ld d, e
    ld a, a
    sbc b
    add b
    ld d, e
    ld a, a
    sbc b
    and b
    ld d, e
    ld a, a
    sbc b
    ret nz

    ld d, e
    ld a, a
    sbc b
    ldh [rHDMA3], a
    ld a, a
    sbc c
    nop
    ld d, e
    ld a, a
    sbc c
    jr nz, jr_007_650d

    ld a, a
    sbc c
    ld b, b
    ld d, e
    ld a, a
    sbc c
    ld h, b
    ld d, e
    ld a, a
    sbc c
    add b
    ld d, e
    ld a, a
    sbc c
    and b
    ld d, e
    ld a, a
    sbc c
    ret nz

    ld d, e
    ld a, a
    sbc c
    ldh [rHDMA3], a
    ld a, a
    sbc d
    nop
    ld d, e
    ld a, a
    sbc d
    jr nz, @+$55

    ld a, a
    sbc b
    nop
    ld d, e
    ld bc, label_2098
    ld d, e
    ld bc, $4098
    ld d, e
    ld bc, $6098
    ld d, e
    ld bc, $8098

jr_007_64ed:
    ld d, e
    ld bc, $a098
    ld d, e
    ld bc, $c098
    ld d, e
    ld bc, $e098
    ld d, e
    ld bc, $0099
    ld d, e
    ld bc, $2099
    ld d, e
    ld bc, $4099
    ld d, e
    ld bc, $6099
    ld d, e
    ld bc, $8099

jr_007_650d:
    ld d, e
    ld bc, $a099
    ld d, e
    ld bc, $c099
    ld d, e
    ld bc, $e099
    ld d, e
    ld bc, $009a
    ld d, e
    ld bc, $209a
    ld d, e
    ld bc, $e0af
    sub [hl]
    ldh [hBaseScrollY], a
    ld [$c12f], a
    ld [$c12e], a
    ld hl, wLCDControl
    res 5, [hl]
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $09
    jr z, jr_007_659d

    ld a, [wRequests]
    ld e, a
    add $08
    ld [wRequests], a
    ld d, b
    push bc
    ld hl, $c3d0
    add hl, bc
    ld c, [hl]
    sla c
    sla c
    sla c
    ld hl, $6493
    add hl, bc
    ld c, l
    ld b, h
    ld hl, wRequestDestinationHigh
    add hl, de
    ld e, $08

jr_007_655e:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_007_655e

    ld [hl], $00
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_6596

    pop bc
    ld a, [$dc90]
    ld e, a
    add $08
    ld [$dc90], a
    ld d, b
    push bc
    ld hl, $c3d0
    add hl, bc
    ld c, [hl]
    sla c
    sla c
    sla c
    ld hl, $6493
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $dc91
    add hl, de
    ld e, $08

jr_007_658e:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_007_658e

    ld [hl], $00

jr_007_6596:
    pop bc
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ret


jr_007_659d:
    call IsEntityFrameCounterZero
    ret nz

    ldh a, [hMapTileset]
    add $50
    call label_2373
    ld a, $e4
    ld [wBGPalette], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_65cb

    ld de, $dc18
    ld hl, $ff70
    di

jr_007_65b9:
    ld [hl], $02
    ld a, [de]
    ld [hl], $00
    ld [de], a
    inc de
    ld a, e
    and $07
    jr nz, jr_007_65b9

    ld a, $01
    ld [$ddd1], a
    ei

jr_007_65cb:
    jp Jump_007_7ea4


    ld c, d
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, h
    ld [hl+], a
    ld c, d
    ld [hl+], a
    ld c, [hl]
    ld [bc], a
    ld c, [hl]
    ld [hl+], a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jp nz, $6523

    ld de, $65ce
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    ldh a, [$f9]
    and a
    jp nz, Jump_007_6693

    ldh a, [$f0]
    rst $00
    ld b, $66
    ld c, c
    ld h, [hl]
    ld l, e
    ld h, [hl]
    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$08
    call label_3B70
    call Call_007_66f2
    call IsEntityFrameCounterZero
    jr nz, jr_007_6647

    call GetRandomByte
    and $3f
    add $30
    ld [hl], a
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $04
    jr nz, jr_007_662a

    ld [hl], b
    call Call_007_7e7d
    jr jr_007_6630

jr_007_662a:
    call GetRandomByte
    and $03
    ld e, a

jr_007_6630:
    ld d, b
    ld hl, $65fe
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $6602
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    call IncrementEntityWalkingAttr

jr_007_6647:
    jr jr_007_6660

    call label_3B70
    call Call_007_66f2
    call IsEntityFrameCounterZero
    jr nz, jr_007_665a

    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_665a:
    call Call_007_7e0a
    call label_3B23

Jump_007_6660:
jr_007_6660:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


jr_007_666b:
    ld hl, $c340
    add hl, bc
    ld [hl], $c2
    call IsEntityFrameCounterZero
    jr nz, jr_007_668e

    ld hl, $c4e0
    add hl, bc
    ld [hl], $2d
    ld hl, $c480
    add hl, bc
    ld [hl], $0c
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $01
    ld hl, $c340
    add hl, bc
    ld [hl], $04

jr_007_668e:
    ld a, $02
    jp label_3B0C


Jump_007_6693:
    ldh a, [$f0]
    cp $02
    jr z, jr_007_666b

    call label_3B70
    call Call_007_66fe
    ldh a, [$f0]
    rst $00
    and [hl]
    ld h, [hl]
    cp b
    ld h, [hl]
    call Call_007_7e5d
    ld a, $08
    dec e
    jr nz, jr_007_66b0

    ld a, $f8

jr_007_66b0:
    ld hl, $c240
    add hl, bc
    ld [hl], a
    jp IncrementEntityWalkingAttr


    call Call_007_7e0a
    call Call_007_4005
    inc [hl]
    inc [hl]
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $03
    jr z, jr_007_66d4

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_007_66d4:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $08
    jr z, jr_007_66ee

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    and $f0
    add $03
    ld [hl], a
    call Call_007_4005
    ld [hl], b
    jp Jump_007_6660


jr_007_66ee:
    xor a
    jp label_3B0C


Call_007_66f2:
    ldh a, [$a2]
    and a
    jp z, label_3B5A

    cp $08
    jp c, label_3B5A

    ret


Call_007_66fe:
    jp label_3B5A


    ld b, b
    ld [bc], a
    ld b, b
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld b, d
    ld [hl+], a
    ld de, $6701
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    call label_3B39
    call Call_007_7e0a
    call Call_007_7e43
    call label_3B23
    ld hl, $c350
    add hl, bc
    set 7, [hl]
    ld hl, $c430
    add hl, bc
    set 6, [hl]
    ldh a, [$f0]
    rst $00
    ld [hl], $67
    sub b
    ld h, a
    rst $10
    ld h, a
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6747

    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_6753

    dec [hl]
    jr jr_007_6753

jr_007_6747:
    ld hl, $c350
    add hl, bc
    res 7, [hl]
    ld hl, $c430
    add hl, bc
    res 6, [hl]

jr_007_6753:
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_6776

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6768

    and $80
    jr z, jr_007_6767

    inc [hl]
    inc [hl]

jr_007_6767:
    dec [hl]

jr_007_6768:
    call Call_007_4005
    ld a, [hl]
    and a
    jr z, jr_007_6776

    and $80
    jr z, jr_007_6775

    inc [hl]
    inc [hl]

jr_007_6775:
    dec [hl]

jr_007_6776:
    call label_BFB
    jr nz, jr_007_677e

    call IncrementEntityWalkingAttr

jr_007_677e:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_678d

    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_007_678d

    dec [hl]

jr_007_678d:
    jp Jump_007_67ae


    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $08
    jr c, jr_007_67a7

    call label_BFB
    call GetRandomByte
    and $1f
    add $80
    ld [hl], a
    jp IncrementEntityWalkingAttr


jr_007_67a7:
    ldh a, [hFrameCounter]
    and $0f
    jr nz, jr_007_67ae

    inc [hl]

Call_007_67ae:
Jump_007_67ae:
jr_007_67ae:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld hl, $c3d0
    add hl, bc
    add [hl]
    ld [hl], a
    rra
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


    nop
    dec b
    ld a, [bc]
    dec c
    ld c, $0d
    ld a, [bc]
    dec b
    nop
    ei
    or $f3
    ld a, [c]
    di
    or $fb
    nop
    dec b
    ld a, [bc]
    dec c
    call Call_007_67ae
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    cp $10
    jr z, jr_007_67eb

    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_67ea

    inc [hl]

jr_007_67ea:
    ret


jr_007_67eb:
    call label_BFB
    jr nz, jr_007_67f6

    ld [hl], $60
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_67f6:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $18
    jr c, jr_007_683d

    ld [hl], b
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld hl, $c440
    add hl, bc
    add [hl]
    and $0f
    ld [hl], a
    ld hl, $c440
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $67c3
    add hl, de
    ld a, [hl]
    sra a
    call Call_007_4005
    ld [hl], a
    ld hl, $67c7
    add hl, de
    ld a, [hl]
    sra a
    ld hl, $c240
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $07
    jr nz, jr_007_683d

    call GetRandomByte
    and $02
    dec a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a

jr_007_683d:
    ret


    ld b, h
    inc bc
    ld b, [hl]
    inc bc
    ld b, h
    inc bc
    ld c, b
    inc bc
    ld b, [hl]
    inc hl
    ld b, h
    inc hl
    ld c, b
    inc hl
    ld b, h
    inc hl
    ld hl, $c380
    add hl, bc
    ldh a, [$f1]
    add [hl]
    ldh [$f1], a
    ld de, $683e
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    call label_3B39
    call Call_007_7e0a
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6882

    call IncrementEntityWalkingAttr
    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $08
    call label_C00
    ld [hl], $20

jr_007_6882:
    ldh a, [$f0]
    rst $00
    sub a
    ld l, b
    ret c

    ld l, b
    add hl, hl
    ld l, c
    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    rst $38
    rst $38
    call IsEntityFrameCounterZero
    jr nz, jr_007_68d0

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    call GetRandomByte
    and $1f
    add $30
    ld [hl], a
    and $03
    ld e, a

Call_007_68ad:
    ld d, b
    ld hl, $688b
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $688f
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    ld hl, $6893
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_007_68cf

    ld hl, $c380
    add hl, bc
    ld [hl], a

jr_007_68cf:
    ret


jr_007_68d0:
    call label_3D7F
    call Call_007_68f0
    jr jr_007_68e6

    call IsEntityFrameCounterZero
    jr nz, jr_007_68e3

    ld [hl], $18
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_68e3:
    call Call_007_68f0

jr_007_68e6:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


Call_007_68f0:
    call label_C00
    jr nz, jr_007_6919

    call Call_007_7e5d
    add $08
    cp $10
    jr nc, jr_007_691a

    call Call_007_7e6d

jr_007_6901:
    call Call_007_68ad
    ld hl, $c240
    add hl, bc
    sla [hl]
    call Call_007_4005
    sla [hl]
    call IncrementEntityWalkingAttr
    ld [hl], $02
    call IsEntityFrameCounterZero
    ld [hl], $30

jr_007_6919:
    ret


jr_007_691a:
    call Call_007_7e6d
    add $08
    cp $10
    jr nc, jr_007_6928

    call Call_007_7e5d
    jr jr_007_6901

jr_007_6928:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_6939

    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], b
    call label_C00
    ld [hl], $40

jr_007_6939:
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    jp label_3B0C


    ld a, [hl-]
    push de
    sub $d7
    ld a, [hl-]
    ld a, [hl-]
    call $cee1
    ld a, [hl-]
    inc bc
    add hl, bc
    inc bc
    add hl, bc
    add $1b
    dec de
    inc bc
    inc bc
    add hl, bc
    ld c, $1b
    dec de
    dec de
    dec de
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    nop
    ld [$1810], sp
    jr nz, jr_007_698e

    jr nc, @+$3a

    ld b, b
    ld c, b

Jump_007_696a:
    call Call_007_7d96
    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    ldh a, [$f0]
    rst $00
    ld a, a
    ld l, c
    adc d
    ld l, c
    sub [hl]
    ld l, c
    and d
    ld l, c
    call Call_007_4000
    call IsEntityFrameCounterZero
    ld [hl], $28
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    ret nz

jr_007_698e:
    ld a, $4c
    ld [wWorldMusicTrack], a
    jp IncrementEntityWalkingAttr


    ld a, $1d
    ldh [hFFF4], a
    call IsEntityFrameCounterZero
    ld [hl], $80
    jp IncrementEntityWalkingAttr


    ldh a, [hFrameCounter]
    ld e, $00
    and $08
    jr z, jr_007_69ac

    ld e, $02

jr_007_69ac:
    ld a, e
    ld [wScreenShakeHorizontal], a
    call IsEntityFrameCounterZero
    ret nz

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld e, a
    inc a
    ld [hl], a
    ldh [hFFE8], a
    ld a, e
    and $1f
    jp nz, Jump_007_69d0

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $0a
    jp z, Jump_007_6a34

    inc a
    ld [hl], a

Jump_007_69d0:
    ld hl, $c3d0
    add hl, bc
    push hl
    ld a, [hl]
    ld e, a
    ld d, b
    ld hl, $695f
    add hl, de
    ld a, [hl]
    ldh [$cd], a
    ld a, $20
    ldh [$ce], a
    call label_2887
    pop hl
    ld d, h
    ld e, l
    ld hl, $de01
    ld a, $1a
    ld [hl+], a
    ld a, $71
    ld [hl+], a
    ld a, $11
    ld [hl+], a
    ld a, $07
    ld [hl], a
    call label_BD7
    push bc
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    dec a
    rra
    and $07
    push af
    ld e, a
    ld d, b
    ld hl, $695b
    add hl, de
    ld e, [hl]
    ld hl, wTileMap
    add hl, de
    ld c, l
    ld b, h
    pop af
    ld e, a
    sla a
    sla a
    add e
    ld e, a
    ld d, $00
    ld hl, $6942
    add hl, de
    ld e, $05

jr_007_6a23:
    ld a, [hl+]
    ld [bc], a
    push hl
    ld h, b
    ld l, c
    ld a, $87
    call label_B2F
    pop hl
    inc bc
    dec e
    jr nz, jr_007_6a23

    pop bc
    ret


Jump_007_6a34:
    xor a
    ld [wScreenShakeHorizontal], a
    ld [wC167], a
    call label_27DD
    jp Jump_007_7ea4


    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_007_696a

    and a
    jr nz, jr_007_6a52

    inc [hl]
    call Call_007_6ed0

jr_007_6a52:
    call Call_007_6fb1
    ldh a, [$ea]
    cp $05
    jp nz, Jump_007_7eaa

    call Call_007_7d96
    call label_394D
    call label_3EE8
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $16
    jr nz, jr_007_6a89

    ldh a, [$f0]
    cp $09
    jr nc, jr_007_6a84

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b
    call IncrementEntityWalkingAttr
    ld a, $09
    ld [hl], a
    ldh [$f0], a
    jr jr_007_6a89

jr_007_6a84:
    ld hl, $c3d0
    add hl, bc
    inc [hl]

jr_007_6a89:
    call Call_007_7dc3
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_007_6aa6

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b

jr_007_6aa6:
    ldh a, [$f0]
    cp $09
    jr nc, jr_007_6ac0

    call label_3B65
    ld hl, $c410
    add hl, bc
    ld a, [$c13e]
    or [hl]
    and a
    jr nz, jr_007_6ac0

    call label_3B5A
    call label_3B70

jr_007_6ac0:
    ldh a, [$f0]
    rst $00
    rst $18
    ld l, d
    push af
    ld l, d
    ld d, $6b
    ld l, b
    ld l, e
    ret z

    ld l, e
    db $f4
    ld l, e
    add hl, sp
    ld l, h
    jr jr_007_6b40

    ld e, a
    ld l, l
    ld a, a
    ld l, l
    sbc a
    ld l, l
    reti


    ld l, l
    or $6d
    ld e, b
    ld l, [hl]
    ld hl, $c320
    add hl, bc
    ld [hl], b
    call IsEntityFrameCounterZero
    jr nz, jr_007_6af4

    ld [hl], $30
    call IncrementEntityWalkingAttr
    ld hl, $c310
    add hl, bc
    ld [hl], $6f

jr_007_6af4:
    ret


    call IsEntityFrameCounterZero
    jr z, jr_007_6b08

    cp $01
    jr nz, jr_007_6b02

    ld a, $08
    ldh [$f2], a

jr_007_6b02:
    ld hl, $c320
    add hl, bc
    ld [hl], b
    ret


jr_007_6b08:
    ldh a, [hFFE8]
    and a
    jr z, jr_007_6b15

    call IsEntityFrameCounterZero
    ld [hl], $40
    call IncrementEntityWalkingAttr

Jump_007_6b15:
jr_007_6b15:
    ret


    call IsEntityFrameCounterZero
    cp $01
    jr nz, jr_007_6b33

    ld e, $12
    ldh a, [hMapIndex]
    cp $92
    jr z, jr_007_6b2f

    cp $84
    jr z, jr_007_6b2f

    cp $80
    jr nz, jr_007_6b33

    ld e, $14

jr_007_6b2f:
    ld a, e
    call label_2373

jr_007_6b33:
    call IsEntityFrameCounterZero
    jr nz, jr_007_6b45

    ld [hl], $a0
    ldh a, [hMapIndex]
    cp $95
    jr z, jr_007_6b42

jr_007_6b40:
    ld [hl], $20

jr_007_6b42:
    jp IncrementEntityWalkingAttr


jr_007_6b45:
    ld hl, $d20e
    ld [hl], $f0
    ld hl, $d20b
    ld [hl], $f8
    ld hl, $d20d
    ld [hl], $f0
    cp $20
    jr c, jr_007_6b67

    ld hl, $d20e
    ld [hl], $f2
    ld hl, $d20b
    ld [hl], $fa
    ld hl, $d20d
    ld [hl], $f2

jr_007_6b67:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_6b72

    ld [hl], $20
    jp IncrementEntityWalkingAttr


jr_007_6b72:
    and $3f
    jr nz, jr_007_6b76

jr_007_6b76:
    call IsEntityFrameCounterZero
    and $40
    jr z, jr_007_6ba3

Call_007_6b7d:
    call Call_007_6ef0
    ld hl, $d208
    ld [hl], $01
    ld hl, $d209
    ld [hl], b
    ld hl, $d20a
    ld [hl], $f0
    ld hl, $d20b
    ld [hl], $f8
    ld hl, $d20d
    ld [hl], $f3
    ld hl, $d20c
    ld [hl], $10
    ld hl, $d207
    ld [hl], $00
    ret


Call_007_6ba3:
Jump_007_6ba3:
jr_007_6ba3:
    call Call_007_6ef0
    ld hl, $d208
    ld [hl], b
    ld hl, $d209
    ld [hl], b
    ld hl, $d20a
    ld [hl], $f8
    ld hl, $d20b
    ld [hl], $f8
    ld hl, $d20d
    ld [hl], $f0
    ld hl, $d20c
    ld [hl], $10
    ld hl, $d207
    ld [hl], $00
    ret


    call Call_007_6ea2
    call IsEntityFrameCounterZero
    ret nz

    call GetRandomByte
    and $1f
    add $30
    ld [hl], a
    ld a, $08
    call label_3BAA
    call IncrementEntityWalkingAttr

Jump_007_6bdf:
    call Call_007_7e5d
    ld hl, $c380
    add hl, bc
    ld [hl], e

Call_007_6be7:
    call Call_007_6b7d
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    jp Jump_007_6ba3


    call Call_007_6ea2
    call Call_007_7e5d
    add $20
    cp $40
    jr nc, jr_007_6c14

    call Call_007_7e6d
    add $1c
    cp $38
    jr nc, jr_007_6c14

    call IncrementEntityWalkingAttr
    ld [hl], $06
    call IsEntityFrameCounterZero
    ld [hl], $30
    ret


jr_007_6c14:
    call IsEntityFrameCounterZero
    jr nz, jr_007_6c27

    call GetRandomByte
    and $0f
    add $10
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], $04
    ret


jr_007_6c27:
    and $0f
    jr nz, jr_007_6c33

    ld a, [$d209]
    xor $01
    ld [$d209], a

Call_007_6c33:
Jump_007_6c33:
jr_007_6c33:
    call Call_007_7e0a
    jp label_3B23


    call IsEntityFrameCounterZero
    jr nz, jr_007_6c55

Call_007_6c3e:
Jump_007_6c3e:
    call IsEntityFrameCounterZero
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], $04
    ld hl, $c350
    add hl, bc
    set 7, [hl]
    ld hl, $c430
    add hl, bc
    res 6, [hl]
    ret


jr_007_6c55:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_6cb8

    call IsEntityFrameCounterZero
    cp $18
    jr c, jr_007_6c77

    call Call_007_6ba3
    ld a, $08
    ld [$d20c], a
    ld a, $e0
    ld [$d20d], a
    ld a, $01
    ld [$d207], a
    ret


jr_007_6c77:
    cp $10
    jr c, jr_007_6c9e

    cp $17
    jr nz, jr_007_6c89

    ld a, $27
    ldh [hFFF4], a
    ld hl, $c300
    add hl, bc
    ld [hl], $10

jr_007_6c89:
    ld a, $ff
    ld [$d207], a
    ld a, $f0
    ld [$d20a], a
    ld a, $f4
    ld [$d20b], a
    ld a, $01
    ld [$d208], a
    ret


jr_007_6c9e:
    ld a, $03
    ld [$d207], a
    ld a, $f8
    ld [$d20c], a
    ld a, $08
    ld [$d20d], a
    ld a, $f0
    ld [$d20a], a
    ld a, $f0
    ld [$d20b], a
    ret


jr_007_6cb8:
    call IsEntityFrameCounterZero
    cp $18
    jr c, jr_007_6cd7

    call Call_007_6b7d
    ld a, $01
    ld [$d209], a
    ld a, $f8
    ld [$d20c], a
    ld a, $e8
    ld [$d20d], a
    ld a, $00
    ld [$d207], a
    ret


jr_007_6cd7:
    cp $10
    jr c, jr_007_6cfe

    cp $17
    jr nz, jr_007_6ce9

    ld a, $27
    ldh [hFFF4], a
    ld hl, $c300
    add hl, bc
    ld [hl], $10

jr_007_6ce9:
    ld a, $ff
    ld [$d207], a
    ld a, $f0
    ld [$d20a], a
    ld a, $f0
    ld [$d20b], a
    ld a, $00
    ld [$d208], a
    ret


jr_007_6cfe:
    ld a, $02
    ld [$d207], a
    ld a, $10
    ld [$d20c], a
    ld a, $08
    ld [$d20d], a
    ld a, $f0
    ld [$d20a], a
    ld a, $ec
    ld [$d20b], a
    ret


    call Call_007_6be7
    call IsEntityFrameCounterZero
    jr nz, jr_007_6d46

    call IncrementEntityWalkingAttr
    call Call_007_733f
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld hl, $c320
    add hl, bc
    ld [hl], $30
    and a
    jr nz, jr_007_6d3b

    ld [hl], $28
    ld a, $18
    jp label_3BAA


jr_007_6d3b:
    ld a, $08
    call label_3BAA
    call Call_007_4005
    ld [hl], $f0
    ret


Jump_007_6d46:
jr_007_6d46:
    ld a, [$d20e]
    add $02
    ld [$d20e], a
    ld a, [$d20b]
    add $02
    ld [$d20b], a
    ld a, [$d20d]
    add $02
    ld [$d20d], a
    ret


    call IsEntityFrameCounterZero
    jr z, jr_007_6d70

    dec a
    jr nz, jr_007_6d6a

    call Call_007_6c3e

jr_007_6d6a:
    call Call_007_6be7
    jp Jump_007_6d46


jr_007_6d70:
    call Call_007_6c33
    ldh a, [hFFE8]
    and a
    ret z

    call IsEntityFrameCounterZero
    ld [hl], $10
    jp Jump_007_6b15


    ldh a, [hFFE8]
    and a
    jr z, jr_007_6d9c

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $20
    ld hl, $c350
    add hl, bc
    res 7, [hl]
    ld hl, $c430
    add hl, bc
    set 6, [hl]
    ld a, $28
    ldh [$f2], a

jr_007_6d9c:
    jp Jump_007_6c33


    call IsEntityFrameCounterZero
    jr nz, jr_007_6da9

    ld [hl], $c0
    jp IncrementEntityWalkingAttr


jr_007_6da9:
    ld hl, $d20b
    ld a, [hl]
    sub $03
    jr z, jr_007_6db8

    bit 7, a
    jr z, jr_007_6db7

    inc [hl]
    inc [hl]

jr_007_6db7:
    dec [hl]

jr_007_6db8:
    ld hl, $d20d
    ld a, [hl]
    sub $03
    jr z, jr_007_6dc7

    bit 7, a
    jr z, jr_007_6dc6

    inc [hl]
    inc [hl]

jr_007_6dc6:
    dec [hl]

jr_007_6dc7:
    call IsEntityFrameCounterZero
    cp $14
    jr nc, jr_007_6dd8

    ld a, [$d20e]
    and a
    jr z, jr_007_6dd8

    inc a
    ld [$d20e], a

jr_007_6dd8:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_6de3

    ld [hl], $30
    jp IncrementEntityWalkingAttr


jr_007_6de3:
    cp $30
    jr nc, jr_007_6df5

    and $03
    jr nz, jr_007_6df5

    ld a, [$d20e]
    add $02
    cpl
    inc a
    ld [$d20e], a

jr_007_6df5:
    ret


    ld a, [$d20e]
    cp $f0
    jr z, jr_007_6e01

    dec a
    ld [$d20e], a

jr_007_6e01:
    call IsEntityFrameCounterZero
    jr nz, jr_007_6e35

    ld e, $ff
    ldh a, [hMapIndex]
    cp $80
    jr z, jr_007_6e16

    ld e, $03
    cp $95
    jr z, jr_007_6e16

    ld e, $02

jr_007_6e16:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp e
    jr c, jr_007_6e32

    ld hl, $c350
    add hl, bc
    set 7, [hl]
    call IncrementEntityWalkingAttr
    ld a, $13
    call label_2373
    call IsEntityFrameCounterZero
    ld [hl], $04
    ret


jr_007_6e32:
    jp Jump_007_6c3e


jr_007_6e35:
    cp $24
    jr nc, jr_007_6e57

    ld hl, $d20b
    ld a, [hl]
    sub $f8
    jr z, jr_007_6e48

    bit 7, a
    jr z, jr_007_6e47

    inc [hl]
    inc [hl]

jr_007_6e47:
    dec [hl]

jr_007_6e48:
    ld hl, $d20d
    ld a, [hl]
    sub $f0
    jr z, jr_007_6e57

    bit 7, a
    jr z, jr_007_6e56

    inc [hl]
    inc [hl]

jr_007_6e56:
    dec [hl]

jr_007_6e57:
    ret


    call Call_007_6be7
    call IsEntityFrameCounterZero
    jr z, jr_007_6e6a

    dec a
    jr nz, jr_007_6e67

    ld a, $3f
    ldh [hFFF4], a

jr_007_6e67:
    jp Jump_007_6d46


jr_007_6e6a:
    ld hl, $c320
    add hl, bc
    ld [hl], $30
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    cp $78
    jr c, jr_007_6ea1

    call label_27DD
    call Call_007_7ea4

Call_007_6e7f:
    ld hl, $d900
    ldh a, [hMapIndex]
    cp $ff
    jr nz, jr_007_6e8d

    ld hl, $dde0
    jr jr_007_6e9a

jr_007_6e8d:
    ld e, a
    ld d, b
    ldh a, [hMapTileset]
    cp $1a
    jr nc, jr_007_6e9a

    cp $06
    jr c, jr_007_6e9a

    inc d

jr_007_6e9a:
    add hl, de
    ld a, [hl]
    or $20
    ld [hl], a
    ldh [hFFF8], a

jr_007_6ea1:
    ret


Call_007_6ea2:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], b
    call Call_007_7e5d
    add $30
    cp $60
    jr nc, jr_007_6ec3

    call Call_007_7e6d
    add $30
    cp $60
    jr nc, jr_007_6ec3

    ld a, e
    cp $02
    ret nz

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], $01

jr_007_6ec3:
    call IncrementEntityWalkingAttr
    ld [hl], $07
    call IsEntityFrameCounterZero
    ld [hl], $20
    jp Jump_007_6bdf


Call_007_6ed0:
    ld hl, $c310
    add hl, bc
    ld [hl], $7f
    call IsEntityFrameCounterZero
    ld [hl], $80
    ldh a, [$b0]
    ld hl, $c390
    add hl, bc
    ld [hl], a
    ld hl, $c360
    add hl, bc
    ld [hl], $ff
    ldh a, [hMapIndex]
    cp $80
    jr nz, jr_007_6ef0

    ld [hl], $c0

Call_007_6ef0:
jr_007_6ef0:
    ld a, $f8
    ld [$d20a], a
    ld a, $f8
    ld [$d20b], a
    ld a, $f0
    ld [$d20e], a
    ld a, $00
    ld [$d207], a
    ld [$d208], a
    ld [$d209], a
    ld a, $10
    ld [$d20c], a
    ld a, $f0
    ld [$d20d], a
    ret


    ld [hl], b
    ld bc, $2170
    nop
    ld hl, sp+$60
    nop
    nop
    nop
    ld h, d
    nop
    nop
    ld [$0064], sp
    nop
    db $10
    ld h, [hl]
    nop
    nop
    ld hl, sp+$66
    jr nz, jr_007_6f2e

jr_007_6f2e:
    nop
    ld h, h
    jr nz, jr_007_6f32

jr_007_6f32:
    ld [$2062], sp
    nop
    db $10
    ld h, b
    jr nz, jr_007_6f3a

jr_007_6f3a:
    ld hl, sp+$68
    nop
    nop
    nop
    ld l, d
    nop
    nop
    ld [$006c], sp
    nop
    db $10
    ld l, [hl]
    nop
    nop
    ld hl, sp+$6e
    jr nz, jr_007_6f4e

jr_007_6f4e:
    nop
    ld l, h
    jr nz, jr_007_6f52

jr_007_6f52:
    ld [$206a], sp
    nop
    db $10
    ld l, b
    jr nz, jr_007_6f5a

jr_007_6f5a:
    nop
    ld [hl], d
    inc bc
    ld hl, sp+$08
    ld [hl], h
    inc bc
    ld hl, sp+$00
    ld [hl], h
    inc hl
    nop
    ld [$2372], sp
    nop
    nop
    ld [hl], d
    ld b, e
    ld [$7408], sp
    ld b, e
    ld [$7400], sp
    ld h, e
    nop
    ld [$6372], sp
    stop
    halt
    db $10
    ld [$0078], sp
    db $10
    db $10
    ld a, d
    nop
    ld [$7c18], sp
    nop
    ld hl, sp+$18
    ld a, [hl]
    nop
    db $10
    ld [$2076], sp
    stop
    ld a, b
    jr nz, jr_007_6fa6

jr_007_6f96:
    ld hl, sp+$7a
    jr nz, jr_007_6fa2

    ldh a, [$7c]
    jr nz, jr_007_6f96

    ldh a, [$7e]
    jr nz, jr_007_6fae

jr_007_6fa2:
    ei
    ld h, $00
    inc c

jr_007_6fa6:
    ld bc, $0026
    inc c
    rlca
    ld h, $00
    inc c

jr_007_6fae:
    dec c
    ld h, $00

Call_007_6fb1:
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    cp $70
    ret nc

    call Call_007_6fe6
    call Call_007_7015
    call Call_007_703a
    call Call_007_706f
    call Call_007_7090
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_6fe3

    ldh a, [$ef]
    sub $02
    ldh [$ec], a
    ld hl, $6fa1
    ld c, $04
    call label_3CE6
    ld a, $04
    call label_3DA0

jr_007_6fe3:
    jp label_3D8A


Call_007_6fe6:
    ld a, [$d20c]
    ld hl, $ffee
    add [hl]
    ld [hl], a
    ld a, [$d20d]
    ld hl, $ffec
    add [hl]
    ld [hl], a
    ld a, [$d207]
    cp $ff
    jr z, jr_007_7012

    rla
    rla
    rla
    and $f8
    ld e, a
    ld d, b
    ld hl, $6f59
    add hl, de
    ld c, $02
    call label_3CE6
    ld a, $02
    jp Jump_007_7034


jr_007_7012:
    jp label_3D8A


Call_007_7015:
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    ret z

    call Call_007_70b7
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    ld hl, $6f79
    and a
    jr z, jr_007_702d

    ld hl, $6f8d

jr_007_702d:
    ld c, $05
    call label_3CE6
    ld a, $05

Jump_007_7034:
    call label_3DA0
    jp label_3D8A


Call_007_703a:
    ld a, [$d20a]
    ld hl, $ffee
    add [hl]
    ld [hl], a
    ld a, [$d20a]
    add $0c
    ld [$d5c0], a
    ld a, [$d20b]
    ld hl, $ffec
    add [hl]
    ld [hl], a
    ld a, [$d20b]
    add $08
    ld [$d5c2], a
    ld a, $08
    ld [$d5c1], a
    ld a, $06
    ld [$d5c3], a
    ld de, $6f15
    call label_3BC0
    ld a, $02
    jp Jump_007_7034


Call_007_706f:
    ld a, [$d20e]
    ld hl, $ffec
    add [hl]
    ld [hl], a
    ld a, [$d208]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $6f19
    add hl, de
    ld c, $04
    call label_3CE6
    ld a, $04
    jp Jump_007_7034


Call_007_7090:
    ld a, [$d20e]
    cp $00
    ret z

    ld a, [$d20f]
    ld hl, $ffec
    add [hl]
    ld [hl], a
    ld a, [$d209]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $6f39
    add hl, de
    ld c, $04
    call label_3CE6
    ld a, $04
    jp Jump_007_7034


Call_007_70b7:
    ld hl, $c146
    ld a, [$dbc7]
    or [hl]
    jr nz, jr_007_7111

    ldh a, [$ec]
    add $18
    ld e, a
    ldh a, [hLinkPositionY]
    ld hl, $ffa2
    sub [hl]
    add $08
    sub e
    add $0c
    cp $18
    jr nc, jr_007_7111

    ld hl, $c380
    add hl, bc
    ld e, $08
    ld a, [hl]
    and a
    jr z, jr_007_70e0

    ld e, $f8

jr_007_70e0:
    ldh a, [$ee]
    add e
    ld hl, hLinkPositionX
    sub [hl]
    add $1a
    cp $34
    jr nc, jr_007_7111

    ld a, $28
    call label_3BB5
    ldh a, [$d7]
    ldh [$9b], a
    ldh a, [$d8]
    ldh [hFF9A], a
    ld a, $02
    ld [$c146], a
    ld a, $13
    ldh [$a3], a
    ld a, $08
    ld [wDB94], a
    ld a, $20
    ld [$dbc7], a
    ld a, $03
    ldh [hSFX], a

jr_007_7111:
    ret


    ld [de], a
    inc d
    ld d, $18
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    call Call_007_7d96
    call Call_007_7e5d
    add $20
    cp $40
    jr nc, jr_007_7131

    call Call_007_7e6d
    add $20
    cp $40
    jr c, jr_007_7197

jr_007_7131:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    and $7f
    ret nz

    ld e, $0f
    ld d, b

jr_007_713e:
    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $82
    jr z, jr_007_7161

    cp $9e
    jr z, jr_007_7161

    cp $7d
    jr z, jr_007_7161

    ld hl, $c340
    add hl, de
    ld a, [hl]
    and $80
    jr nz, jr_007_7161

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    cp $05
    jr z, jr_007_7168

jr_007_7161:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_007_713e

    ret


jr_007_7168:
    ld a, [$c18f]
    and a
    ret nz

    ld a, $7d
    call label_3B86
    jr c, jr_007_7197

    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    push bc
    ld c, e
    ld b, d
    ldh a, [hMapTileset]
    ld e, a
    ld a, $14
    cp $0a
    jr nc, jr_007_7193

    ld hl, $7112
    add hl, de
    ld a, [hl]

jr_007_7193:
    call label_3BAA
    pop bc

jr_007_7197:
    ret


    ld hl, $c460
    add hl, bc
    ld a, [hl]
    cp $00
    jr nz, jr_007_71b4

    ldh a, [hFFF8]
    and $10
    jp nz, Jump_007_7ea4

    ld hl, $c460
    add hl, bc
    ld [hl], $ff
    ld hl, $c4e0
    add hl, bc
    ld [hl], $3c

jr_007_71b4:
    call Call_007_7d96
    ld hl, $c3b0
    add hl, bc
    ld [hl], b
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_007_7246

    ld a, $14
    call label_3B86
    jr c, jr_007_7246

    ld hl, $c4e0
    add hl, bc
    ld a, [hl]
    ld hl, $c4e0
    add hl, de
    ld [hl], a
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    add $08
    ld [hl], a
    call label_3E34
    ldh a, [$ee]
    sub $08
    ldh [$ce], a
    ldh a, [$ef]
    sub $10
    ldh [$cd], a
    ldh a, [$ce]
    swap a
    and $0f
    ld e, a
    ldh a, [$cd]
    and $f0
    or e
    ld e, a
    ld d, b
    ld hl, wTileMap
    add hl, de
    ld [hl], $91
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_721d

    push bc
    ld a, $91
    ld [$ddd8], a
    ld a, $07
    call label_91D
    pop bc

jr_007_721d:
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $0a
    ld [wRequests], a
    ld e, $08
    call Call_007_7233
    ld e, $09

Call_007_7233:
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    inc a
    ldh [$d0], a
    ld a, $81
    ld [hl+], a
    ld a, e
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a

Jump_007_7246:
jr_007_7246:
    ret


    ld [hl], h
    ld bc, $2174
    db $76
    ld bc, $0178
    ld a, d
    ld bc, $217a
    ld a, b
    ld hl, $2176
    ld a, h
    ld bc, $017c
    ld de, $7247
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    call label_3B39
    call Call_007_7e0a
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $03
    jr nz, jr_007_7280

    ld a, [hl]
    and $0c
    jr nz, jr_007_728a

    jr jr_007_7291

jr_007_7280:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    jr jr_007_7291

jr_007_728a:
    call Call_007_4005
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_007_7291:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $03
    jp label_3B0C


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    nop
    ld d, h
    jr nz, @+$54

    nop
    ld d, d
    jr nz, jr_007_7302

    nop
    ld d, [hl]
    nop
    ldh a, [$f1]
    cp $01
    jr nz, jr_007_72bd

    ld de, $72ab
    call label_3C77
    jr jr_007_72c3

jr_007_72bd:
    ld de, $729b
    call label_3BC0

jr_007_72c3:
    call Call_007_7d96
    call Call_007_7dc3
    call Call_007_7e43
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_007_72e3

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], b

jr_007_72e3:
    ldh a, [$f0]
    rst $00
    db $f4
    ld [hl], d
    jr nz, @+$75

    ld d, b
    ld [hl], e
    ld e, h
    ld [hl], e
    ld a, h
    ld [hl], e
    and b
    ld [hl], e
    rst $10
    ld [hl], e
    call IsEntityFrameCounterZero
    jr nz, jr_007_731f

    call Call_007_7e5d
    add $20
    cp $40
    jr nc, jr_007_731f

jr_007_7302:
    call Call_007_7e6d
    add $20
    cp $40
    jr nc, jr_007_731f

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $20
    call GetRandomByte
    and $03
    add $03
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a

jr_007_731f:
    ret


    call IsEntityFrameCounterZero
    jr nz, jr_007_7344

    ld hl, $c310
    add hl, bc
    ld [hl], $08
    ld hl, $c320
    add hl, bc
    ld [hl], $08
    ld hl, $c340
    add hl, bc
    ld [hl], $12
    ld a, $03
    call label_3B0C
    call IncrementEntityWalkingAttr

Call_007_733f:
Jump_007_733f:
    ld a, $24
    ldh [$f2], a
    ret


jr_007_7344:
    ld e, $01
    cp $10
    jr nc, jr_007_734c

    ld e, $02

jr_007_734c:
    ld a, e
    jp label_3B0C


    ldh a, [hFFE8]
    and a
    ret z

    call IsEntityFrameCounterZero
    ld [hl], $20
    jp IncrementEntityWalkingAttr


    call label_3B70
    call IsEntityFrameCounterZero
    jr nz, jr_007_736c

    ld [hl], $10
    call label_3D7F
    jp IncrementEntityWalkingAttr


jr_007_736c:
    ld e, $08
    and $04
    jr z, jr_007_7374

    ld e, $f8

jr_007_7374:
    ld hl, $c240
    add hl, bc
    ld [hl], e
    jp Jump_007_7e17


    call label_3B39
    call Call_007_7e0a
    call Call_007_73f7
    call IsEntityFrameCounterZero
    jr nz, jr_007_739b

    ld a, $0c
    call label_3BAA
    ld hl, $c320
    add hl, bc
    ld [hl], $18
    call Call_007_733f
    call IncrementEntityWalkingAttr

jr_007_739b:
    ld a, $03
    jp label_3B0C


    call label_3B39
    call Call_007_7e0a
    call Call_007_73f7
    ldh a, [hFFE8]
    and a
    jr z, jr_007_73d2

    call label_3D7F
    call IncrementEntityWalkingAttr
    ld [hl], $04
    call IsEntityFrameCounterZero
    ld [hl], $20
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    dec [hl]
    jr nz, jr_007_73d2

    call IncrementEntityWalkingAttr
    ld [hl], $06
    call IsEntityFrameCounterZero
    ld [hl], $30
    ld hl, $c340
    add hl, bc
    ld [hl], $d2

jr_007_73d2:
    ld a, $02
    jp label_3B0C


    call IsEntityFrameCounterZero
    jr nz, jr_007_73e6

    ld [hl], $50
    call IncrementEntityWalkingAttr
    ld [hl], b
    xor a
    jp label_3B0C


jr_007_73e6:
    ld e, $03
    cp $20
    jr nc, jr_007_73f3

    ld e, $01
    cp $10
    jr c, jr_007_73f3

    inc e

jr_007_73f3:
    ld a, e
    jp label_3B0C


Call_007_73f7:
    ld hl, $c410
    add hl, bc
    ld [hl], $03
    call label_3B23
    ld hl, $c410
    add hl, bc
    ld [hl], b
    ret


    call Call_007_7d96
    ldh a, [$f0]
    rst $00
    db $10
    ld [hl], h
    xor b
    ld [hl], h
    ldh a, [$ee]
    and $70
    ld [$d201], a
    call IsEntityFrameCounterZero
    ld [hl], $80
    jp IncrementEntityWalkingAttr


    inc hl
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    ld hl, $5328
    ld d, [hl]
    inc [hl]
    ld b, l
    dec [hl]
    ld b, h
    ld sp, $3848
    ld b, c
    inc d
    ld h, [hl]
    dec d
    ld h, e
    ld sp, $3845
    ld b, h
    inc de
    ld d, [hl]
    ld d, $53
    daa
    ld b, d
    ld b, a
    ld [hl+], a
    ld h, l
    inc sp
    ld h, h
    ld [hl], $23
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    inc hl
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    inc hl
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    inc hl
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    inc hl
    ld d, [hl]
    ld h, $53
    ld [hl-], a
    ld b, a
    ld b, d
    scf
    inc sp
    ld b, [hl]
    ld b, e
    ld [hl], $24
    ld d, l
    dec h
    ld d, h
    jr nc, jr_007_74d1

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$2a

    jr z, jr_007_74ca

    ret nc

    jp Jump_007_7e09


    cp $10
    jp z, Jump_007_7ea4

    call IsEntityFrameCounterZero
    jr nz, jr_007_752c

    push hl
    ldh a, [hMapTileset]
    ld e, a
    ld d, b
    ld hl, $749f
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl], a
    ld a, $5a
    call label_3B86
    jr c, jr_007_752c

jr_007_74ca:
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    push bc

jr_007_74d1:
    ld a, [$d201]
    ld hl, $c3d0
    add hl, bc
    add [hl]
    inc [hl]
    ld c, a
    ld hl, $c440
    add hl, de
    ldh a, [$ef]
    sub $10
    and $f0
    jr z, jr_007_74e8

    ld [hl], a

jr_007_74e8:
    ld a, c
    cp $0f
    jr nz, jr_007_74f8

    ld a, [$c18e]
    and $1f
    cp $03
    jr nz, jr_007_74f8

    ld [hl], $01

jr_007_74f8:
    ld hl, $741f
    add hl, bc
    ld a, [hl]
    push af
    swap a
    and $f0
    or $08
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    pop af
    and $f0
    add $10
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c340
    add hl, de
    ld [hl], $12
    ld hl, $c350
    add hl, de
    ld [hl], $00
    ld hl, $c430
    add hl, de
    ld [hl], $00
    ld hl, $c4d0
    add hl, de
    ld [hl], $00
    pop bc

jr_007_752c:
    ret


    ld [hl], b
    nop
    ld [hl], b
    jr nz, jr_007_75a4

    nop
    ld [hl], d
    jr nz, jr_007_7547

    dec l
    ld [hl], l
    call label_3BC0
    call Call_007_7d96
    call Call_007_7dc3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra

jr_007_7547:
    and $01
    call label_3B0C
    call Call_007_7e0a
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $0f
    jr z, jr_007_756a

    call IsEntityFrameCounterZero
    ld [hl], $10
    call label_3D7F
    call IncrementEntityWalkingAttr
    xor a
    ld [hl], a
    ldh [$f0], a

jr_007_756a:
    call label_3B39
    ldh a, [$f0]
    rst $00
    db $76
    ld [hl], l
    sub a
    ld [hl], l
    or a
    ld [hl], l
    call IsEntityFrameCounterZero
    jr nz, jr_007_7596

    ld [hl], $20
    call IncrementEntityWalkingAttr
    call GetRandomByte
    and $02
    dec a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $02
    dec a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a

jr_007_7596:
    ret


    call IsEntityFrameCounterZero
    jp z, IncrementEntityWalkingAttr

    and $01
    jr nz, jr_007_75b6

    ld hl, wEntitiesUnknownTableB

jr_007_75a4:
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    call Call_007_4005
    add [hl]
    ld [hl], a

jr_007_75b6:
    ret


    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_007_75dd

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_75cf

    call IncrementEntityWalkingAttr
    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $10
    ret


jr_007_75cf:
    call Call_007_75d6
    call Call_007_4005
    ld a, [hl]

Call_007_75d6:
    bit 7, a
    jr z, jr_007_75dc

    inc [hl]
    inc [hl]

jr_007_75dc:
    dec [hl]

jr_007_75dd:
    ret


    ld h, b
    inc bc
    ld h, d
    inc bc
    ld h, h
    inc bc
    ld h, [hl]
    inc bc
    ld h, d
    ld h, e
    ld h, b
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, h
    ld h, e
    ld h, [hl]
    inc hl
    ld h, h
    inc hl
    ld hl, $c460
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_75fe

    ld a, c
    ld [$d201], a

jr_007_75fe:
    ld de, $75de
    call label_3BC0
    call Call_007_7d96
    call Call_007_7e0a
    call Call_007_7e43
    call label_3B23
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    ldh [hFFE8], a
    dec a
    and $80
    jr z, jr_007_7633

    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    ldh [hFFE9], a
    sra a
    cpl
    cp $07
    jr nc, jr_007_7632

    xor a

jr_007_7632:
    ld [hl], a

jr_007_7633:
    ldh a, [$f0]
    rst $00
    ld b, b
    db $76
    ld b, b
    db $76
    ld d, a
    db $76
    xor $76
    inc h
    ld [hl], a
    jp Jump_007_7733


    nop
    inc c
    db $10
    inc c
    nop
    db $f4
    ldh a, [hFFF4]
    ldh a, [hFFF4]
    nop
    inc c
    db $10
    inc c
    nop
    db $f4
    nop
    ld bc, $0004
    call IsEntityFrameCounterZero
    jr nz, jr_007_7671

    call label_3D7F
    call IncrementEntityWalkingAttr
    call GetRandomByte
    and $03
    ld e, a
    ld d, b
    ld hl, $7653
    add hl, de
    ld a, [hl]
    jp label_3B0C


jr_007_7671:
    and $07
    jr nz, jr_007_767e

    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_007_767e:
    ldh a, [hFFE8]
    dec a
    and $80
    jr z, jr_007_76c2

    call Call_007_76e7
    ldh a, [hFFE9]
    sub $fc
    and $80
    jr nz, jr_007_7696

    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_007_76c2

jr_007_7696:
    call GetRandomByte
    and $01
    ld e, $01
    jr z, jr_007_76a1

    ld e, $ff

jr_007_76a1:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    add e
    and $07
    ld [hl], a
    ld e, a
    ld d, b
    ld hl, $7643
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $764b
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    call Call_007_76e7

jr_007_76c2:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_76ed

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    call IsEntityFrameCounterZero
    srl [hl]
    ld hl, $c240
    call Call_007_76e0
    ld hl, $c250

Call_007_76e0:
    add hl, bc
    ld a, [hl]
    cpl
    sra a
    inc a
    ld [hl], a

Call_007_76e7:
    ld hl, $c5d0
    add hl, bc
    ld [hl], $ff

jr_007_76ed:
    ret


    ld hl, $c460
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld a, [hl]
    cp $03
    ret nz

    inc [hl]
    call IncrementEntityWalkingAttr
    ldh a, [$f1]
    cp $00
    jr nz, jr_007_7716

    ld hl, $c3b0
    add hl, de
    ld a, [hl]
    cp $00
    jp z, label_C60

jr_007_7716:
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $40
    call IsEntityFrameCounterZero
    ld [hl], $40
    jp label_C20


    call IsEntityFrameCounterZero
    cp $01
    jr nz, jr_007_7730

    ld a, $01
    call label_3B0C

jr_007_7730:
    jp Jump_007_7733


Jump_007_7733:
    call label_3B5A
    jr nc, jr_007_7783

    ld a, [$c19b]
    and a
    jr nz, jr_007_7783

    ld a, [wAButtonSlot]
    cp $03
    jr nz, jr_007_774d

    ldh a, [hFFCC]
    and $20
    jr nz, jr_007_775a

    jr jr_007_7783

jr_007_774d:
    ld a, [wBButtonSlot]
    cp $03
    jr nz, jr_007_7783

    ldh a, [hFFCC]
    and $10
    jr z, jr_007_7783

jr_007_775a:
    ld a, [$c3cf]
    and a
    jr nz, jr_007_7783

    inc a
    ld [$c3cf], a
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $07
    ld hl, $c490
    add hl, bc
    ld [hl], b
    ldh a, [hFF9E]
    ld [wC15D], a
    call IsEntityFrameCounterZero
    ld [hl], $02
    ld hl, hSFX
    ld [hl], $02

jr_007_7783:
    ret


    ld [hl], b
    nop
    ld [hl], b
    jr nz, jr_007_77fb

    nop
    ld [hl], d
    jr nz, @+$76

    nop
    ld [hl], h
    jr nz, @+$78

    nop
    db $76
    jr nz, @+$62

    nop
    ld h, b
    jr nz, jr_007_77fb

    nop
    ld h, d
    jr nz, @+$66

    nop
    ld h, h
    jr nz, @+$68

    nop
    ld h, [hl]
    jr nz, jr_007_77b6

    add h
    ld [hl], a
    ldh a, [hMapTileset]
    cp $03
    jr nz, jr_007_77b0

    ld de, $7794

jr_007_77b0:
    call label_3BC0
    call Call_007_7d96

jr_007_77b6:
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_77c1

    call label_3D7F

jr_007_77c1:
    call Call_007_7dc3
    call label_3B39
    call Call_007_7e0a
    call Call_007_7e43
    call label_3B23
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_007_77e2

    and a
    jr nz, jr_007_780d

jr_007_77e2:
    ld [hl], b
    ldh a, [$f0]
    cp $03
    jr nz, jr_007_7808

    ld hl, $c240
    add hl, bc
    sra [hl]
    call Call_007_4005
    sra [hl]
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    sra a

jr_007_77fb:
    cpl
    ld [hl], a
    cp $07
    jp nc, Jump_007_780d

    ld [hl], b
    call label_3D7F
    jr jr_007_780d

jr_007_7808:
    ld hl, $c320
    add hl, bc
    ld [hl], b

Jump_007_780d:
jr_007_780d:
    ldh a, [$f0]
    cp $04
    jr c, jr_007_7814

    ret


jr_007_7814:
    rst $00
    dec h
    ld a, b
    ld h, b
    ld a, b
    and l
    ld a, b
    db $ec
    ld a, b
    ld b, $fa
    nop
    nop
    nop
    nop
    ld a, [$cd06]
    ld a, a
    dec a
    call IsEntityFrameCounterZero
    jr nz, jr_007_785e

    call GetRandomByte
    and $1f
    add $30
    ld [hl], a
    call IncrementEntityWalkingAttr
    call GetRandomByte
    and $06
    jr nz, jr_007_7844

    call Call_007_7e7d
    jr jr_007_784a

jr_007_7844:
    call GetRandomByte
    and $03
    ld e, a

jr_007_784a:
    ld d, b
    ld hl, $781d
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $7821
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a

jr_007_785e:
    jr jr_007_786e

    call IsEntityFrameCounterZero
    jr nz, jr_007_786b

    ld [hl], $18
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_786b:
    call Call_007_78e1

jr_007_786e:
    ld hl, $c350
    add hl, bc
    ld [hl], $80
    ld hl, $c430
    add hl, bc
    ld [hl], $48
    call Call_007_7e5d
    add $06
    cp $0a
    jr c, jr_007_788c

    call Call_007_7e6d
    add $06
    cp $0a
    jr nc, jr_007_789c

jr_007_788c:
    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld [hl], e
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $ff

jr_007_789c:
    ret


    jr @-$16

    nop
    nop
    nop
    nop
    add sp, $18
    call IsEntityFrameCounterZero
    jr z, jr_007_78dd

    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $789d
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    sub [hl]
    jr z, jr_007_78c3

    and $80
    jr nz, jr_007_78c2

    inc [hl]
    inc [hl]

jr_007_78c2:
    dec [hl]

jr_007_78c3:
    ld hl, $78a1
    add hl, de
    ld a, [hl]
    call Call_007_4005
    sub [hl]
    jr z, jr_007_78d5

    and $80
    jr nz, jr_007_78d4

    inc [hl]
    inc [hl]

jr_007_78d4:
    dec [hl]

jr_007_78d5:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_78e1

jr_007_78dd:
    call IncrementEntityWalkingAttr
    ld [hl], b

Call_007_78e1:
jr_007_78e1:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


    ld hl, $c430
    add hl, bc
    ld [hl], $08
    ld hl, $c350
    add hl, bc
    ld [hl], $00
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    inc a
    inc a
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_007_791a

    call IncrementEntityWalkingAttr
    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld [hl], $18
    ld hl, $c240
    add hl, bc
    ld [hl], b
    ret


jr_007_791a:
    cp $60
    jr nc, jr_007_792b

    and $04
    ld a, $08
    jr nz, jr_007_7926

    ld a, $f8

jr_007_7926:
    ld hl, $c240
    add hl, bc
    ld [hl], a

jr_007_792b:
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    push af
    ld [hl], $01
    call label_3B23
    pop af
    ld hl, $c410
    add hl, bc
    ld [hl], a
    ret


    ld b, $04
    ld [bc], a
    nop
    ldh a, [hMapTileset]
    cp $15
    jr nz, jr_007_794f

    ld a, [wIsBowWowFollowingLink]
    cp $80
    jp nz, Jump_007_7ea4

jr_007_794f:
    call Call_007_7ab5
    call Call_007_7d96
    ldh a, [hMapTileset]
    cp $15
    jr z, jr_007_7963

    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_7966

jr_007_7963:
    call Call_007_7a55

jr_007_7966:
    call Call_007_7dc3
    call label_3B65
    call label_3B39
    ldh a, [$f0]
    rst $00
    add b
    ld a, c
    or h
    ld a, c
    rst $10
    ld a, c
    ld b, $fa
    nop
    nop
    nop
    nop
    ld a, [$cd06]
    inc hl
    dec sp
    ld hl, $c3d0
    add hl, bc
    ld [hl], $00
    call Call_007_7a2d
    call IsEntityFrameCounterZero
    jr nz, jr_007_79b3

    ld [hl], $80
    call IncrementEntityWalkingAttr

Call_007_7996:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    ld e, a
    ld d, b
    ld hl, $7978
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $797c
    add hl, de
    ld a, [hl]
    call Call_007_4005
    ld [hl], a

jr_007_79b3:
    ret


    call Call_007_7a2d
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_79c2

    call Call_007_7996

jr_007_79c2:
    call Call_007_7e0a
    call label_3B23
    call Call_007_7d1a
    call IsEntityFrameCounterZero
    jr nz, jr_007_79d6

    ld [hl], $30

Call_007_79d2:
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_007_79d6:
    ret


    call label_C00
    jr z, jr_007_79f9

    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_007_79f9

    ldh a, [hMapTileset]
    cp $15
    jr nz, jr_007_79f9

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_007_7a1e

    inc [hl]
    ld a, $90
    call label_2373
    jr jr_007_7a1e

jr_007_79f9:
    ld a, [hl]
    and a
    jr nz, jr_007_7a1e

    call IsEntityFrameCounterZero
    jr nz, jr_007_7a07

    ld [hl], $18
    call Call_007_79d2

jr_007_7a07:
    call Call_007_7d1a
    call Call_007_7d1a
    call Call_007_7e0a
    call label_3B23
    ldh a, [hFrameCounter]
    xor c
    and $0f
    ret nz

    ld a, $0a
    call label_3BAA

jr_007_7a1e:
    call Call_007_7e7d
    ld hl, $c380
    add hl, bc
    ld [hl], a
    jp Jump_007_7d1a


    ld bc, $0300
    ld [bc], a

Call_007_7a2d:
    ld a, [$c502]
    and a
    jr nz, jr_007_7a55

    call Call_007_7e5d
    add $30
    cp $60
    jr nc, jr_007_7a6c

    call Call_007_7e6d
    add $30
    cp $60
    jr nc, jr_007_7a6c

    call Call_007_7e7d
    ld d, b
    ld hl, $7a29
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, bc
    cp [hl]
    jr z, jr_007_7a6c

Call_007_7a55:
jr_007_7a55:
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, [hl]
    cp $02
    jr z, jr_007_7a65

    push hl
    call label_C00
    ld [hl], $10
    pop hl

jr_007_7a65:
    ld [hl], $02
    call IsEntityFrameCounterZero
    ld [hl], $80

jr_007_7a6c:
    ret


    nop
    nop
    ld sp, hl
    ld sp, hl
    ld hl, sp-$0e
    ld [$080e], sp
    ld c, $f8
    ld a, [c]
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    nop
    nop
    inc c
    inc c
    inc b
    inc b
    db $fc
    db $fc
    inc d
    inc d
    inc d
    inc d
    db $fc
    db $fc
    inc c
    inc c
    inc c
    inc c
    ld h, b
    inc bc
    ld h, d
    inc bc
    ld h, d
    inc hl
    ld h, b
    inc hl
    ld h, h
    inc bc
    ld h, [hl]
    inc bc
    ld h, [hl]
    inc hl
    ld h, h
    inc hl
    ld l, b
    inc bc
    ld l, d
    inc bc
    ld l, h
    inc bc
    ld l, [hl]
    inc bc
    ld l, d
    inc hl
    ld l, b
    inc hl
    ld l, [hl]
    inc hl
    ld l, h
    inc hl

Call_007_7ab5:
    call label_3D57
    ldh a, [$f1]
    cp $02
    jr nc, jr_007_7ac1

    call Call_007_7b30

jr_007_7ac1:
    ldh a, [$f1]
    cp $02
    jr z, jr_007_7acb

    cp $03
    jr nz, jr_007_7ad1

jr_007_7acb:
    ld de, $7a95
    call label_3BC0

jr_007_7ad1:
    push bc
    ldh a, [$ec]
    ldh [$d7], a
    ldh a, [$ee]
    ldh [$d8], a
    ldh a, [$f1]
    ld e, a
    ld d, b
    ld hl, $7a85
    add hl, de
    ld a, [hl]
    ld [$d5c0], a
    ld hl, $7a8d
    add hl, de
    ld a, [hl]
    ld [$d5c2], a
    ld a, $02
    ld [$d5c1], a
    ld [$d5c3], a
    ld hl, $7a7d
    add hl, de
    ld a, [hl]
    ldh [$d9], a
    ld hl, $7a75
    add hl, de
    ld a, [hl]
    ld hl, $7a6d
    add hl, de
    ld l, [hl]
    ld h, a
    push hl
    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, $c030
    add hl, de
    ld c, l
    ld b, h
    xor a
    ldh [$da], a
    pop hl
    call label_1819
    ld a, $02
    call label_3DA0
    pop bc
    ldh a, [$f1]
    cp $02
    ret z

    cp $03
    ret z

    ld de, $7a95
    jp label_3BC0


Call_007_7b30:
    xor $01
    push af
    ld a, [$c3c0]
    ld l, a
    ld h, $00
    ld de, $c030
    add hl, de
    pop de
    ldh a, [$ec]
    add d
    add $04
    ld [hl+], a
    ldh a, [$ee]
    add $fe
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    ld [hl], $16
    ld a, $01
    jp label_3DA0

; Chest OAM data? (7B97 contains seashell tile info)
data_007_7b53::
    db $82, $17, $86, $14, $82, $15, $86, $15, $88, $10, $8A, $10, $8C, $14, $98, $16
    db $90, $17, $92, $16, $96, $10, $8E, $10, $80, $15, $84, $10, $94, $15, $9A, $10
    db $AE, $10, $9C, $10, $A0, $14, $C0, $14, $C2, $14, $C4, $14, $C6, $14, $CA, $14
    db $C0, $14, $C2, $15, $C4, $14, $C6, $14, $CA, $17, $A6, $15, $A6, $15, $A6, $15
    db $A6, $15, $A6, $15, $9E, $14, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $9A, $9B, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9
    db $AA, $AC, $AB, $AD, $AE, $AE, $EF, $06, $10, $10, $10, $10, $10, $10, $10, $10
    db $10, $01, $01, $10, $10, $10, $10, $10, $01, $10, $10, $10, $10, $10, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01

label_007_7BD8::
    ld bc, $3E00
    ld [bc], a
    ldh [$a1], a
    xor a
    ld [$c137], a
    ld [wC16A], a
    ldh a, [$f1]
    cp $22
    jr nz, jr_007_7c29

    ld a, $1b
    call label_3B86
    jp c, Jump_007_7ea4

    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c320
    add hl, de
    ld [hl], $18
    ld hl, $c310
    add hl, de
    ld [hl], $06
    ld hl, wEntitiesUnknowTableF
    add hl, de
    ld [hl], $50
    ld hl, $c240
    add hl, de
    ld [hl], $08
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $03
    ld a, $1d
    ldh [$f2], a
    jp Jump_007_7ea4


jr_007_7c29:
    cp $21
    jr z, jr_007_7c5e

    cp $10
    jr nz, jr_007_7c36

    ld a, $01
    ld [wHasMedicine], a

jr_007_7c36:
    ldh a, [hIsGBC]
    and a
    jr z, jr_007_7c58

    ldh a, [hMapTileset]
    cp $05
    jr nz, jr_007_7c49

    ldh a, [hMapIndex]
    cp $ce
    jr nz, jr_007_7c58

    jr jr_007_7c53

jr_007_7c49:
    cp $06
    jr nz, jr_007_7c58

    ldh a, [hMapIndex]
    cp $1a
    jr nz, jr_007_7c58

jr_007_7c53:
    ld de, $7b53
    jr jr_007_7c5b

jr_007_7c58:
    ld de, $7b57

jr_007_7c5b:
    call label_3C77

jr_007_7c5e:
    ld a, [wDialogState]
    and a
    ret nz

    call Call_007_7e0a
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $10
    jr nz, jr_007_7c76

    call Call_007_4005
    ld [hl], $00

jr_007_7c76:
    cp $08
    jr nz, jr_007_7c93

    ldh a, [$f1]
    ld e, a
    ld d, b
    ld hl, $7bbb
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_007_7c93

    cp $01
    jr nz, jr_007_7c90

    ld a, $01
    ldh [$f2], a
    jr jr_007_7c93

jr_007_7c90:
    ld [wWorldMusicTrack], a

jr_007_7c93:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $26
    jr nz, jr_007_7cea

    ldh a, [$f1]
    ld e, a
    ld d, b
    cp $21
    jr nz, jr_007_7cb1

    ldh a, [hMapIndex]
    cp $96
    jr nz, jr_007_7cb1

    ld a, $11
    call label_2373
    jr jr_007_7ce9

jr_007_7cb1:
    ld a, e
    cp $01
    jr nz, jr_007_7cc1

    ld a, [wShieldLevel]
    cp $02
    jr nz, jr_007_7cc1

    ld a, $ed
    jr jr_007_7ce6

jr_007_7cc1:
    ld a, e
    cp $0b
    jr nz, jr_007_7cd1

    ld a, [wDidFindSword]
    cp $02
    jr nz, jr_007_7cd1

    ld a, $9f
    jr jr_007_7ce6

jr_007_7cd1:
    ld a, e
    cp $00
    jr nz, jr_007_7ce1

    ld a, [wPowerBraceletLevel]
    cp $02
    jr nz, jr_007_7ce1

    ld a, $ee
    jr jr_007_7ce6

jr_007_7ce1:
    ld hl, $7b99
    add hl, de
    ld a, [hl]

jr_007_7ce6:
    call label_2385

jr_007_7ce9:
    xor a

jr_007_7cea:
    cp $28
    ret nz

    jp Jump_007_7ea4


Call_007_7cf0:
    call label_3B5A
    jr nc, jr_007_7d14

    call label_CBE
    call label_CB6
    ld a, [$c1a6]
    and a
    jr z, jr_007_7d12

    ld e, a
    ld d, b
    ld hl, $c39f
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_007_7d12

    ld hl, $c28f
    add hl, de
    ld [hl], $00

jr_007_7d12:
    scf
    ret


jr_007_7d14:
    and a
    ret


    ld b, $04
    ld [bc], a
    nop

Call_007_7d1a:
Jump_007_7d1a:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $7d16
    add hl, de
    push hl
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra
    rra
    pop hl
    and $01
    or [hl]
    jp label_3B0C


Call_007_7d36:
    ld e, b
    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $38
    jr jr_007_7d4e

Call_007_7d43:
    ld e, b
    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $28

jr_007_7d4e:
    jr nc, jr_007_7d94

    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $10
    cp $20
    jr nc, jr_007_7d94

    inc e
    ldh a, [$eb]
    cp $b5
    jr z, jr_007_7d6f

    push de
    call Call_007_7e7d
    ldh a, [hFF9E]
    xor $01
    cp e
    pop de
    jr nz, jr_007_7d94

jr_007_7d6f:
    ld hl, $c1ad
    ld [hl], $01
    ld a, [wDialogState]
    ld hl, wInventoryAppearing
    or [hl]
    ld hl, $c146
    or [hl]
    ld hl, $c134
    or [hl]
    jr nz, jr_007_7d94

    ld a, [wWindowY]
    cp $80
    jr nz, jr_007_7d94

    ldh a, [hFFCC]
    and $10
    jr z, jr_007_7d94

    scf
    ret


jr_007_7d94:
    and a
    ret


Call_007_7d96:
    ldh a, [$ea]
    cp $05
    jr nz, jr_007_7dc1

Call_007_7d9c:
    ld a, [wGameplayType]
    cp $07
    jr z, jr_007_7dc1

    cp $0b
    jr nz, jr_007_7dc1

    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_007_7dc1

    ld a, [wDialogState]
    ld hl, $c1a8
    or [hl]
    ld hl, wInventoryAppearing
    or [hl]
    jr nz, jr_007_7dc1

    ld a, [wMapSlideTransitionState]
    and a
    jr z, jr_007_7dc2

jr_007_7dc1:
    pop af

jr_007_7dc2:
    ret


Call_007_7dc3:
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_7e09

    dec a
    ld [hl], a
    call label_3E8E
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push af
    call Call_007_4005
    ld a, [hl]
    push af
    ld hl, $c3f0
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $c400
    add hl, bc
    ld a, [hl]
    call Call_007_4005
    ld [hl], a
    call Call_007_7e0a
    ld hl, $c430
    add hl, bc
    ld a, [hl]
    and $20
    jr nz, jr_007_7dfd

    call label_3B23

jr_007_7dfd:
    call Call_007_4005
    pop af
    ld [hl], a
    ld hl, $c240
    add hl, bc
    pop af
    ld [hl], a
    pop af

Jump_007_7e09:
jr_007_7e09:
    ret


Call_007_7e0a:
Jump_007_7e0a:
    call Call_007_7e17
    push bc
    ld a, c
    add $10
    ld c, a
    call Call_007_7e17
    pop bc
    ret


Call_007_7e17:
Jump_007_7e17:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_7e42

    push af
    swap a
    and $f0
    ld hl, $c260
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, wEntity0PosX

jr_007_7e2f:
    add hl, bc
    pop af
    ld e, $00
    bit 7, a
    jr z, jr_007_7e39

    ld e, $f0

jr_007_7e39:
    swap a
    and $0f
    or e
    rr d
    adc [hl]
    ld [hl], a

jr_007_7e42:
    ret


Call_007_7e43:
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_007_7e42

    push af
    swap a
    and $f0
    ld hl, $c330
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, $c310
    jr jr_007_7e2f

Call_007_7e5d:
    ld e, $00
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, jr_007_7e6b

    inc e

jr_007_7e6b:
    ld d, a
    ret


Call_007_7e6d:
    ld e, $02
    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, bc
    sub [hl]
    bit 7, a
    jr nz, jr_007_7e7b

    inc e

jr_007_7e7b:
    ld d, a
    ret


Call_007_7e7d:
    call Call_007_7e5d
    ld a, e
    ldh [$d7], a
    ld a, d
    bit 7, a
    jr z, jr_007_7e8a

    cpl
    inc a

jr_007_7e8a:
    push af
    call Call_007_7e6d
    ld a, e
    ldh [$d8], a
    ld a, d
    bit 7, a
    jr z, jr_007_7e98

    cpl
    inc a

jr_007_7e98:
    pop de
    cp d
    jr nc, jr_007_7ea0

    ldh a, [$d7]
    jr jr_007_7ea2

jr_007_7ea0:
    ldh a, [$d8]

jr_007_7ea2:
    ld e, a
    ret


Call_007_7ea4:
Jump_007_7ea4:
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], b
    ret


Jump_007_7eaa:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    rst $00
    or [hl]
    ld a, [hl]
    rst $00
    ld a, [hl]
    sub $7e
    call IsEntityFrameCounterZero
    ld [hl], $a0
    ld hl, $c420
    add hl, bc
    ld [hl], $ff

Jump_007_7ec1:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    inc [hl]
    ret


    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $c0
    ld hl, $c420
    add hl, bc
    ld [hl], $ff
    jp Jump_007_7ec1


    call IsEntityFrameCounterZero
    jr nz, jr_007_7f13

    ldh a, [$eb]
    cp $5f
    jr nz, jr_007_7f0a

    ld a, $30
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c320
    add hl, de
    ld [hl], $18
    ld hl, wEntitiesUnknowTableF
    add hl, de
    ld [hl], $20
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    ldh [$b0], a
    jp Jump_007_7f76


jr_007_7f0a:
    call label_C4B
    call label_27DD
    jp label_3F50


jr_007_7f13:
    jp Jump_007_7f16


Jump_007_7f16:
    and $07
    ret nz

    call GetRandomByte
    and $1f
    sub $10
    ld e, a
    ld hl, $ffee
    add [hl]
    ld [hl], a
    call GetRandomByte
    and $1f
    sub $14
    ld e, a
    ld hl, $ffec
    add [hl]
    ld [hl], a
    jp Jump_007_7f36


Jump_007_7f36:
    call Call_007_7d9c
    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $02
    call label_CC7
    ld a, $13
    ldh [hFFF4], a
    ret


    ld a, $36
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$f9]
    and a
    jr z, jr_007_7f6a

    call Call_007_4005
    ld [hl], $f0
    jr jr_007_7f76

jr_007_7f6a:
    ld hl, $c320
    add hl, de
    ld [hl], $10
    ld hl, $c310
    add hl, de
    ld [hl], $08

Jump_007_7f76:
jr_007_7f76:
    call Call_007_7ea4
    ld hl, hFFF4
    ld [hl], $1a
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
