; Disassembly of "game.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld [hl], b
    inc bc
    ld [hl], b
    inc hl
    ld [hl], d
    inc bc
    ld [hl], d
    inc hl
    ld [hl], h
    inc bc
    db $76
    inc bc
    ld a, b
    inc bc
    ld a, d
    inc bc
    db $76
    inc hl
    ld [hl], h
    inc hl
    ld a, d
    inc hl
    ld a, b
    inc hl
    ld a, h
    inc bc
    ld a, h
    inc hl
    ld b, b
    inc bc
    ld b, b
    inc hl
    ld b, d
    inc bc
    ld b, d
    inc hl
    ld b, h
    inc bc
    ld b, [hl]
    inc bc
    ld c, b
    inc bc
    ld c, d
    inc bc
    ld b, [hl]
    inc hl
    ld b, h
    inc hl
    ld c, d
    inc hl
    ld c, b
    inc hl
    ld c, h
    inc bc
    ld c, h
    inc hl
    ld a, c
    ld [$d154], a
    ld a, [wIsBowWowFollowingLink]
    cp $01
    jr nz, jr_005_4054

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

jr_005_4054:
    ld de, $401c
    ld a, [wIsBowWowFollowingLink]
    and a
    jr nz, jr_005_4060

    ld de, $4000

jr_005_4060:
    call label_3BC0
    ld a, [wMapSlideTransitionState]
    and a
    jr z, jr_005_407c

    ld a, [wIsBowWowFollowingLink]
    cp $01
    jp z, Jump_005_40a2

    ld hl, $c3e0
    add hl, bc
    ldh a, [hMapIndex]
    cp [hl]
    ret z

    jp Jump_005_40a2


jr_005_407c:
    ld a, [$c1a8]
    ld hl, wDialogState
    or [hl]
    ld hl, wInventoryAppearing
    or [hl]
    jp nz, Jump_005_40a2

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    call Call_005_44cb
    call label_C56
    ld a, [wIsBowWowFollowingLink]
    and a
    jr nz, jr_005_409f

    call label_3B70

jr_005_409f:
    call Call_005_40a5

Jump_005_40a2:
    jp Jump_005_4253


Call_005_40a5:
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    rst $00
    xor a
    ld b, b
    and $40
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    add $04
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ld e, $10
    ld hl, $d100

jr_005_40c1:
    ld [hl+], a
    dec e
    jr nz, jr_005_40c1

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $08
    ld [hl], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a
    ld hl, $c310
    add hl, bc
    sub [hl]
    ld e, $10
    ld hl, $d110

jr_005_40dc:
    ld [hl+], a
    dec e
    jr nz, jr_005_40dc

    ld hl, $c440
    add hl, bc
    inc [hl]
    ret


    ld a, [wIsBowWowFollowingLink]
    and a
    jr z, jr_005_4137

    cp $80
    jr z, jr_005_40fa

    ldh a, [hLinkPositionX]
    ldh [$d7], a
    ldh a, [$b3]
    ldh [$d8], a
    jr jr_005_4129

jr_005_40fa:
    ldh a, [hLinkPositionY]
    sub $40
    add $10
    cp $20
    jr nc, jr_005_4127

    ldh a, [hLinkPositionX]
    sub $88
    add $10
    cp $20
    jr nc, jr_005_4127

    ld a, [$c133]
    and a
    jr z, jr_005_4127

    ld a, $10
    ld [wWorldMusicTrack], a
    ld a, $6c
    call label_2373
    ld a, $18
    ldh [hSFX], a
    ld a, $01
    ld [wIsBowWowFollowingLink], a

jr_005_4127:
    jr jr_005_4137

jr_005_4129:
    ldh a, [$d7]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a

jr_005_4137:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld [$d150], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld [$d151], a
    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld e, l
    ld d, h
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_005_4160

    xor a
    ld [hl], a
    ld [de], a

jr_005_4160:
    call label_3B23
    ldh a, [$f0]
    rst $00
    add b
    ld b, c
    rst $08
    ld b, c
    db $eb
    ld b, c
    ld c, $42
    db $eb
    ld b, c
    inc b
    ld [SwitchBank], sp
    db $fc
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp+$04
    ld [SwitchBank], sp
    db $fc
    ld hl, sp-$33
    dec b
    inc c
    jr z, jr_005_41b1

    call label_C00
    jr nz, jr_005_41b0

    call GetRandomByte
    and $3f
    add $20
    ld [hl], a
    call IncrementEntityWalkingAttr
    call GetRandomByte
    and $07
    ld e, a
    ld d, b
    ld hl, $4170
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $4178
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a

jr_005_41b0:
    ret


jr_005_41b1:
    call IsEntityFrameCounterZero
    ld [hl], $28
    ld a, [wIsBowWowFollowingLink]
    and a
    jr z, jr_005_41bf

    jp Jump_005_4297


jr_005_41bf:
    ld hl, $c320
    add hl, bc
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld a, $20
    jp label_3BAA


    call label_C00
    jr nz, jr_005_41da

    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_005_41da:
    ldh a, [hFFE8]
    and a
    jr z, jr_005_41e5

    ld hl, $c320
    add hl, bc
    ld [hl], $10

jr_005_41e5:
    call Call_005_7ab1
    jp Jump_005_4228


    call IsEntityFrameCounterZero
    jr z, jr_005_41f9

    call Call_005_7ab1
    call Call_005_4228
    dec e
    jr z, jr_005_4206

jr_005_41f9:
    call label_3D7F
    call IncrementEntityWalkingAttr
    ld [hl], $03
    call IsEntityFrameCounterZero
    ld [hl], $10

jr_005_4206:
    ld a, [wIsBowWowFollowingLink]
    and a
    ret z

    jp Jump_005_4335


    call IsEntityFrameCounterZero
    jr nz, jr_005_4227

    call GetRandomByte
    and $3f
    add $30
    ld [hl], a
    ld a, [wIsBowWowFollowingLink]
    and a
    jr z, jr_005_4223

    ld [hl], $10

jr_005_4223:
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_005_4227:
    ret


Call_005_4228:
Jump_005_4228:
    ld e, $01
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    sub [hl]
    add $20
    cp $40
    jr c, jr_005_423e

    ldh a, [$ee]
    ld [hl], a
    inc e

jr_005_423e:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    sub [hl]
    add $20
    cp $40
    jr c, jr_005_4252

    ldh a, [$ef]
    ld [hl], a
    inc e

jr_005_4252:
    ret


Jump_005_4253:
    call Call_005_43a8
    call Call_005_43fe
    ld a, [$c3c0]
    ld e, a
    ld d, $00
    ld hl, $c030
    add hl, de
    ld e, l
    ld d, h
    push bc
    ld c, $05

jr_005_4268:
    ldh a, [hFrameCounter]
    xor c
    rra
    jr c, jr_005_428e

    ld hl, $d110
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $d100
    add hl, bc
    ld a, [hl]
    add $04
    ld [de], a
    inc de
    ld a, [wIsBowWowFollowingLink]
    and a
    ld a, $4e
    jr nz, jr_005_4288

    ld a, $7e

jr_005_4288:
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    inc de

jr_005_428e:
    dec c
    jr nz, jr_005_4268

    pop bc
    ld a, $03
    jp label_3DA0


Jump_005_4297:
    ld a, [wIsBowWowFollowingLink]
    cp $80
    jp z, Jump_005_432f

    call GetRandomByte
    ld d, b
    and $01
    jr nz, jr_005_42af

    ld e, $0f
    ld a, $ff
    ldh [$d7], a
    jr jr_005_42b7

jr_005_42af:
    ld e, $00
    ld a, $01
    ldh [$d7], a
    ld a, $10

jr_005_42b7:
    ldh [$d8], a

jr_005_42b9:
    ld a, e
    cp c
    jr z, jr_005_4323

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_4323

    cp $01
    jr z, jr_005_4323

    ld hl, $c3b0
    add hl, de
    ld a, [hl]
    dec a
    jr z, jr_005_4323

    push de
    ld hl, $c3a0
    add hl, de
    ld e, [hl]
    call label_3925
    pop de
    and a
    jr z, jr_005_4323

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [hLinkPositionX]
    sub [hl]
    add $2f
    cp $5e
    jr nc, jr_005_4323

    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [hLinkPositionY]
    sub [hl]
    add $2f
    cp $5e
    jr nc, jr_005_4323

    ld a, e
    ld [$d152], a
    ldh a, [hLinkPositionY]
    push af
    ldh a, [hLinkPositionX]
    push af
    ld a, [hl]
    ldh [hLinkPositionY], a
    ld hl, wEntity0PosX
    add hl, de
    ld a, [hl]
    ldh [hLinkPositionX], a
    ld a, $30
    call label_3BAA
    pop af
    ldh [hLinkPositionX], a
    pop af
    ldh [hLinkPositionY], a
    ld hl, $c320
    add hl, bc
    ld [hl], $10
    call IncrementEntityWalkingAttr
    ld [hl], $04
    ret


jr_005_4323:
    ld hl, $ffd7
    ld a, e
    add [hl]
    ld e, a
    ld hl, $ffd8
    cp [hl]
    jr nz, jr_005_42b9

Jump_005_432f:
    call IsEntityFrameCounterZero
    ld [hl], $10
    ret


Jump_005_4335:
    ld a, [$d152]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    ret z

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$ee]
    sub [hl]
    add $0e
    cp $1a
    ret nc

    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$ec]
    sub [hl]
    add $10
    cp $20
    ret nc

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $3d
    jr nz, jr_005_4380

    ld hl, $c440
    add hl, de
    ld a, [hl]
    and a
    ret z

    ld a, [wDialogState]
    and a
    ret nz

    call IsEntityFrameCounterZero
    ld [hl], b
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    ld [hl], $80
    ld a, $15
    jp label_2373


jr_005_4380:
    ld hl, $c420
    add hl, de
    ld a, [hl]
    and a
    ret nz

    ld a, $03
    ldh [$f2], a
    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $ad
    jr nz, jr_005_43a0

    ld hl, $c420
    add hl, de
    ld [hl], $18
    ld hl, $c3d0
    add hl, de
    inc [hl]
    ret


jr_005_43a0:
    push bc
    ld c, e
    ld b, d
    call label_3F50
    pop bc
    ret


Call_005_43a8:
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    ld [$d100], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    ld hl, $c310
    add hl, bc
    sub [hl]
    ld [$d110], a
    ld de, $d100
    ld hl, $d101
    push bc
    ld c, $05

jr_005_43c6:
    ld a, [de]
    sub [hl]
    add $07
    cp $0e
    jr c, jr_005_43d8

    bit 7, a
    jr nz, jr_005_43d6

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_005_43d6:
    dec [hl]
    dec [hl]

jr_005_43d8:
    inc hl
    inc de
    dec c
    jr nz, jr_005_43c6

    ld de, $d110
    ld hl, $d111
    ld c, $05

jr_005_43e5:
    ld a, [de]
    sub [hl]
    add $07
    cp $0e
    jr c, jr_005_43f7

    bit 7, a
    jr nz, jr_005_43f5

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_005_43f5:
    dec [hl]
    dec [hl]

jr_005_43f7:
    inc hl
    inc de
    dec c
    jr nz, jr_005_43e5

    pop bc
    ret


Call_005_43fe:
    ld a, [wIsBowWowFollowingLink]
    and a
    ret z

    cp $80
    ret z

    ldh a, [$9b]
    ld hl, hFF9A
    or [hl]
    ld hl, $ffa3
    or [hl]
    jp z, Jump_005_44ca

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld [$d106], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld [$d116], a
    ld de, $d106
    ld hl, $d105
    push bc
    ld bc, $0006

jr_005_442d:
    ld a, [de]
    sub [hl]
    add $07
    cp $0e
    jr c, jr_005_4448

    bit 7, a
    jr nz, jr_005_443f

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_005_443f:
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, c
    cp $01
    jr nz, jr_005_4448

    inc b

jr_005_4448:
    dec hl
    dec de
    dec c
    jr nz, jr_005_442d

    ld de, $d116
    ld hl, $d115
    ld c, $06

jr_005_4455:
    ld a, [de]
    sub [hl]
    add $07
    cp $0e
    jr c, jr_005_4473

    bit 7, a
    jr nz, jr_005_4467

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_005_4467:
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, c
    cp $01
    jr nz, jr_005_4473

    ld a, b
    or $02
    ld b, a

jr_005_4473:
    dec hl
    dec de
    dec c
    jr nz, jr_005_4455

    ld a, b
    ldh [$d7], a
    pop bc
    and $01
    jr z, jr_005_4499

    ld hl, $d110
    ld e, $06

jr_005_4485:
    ld a, [$d151]
    sub [hl]
    jr z, jr_005_4492

    bit 7, a
    jr nz, jr_005_4491

    inc [hl]
    inc [hl]

jr_005_4491:
    dec [hl]

jr_005_4492:
    inc hl
    dec e
    jr nz, jr_005_4485

    call Call_005_44b5

jr_005_4499:
    ldh a, [$d7]
    and $02
    jr z, jr_005_44ca

    ld hl, $d100
    ld e, $06

jr_005_44a4:
    ld a, [$d150]
    sub [hl]
    jr z, jr_005_44b1

    bit 7, a
    jr nz, jr_005_44b0

    inc [hl]
    inc [hl]

jr_005_44b0:
    dec [hl]

jr_005_44b1:
    inc hl
    dec e
    jr nz, jr_005_44a4

Call_005_44b5:
    ld a, [$d110]
    ld hl, $c310
    add hl, bc
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    ld a, [$d100]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a

Jump_005_44ca:
jr_005_44ca:
    ret


Call_005_44cb:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    or [hl]
    ret z

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld d, a
    bit 7, a
    jr z, jr_005_44e2

    cpl
    inc a

jr_005_44e2:
    ld e, a
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_005_44ee

    cpl
    inc a

jr_005_44ee:
    cp e
    jr nc, jr_005_44fe

    bit 7, d
    jr nz, jr_005_44f9

    ld e, $04
    jr jr_005_4509

jr_005_44f9:
    ld e, $02
    jp Jump_005_4509


jr_005_44fe:
    bit 7, [hl]
    jr z, jr_005_4507

    ld a, $06
    jp label_3B0C


jr_005_4507:
    ld e, $00

Jump_005_4509:
jr_005_4509:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    add e
    jp label_3B0C


    ld d, b
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld d, d
    ld hl, $2150
    ld d, [hl]
    ld hl, $2154
    ld hl, $c360
    add hl, bc
    ld [hl], $4c
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_4538

    ldh a, [$f1]
    add $02
    ldh [$f1], a

jr_005_4538:
    ld de, $4514
    call label_3BC0
    ldh a, [$ea]
    cp $07
    jr nz, jr_005_4557

    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_454e

    ld a, $13
    ldh [hSFX], a

jr_005_454e:
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    jp label_3B0C


jr_005_4557:
    call Call_005_7a3a
    call label_3B70
    call label_C56
    ldh a, [$f0]
    cp $03
    jr z, jr_005_4580

    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ldh [hFFE8], a
    jr z, jr_005_4580

    xor a
    ld [hl], a
    ld hl, $c320
    add hl, bc
    ld [hl], a

jr_005_4580:
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_45bf

    cp $08
    jr nz, jr_005_45b7

    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_005_45ad

    dec [hl]
    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_005_45ad

    call GetRandomByte
    and $3f
    jr nz, jr_005_45a8

    ld a, $76
    call label_237C
    jr jr_005_45ad

jr_005_45a8:
    ld a, $8f
    call label_2385

jr_005_45ad:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $23
    jr z, jr_005_45b7

    inc [hl]

jr_005_45b7:
    call IncrementEntityWalkingAttr
    ld a, $02
    ld [hl], a
    ldh [$f0], a

jr_005_45bf:
    call label_3B5A
    jr nc, jr_005_4611

    ldh a, [$f0]
    cp $03
    jr z, jr_005_4611

    ld a, [$c19b]
    and a
    jr nz, jr_005_4611

    ld a, [wAButtonSlot]
    cp $03
    jr nz, jr_005_45df

    ldh a, [hFFCC]
    and $20
    jr nz, jr_005_45ec

    jr jr_005_4611

jr_005_45df:
    ld a, [wBButtonSlot]
    cp $03
    jr nz, jr_005_4611

    ldh a, [hFFCC]
    and $10
    jr z, jr_005_4611

jr_005_45ec:
    ld a, [$c3cf]
    and a
    jr nz, jr_005_4611

    inc a
    ld [$c3cf], a
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
    ret


jr_005_4611:
    ldh a, [$f0]
    rst $00
    inc h
    ld b, [hl]
    ld h, e
    ld b, [hl]
    xor a
    ld b, [hl]
    ld c, [hl]
    ld b, a
    nop
    inc b
    ld b, $04
    nop
    db $fc
    ld a, [$affc]
    call label_3B0C
    call IsEntityFrameCounterZero
    ret nz

    call GetRandomByte
    and $07
    ld e, a
    ld d, b
    ld hl, $461c
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld a, e
    and $04
    ld hl, $c380
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $07
    ld e, a
    ld hl, $461c
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    call IsEntityFrameCounterZero
    call GetRandomByte
    and $1f
    add $30
    ld [hl], a
    jp IncrementEntityWalkingAttr


    call Call_005_7ab1
    call label_3B23
    ldh a, [hFFE8]
    and a
    jr z, jr_005_4685

    call IsEntityFrameCounterZero
    jr nz, jr_005_467a

    ld [hl], $30
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_005_467a:
    ld hl, $c320
    add hl, bc
    ld [hl], $05
    ld hl, $c310
    add hl, bc
    inc [hl]

jr_005_4685:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


    jr z, @+$4a

    ld l, b
    adc b
    jr jr_005_46cd

    ld e, b
    ld a, b
    nop
    nop
    nop
    nop
    and b
    and b
    and b
    and b
    nop
    nop
    nop
    nop
    sub b
    sub b
    sub b
    sub b
    jr nz, jr_005_46e9

    ld h, b
    add b
    jr nz, @+$42

    ld h, b
    add b
    ld hl, $c310
    add hl, bc
    ldh a, [hFrameCounter]
    xor c
    and $1f
    or [hl]
    jr nz, jr_005_46d2

    ld a, $0c
    call label_3BB5
    ldh a, [$d7]
    cpl
    inc a
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ldh a, [$d8]
    cpl
    inc a

jr_005_46cd:
    ld hl, $c240
    add hl, bc
    ld [hl], a

jr_005_46d2:
    call Call_005_7ab1
    call label_3B23
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    call label_3B0C
    call Call_005_7b04
    ld hl, $c380
    add hl, bc
    ld a, e

jr_005_46e9:
    xor $01
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, jr_005_474d

    ld hl, wActiveRoom
    ldh a, [hFrameCounter]
    and $0f
    or [hl]
    jr nz, jr_005_474d

    ld a, $6c
    ld e, $07
    call label_3B98
    jr c, jr_005_474d

    ld a, $13
    ldh [hSFX], a
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $03
    ld hl, $c310
    add hl, de
    ld [hl], $10
    ld hl, $c340
    add hl, de
    ld [hl], $12
    ld hl, $c350
    add hl, de
    ld [hl], $80
    ld hl, $c430
    add hl, de
    ld [hl], $40
    push bc
    call GetRandomByte
    and $0f
    ld c, a
    ld hl, $468f
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $469f
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld c, e
    ld b, d
    ld a, $18
    call label_3BAA
    pop bc

jr_005_474d:
    ret


    call label_3B44
    call Call_005_7ab1
    ldh a, [$ee]
    cp $a9
    jp nc, Jump_005_7b4b

    ldh a, [$ec]
    cp $91
    jp nc, Jump_005_7b4b

    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    call label_3B0C
    ld e, $00
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_005_4777

    inc e

jr_005_4777:
    ld hl, $c380
    add hl, bc
    ld [hl], e
    jp label_29F8


    ret


    nop
    nop
    ld h, b
    ld bc, label_800
    ld h, d
    ld bc, $0010
    ld h, h
    ld [bc], a
    db $10
    ld [$0266], sp
    nop
    nop
    ld l, b
    ld bc, label_800
    ld l, d
    ld bc, $0010
    ld l, h
    ld [bc], a
    db $10
    ld [RenderLoop.interactiveTransition], sp
    nop
    nop
    ld h, d
    ld hl, label_800
    ld h, b
    ld hl, $0010
    ld h, [hl]
    ld [hl+], a
    db $10
    ld [$2264], sp
    nop
    nop
    ld l, b
    ld bc, label_800
    ld l, d
    ld bc, $0010
    ld l, h
    ld [bc], a
    db $10
    ld [RenderLoop.interactiveTransition], sp

Call_005_47c0:
    ldh a, [$f1]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $4780
    add hl, de
    ld c, $04
    jp label_3CE6


    push bc
    sla c
    sla c
    ld a, $0c
    ld hl, $d580
    add hl, bc
    inc hl
    inc hl
    ld [hl], a
    ld a, $0e
    inc hl
    ld [hl], a
    pop bc
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, $40
    ld [hl], a
    call Call_005_47c0
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra
    rra
    and $03
    call label_3B0C
    call Call_005_54c3
    ldh a, [$f0]
    rst $00
    dec d
    ld c, b
    ld e, a
    ld c, b
    ld a, l
    ld c, b
    sub [hl]
    ld c, b
    rst $08
    ld c, b
    rst $30
    ld c, b
    add hl, bc
    ld c, c
    ld de, $fa49
    sbc a
    pop bc
    and a
    ret nz

    ld a, [$db4b]
    and a
    jr z, jr_005_484a

    call Call_005_5506
    ld a, e
    and a
    ret z

    ld hl, wAButtonSlot
    ld a, [hl]
    cp $0c
    jr nz, jr_005_483c

    ldh a, [hFFCC]
    and $20
    ret z

    xor a
    ld [$c1a9], a
    ld [$c1a8], a
    jr jr_005_4847

jr_005_483c:
    inc hl
    ld a, [hl]
    cp $0c
    jr nz, jr_005_484a

    ldh a, [hFFCC]
    and $10
    ret z

jr_005_4847:
    ld [hl], b
    jr jr_005_4853

jr_005_484a:
    call Call_005_5506
    ret nc

    ld a, $0c
    jp label_2385


jr_005_4853:
    xor a
    ld [$db4b], a
    call IsEntityFrameCounterZero
    ld [hl], $08
    jp IncrementEntityWalkingAttr


    ld a, [wGameplayType]
    cp $0b
    ret nz

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    call IsEntityFrameCounterZero
    ret nz

    xor a
    ld [wC167], a
    jp IncrementEntityWalkingAttr


    ld a, [wGameplayType]
    cp $0b
    ret nz

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    ld a, $09
    call label_2385
    call IsEntityFrameCounterZero
    ld [hl], $c0
    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    ld a, [wC10b]
    and a
    jr nz, jr_005_48ae

    ldh a, [$b0]
    ld [wWorldMusicTrack], a
    ld a, $01
    ld [wC10b], a
    ld [wC167], a

jr_005_48ae:
    ldh [$a1], a
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    call IsEntityFrameCounterZero
    ret nz

    ld [wC10b], a
    ld [wC167], a
    ldh a, [$b0]
    ld [wWorldMusicTrack], a
    ld a, $fe
    call label_2385
    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    ld a, $2a
    ld [$c1aa], a
    ld a, $03
    ld [$c1a9], a
    ld d, $0c
    call Call_005_5321
    ld a, [$db4c]
    add $20
    daa
    ld [$db4c], a
    ld a, $0b
    ldh [$a5], a
    ld a, $01
    ldh [$f2], a
    call IncrementEntityWalkingAttr
    ld a, [$c1a2]
    and a
    ret z

    ld a, [$c3cc]
    and a
    ret nz

    ld a, [$ddd1]
    and a
    ret nz

    jp IncrementEntityWalkingAttr


    ld a, $7e
    call label_2373
    jp IncrementEntityWalkingAttr


    ret


    ld a, b
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, h
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, d
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld [bc], a
    db $76
    ld [bc], a
    db $76
    ld [hl+], a
    ld [hl], h
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld e, d
    ld [hl+], a
    ld e, b
    ld [hl+], a
    ld e, b
    ld [bc], a
    ld e, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld a, d
    rlca
    ld a, h
    rlca
    nop
    nop
    jr nz, @+$04

    nop
    ld [$0222], sp
    nop
    nop
    jr nz, @+$04

    nop
    ld [$0222], sp
    pop af
    ld a, [$022a]
    pop af
    ld [bc], a
    ld a, [hl+]
    ld [hl+], a
    nop
    nop
    inc h
    ld [bc], a
    nop
    ld [$0228], sp
    ld a, [wGameplayType]
    cp $01
    jr nz, jr_005_4995

    ld hl, $c340
    add hl, bc
    ld [hl], $c4
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ld hl, $494a
    cp $70
    jr nz, jr_005_4986

    ld hl, $495a

jr_005_4986:
    ld c, $04
    call label_3CE6
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $70
    ret z

    inc [hl]
    ret


jr_005_4995:
    ld a, [wActiveRoom]
    and a
    jp nz, Jump_005_4bc1

    ldh a, [hFFF8]
    and $10
    jp nz, Jump_005_7b4b

    ldh a, [$f0]
    and a
    jr nz, jr_005_49d1

    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hLinkPositionY]
    cp $30
    jr nc, jr_005_49cc

    ld a, $01
    ld [wC10c], a
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    add $02
    call label_3B0C
    jr jr_005_49d1

jr_005_49cc:
    ld hl, $c440
    add hl, bc
    ld [hl], b

jr_005_49d1:
    ld de, $4912
    call label_3BC0
    call Call_005_7a3a
    ldh a, [$f0]
    rst $00
    push hl
    ld c, c
    rla
    ld c, d
    ld b, c
    ld c, e
    adc c
    ld c, e
    call Call_005_54c3
    ldh a, [hLinkPositionY]
    cp $20
    jr nc, jr_005_49fd

    ld hl, $c440
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_49fd

    ld [hl], $01
    ld a, $21
    jp label_2385


jr_005_49fd:
    call Call_005_5506
    jr nc, jr_005_4a0c

    ld a, [$c19b]
    and a
    ret nz

    ld a, $0d
    jp label_2385


jr_005_4a0c:
    ld hl, $c1ad
    ld [hl], b
    ret


    nop
    inc b
    dec b
    ld b, $07
    ld bc, $023e
    ldh [$a1], a
    xor a
    ld [$c19b], a
    call Call_005_7b24
    ld a, e
    xor $01
    ldh [hFF9E], a
    push bc
    call $0bf0
    pop bc
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a
    jr nc, jr_005_4a46

    ld hl, $c390
    add hl, bc
    ld a, [hl]
    inc a
    cp $06
    jr nz, jr_005_4a45

    xor a

jr_005_4a45:
    ld [hl], a

jr_005_4a46:
    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $4a11
    add hl, de
    ld a, [hl]
    call label_3B0C
    call label_BFB
    jr nz, jr_005_4a9e

    ld a, $02
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$da]
    ld hl, $c310
    add hl, de
    ld [hl], a
    ld hl, $c440
    add hl, de
    ld [hl], $4c
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $20
    ld a, $09
    call label_3B0C
    ld hl, $c320
    add hl, bc
    ld [hl], b
    call IncrementEntityWalkingAttr
    ldh a, [hMapIndex]
    ld e, a
    ld d, b
    ld hl, wMinimapTiles
    add hl, de
    ld a, [hl]
    or $10
    ld [hl], a
    ld a, $01
    ld [$db48], a
    ret


jr_005_4a9e:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_005_4aae

    ld a, [hl]
    cp $f0
    jr nc, jr_005_4aae

    inc [hl]

jr_005_4aae:
    call Call_005_7ab1
    call label_3B23
    call label_BFB
    cp $06
    jr nc, jr_005_4aec

    ldh a, [$ef]
    cp $30
    jr nc, jr_005_4ac5

    ld [hl], $08
    jr jr_005_4aec

jr_005_4ac5:
    ld hl, $c320
    add hl, bc
    inc [hl]
    nop
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_4ada

    and $80
    jr z, jr_005_4ad9

    inc [hl]
    inc [hl]

jr_005_4ad9:
    dec [hl]

jr_005_4ada:
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_4ae9

    and $80
    jr z, jr_005_4ae8

    inc [hl]
    inc [hl]

jr_005_4ae8:
    dec [hl]

jr_005_4ae9:
    jp Jump_005_7aea


jr_005_4aec:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $03
    jr z, jr_005_4b01

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    ld a, $09
    ldh [$f2], a

jr_005_4b01:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $0c
    jr z, jr_005_4b16

    ld hl, $c250
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    ld a, $09
    ldh [$f2], a

jr_005_4b16:
    call label_BFB
    cp $60
    jr nc, jr_005_4b40

    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_005_4b40

    ld hl, $c240
    call Call_005_4b2c
    ld hl, $c250

Call_005_4b2c:
    add hl, bc
    ld a, [hl]
    cp $30
    jr z, jr_005_4b40

    cp $d0
    jr z, jr_005_4b40

    ld e, $01
    bit 7, a
    jr z, jr_005_4b3e

    ld e, $ff

jr_005_4b3e:
    add e
    ld [hl], a

jr_005_4b40:
    ret


    ld a, $02
    ldh [$a1], a
    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ret z

    ld [hl], b
    xor a
    ld [wC167], a
    ld a, $23
    ldh [$f2], a
    call label_27DD
    call IsEntityFrameCounterZero
    ld [hl], $40
    call Call_005_7b24
    add $08
    call label_3B0C
    call Call_005_7b04
    add $12
    cp $24
    jr nc, jr_005_4b86

    call Call_005_7b14
    add $12
    cp $24
    jr nc, jr_005_4b86

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], $80

jr_005_4b86:
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    cp $01
    jr nz, jr_005_4b95

    ld a, $0a
    jp label_2385


jr_005_4b95:
    and a
    jr z, jr_005_4b9d

    ld a, $02
    ldh [$a1], a
    ret


jr_005_4b9d:
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_4bab

    call Call_005_7b24
    add $08
    call label_3B0C

jr_005_4bab:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_4bb6

    call Call_005_54c3

jr_005_4bb6:
    call Call_005_5506
    ret nc

    ld a, $0b
    jp label_2385


    ld a, b
    nop

Jump_005_4bc1:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_4bf1

    ld de, $4bbf
    call label_3C77
    call Call_005_7a3a
    call Call_005_7ab1
    call IsEntityFrameCounterZero
    jp z, Jump_005_7b4b

    and $10
    ld e, $01
    jr z, jr_005_4be3

    ld e, $ff

jr_005_4be3:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_005_4bf0

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a

jr_005_4bf0:
    ret


jr_005_4bf1:
    ld a, [wIsMarinFollowingLink]
    and a
    jr nz, jr_005_4c07

    ld a, [wHasInstrument3]
    and $02
    jp nz, Jump_005_7b4b

    ld a, [wTradeSequenceItem]
    cp $04
    jp nc, Jump_005_7b4b

jr_005_4c07:
    ld a, [$db48]
    and a
    jr nz, jr_005_4c14

    ld a, [wDidFindSword]
    and a
    jp nz, Jump_005_7b4b

jr_005_4c14:
    ld a, [wIsMarinFollowingLink]
    and a
    jr nz, jr_005_4c24

    ld a, [$db48]
    and a
    jr z, jr_005_4c43

    cp $01
    jr nz, jr_005_4c43

jr_005_4c24:
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $18
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $34
    call label_3D8A
    ldh a, [hIsGBC]
    and a
    jr z, jr_005_4c3e

    ld de, $4946
    call label_3BC0

jr_005_4c3e:
    ld de, $4942
    jr jr_005_4c57

jr_005_4c43:
    call Call_005_4dcf
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_4c54

    call Call_005_7b24
    ld hl, $c3b0
    add hl, bc
    ld [hl], e

jr_005_4c54:
    ld de, $4932

jr_005_4c57:
    call label_3BC0
    call Call_005_7a3a
    call Call_005_54c3

    ; Load [$fff0] into a, then call TableJump with stack pointed to $4c63
    ldh a, [$f0]
    rst $00

; Contains jump points to execute Tarin giving the shield
data_005_4c63::
    db $6D, $4C, $9C, $4C, $C8, $4C, $09, $4D, $A3, $4D

label_005_4c6d::
    ld a, [wShieldLevel]
    and a
    jr z, jr_005_4c79

    call IncrementEntityWalkingAttr
    ld [hl], $03
    ret


jr_005_4c79:
    ldh a, [hLinkPositionY]
    cp $7b
    jr c, jr_005_4c88

    sub $02
    ldh [hLinkPositionY], a
    ld a, $00
    jp label_2385


jr_005_4c88:
    call Call_005_5506
    ret nc

    ld a, $54
    call label_2385
    jp IncrementEntityWalkingAttr

; This data is pushed into DC90
data_005_4C94::
    db $FF, $47, $31, $52, $C5, $28, $00, $00

jr_005_4c9c:
    ld a, [wDialogState]
    and a
    ret nz

    call IsEntityFrameCounterZero
    ld [hl], $80
    ld a, $10
    ld [wWorldMusicTrack], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_005_4cc3

    ld hl, $dc88
    ld de, $4c94

jr_005_4cb6:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, l
    and $07
    jr nz, jr_005_4cb6

    ld a, $02
    ld [$ddd1], a

jr_005_4cc3:
    jp IncrementEntityWalkingAttr

; Shield sprite attributes when getting from Tarin
; Edit this to change sprite
data_005_4cc7::
    db $88, $17

	; This is the jump in point when shield is lifted; It waits a number of frames to actually add to inventory
    call IsEntityFrameCounterZero
    jr nz, jr_005_4ce6

    ld [wC167], a
	; This line specifically adds the shield to the inventory when Link talks to Tarin I think
    ld d, INVENTORY_SHIELD
	; Call to add shield to inventory
    call Call_005_5321
    ld a, $01
    ld [wShieldLevel], a
    ld a, $22
    ldh [hLinkAnimationState], a
    ld a, $91
    call label_2385
    jp IncrementEntityWalkingAttr


jr_005_4ce6:
    ldh a, [hLinkPositionX]
    ldh [$ee], a
    ldh a, [hLinkPositionY]
    sub $0c
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $4cc6
    call label_3C77
    call label_3D8A
    ld a, $6c
    ldh [hLinkAnimationState], a
    ld a, $02
    ldh [$a1], a
    ld a, $03
    ldh [hFF9E], a
    ret


    ld a, [$db48]
    and a
    jr z, jr_005_4d4d

    cp $01
    jr z, jr_005_4d38

    call Call_005_5506
    jr nc, jr_005_4d2c

    ld a, [wIsMarinFollowingLink]
    and a
    ld a, $dd
    jr nz, jr_005_4d35

    ld a, [wTradeSequenceItem]
    cp $03
    jr nz, jr_005_4d33

    ld a, $c5
    call label_2373

jr_005_4d2c:
    ld a, [wIsMarinFollowingLink]
    and a
    jr nz, jr_005_4d5d

    ret


jr_005_4d33:
    ld a, $c5

jr_005_4d35:
    jp label_2373


jr_005_4d38:
    call Call_005_5506
    jr nc, jr_005_4d4b

    ld a, [wHasInstrument1]
    bit 1, a
    ld a, $11
    jr z, jr_005_4d48

    ld a, $10

jr_005_4d48:
    call label_2385

jr_005_4d4b:
    jr jr_005_4d56

jr_005_4d4d:
    call Call_005_5506
    ret nc

    ld a, $55
    jp label_2385


jr_005_4d56:
    ld a, [$db48]
    cp $01
    jr nz, jr_005_4da2

jr_005_4d5d:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    add $07
    ld [hl], a
    jr nc, jr_005_4da2

    ld a, $3f
    call label_3B86
    ldh a, [$d7]
    add $06
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    sub $03
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableC
    add hl, de
    ld [hl], $01
    ld hl, $c240
    add hl, de
    ld [hl], $ff
    ld hl, $c250
    add hl, de
    ld [hl], $fd
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $30
    ld hl, $c340
    add hl, de
    ld [hl], $c1
    ld hl, $c350
    add hl, de
    ld [hl], $00

jr_005_4da2:
    ret


    ld a, [wDialogState]
    and a
    jr nz, jr_005_4dc6

    ld a, [wC177]
    and a
    jr nz, jr_005_4dbd

    ld a, $04
    ld [wTradeSequenceItem], a
    ld a, $0d
    ldh [$a5], a
    call label_C0C
    jr jr_005_4dc2

jr_005_4dbd:
    ld a, $c9
    call label_2373

jr_005_4dc2:
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_005_4dc6:
    ret


    ld [hl], h
    rlca
    db $76
    rlca
    ld [hl], b
    nop
    ld [hl], d
    nop

Call_005_4dcf:
    ld a, [$db48]
    cp $02
    ret nz

    ld a, [wTradeSequenceItem]
    cp $04
    jr nc, jr_005_4de3

    ld a, $78
    ld de, $4dc7
    jr jr_005_4df3

jr_005_4de3:
    ldh a, [hFFF8]
    and $20
    ret z

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $4b
    ld de, $4dcb
    ld a, $7c

jr_005_4df3:
    ldh [$ee], a
    ld a, $5c
    ldh [$ec], a
    xor a
    ldh [$f1], a
    call label_3BC0
    call label_3D8A
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    ldh [$f1], a
    ret


    ld h, b
    ld bc, $0162
    ld h, d
    ld hl, $2160
    ld h, h
    ld bc, $0166
    ld h, [hl]
    ld hl, $2164
    ld l, b
    ld bc, $016a
    ld l, h
    ld bc, Start.notGBC
    ld l, d
    ld hl, $2168
    ld l, [hl]
    ld hl, $216c
    ld l, b
    ld bc, $016a
    ld l, d
    ld hl, $2168
    ld h, [hl]
    ld bc, $2166
    ld h, [hl]
    ld bc, $2166
    ld l, h
    ld bc, Start.notGBC
    ld l, h
    ld bc, Start.notGBC
    ld l, [hl]
    ld hl, $216c
    ld l, [hl]
    ld hl, $216c
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $2164
    ld h, d
    ld hl, $2160
    ld [label_808], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$06f8], sp
    ld bc, $95fa
    db $db
    cp $01
    jp z, Jump_005_4ee0

    ld a, [wIsMarinFollowingLink]
    and a
    jp nz, Jump_005_7b4b

    ld a, [wActiveRoom]
    and a
    jp nz, $51ce

    ld a, [wDidFindSword]
    and a
    jp z, Jump_005_7b4b

    ldh a, [hMapIndex]
    cp $c0
    jr c, jr_005_4e87

    jr jr_005_4e96

jr_005_4e87:
    ld a, [$d808]
    and $10
    jr nz, jr_005_4e96

    ld a, [wTradeSequenceItem]
    cp $07
    jp nc, Jump_005_7b4b

jr_005_4e96:
    push bc
    sla c
    rl b
    sla c
    rl b
    ld hl, $d580
    add hl, bc
    inc hl
    inc hl
    ld [hl], $08
    inc hl
    ld [hl], $0b
    pop bc
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_4ed1

    ld hl, $c380
    add hl, bc
    ld [hl], $03
    call Call_005_7b04
    add $14
    cp $28
    jr nc, jr_005_4ed1

    call Call_005_7b14
    add $14
    cp $28
    jr nc, jr_005_4ed1

    call Call_005_7b24
    ld hl, $c380
    add hl, bc
    ld [hl], e

jr_005_4ed1:
    call Call_005_54ea
    ld a, [$c3c8]
    cp $01
    jr nz, jr_005_4f39

    call label_C00
    jr nz, jr_005_4f39

Jump_005_4ee0:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $4e56
    add hl, de
    ld a, [hl]
    ldh [$f1], a
    ldh a, [hFrameCounter]
    add $10
    and $1f
    jr nz, jr_005_4f39

    ld a, $c9
    call label_3B86
    jr c, jr_005_4f39

    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    sub $08
    ld [hl], a
    push bc
    ldh a, [hFrameCounter]
    add $10
    rra
    rra
    rra
    rra
    rra
    and $01
    ld c, a
    ld hl, $4e5e
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $4e60
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $c250
    add hl, de
    ld [hl], $fc
    ld hl, $c3d0
    add hl, de
    ld [hl], $40
    pop bc

jr_005_4f39:
    ld a, c
    ld [$c50f], a
    ld de, $4e2a
    call label_3BC0
    call Call_005_54c3
    ld a, [wGameplayType]
    cp $07
    ret z

    cp $0b
    ret nz

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    ldh a, [$f0]
    rst $00
    ld h, h
    ld c, a
    jr nz, jr_005_4fac

    ld e, c
    ld d, b
    dec hl
    ld d, c
    ld h, c
    ld d, c
    cp h
    ld d, c
    ldh a, [hMapIndex]
    cp $c0
    jr nc, jr_005_4f6f

    ld a, [$c3c8]
    and a
    ret nz

jr_005_4f6f:
    call Call_005_5506
    ret nc

    ld a, [$d808]
    and $10
    jr z, jr_005_4fa7

    ld hl, $d892
    ld a, [hl]
    and $40
    jr nz, jr_005_4f89

    set 6, [hl]
    ld a, $94
    jp label_2373


jr_005_4f89:
    ld a, [$db49]
    and $04
    jr z, jr_005_4f95

jr_005_4f90:
    ld a, $95
    jp label_2373


jr_005_4f95:
    ld e, $0b
    ld hl, wAButtonSlot

jr_005_4f9a:
    ld a, [hl+]
    cp $09
    jr z, jr_005_4fa7

    dec e
    ld a, e
    cp $ff
    jr nz, jr_005_4f9a

    jr jr_005_4f90

jr_005_4fa7:
    call label_C00
    ld [hl], $10

jr_005_4fac:
    ld d, $2f
    ld e, $03
    ld a, [$db48]
    and a
    jr z, jr_005_4ffb

    ld e, $06
    cp $02
    jr nz, jr_005_4fd0

    ld e, $05
    ldh a, [hMapIndex]
    cp $c0
    jr c, jr_005_4fd0

    push de
    call label_27DD
    pop de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], b
    ld e, $92

jr_005_4fd0:
    push bc
    ld c, $0b
    ld hl, wAButtonSlot

jr_005_4fd6:
    ld a, [hl+]
    cp $09
    jr nz, jr_005_4ff4

    ld e, $04
    ld d, $4a
    ld a, [$db49]
    and $04
    jr z, jr_005_4ffa

    ld e, $05
    ld d, $2f
    ldh a, [hMapIndex]
    cp $c0
    jr c, jr_005_4ffa

    ld e, $92
    jr jr_005_4ffa

jr_005_4ff4:
    dec c
    ld a, c
    cp $ff
    jr nz, jr_005_4fd6

jr_005_4ffa:
    pop bc

jr_005_4ffb:
    ld a, e
    cp $80
    jr c, jr_005_5005

    call label_2373
    jr jr_005_5008

jr_005_5005:
    call label_2385

jr_005_5008:
    ldh a, [hMapIndex]
    cp $c0
    jr c, jr_005_5018

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], b
    push de
    call label_27DD
    pop de

jr_005_5018:
    ld hl, $c440
    add hl, bc
    ld [hl], d
    jp IncrementEntityWalkingAttr


    call Call_005_7a3a
    ld hl, $c440
    add hl, bc
    ld d, [hl]
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    ld a, d
    jr nz, jr_005_503e

    inc [hl]
    ld [wWorldMusicTrack], a
    ldh [$b0], a
    ldh [$bd], a
    ld hl, $c3c8
    ld [hl], $01

jr_005_503e:
    cp $4a
    jr nz, jr_005_5054

    ld a, [$db49]
    and $04
    jr nz, jr_005_5054

    call IncrementEntityWalkingAttr
    xor a
    ld [$d210], a
    ld [$d211], a
    ret


jr_005_5054:
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    push bc
    call $0bf0
    pop bc
    ld a, [$d211]
    cp $07
    jr nz, jr_005_508a

    ld a, [$d210]
    cp $e8
    jr nz, jr_005_508a

    ld a, $16
    call label_2385
    push bc
    call $0bf0
    pop bc
    xor a
    ld [$d210], a
    ld [$d211], a
    call label_27F2
    jp IncrementEntityWalkingAttr


jr_005_508a:
    call Call_005_7b24
    ld a, e
    xor $01
    ldh [hFF9E], a
    ld a, [$d210]
    add $01
    ld [$d210], a
    ld e, a
    ld a, [$d211]
    adc $00
    ld [$d211], a
    ld d, a
    ld a, [$d211]
    cp $07
    jr nz, jr_005_50b7

    ld a, [$d210]
    cp $e0
    jr c, jr_005_50b7

    xor a
    ld [$c3c8], a
    ret


jr_005_50b7:
    ld hl, $c3c8
    ld [hl], $01
    ld a, e
    srl d
    rra
    srl d
    rra
    srl d
    rra
    srl d
    rra
    cp $1d
    jr c, jr_005_50d2

    cp $3b
    jr nc, jr_005_50d2

    inc [hl]

jr_005_50d2:
    cp $1d
    ret c

    ld a, $00
    ldh [hLinkAnimationState], a
    ldh a, [hFrameCounter]
    ld e, $75
    and $40
    jr z, jr_005_50e2

    inc e

jr_005_50e2:
    ld a, e
    ldh [hLinkAnimationState], a
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_512a

    ld a, $c9
    call label_3B86
    jr c, jr_005_512a

    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, de
    sub $08
    ld [hl], a
    push bc
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    rra
    and $01
    ld c, a
    ld b, d
    ld hl, $4e5e
    add hl, bc
    ldh a, [hLinkPositionX]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $4e60
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    pop bc
    ld hl, $c250
    add hl, de
    ld [hl], $fc
    ld hl, $c3d0
    add hl, de
    ld [hl], $40

jr_005_512a:
    ret


    ld a, [wDialogState]
    and a
    jr nz, jr_005_515e

    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr nz, jr_005_514f

    ld a, $01
    ld [$de00], a
    ld a, $10
    ld [wWorldMusicTrack], a
    ld a, $05
    call label_AC6
    call IsEntityFrameCounterZero
    ld [hl], $80
    ret


jr_005_514f:
    ld a, $15
    call label_2385
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], b

jr_005_515e:
    ret


    sub b
    rla
    ld a, $01
    ld [$de00], a
    call IsEntityFrameCounterZero
    jr nz, jr_005_5197

    ld a, [wDialogState]
    and a
    ret nz

    ld hl, $db49
    set 2, [hl]
    xor a
    ld [$db4a], a
    call IncrementEntityWalkingAttr
    ldh a, [hMapIndex]
    cp $c0
    jr c, jr_005_5183

    ld [hl], b

jr_005_5183:
    xor a
    ld [wC167], a
    ldh a, [hMapIndex]
    cp $c0
    jr nc, jr_005_5192

    ld a, $14
    jp label_2385


jr_005_5192:
    ld a, $93
    jp label_2373


jr_005_5197:
    cp $08
    jr nz, jr_005_51a1

    dec [hl]
    ld a, $13
    call label_2385

jr_005_51a1:
    ld a, $6c
    ldh [hLinkAnimationState], a
    ld a, $02
    ldh [$a1], a
    ldh a, [hLinkPositionX]
    ldh [$ee], a
    ldh a, [hLinkPositionY]
    sub $0c
    ldh [$ec], a
    ld de, $515f
    xor a
    ldh [$f1], a
    jp label_3C77


    ld a, [wDialogState]
    and a
    ret nz

    call Call_005_5506
    ret nc

    ld a, $97
    jp label_2373


    ld e, h
    nop
    ld e, h
    jr nz, @-$04

    ld c, $db
    cp $07
    jr c, jr_005_51fb

    ld a, [$d8fd]
    and $30
    jp nz, Jump_005_7b4b

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $60
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $7a
    ld de, $51ca
    call label_3BC0
    call Call_005_7a3a
    call Call_005_5506
    ret nc

    ld a, $d7
    jp label_2373


jr_005_51fb:
    ld a, [wDidFindSword]
    and a
    jp nz, Jump_005_7b4b

    ld a, [wShieldLevel]
    and a
    jr z, jr_005_5211

    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, $03
    ld [hl], a
    ldh [$f0], a

jr_005_5211:
    ldh a, [$f0]
    and a
    jr nz, jr_005_5237

    call label_BFB
    ld [hl], $7f
    ld hl, $c380
    add hl, bc
    ld [hl], $01
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $08
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub $08
    ld [hl], a
    ld [wC167], a
    jp IncrementEntityWalkingAttr


jr_005_5237:
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_5245

    call Call_005_7b24
    ld hl, $c380
    add hl, bc
    ld [hl], e

jr_005_5245:
    call Call_005_54ea
    ld de, $4e0a
    call label_3BC0
    ldh a, [$f0]
    dec a
    rst $00
    sub h
    ld d, d
    db $db
    ld d, d
    ld [de], a
    ld d, e
    ld b, b
    rlca
    ld b, d
    rlca
    ld b, d
    daa
    ld b, b
    daa
    ld b, h
    nop
    ld b, [hl]
    nop
    ld c, b
    nop
    ld c, d
    nop
    ld c, b
    nop
    ld c, h
    nop
    nop
    nop
    ld c, [hl]
    ld b, $00
    ld [$264e], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $cd01
    ei
    dec bc
    jr nz, jr_005_52a4

    ld a, $01
    call label_2385
    ld [hl], $40
    call IncrementEntityWalkingAttr
    xor a

jr_005_52a4:
    rra
    rra
    and $1f
    ld e, a
    ld d, b
    ld hl, $5274
    add hl, de
    ld a, [hl]

Call_005_52af:
    ldh [$f1], a
    ld a, $38
    ldh [$ee], a
    ldh [hLinkPositionX], a
    ld a, $34
    ldh [$ec], a
    ldh [hLinkPositionY], a
    ld a, $02
    ldh [$a1], a
    ld a, $ff
    ldh [hLinkAnimationState], a
    ld de, $5258
    call label_3BC0
    ldh a, [hIsGBC]
    and a
    jr z, jr_005_52d8

    ld hl, $526c
    ld c, $02
    call label_3CE6

jr_005_52d8:
    jp label_3D8A


    ld a, $03
    call Call_005_52af
    call IsEntityFrameCounterZero
    ld hl, wDialogState
    or [hl]
    jr nz, jr_005_5311

    ldh a, [hPressedButtonsMask]
    and $0f
    jr z, jr_005_5311

    call IncrementEntityWalkingAttr
    ld a, $01
    ldh [$a2], a
    ld a, $02
    ld [$c146], a
    ld a, $12
    ldh [$a3], a
    ld a, $0c
    ldh [hFF9A], a
    xor a
    ldh [$9b], a
    ld a, $00
    ldh [hFF9E], a
    ldh [$a1], a
    ld a, $01
    ld [wC10a], a

jr_005_5311:
    ret


    call Call_005_7a3a
    call Call_005_54c3
    call Call_005_5506
    ret nc

    ld a, $02
    jp label_2385

; Add item to inventory slot (used for shield)
Call_005_5321:
    ld hl, wAButtonSlot
    ld e, $0c

; Hunt to see if a matching item exists in inventory
jr_005_5326:
    ld a, [hl+]
    cp d
    jr z, jr_005_533d

    dec e
    jr nz, jr_005_5326

    ld hl, wAButtonSlot

; Check for first empty slot, add item to it and return
jr_005_5330:
    ld a, [hl]
    and a
    jr nz, jr_005_5336

    ld [hl], d
    ret


jr_005_5336:
    inc hl
    inc e
    ld a, e
    cp $0c
    jr nz, jr_005_5330

; Already found the item slot so return
jr_005_533d:
    ret


    ld h, b
    nop
    ld h, d
    nop
    ld h, d
    jr nz, @+$62

    jr nz, jr_005_53ab

    nop
    ld h, [hl]
    nop
    ld h, [hl]
    jr nz, jr_005_53b1

    jr nz, @+$6a

    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld l, d
    jr nz, @+$6a

jr_005_5359:
    jr nz, @+$70

    jr nz, @+$6e

    jr nz, jr_005_5359

    and l
    db $db
    and a
    jr z, jr_005_53dc

    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_005_5372

    call Call_005_7b24
    ld hl, $c380
    add hl, bc
    ld [hl], e

jr_005_5372:
    call Call_005_54ea
    ld de, $533e
    call label_3BC0
    call Call_005_7a3a
    call Call_005_54c3
    ldh a, [$f0]
    rst $00
    adc d
    ld d, e
    sbc h
    ld d, e
    bit 2, e
    ld a, [$d477]
    and a
    jr nz, jr_005_53cb

    call Call_005_5506
    ret nc

    ld a, $f0
    call label_2385
    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr z, jr_005_53ac

    ld [hl], b

jr_005_53ab:
    ret


jr_005_53ac:
    ld a, [wRupeeCountLow]
    sub $00

jr_005_53b1:
    ld a, [wRupeeCountHigh]
    sbc $01
    jr c, jr_005_53c5

    ld a, $64
    ld [wSubstractRupeeBufferHigh], a
    ld a, $f1
    ld [$d477], a
    jp label_2385


jr_005_53c5:
    ld [hl], b
    ld a, $4e
    jp label_2385


jr_005_53cb:
    call Call_005_5506
    ret nc

    ld a, $f1
    jp label_2385


    ld e, h
    ld bc, $215c
    ld e, [hl]
    ld bc, $215e

jr_005_53dc:
    ld hl, $c440
    add hl, bc
    ld a, [$d477]
    or [hl]
    jr nz, jr_005_5411

    ld e, $0f
    ld d, b

jr_005_53e9:
    ld a, e
    cp c
    jr z, jr_005_53ff

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_53ff

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $6a
    jp z, Jump_005_7b4b

jr_005_53ff:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_005_53e9

    ld de, $53d4
    call label_3BC0
    call Call_005_7a3a
    jp Jump_005_54c3


jr_005_5411:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $10
    cp $20
    jr nc, jr_005_5440

    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $1c
    jr nc, jr_005_5440

    ld a, $80
    ld [$c1ad], a
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a

jr_005_5440:
    ld a, [wC11F]
    and a
    jr z, jr_005_544c

    call IncrementEntityWalkingAttr
    ld [hl], b
    jr jr_005_5487

jr_005_544c:
    ldh a, [$f0]
    rst $00
    ld d, l
    ld d, h
    ld l, h
    ld d, h
    sub b
    ld d, h
    call Call_005_7b04
    add $08
    cp $10
    jr nc, jr_005_546a

    call Call_005_7b14
    add $09
    cp $12
    jr nc, jr_005_546a

    call IncrementEntityWalkingAttr

jr_005_546a:
    jr jr_005_5487

    ldh a, [$ee]
    ldh [hLinkPositionX], a
    ldh a, [$ec]
    sub $05
    ldh [hLinkPositionY], a
    call IncrementEntityWalkingAttr
    ld hl, $c440
    add hl, bc
    ld [hl], $01
    xor a
    ld [$d477], a

jr_005_5483:
    ld a, $01
    ldh [hFFB2], a

jr_005_5487:
    call label_3D8A
    ld de, $53d4
    jp label_3BC0


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    ld [$c13b], a
    ldh a, [hMapIndex]
    ld hl, $c3e0
    add hl, bc
    ld [hl], a
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, bc
    add $05
    ld [hl], a
    ld hl, $c310
    add hl, bc
    ld [hl], b
    ld a, [wLinkMotionState]
    cp $02
    jr nz, jr_005_54c1

    ldh a, [$a2]
    ld [hl], a

jr_005_54c1:
    jr jr_005_5483

Call_005_54c3:
Jump_005_54c3:
    call label_3B5A
    jr nc, jr_005_54e5

    call label_CBE
    call label_CB6
    ld a, [$c1a6]
    and a
    jr z, jr_005_54e5

    ld e, a
    ld d, b
    ld hl, $c39f
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_005_54e5

    ld hl, $c28f
    add hl, de
    ld [hl], $00

jr_005_54e5:
    ret


    ld b, $04
    ld [bc], a
    nop

Call_005_54ea:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $54e6
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


Call_005_5506:
    ld e, b
    ldh a, [$eb]
    cp $40
    jr nz, jr_005_5519

    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $2b
    jr jr_005_5523

jr_005_5519:
    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $28

jr_005_5523:
    jr nc, jr_005_5569

    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $10
    cp $20
    jr nc, jr_005_5569

    inc e
    ldh a, [$eb]
    cp $6d
    jr z, jr_005_5544

    push de
    call Call_005_7b24
    ldh a, [hFF9E]
    xor $01
    cp e
    pop de
    jr nz, jr_005_5569

jr_005_5544:
    ld hl, $c1ad
    ld [hl], $01
    ld a, [wDialogState]
    ld hl, wInventoryAppearing
    or [hl]
    ld hl, $c146
    or [hl]
    ld hl, $c134
    or [hl]
    jr nz, jr_005_5569

    ld a, [wWindowY]
    cp $80
    jr nz, jr_005_5569

    ldh a, [hFFCC]
    and $10
    jr z, jr_005_5569

    scf
    ret


jr_005_5569:
    and a
    ret


    call label_BFB
    ld [hl], $c0
    ld a, $18
    ld [$d202], a
    ret


    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    rst $00
    add h
    ld d, l
    ld a, [hl-]
    ld e, c
    ld bc, $8459
    ld e, c
    call label_3EE8
    call $58d4
    ldh a, [$ea]
    cp $05
    jr z, @+$3c

    ld [$c1c6], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    rst $00
    sbc l
    ld d, l
    xor e
    ld d, l
    call IsEntityFrameCounterZero
    ld [hl], $ff
    ld hl, $c420
    add hl, bc
    ld [hl], $ff
    jp Jump_005_6347


    call IsEntityFrameCounterZero
    jp z, Jump_005_55bc

    ld hl, $c420
    add hl, bc
    ld [hl], a
    cp $80
    ret nc

    jp Jump_005_7550


Jump_005_55bc:
    call Call_005_7585
    ld hl, $c480
    add hl, de
    ld [hl], $08
    ret


    ld hl, sp-$58
    ld [$cdf8], sp
    ld a, [hl-]
    ld a, d
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_561e

    and $3f
    jr nz, jr_005_561e

    ld a, $65
    ld e, $04
    call label_3B98
    jr c, jr_005_5650

    ld hl, $c340
    add hl, de
    ld [hl], $02
    ld hl, $c350
    add hl, de
    ld [hl], $80
    ld hl, $c430
    add hl, de
    ld [hl], $40
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $01
    ld hl, wEntity0PosX
    add hl, de
    ld a, [$d202]
    ld [hl], a
    add $20
    ld [$d202], a
    cp $a8
    jr c, jr_005_5610

    ld a, $08
    ld [$d202], a

jr_005_5610:
    call GetRandomByte
    ld hl, $c3d0
    add hl, de
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], $00

jr_005_561e:
    ld a, [$d201]
    inc a
    ld [$d201], a
    and $7f
    jr nz, jr_005_5650

    ld a, $65
    ld e, $04
    call label_3B98
    jr c, jr_005_5650

    ld hl, $c340
    add hl, de
    ld [hl], $41
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $02
    ldh a, [$d7]
    sub $14
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    sub $04
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a

jr_005_5650:
    ld hl, $c360
    add hl, bc
    ld a, [hl]
    cp $0a
    jr nc, jr_005_56b1

    ld a, [$d201]
    add $40
    and $ff
    jr nz, jr_005_56b1

    ld a, $65
    ld e, $04
    call label_3B98
    jr c, jr_005_56b1

    ld hl, $c4d0
    add hl, de
    ld [hl], d
    ld hl, $c340
    add hl, de
    ld [hl], $02
    ld hl, $c430
    add hl, de
    ld [hl], d
    ld hl, $c360
    add hl, de
    ld [hl], d
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $03
    call GetRandomByte
    and $3f
    add $20
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    push bc
    and $01
    ld c, a
    ld hl, $55c6
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $55c8
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $40
    pop bc

jr_005_56b1:
    call label_C56
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    rra
    rra
    rra
    rra
    and $01
    ld hl, $c3b0
    add hl, bc
    ld [hl], a
    ldh a, [$ee]

jr_005_56c7:
    sub $10
    ldh [$ee], a
    ldh a, [$ec]
    sub $10
    ldh [$ec], a
    ld hl, $c350
    add hl, bc
    ld [hl], $00
    call label_3AEA
    call label_3B70
    call label_3D8A
    ld hl, $c350
    add hl, bc
    ld [hl], $14
    call label_3AEA
    call label_3B44
    ldh a, [$f0]
    rst $00
    ld sp, hl
    ld d, [hl]
    scf
    ld d, a
    ld l, [hl]
    ld d, a
    ld [$60f8], sp
    jr jr_005_56c7

    ei
    dec bc
    jr nz, jr_005_5713

    call IsEntityFrameCounterZero
    ld [hl], $80
    call IncrementEntityWalkingAttr
    call GetRandomByte
    and $1f
    add $60
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ret


jr_005_5713:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $56f7
    add hl, de
    ldh a, [$ec]
    cp [hl]
    jr nz, jr_005_572a

    ld a, e
    xor $01
    ld hl, $c380
    add hl, bc
    ld [hl], a

jr_005_572a:
    ld hl, $56f5
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    jp Jump_005_7ab4


    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    call IsEntityFrameCounterZero
    cp $60
    jr nz, jr_005_574a

    ld hl, hSFX
    ld [hl], $0d

jr_005_574a:
    ret nc

    ld hl, $c240
    add hl, bc
    ld [hl], $d0
    call Call_005_7abe
    ldh a, [$ee]
    cp $18
    ret nc

    ld a, $30
    ld [$c157], a
    xor a
    ld [$c158], a
    call label_C4B
    ld hl, $c300
    add hl, bc
    ld [hl], $ff
    jp IncrementEntityWalkingAttr


    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld a, [$c157]
    and a
    jr nz, jr_005_579b

    ld hl, $c240
    add hl, bc
    ld [hl], $20
    call Call_005_7abe
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ldh a, [$ee]
    cp [hl]
    jr c, jr_005_579b

    call label_BFB
    call GetRandomByte
    and $1f
    add $40
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_005_579b:
    ret


    ldh a, [$f0]
    ld b, b
    rlca
    ldh a, [hFFF8]
    ld b, d
    rlca
    ldh a, [rP1]
    ld b, h
    rlca
    ldh a, [$08]
    ld b, [hl]
    ld d, $f0
    db $10
    ld c, b
    ld d, $f0
    jr jr_005_57fd

    ld d, $00
    ldh a, [$4c]
    rlca
    nop
    ld hl, sp+$4e
    rlca
    nop
    nop
    ld d, b
    ld d, $00
    ld [$1652], sp
    nop
    db $10
    ld d, h
    ld d, $00
    jr jr_005_5821

    ld d, $00
    jr nz, jr_005_5827

    ld d, $10
    ld hl, sp+$5a
    ld d, $10
    nop
    ld e, h
    ld d, $10
    ld [$165e], sp
    db $10
    db $10
    ld h, b
    ld d, $10
    jr jr_005_5845

    ld d, $10
    jr nz, jr_005_584b

    ld d, $00
    nop
    rst $38
    nop
    ldh a, [$f0]
    ld h, [hl]
    rlca
    ldh a, [hFFF8]
    ld b, d
    rlca
    ldh a, [rP1]
    ld b, h
    rlca
    ldh a, [$08]
    ld b, [hl]
    ld d, $f0

jr_005_57fd:
    db $10
    ld c, b
    ld d, $f0
    jr @+$4c

    ld d, $00
    ldh a, [rBGPI]
    rlca
    nop
    ld hl, sp+$4e
    rlca
    nop
    nop
    ld d, b
    ld d, $00
    ld [$1652], sp
    nop
    db $10
    ld d, h
    ld d, $00
    jr jr_005_5871

    ld d, $00
    jr nz, @+$6c

    ld d, $10

jr_005_5821:
    ld hl, sp+$5a
    ld d, $10
    nop
    ld e, h

jr_005_5827:
    ld d, $10
    ld [$165e], sp
    db $10
    db $10
    ld h, b
    ld d, $10
    jr jr_005_5895

    ld d, $10
    jr nz, jr_005_58a3

    ld d, $f0
    jr jr_005_5885

    ld d, $f0
    ld [$1646], sp
    ldh a, [rNR10]
    ld c, b
    ld d, $f0

jr_005_5845:
    ld hl, sp+$42
    rlca
    ldh a, [rP1]
    ld b, h

jr_005_584b:
    rlca
    ldh a, [$f0]
    ld b, b
    rlca
    nop
    jr nz, jr_005_58ab

    ld d, $00
    ld [$1652], sp
    nop
    db $10
    ld d, h
    ld d, $00
    jr jr_005_58b5

    ld d, $00
    ld hl, sp+$4e
    rlca
    nop
    nop
    ld d, b
    ld d, $00
    ldh a, [$4c]
    rlca
    db $10
    jr nz, jr_005_58d3

    ld d, $10

jr_005_5871:
    db $10
    ld h, b
    ld d, $10
    jr @+$64

    ld d, $10
    nop
    ld e, h
    ld d, $10
    ld [$165e], sp
    db $10
    ld hl, sp+$5a
    ld d, $00

jr_005_5885:
    nop
    rst $38
    nop
    ldh a, [rNR23]
    ld c, d
    ld d, $f0
    ld [$1646], sp
    ldh a, [rNR10]
    ld c, b
    ld d, $f0

jr_005_5895:
    ld hl, sp+$42
    rlca
    ldh a, [rP1]
    ld b, h
    rlca
    ldh a, [$f0]
    ld h, [hl]
    rlca
    nop
    jr nz, jr_005_590d

jr_005_58a3:
    ld d, $00
    ld [$1652], sp
    nop
    db $10
    ld d, h

jr_005_58ab:
    ld d, $00
    jr @+$58

    ld d, $00
    ld hl, sp+$4e
    rlca
    nop

jr_005_58b5:
    nop
    ld d, b
    ld d, $00
    ldh a, [rBGPI]
    rlca
    db $10
    jr nz, @+$6e

    ld d, $10
    db $10
    ld h, b
    ld d, $10
    jr @+$64

    ld d, $10
    nop
    ld e, h
    ld d, $10
    ld [$165e], sp
    db $10
    ld hl, sp+$5a

jr_005_58d3:
    ld d, $f0
    pop af
    sla a
    sla a
    sla a
    sla a
    ld e, a
    sla a
    sla a
    add e
    ld e, a
    ld d, b
    ld hl, $579c
    ldh a, [hFrameCounter]
    and $01
    jr z, jr_005_58f2

    ld hl, $5838

jr_005_58f2:
    add hl, de
    ld c, $13
    call label_3CE6
    ld a, $13
    jp label_3DA0


    ld [hl], d
    nop
    ld [hl], d
    jr nz, jr_005_5913

    db $fd
    ld e, b
    call label_3C77
    call Call_005_7a3a
    ld hl, $c3d0

jr_005_590d:
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra

jr_005_5913:
    and $01
    call label_3B0C
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    and $30
    jr z, jr_005_592a

    ld hl, $c250
    add hl, bc
    ld [hl], $f8
    call Call_005_7ab4

jr_005_592a:
    ldh a, [$ec]
    cp $10
    jp c, Jump_005_7b4b

    ret


    ld [hl], h
    dec b
    db $76
    dec b
    db $76
    dec h
    ld [hl], h
    dec h
    ld de, $5932
    call label_3BC0
    call Call_005_7a3a
    call label_C56
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    push af
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call label_3B39
    pop af
    ld e, $fc
    and $10
    jr z, jr_005_5962

    ld e, $04

jr_005_5962:
    ld hl, $c240
    add hl, bc
    ld [hl], e
    ld hl, $c250
    add hl, bc
    ld [hl], $0c
    call Call_005_7ab1
    ldh a, [$ec]
    cp $8b
    jp nc, Jump_005_7b4b

    ret


    ld a, b
    inc bc
    ld a, d
    inc bc
    ld a, h
    inc bc
    ld a, [hl]
    inc bc
    ld bc, $08ff
    ld hl, sp+$21
    ld b, b
    jp nz, $7e09

    cpl
    rra
    rra
    and $20
    ldh [$ed], a
    ld de, $5978
    call label_3BC0
    call Call_005_7a3a
    call label_C56
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call label_3B39
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_005_59ce

    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, [hl]
    and $01
    ld e, a
    ld d, b
    ld hl, $5980
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $5982
    add hl, de
    cp [hl]
    jr nz, jr_005_59ce

    call IncrementEntityWalkingAttr

jr_005_59ce:
    call Call_005_7ab1
    call IsEntityFrameCounterZero
    jr nz, jr_005_59dd

    ldh a, [$ee]
    cp $a8
    jp nc, Jump_005_7b4b

jr_005_59dd:
    ret


    rlca
    nop
    rrca
    rlca
    ld e, $0f

jr_005_59e4:
    ccf
    jr jr_005_5a26

    db $10
    ccf
    inc d
    ccf
    db $10
    daa
    dec de
    ldh [rP1], a
    ldh a, [$e0]
    jr jr_005_59e4

    adc h
    ld a, b
    adc h
    ld [hl], b
    ccf
    ret nz

    rst $38
    ld a, $ef
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    ld a, $ef
    pop af
    ld hl, $c430
    add hl, bc
    ld a, [hl]
    and $7f
    ld [hl], a

jr_005_5a26:
    ld e, $0f
    ld d, b

jr_005_5a29:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld [hl], b
    dec e
    ld a, e
    cp $01
    jr nz, jr_005_5a29

    ld a, [$d478]
    and a
    jr z, jr_005_5a5d

    ld a, $05
    call SwitchBank
    call Call_005_5b03
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $07
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $60
    ld a, $01
    ldh [$a5], a
    call IncrementEntityWalkingAttr
    ld [hl], $04
    ld a, $c0
    ld [wEntitiesPosYTable], a
    ret


jr_005_5a5d:
    ld a, $02
    ldh [$a5], a
    ld [$d478], a
    call IsEntityFrameCounterZero
    ld [hl], $80
    ld e, $0c
    xor a
    ld hl, $d790

jr_005_5a6f:
    ld [hl+], a
    dec e
    jr nz, jr_005_5a6f

    ld a, $02
    ld [$d205], a
    ld a, $5c
    ld [wWorldMusicTrack], a
    ret


    db $10
    ldh a, [rNR42]
    or b
    jp nz, $7e09

    rst $00
    adc [hl]
    ld e, d
    ld l, e
    ld e, e
    ld d, [hl]
    ld h, d
    ret z

    ld h, d
    ldh a, [$f0]
    rst $00
    sbc h
    ld e, d
    db $db
    ld e, d
    jr c, @+$5d

    dec sp
    ld e, e
    ld c, e
    ld e, e

jr_005_5a9b:
    ret


    call Call_005_5b5a
    ldh a, [$ea]
    cp $05
    jr nz, jr_005_5a9b

    ld a, $02

jr_005_5aa7:
    ldh [hFFE8], a
    ld a, $63
    call label_3B86
    push bc
    ldh a, [hFFE8]
    ld c, a
    ld hl, $5a7d
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    sub $10
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    pop bc
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ldh a, [hFFE8]
    dec a
    jr nz, jr_005_5aa7

    call IsEntityFrameCounterZero
    ld [hl], $43
    jp IncrementEntityWalkingAttr


    call Call_005_5b5a
    call Call_005_7a3a
    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    and a
    jr z, jr_005_5afe

    cp $20
    ret nz

    ldh a, [hLinkPositionY]
    push af
    ld a, $10
    ldh [hLinkPositionY], a
    ld a, $ba
    call label_2385
    pop af
    ldh [hLinkPositionY], a
    ret


jr_005_5afe:
    ld a, $54
    ld [wWorldMusicTrack], a

Call_005_5b03:
    ld a, $63
    call label_3B86
    ld hl, $c360
    add hl, de
    ld [hl], $0c
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], $d0
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], $18
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, $c240
    add hl, de
    ld [hl], $e0
    ld hl, $c380
    add hl, de
    ld [hl], $00
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $80
    call Call_005_5c20
    jp IncrementEntityWalkingAttr


    jp Jump_005_5b5a


    call Call_005_5b5a
    call Call_005_7a3a
    call Call_005_7ab1
    ld hl, $c250
    add hl, bc
    inc [hl]
    inc [hl]
    ret


    ld hl, $c340
    add hl, bc
    ld [hl], $c2
    ret


    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [hl+], a
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld h, d

Call_005_5b5a:
Jump_005_5b5a:
    ld de, $5b52
    jp label_3BC0


    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0100
    inc b
    inc b
    inc b
    inc b
    call Call_005_61f2
    ldh a, [$ea]
    cp $05
    jp nz, Jump_005_7e6c

    call Call_005_7a3a
    call label_C56
    ldh a, [$f0]
    cp $0e
    jr z, jr_005_5bb7

    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_5bb7

    ld hl, $c420
    add hl, bc
    ld [hl], $50
    call label_3D7F
    call IncrementEntityWalkingAttr
    ld [hl], $0e
    ld a, $31
    ldh [hFFF4], a
    ld hl, $c340
    add hl, bc
    ld [hl], $42
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $08
    jr nz, jr_005_5bac

    dec [hl]

jr_005_5bac:
    ld e, a
    ld d, b
    ld hl, $5b60
    add hl, de
    ld a, [hl]
    ld [$d205], a
    ret


jr_005_5bb7:
    ldh a, [$f0]
    rst $00
    ret c

    ld e, e
    db $ec
    ld e, e
    ld [hl-], a
    ld e, h
    ld e, e
    ld e, h
    adc e
    ld e, h
    xor l
    ld e, h
    rst $08
    ld e, h
    inc d
    ld e, l
    db $ec
    ld e, l
    dec a
    ld e, [hl]
    dec sp
    ld e, a
    sub e
    ld e, a
    xor b
    ld e, a
    rla
    ld h, b
    jr z, jr_005_5c38

    call Call_005_7ab1
    call IsEntityFrameCounterZero
    ret nz

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $20
    ld a, $ff
    jp label_3B0C


    call IsEntityFrameCounterZero
    jr nz, jr_005_5c24

    xor a
    call label_3B0C
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $14
    ld [hl], a
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $02
    jr z, jr_005_5c25

    call IncrementEntityWalkingAttr
    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $80

Call_005_5c20:
    ld a, $22
    ldh [hFFF4], a

jr_005_5c24:
    ret


jr_005_5c25:
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $30
    ld a, $30
    ldh [hFFF4], a
    ret


    call Call_005_7ab1
    call IsEntityFrameCounterZero

jr_005_5c38:
    cp $01
    jr nz, jr_005_5c41

    ld hl, $fff2
    ld [hl], $30

jr_005_5c41:
    and a
    ret nz

    ld hl, $c240
    add hl, bc
    inc [hl]
    jr nz, jr_005_5c58

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $40
    ld hl, $c29e
    inc [hl]
    inc hl
    inc [hl]

jr_005_5c58:
    jp Jump_005_5c7b


    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    jr nz, jr_005_5c7b

    ld [hl], $28
    ld a, $d0
    ld [$c250], a
    ld a, $24
    ldh [$f2], a
    ld a, $12
    ld [$c240], a
    ld hl, wEntitiesWalkingTable
    inc [hl]
    call IncrementEntityWalkingAttr

Jump_005_5c7b:
jr_005_5c7b:
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $04
    ld a, $01
    jr z, jr_005_5c88

    inc a

jr_005_5c88:
    jp label_3B0C


    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    jr nz, jr_005_5ca6

    ld a, $01
    ldh [$a5], a
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld hl, wEntitiesWalkingTable
    inc [hl]
    ld a, $c0
    ld [wEntitiesPosYTable], a

jr_005_5ca6:
    jp Jump_005_5c7b


    ld bc, $0302
    ld [bc], a
    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    jr nz, jr_005_5cb9

    call IncrementEntityWalkingAttr

Call_005_5cb9:
Jump_005_5cb9:
jr_005_5cb9:
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra
    nop
    and $03
    ld e, a
    ld d, b
    ld hl, $5ca9
    add hl, de
    ld a, [hl]
    jp label_3B0C


    call Call_005_7ab1
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cp $d4
    jr nz, jr_005_5cfb

    ldh a, [$ee]
    and $f8
    cp $c0
    jr nz, jr_005_5cec

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $80
    ret


jr_005_5cec:
    ldh a, [hFrameCounter]
    and $00
    jr nz, jr_005_5cf7

jr_005_5cf2:
    ld hl, $c250
    add hl, bc
    dec [hl]

jr_005_5cf7:
    xor a
    jp label_3B0C


jr_005_5cfb:
    dec [hl]
    dec [hl]
    call Call_005_5cb9
    call Call_005_5cb9
    jp Jump_005_5cb9


    ld hl, sp-$58
    jr nc, @-$2e

    jr nc, jr_005_5d7c

    call c, $f824
    xor b
    jr nz, jr_005_5cf2

    inc b
    nop
    call IsEntityFrameCounterZero
    jr nz, jr_005_5d68

    ld a, [$d205]
    rst $00
    daa
    ld e, l
    ld l, c
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    ld l, c
    ld e, l
    call GetRandomByte
    and $03
    ld [$d205], a
    ld e, $00
    ldh a, [hLinkPositionX]
    cp $50
    jr nc, jr_005_5d38

    inc e

jr_005_5d38:
    ld d, b
    ld hl, $5d06
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ld hl, $5d08
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $5d12
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, bc
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $00
    ld hl, $c250
    add hl, bc
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld [hl], $08

jr_005_5d68:
    ret


    ld e, $00
    ldh a, [hLinkPositionX]
    cp $50
    jr nc, jr_005_5d72

    inc e

jr_005_5d72:
    ld d, b
    ld hl, $5d0a
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc

jr_005_5d7c:
    ld [hl], a
    ld hl, $c240
    add hl, bc
    ld [hl], b
    ld hl, $5d12
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, bc
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $f0
    ld hl, $c250
    add hl, bc
    ld [hl], $10
    call IncrementEntityWalkingAttr
    ld [hl], $0b
    call IsEntityFrameCounterZero
    ld [hl], $30
    ret


    call GetRandomByte
    and $01
    ld e, a
    ld d, b
    ld hl, $5d0e
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ld hl, $5d10
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $c250
    add hl, bc
    ld [hl], b
    ld hl, $5d12
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $3f
    add $18
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    ldh a, [$9c]
    and a
    jr z, jr_005_5de1

    ldh a, [hLinkPositionY]
    ld [hl], a

jr_005_5de1:
    call IncrementEntityWalkingAttr
    ld [hl], $0d
    call IsEntityFrameCounterZero
    ld [hl], $70
    ret


    ld a, $01
    call label_3B0C
    call Call_005_7ab1
    ld hl, $c250
    call Call_005_5e01
    ld a, [hl]
    and a
    jr z, jr_005_5e0e

    ld hl, $c240

Call_005_5e01:
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_5e0d

    and $80
    jr nz, jr_005_5e0c

    dec [hl]
    dec [hl]

jr_005_5e0c:
    inc [hl]

jr_005_5e0d:
    ret


jr_005_5e0e:
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $ff
    ret


    xor $12
    ret nc

    jr nc, jr_005_5e2c

    ldh a, [$d8]
    call nc, $ccd0
    ret z

    call nz, $bcc0
    jr z, jr_005_5e53

    jr nc, @+$36

    jr c, jr_005_5e67

    ld b, b

jr_005_5e2c:
    ld b, h
    jr nc, @+$30

    inc l
    ld a, [hl+]
    jr z, jr_005_5e59

    inc h
    ld [hl+], a
    jr nc, jr_005_5e65

    inc l
    ld a, [hl+]
    jr z, jr_005_5e61

    inc h
    ld [hl+], a
    call IsEntityFrameCounterZero
    jp z, Jump_005_5f30

    ld hl, wEntitiesPosYTable
    add hl, bc
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_005_5e56

    ldh a, [hFrameCounter]
    and $20
    jr z, jr_005_5e55

jr_005_5e53:
    inc [hl]
    inc [hl]

jr_005_5e55:
    dec [hl]

jr_005_5e56:
    call Call_005_5cb9

jr_005_5e59:
    call Call_005_5cb9
    ldh a, [$9c]
    and a
    jr nz, jr_005_5e8a

jr_005_5e61:
    ld a, [$c146]
    and a

jr_005_5e65:
    jr z, jr_005_5e8a

jr_005_5e67:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    rra
    rra
    and $01
    ld e, a
    ld d, b
    ld hl, $5e19
    add hl, de
    ld a, [hl]
    ld hl, hFF9A
    sub [hl]
    and a
    jr z, jr_005_5ea3

    and $80
    jr nz, jr_005_5e86

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_005_5e86:
    dec [hl]
    dec [hl]
    jr jr_005_5ea3

jr_005_5e8a:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    srl e
    srl e
    ld d, b
    ld hl, $5e17
    add hl, de
    ld a, [hl]
    ldh [hFF9A], a
    push bc
    call $21b2
    call label_3E19
    pop bc

jr_005_5ea3:
    ld a, [$d210]
    inc a
    cp $22
    jr c, jr_005_5eb0

    ld a, $32
    ldh [hFFF4], a
    xor a

jr_005_5eb0:
    ld [$d210], a
    call IsEntityFrameCounterZero
    cp $c0
    jr nc, jr_005_5f2f

    ldh a, [hFrameCounter]
    and $0f
    jr nz, jr_005_5f2f

    ld a, $63
    ld e, $03
    call label_3B98
    jr c, jr_005_5f2f

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $03
    push bc
    ld hl, $c380
    add hl, bc
    ld c, [hl]
    srl c
    srl c
    ld hl, $5e1b
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    add $0c
    ld [hl], a
    ld hl, $c3b0
    add hl, de
    ld a, c
    xor $01
    ld [hl], a
    ld hl, $c380
    add hl, de
    ld [hl], a
    sla c
    sla c
    sla c
    call GetRandomByte
    and $07
    add c
    ld c, a
    ld hl, $5e2d
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a
    ld hl, $5e1d
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    pop bc
    ld hl, $c340
    add hl, de
    ld [hl], $02
    ld hl, $c430
    add hl, de
    ld [hl], $00
    ld hl, $c4d0
    add hl, de
    ld [hl], $02

jr_005_5f2f:
    ret


Jump_005_5f30:
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $50
    ret


    ldh [rNR41], a
    call Call_005_7ab1
    call IsEntityFrameCounterZero
    jr z, jr_005_5f78

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    rra
    rra
    and $01
    ld e, a
    ld d, b
    ld hl, $5f39
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    sub [hl]
    and a
    jr z, jr_005_5f68

    and $80
    jr nz, jr_005_5f61

    inc [hl]
    inc [hl]

jr_005_5f61:
    dec [hl]
    call Call_005_5cb9
    jp Jump_005_5cb9


jr_005_5f68:
    xor a
    call label_3B0C
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_005_5f77

    ld hl, $c250
    add hl, bc
    dec [hl]

jr_005_5f77:
    ret


Jump_005_5f78:
jr_005_5f78:
    ld hl, $c340
    add hl, bc
    ld [hl], $02
    call IncrementEntityWalkingAttr
    ld [hl], $07
    call IsEntityFrameCounterZero
    ld a, [$d205]
    cp $04
    jr nz, jr_005_5f90

    ld [hl], $10
    ret


jr_005_5f90:
    ld [hl], $80
    ret


    call Call_005_7ab1
    call IsEntityFrameCounterZero
    jr nz, jr_005_5fa3

    ld [hl], $30
    call IncrementEntityWalkingAttr
    call label_3D7F

jr_005_5fa3:
    jp Jump_005_5cb9


    ldh [rNR41], a
    call Call_005_7ab1
    call IsEntityFrameCounterZero
    jr nz, jr_005_5fea

    ldh a, [$ec]
    cp $b0
    jp nc, Jump_005_5f78

    ld a, $01
    call label_3B0C
    ld a, [$c13e]
    and a
    jr nz, jr_005_5fe9

    call label_3B39
    ld a, [$c13e]
    and a
    jr z, jr_005_5fe9

    ld a, $10
    ld [$c13e], a
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    srl e
    srl e
    ld d, b
    ld hl, $5fa6
    add hl, de
    ld a, [hl]
    ldh [hFF9A], a
    ld a, $f0
    ldh [$9b], a
    ld hl, hLinkPositionY
    dec [hl]

jr_005_5fe9:
    ret


jr_005_5fea:
    cp $01
    jr nz, jr_005_6008

    ld hl, $c380
    add hl, bc
    ld e, [hl]
    srl e
    srl e
    ld d, b
    ld hl, $5d0c
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $c250
    add hl, bc
    ld [hl], $34

jr_005_6008:
    call Call_005_5cb9
    call IsEntityFrameCounterZero
    cp $40
    ret nc

    call Call_005_5cb9
    jp Jump_005_5cb9


    xor a
    call label_3B0C
    call Call_005_7ab1
    call label_3B39
    call IsEntityFrameCounterZero
    jp z, Jump_005_5f78

    ret


    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_6040

    cp $30
    ret nc

    dec a
    jr nz, jr_005_603a

    ld a, $31
    ldh [hFFF4], a

jr_005_603a:
    call Call_005_5cb9
    jp Jump_005_5cb9


jr_005_6040:
    call Call_005_5cb9
    call Call_005_5cb9
    call Call_005_5cb9
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    cp $d0
    jr z, jr_005_6053

    dec [hl]

jr_005_6053:
    call Call_005_7ab1
    ldh a, [$ec]
    and $f0
    cp $c0
    jr nz, jr_005_6061

    jp Jump_005_5f78


jr_005_6061:
    ret


    nop
    nop
    ld b, b
    ld bc, label_800
    ld b, d
    ld bc, label_1000
    ld b, h
    ld [bc], a
    ld hl, sp+$18
    ld b, [hl]
    ld [bc], a
    ld hl, sp+$20
    ld c, b
    ld [bc], a
    ld hl, sp+$28
    ld c, d
    ld [bc], a
    ld [$4c18], sp
    ld [bc], a
    ld [$4e20], sp
    ld [bc], a
    ld [$5028], sp
    ld [bc], a
    nop
    jr nc, jr_005_60db

    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld b, b
    ld bc, label_800
    ld b, d
    ld bc, label_1000
    ld e, d
    ld [bc], a
    nop
    jr jr_005_60fd

    ld [bc], a
    nop
    jr nz, jr_005_6103

    ld [bc], a
    db $10
    ld [$0260], sp
    db $10
    db $10
    ld h, d
    ld [bc], a
    db $10
    jr jr_005_6115

    ld [bc], a
    db $10
    jr nz, jr_005_611b

    ld [bc], a
    ldh a, [rNR23]
    ld d, h
    ld [bc], a
    ldh a, [rNR41]
    ld d, [hl]
    ld [bc], a
    ldh a, [$28]
    ld e, b
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, label_800
    ld b, d
    ld bc, label_1000
    ld e, d
    ld [bc], a
    nop
    jr jr_005_6139

    ld [bc], a
    nop
    jr nz, @+$6c

    ld [bc], a
    db $10
    ld [$0260], sp
    db $10

jr_005_60db:
    db $10
    ld h, d
    ld [bc], a
    db $10
    jr jr_005_6145

    ld [bc], a
    db $10
    jr nz, jr_005_614b

    ld [bc], a
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
    nop
    ld b, b
    ld bc, label_800
    ld b, d
    ld bc, label_1000
    ld l, h

jr_005_60fd:
    ld [bc], a
    nop
    jr jr_005_616f

    ld [bc], a
    nop

jr_005_6103:
    jr nz, jr_005_6175

    ld [bc], a
    db $10
    ld [$0260], sp
    db $10
    db $10
    ld [hl], d
    ld [bc], a
    db $10
    jr @+$76

    ld [bc], a
    db $10
    jr nz, @+$78

jr_005_6115:
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_611b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [$2140], sp
    nop
    nop
    ld b, d
    ld hl, $f800
    ld b, h
    ld [hl+], a
    ld hl, sp-$10
    ld b, [hl]
    ld [hl+], a
    ld hl, sp-$18
    ld c, b
    ld [hl+], a
    ld hl, sp-$20
    ld c, d

jr_005_6139:
    ld [hl+], a
    ld [$4cf0], sp
    ld [hl+], a
    ld [$4ee8], sp
    ld [hl+], a
    ld [$50e0], sp

jr_005_6145:
    ld [hl+], a
    nop
    ret c

    ld d, d
    ld [hl+], a
    rst $38

jr_005_614b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [$2140], sp
    nop
    nop
    ld b, d
    ld hl, $f800
    ld e, d
    ld [hl+], a
    nop
    ldh a, [$5c]
    ld [hl+], a
    nop
    add sp, $5e
    ld [hl+], a
    stop
    ld h, b
    ld [hl+], a
    db $10
    ld hl, sp+$62
    ld [hl+], a
    db $10

jr_005_616f:
    ldh a, [$64]
    ld [hl+], a
    db $10
    add sp, $66

jr_005_6175:
    ld [hl+], a
    ldh a, [$f0]
    ld d, h
    ld [hl+], a
    ldh a, [hFFE8]
    ld d, [hl]
    ld [hl+], a
    ldh a, [$e0]
    ld e, b
    ld [hl+], a
    nop
    ld [$2140], sp
    nop
    nop
    ld b, d
    ld hl, $f800
    ld e, d
    ld [hl+], a
    nop
    ldh a, [rBGPI]
    ld [hl+], a
    nop
    add sp, $6a
    ld [hl+], a
    stop
    ld h, b
    ld [hl+], a
    db $10
    ld hl, sp+$62
    ld [hl+], a
    db $10
    ldh a, [$64]
    ld [hl+], a
    db $10
    add sp, $66
    ld [hl+], a
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
    ld [$2140], sp
    nop
    nop
    ld b, d
    ld hl, $f800
    ld l, h
    ld [hl+], a
    nop
    ldh a, [$6e]
    ld [hl+], a
    nop
    add sp, $70
    ld [hl+], a
    stop
    ld h, b
    ld [hl+], a
    db $10
    ld hl, sp+$72
    ld [hl+], a
    db $10
    ldh a, [$74]
    ld [hl+], a
    db $10
    add sp, $76
    ld [hl+], a
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
    inc e
    inc e
    ld [$140c], sp
    db $10
    db $10
    db $10
    db $f4
    inc e
    ld [$fc0c], sp
    db $10
    db $10
    db $10

Call_005_61f2:
    ld hl, $c380
    add hl, bc
    ldh a, [$f1]
    add [hl]
    ld hl, $6062
    cp $04
    jr c, jr_005_6205

    sub $04
    ld hl, $6122

jr_005_6205:
    ld e, a
    ld d, b
    sla e
    sla e
    sla e
    sla e
    ld a, e
    sla e
    add e
    ld e, a
    add hl, de
    ld c, $0c
    call label_3CE6
    ld a, $0a
    call label_3DA0
    ld e, $00
    ldh a, [$f1]
    and a
    jr z, jr_005_6228

    ld e, $04

jr_005_6228:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_6234

    ld a, e
    add $08
    ld e, a

jr_005_6234:
    ld d, b
    ld hl, $61e2
    add hl, de
    ld e, l
    ld d, h
    push bc
    sla c
    sla c
    ld hl, $d580
    add hl, bc
    ld c, $04

jr_005_6246:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_005_6246

    pop bc
    ret


    ld a, h
    nop
    ld a, h
    jr nz, @+$7e

    ld b, b
    ld a, h
    ld h, b
    ld a, $02
    ldh [$a1], a
    ld de, $624e
    call label_3BC0
    call Call_005_7a3a
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [$f0]
    rst $00
    ld [hl], h
    ld h, d
    sbc c
    ld h, d
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld e, $07
    call Call_005_6283
    ld hl, wEntity0PosX
    add hl, bc
    ld e, $00

Call_005_6283:
    ldh a, [hFrameCounter]
    add e
    ld d, a
    and $03
    jr nz, jr_005_6298

    ld a, d
    rra
    rra
    rra
    rra
    xor c
    and $01
    jr z, jr_005_6297

    inc [hl]
    inc [hl]

jr_005_6297:
    dec [hl]

jr_005_6298:
    ret


    call Call_005_7ab1
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cp $c0
    jr z, jr_005_62a6

    dec [hl]

jr_005_62a6:
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    cp $f0
    jr z, jr_005_62b0

    dec [hl]

jr_005_62b0:
    ldh a, [$ee]
    cp $e0
    jp nc, Jump_005_7b4b

    ret


    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, b
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, d
    ld h, d
    ld a, b
    ld h, d
    ld a, b
    ld b, d
    ld a, d
    ld b, d
    ld de, $62b8
    call label_3BC0
    call Call_005_7a3a
    call Call_005_7ab1
    ldh a, [$f0]
    rst $00
    db $db
    ld h, d
    ld a, [$cd62]
    ld c, a
    dec sp
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_62f5

    call IncrementEntityWalkingAttr
    ld hl, $c250
    add hl, bc
    ld [hl], $e0
    ld hl, $c3b0
    add hl, bc
    inc [hl]
    inc [hl]

jr_005_62f5:
    ld hl, $c250
    add hl, bc
    dec [hl]
    ldh a, [$ee]
    cp $a8
    jp nc, Jump_005_7b4b

    ret


    call IsEntityFrameCounterZero
    ld [hl], $40
    ld hl, $c3b0
    add hl, bc
    ld [hl], $ff
    ld hl, $c360
    add hl, bc
    ld [hl], $ff
    ret


    call label_394D
    call label_3EE8
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_632f

    cp $01
    jp z, Jump_005_6776

    cp $02
    jp z, Jump_005_6798

    jp Jump_005_67ea


jr_005_632f:
    call Call_005_6705
    ldh a, [$ea]
    cp $01
    jr nz, jr_005_6375

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    rst $00
    ld b, d
    ld h, e
    ld c, l
    ld h, e
    call IsEntityFrameCounterZero
    ld [hl], $ff

Jump_005_6347:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    inc [hl]
    ret


    call IsEntityFrameCounterZero
    jp z, Jump_005_635e

    ld hl, $c420
    add hl, bc
    ld [hl], a
    cp $80
    ret nc

    jp Jump_005_7550


Jump_005_635e:
    call Call_005_7585
    ld hl, wEntity0PosX
    add hl, de
    ldh a, [hLinkPositionX]
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], $70
    ld hl, $c310
    add hl, de
    ld [hl], $70
    ret


jr_005_6375:
    call Call_005_7a3a
    call label_C56
    ldh a, [$f0]
    rst $00
    xor b
    ld h, e
    db $eb
    ld h, e
    adc [hl]
    ld h, h
    inc [hl]
    ld h, l
    ld a, c
    ld h, l
    jr z, jr_005_63c2

    ld e, b
    ld l, b
    jr z, jr_005_63c6

    ld e, b
    ld l, b
    jr c, jr_005_63c2

    jr nc, jr_005_63cc

    ld d, b
    ld e, b
    ld e, b
    ld d, b
    db $10
    db $10
    ldh a, [$f0]
    db $10
    db $10
    ldh a, [$f0]
    db $fd
    inc bc
    inc bc
    db $fd
    inc bc
    db $fd
    db $fd
    inc bc
    call IsEntityFrameCounterZero
    ret nz

    call GetRandomByte
    and $07
    ld e, a
    ld d, b
    ld hl, $6388
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ld hl, $6390
    add hl, de
    ld a, [hl]

jr_005_63c2:
    ld hl, wEntitiesPosYTable
    add hl, bc

jr_005_63c6:
    ld [hl], a
    ld hl, $6398
    add hl, de
    ld a, [hl]

jr_005_63cc:
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $63a0
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ld hl, $c320
    add hl, bc
    ld [hl], $18
    ld a, $16
    ldh [hSFX], a
    call Call_005_65d9
    jp IncrementEntityWalkingAttr


    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_6444

    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $0b
    jr c, jr_005_6444

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jr nc, jr_005_6443

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $40
    ld hl, $c240
    add hl, bc
    ld [hl], $18
    ld hl, $c250
    add hl, bc
    ld [hl], $18
    ld hl, $c320
    add hl, bc
    ld [hl], b
    call label_BFB
    ld [hl], $40
    ldh a, [$ee]
    add $f8
    ldh [$d7], a
    call Call_005_6432
    ldh a, [$ee]
    add $08
    ldh [$d7], a

Call_005_6432:
    ldh a, [$ec]
    sub $10
    ldh [$d8], a
    ld a, $02
    call label_CC7
    ld hl, $c520
    add hl, de
    ld [hl], $0f

jr_005_6443:
    ret


jr_005_6444:
    call Call_005_7ab1
    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_005_6471

    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $40
    call IncrementEntityWalkingAttr
    ld [hl], b
    call Call_005_6611
    call Call_005_65d9
    ld a, $32
    ldh [$f2], a
    ld a, $ff
    jp label_3B0C


jr_005_6471:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $05
    jp nc, Jump_005_656d

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_648d

    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


jr_005_648d:
    ret


    ld a, $02
    call label_3B0C
    call IsEntityFrameCounterZero
    jr z, jr_005_64af

    and $02
    ld e, $08
    jr z, jr_005_64a0

    ld e, $f8

jr_005_64a0:
    ld hl, $c240
    add hl, bc
    push hl
    ld a, [hl]
    push af
    ld [hl], e
    call Call_005_7abe
    pop af
    pop hl
    ld [hl], a
    ret


jr_005_64af:
    call label_3B39
    call label_BFB
    jr nz, jr_005_64cc

    ldh a, [$ee]
    cp $70
    jr nc, jr_005_64cc

    ldh a, [$ec]
    cp $50
    jr nc, jr_005_64cc

    call label_3D7F
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ret


jr_005_64cc:
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_005_64f7

    ldh a, [$ee]
    cp $70
    jr nc, jr_005_64f7

    ldh a, [$ec]
    cp $50
    jr nc, jr_005_64f7

    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $05
    jr c, jr_005_64f7

    call IncrementEntityWalkingAttr
    call label_3D7F
    call IsEntityFrameCounterZero
    ld [hl], $80
    ret


jr_005_64f7:
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $0b
    ret nc

    call Call_005_7ab1
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    push af
    and $03
    jr z, jr_005_6515

    ld hl, $c240
    call Call_005_651d

jr_005_6515:
    pop af
    and $0c
    jr z, jr_005_6522

    ld hl, $c250

Call_005_651d:
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_005_6522:
    ldh a, [hFrameCounter]
    and $07
    ret nz

    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $0a
    jp label_CC7


    call IsEntityFrameCounterZero
    cp $40
    jr c, jr_005_655b

    jr nz, jr_005_6544

    ld a, $29
    ldh [hFFF4], a
    call Call_005_657f

jr_005_6544:
    and $02
    ld e, $10
    jr z, jr_005_654c

    ld e, $f0

jr_005_654c:
    ld hl, $c240
    add hl, bc
    push hl
    ld a, [hl]
    push af
    ld [hl], e
    call Call_005_7abe
    pop af
    pop hl
    ld [hl], a
    ret


jr_005_655b:
    and a
    jr nz, jr_005_656d

    call IncrementEntityWalkingAttr
    ld [hl], $01
    call label_3D7F
    ld hl, $c360
    add hl, bc
    ld [hl], $08
    ret


Jump_005_656d:
jr_005_656d:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    add $03
    jp label_3B0C


    ret


    ret


    ld hl, sp+$08
    ld hl, sp+$08

Call_005_657f:
    ld a, $02

jr_005_6581:
    ldh [hFFE8], a
    ld a, $62
    call label_3B86
    jr c, jr_005_65d3

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $03
    push bc
    ldh a, [hFFE8]
    ld c, a
    ld hl, $657a
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$da]
    ld hl, $c310
    add hl, de
    ld [hl], a
    ld hl, $c3b0
    add hl, de
    ldh a, [hFFE8]
    dec a
    ld [hl], a
    ld hl, $657c
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $c250
    add hl, de
    ld [hl], $04
    pop bc
    ld hl, $c320
    add hl, de
    ld [hl], $08
    ld hl, $c340
    add hl, de
    ld [hl], $42

jr_005_65d3:
    ldh a, [hFFE8]
    dec a
    jr nz, jr_005_6581

    ret


Call_005_65d9:
    ld a, $62
    call label_3B86
    jr c, jr_005_6600

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $14
    ld hl, $c340
    add hl, de
    ld [hl], $c4

jr_005_6600:
    ret


    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    db $fc
    inc b
    inc b
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    db $f4
    inc c
    inc c

Call_005_6611:
    ld a, $04

jr_005_6613:
    ldh [hFFE8], a
    ld a, $62
    call label_3B86
    jr c, jr_005_665f

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    push bc
    ldh a, [hFFE8]
    ld c, a
    ld hl, $6600
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $6604
    add hl, bc
    ldh a, [$d8]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $6608
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $660c
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a
    pop bc
    ld hl, $c320
    add hl, de
    ld [hl], $13
    ld hl, $c340
    add hl, de
    ld [hl], $42

jr_005_665f:
    ldh a, [hFFE8]
    dec a
    jr nz, jr_005_6613

    ret


    ldh a, [hFFF8]
    ld h, b
    ld [bc], a
    ldh a, [rP1]
    ld h, d
    ld [bc], a
    ldh a, [$08]
    ld h, h
    ld [bc], a
    ldh a, [rNR10]
    ld h, [hl]
    ld [bc], a
    nop
    ld hl, sp+$68
    ld [bc], a
    nop
    nop
    ld l, d
    ld [bc], a
    nop
    ld [$226a], sp
    nop
    db $10
    ld l, b
    ld [hl+], a
    ldh a, [hFFF8]
    ld h, [hl]
    ld hl, $00f0
    ld h, h
    ld hl, label_8F0
    ld h, d
    ld hl, $10f0
    ld h, b
    ld hl, $f800
    ld l, b
    ld bc, $0000
    ld l, d
    ld bc, label_800
    ld l, d
    ld hl, label_1000
    ld l, b
    ld hl, $f800
    ld l, h
    ld [bc], a
    nop
    nop
    ld l, [hl]
    ld [bc], a
    nop
    ld [$226e], sp
    nop
    db $10
    ld l, h
    ld [hl+], a
    nop
    db $fc
    ld a, h
    ld [bc], a
    nop
    inc b
    ld a, [hl]
    ld [bc], a
    nop
    inc c
    ld a, h
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    nop
    db $fc
    ld a, h
    ld [bc], a
    nop
    inc b
    ld a, [hl]
    ld [hl+], a
    nop
    inc c
    ld a, h
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    nop
    ld hl, sp+$74
    ld [bc], a
    nop
    nop
    db $76
    ld [bc], a
    nop
    ld [$2276], sp
    nop
    db $10
    ld [hl], h
    ld [hl+], a
    nop
    ld hl, sp+$70
    ld [bc], a
    nop
    nop
    ld [hl], d
    ld [bc], a
    nop
    ld [$2272], sp
    nop
    db $10
    ld [hl], b
    ld [hl+], a
    ld a, [bc]
    ei
    ld h, $02
    ld a, [bc]
    ld bc, $0226
    ld a, [bc]
    ld b, $26
    ld [bc], a
    ld a, [bc]
    inc c
    ld h, $02

Call_005_6705:
    ldh a, [$f1]
    cp $02
    jr nc, jr_005_6754

    ld hl, $c340
    add hl, bc
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$f1]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld e, a
    ld d, b
    ld hl, $6665
    add hl, de
    ld c, $08
    call label_3CE6
    nop

Jump_005_672a:
    ldh a, [$f1]
    cp $05
    ret nc

    ld hl, $c310
    add hl, bc
    ld a, [hl]
    dec a
    cp $08
    ret c

    ld hl, $c340
    add hl, bc
    ld a, [hl]
    and $f0
    or $04
    ld [hl], a
    ldh a, [$ef]
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld hl, $66f5
    ld c, $04
    call label_3CE6
    jp label_3D8A


Jump_005_6754:
jr_005_6754:
    ld hl, $c340
    add hl, bc
    ld a, [hl]
    and $f0
    or $04
    ld [hl], a
    ldh a, [$f1]
    dec a
    dec a
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $66a5
    add hl, de
    ld c, $04
    call label_3CE6
    jp Jump_005_672a


Jump_005_6776:
    call IsEntityFrameCounterZero
    jp z, Jump_005_7b4b

    cp $0a
    ld a, $05
    jr c, jr_005_6783

    inc a

jr_005_6783:
    ldh [$f1], a
    jp Jump_005_6754


    ld e, $02
    ld e, $62
    ld e, $42
    ld e, $22
    ld a, d
    ld [bc], a
    ld a, d
    ld [hl+], a
    ld a, b
    ld [bc], a
    ld a, b
    ld [hl+], a

Jump_005_6798:
    ld de, $6788
    call label_3BC0
    call Call_005_7a3a
    call label_3B44
    ldh a, [$f0]
    rst $00
    xor e
    ld h, a
    jp nc, $cd67

    or c
    ld a, d
    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_005_67c8

    ld [hl], b
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $0f

jr_005_67c8:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    jp label_3B0C


    call IsEntityFrameCounterZero
    jp z, Jump_005_7b4b

    rra
    rra
    rra
    and $01
    inc a
    inc a
    jp label_3B0C


    ld l, h
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    ld [hl+], a
    ld l, h
    ld [hl+], a

Jump_005_67ea:
    ld de, $67e2
    call label_3BC0
    call Call_005_7a3a
    call Call_005_7ab1
    call Call_005_7aea
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ret z

    xor a
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $0f
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], $02
    ld a, $ff
    jp label_3B0C


    ld hl, $c460
    add hl, bc
    ld e, [hl]
    sla e
    sla e
    sla e
    sla e
    sla e
    sla e
    ld d, b
    ld hl, $d000
    add hl, de
    push de
    ld e, $20

jr_005_6831:
    xor a
    ld [hl+], a
    dec e
    ld a, e
    cp $00
    jr nz, jr_005_6831

    pop de
    ld hl, $d100
    add hl, de
    ld e, $20

jr_005_6840:
    xor a
    ld [hl+], a
    dec e
    ld a, e
    cp $00
    jr nz, jr_005_6840

    ld hl, $c250
    add hl, bc
    ld [hl], $06
    call IsEntityFrameCounterZero
    ld [hl], $40
    call label_C00
    ld [hl], $40
    ld hl, $c3b0
    add hl, bc
    ld [hl], $03
    ret


    ld b, $fa
    nop
    nop
    nop
    nop
    ld a, [RenderLoop.RenderLoop_loadNewMap]
    ld bc, $0100
    ld hl, $2322
    ld [hl+], a
    ldh a, [hMapTileset]
    cp $07
    jr nz, jr_005_6879

    ld a, $10
    ldh [hFFF5], a

jr_005_6879:
    call Call_005_6a38
    call Call_005_7a3a
    call label_3EE8
    call label_C56
    call label_3B39
    ldh a, [$f0]
    rst $00
    sub c
    ld l, b
    ld d, a
    ld l, c
    or c
    ld l, c
    call IsEntityFrameCounterZero
    jr nz, jr_005_689b

    ld [hl], $00
    call IncrementEntityWalkingAttr

jr_005_689b:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    and $3f
    ld [hl], a
    ldh [$d7], a
    rra
    rra
    nop
    and $03
    ld e, a
    ld d, $00
    ld hl, $6867
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ld hl, $686b
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a
    ld hl, $c460
    add hl, bc
    ld e, [hl]
    sla e
    sla e
    sla e
    sla e
    sla e
    sla e
    ld d, $00
    push de
    ld hl, $d000
    add hl, de
    ldh a, [$d7]
    ld e, a
    add hl, de
    ldh a, [$ee]
    ld [hl], a
    pop de
    ld hl, $d100
    add hl, de
    ldh a, [$d7]
    ld e, a
    add hl, de
    ldh a, [$ec]
    ld [hl], a
    call Call_005_7ab1
    call label_3B23
    ld e, $0f
    ld d, b

jr_005_68f6:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    cp $05
    jr nz, jr_005_6953

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $02
    jr nz, jr_005_6953

    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld a, [hl]
    cp $38
    jr c, jr_005_6953

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$ee]
    sub [hl]
    add $06
    cp $0c
    jr nc, jr_005_6953

    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$ec]
    sub [hl]
    add $06
    cp $0c
    jr nc, jr_005_6953

    ld hl, $c310
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_005_6953

    ld hl, wEntitiesTypeTable
    add hl, de
    ld [hl], b
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, $c300
    add hl, bc
    ld [hl], $60
    ld hl, $c420
    add hl, bc
    ld [hl], $0c
    ld hl, $c440
    add hl, bc
    inc [hl]
    ld a, $2a
    ldh [$f2], a
    ret


jr_005_6953:
    dec e
    jr nz, jr_005_68f6

    ret


    call IsEntityFrameCounterZero
    jr nz, jr_005_69a0

    call GetRandomByte
    and $1f
    add $40
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], b
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    jr nz, jr_005_6978

    call Call_005_7b24
    jr jr_005_697e

jr_005_6978:
    call GetRandomByte
    and $03
    ld e, a

jr_005_697e:
    ld hl, $fff1
    xor [hl]
    and $02
    jr z, jr_005_6978

    ld d, b
    ld hl, $c3b0
    add hl, bc
    ld [hl], e
    ld hl, $685f
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $6863
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a

jr_005_69a0:
    ret


    di
    dec c
    nop
    nop
    nop
    nop
    dec c
    di
    inc c
    db $f4
    nop
    nop
    nop
    nop
    db $f4
    inc c
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_69c4

    call IsEntityFrameCounterZero
    ld [hl], $30
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ret


jr_005_69c4:
    cp $24
    jr nz, jr_005_69cb

    call label_C4B

jr_005_69cb:
    cp $04
    jr nz, jr_005_69eb

    ldh a, [$f1]
    ld e, a
    ld d, b
    ld hl, $69a9
    add hl, de
    ldh a, [$ee]
    add [hl]
    ldh [$d7], a
    ld hl, $69ad
    add hl, de
    ldh a, [$ec]
    add [hl]
    ldh [$d8], a
    ld a, $02
    call label_CC7
    xor a

jr_005_69eb:
    cp $20
    ret nz

    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $03
    ret nz

    ld a, $02
    call label_3B86
    ret c

    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $17
    push bc
    ld hl, $c3b0
    add hl, bc
    ld c, [hl]
    ld hl, $69a1
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $69a5
    add hl, bc
    ldh a, [$d8]
    add [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    pop bc
    jp Jump_005_7e9d


    ld h, [hl]
    inc hl
    ld h, h
    inc hl
    ld h, h
    inc bc
    ld h, [hl]
    inc bc
    ld h, d
    inc bc
    ld h, d
    inc hl
    ld h, b
    inc bc
    ld h, b
    inc hl
    ld l, b
    inc bc
    ld l, b
    inc hl

Call_005_6a38:
    call label_C00
    ld hl, wMapSlideTransitionState
    or [hl]
    ld hl, $c300
    add hl, bc
    or [hl]
    jp nz, Jump_005_6c77

    ldh a, [$f1]
    cp $02
    jr nz, jr_005_6a56

    call Call_005_6aa5
    call Call_005_6a5f
    jp label_3D8A


jr_005_6a56:
    call Call_005_6a5f
    call Call_005_6aa5
    jp label_3D8A


Call_005_6a5f:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    push bc
    ld hl, $c460
    add hl, bc
    ld e, [hl]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld c, [hl]
    sla e
    sla e
    sla e
    sla e
    sla e
    sla e
    ld d, b
    push de
    ld hl, $d000
    add hl, de
    ldh a, [$d7]
    sub c
    and $3f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    pop de
    ld hl, $d100
    add hl, de
    ldh a, [$d7]
    sub c
    and $3f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    pop bc
    ld de, $6a24
    jp label_3BC0


Call_005_6aa5:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    push bc
    ld hl, $c460
    add hl, bc
    ld e, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld c, [hl]
    sla e
    sla e
    sla e
    sla e
    sla e
    sla e
    ld d, b
    push de
    ld hl, $d000
    add hl, de
    ldh a, [$d7]
    sub c
    and $3f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    pop de
    ld hl, $d100
    add hl, de
    ldh a, [$d7]
    sub c
    and $3f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    pop bc
    ld a, $04
    ldh [$f1], a
    ld de, $6a24
    call label_3BC0
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    ldh [$f1], a
    ret


    nop
    nop
    ld h, [hl]
    jr nz, jr_005_6afc

jr_005_6afc:
    ld [$2064], sp
    nop
    di
    ld l, b
    nop
    nop
    ei
    ld l, b
    jr nz, jr_005_6b08

jr_005_6b08:
    nop
    ld h, h
    nop
    nop
    ld [$0066], sp
    nop
    dec c
    ld l, b
    nop
    nop
    dec d
    ld l, b
    jr nz, jr_005_6b18

jr_005_6b18:
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    dec c
    nop
    ld l, b
    nop
    dec c
    ld [$2068], sp
    nop
    nop
    ld h, b
    nop
    nop
    ld [$2060], sp
    di
    nop
    ld l, b
    nop
    di
    ld [$2068], sp
    nop

jr_005_6b38:
    inc b
    ld h, [hl]
    jr nz, jr_005_6b3c

jr_005_6b3c:
    inc c
    ld h, h
    jr nz, jr_005_6b38

    db $ec
    ld l, h
    nop
    ld hl, sp-$0c
    ld l, d
    nop
    ld hl, sp-$04
    ld l, d
    jr nz, @-$06

    inc b
    ld l, h
    jr nz, @+$0a

    db $ec
    ld l, h
    ld b, b
    ld [$6ef4], sp
    ld b, b
    ld [$6efc], sp
    ld h, b
    ld [$6c04], sp
    ld h, b
    nop
    db $fc
    ld h, h
    nop
    nop
    inc b
    ld h, [hl]
    nop
    ld hl, sp+$04
    ld l, h
    nop
    ld hl, sp+$0c
    ld l, d
    nop
    ld hl, sp+$14
    ld l, d
    jr nz, @-$06

    inc e
    ld l, h
    jr nz, @+$0a

    inc b
    ld l, h
    ld b, b
    ld [$6e0c], sp
    ld b, b
    ld [$6e14], sp
    ld h, b
    ld [$6c1c], sp
    ld h, b
    inc b
    ld hl, sp+$6c
    nop
    inc b
    nop
    ld l, d
    nop
    inc b
    ld [$206a], sp
    inc b
    db $10
    ld l, h
    jr nz, jr_005_6bac

    ld hl, sp+$6c
    ld b, b
    inc d
    nop
    ld l, [hl]
    ld b, b
    inc d
    ld [$606e], sp
    inc d
    db $10
    ld l, h
    ld h, b
    db $fc
    nop
    ld h, d
    nop
    db $fc

jr_005_6bac:
    ld [$2062], sp
    inc b
    nop
    ld h, b
    nop
    inc b
    ld [$2060], sp
    db $ec
    ld hl, sp+$6c
    nop
    db $ec
    nop
    ld l, d
    nop
    db $ec
    ld [$206a], sp
    db $ec

jr_005_6bc4:
    db $10
    ld l, h
    jr nz, jr_005_6bc4

    ld hl, sp+$6c
    ld b, b
    db $fc
    nop
    ld l, [hl]
    ld b, b
    db $fc
    ld [$606e], sp
    db $fc
    db $10
    ld l, h
    ld h, b
    nop
    ld [bc], a
    ld h, [hl]
    jr nz, jr_005_6bdc

jr_005_6bdc:
    ld a, [bc]
    ld h, h
    jr nz, @-$03

    rst $28
    ld l, h
    nop
    ei
    rst $30
    ld l, [hl]
    nop

jr_005_6be7:
    ei
    ld sp, hl
    ld l, [hl]
    jr nz, jr_005_6be7

    ld bc, $206c
    dec b
    rst $28
    ld l, h
    ld b, b
    dec b
    rst $30
    ld l, [hl]
    ld b, b
    dec b
    ld sp, hl
    ld l, [hl]
    ld h, b
    dec b
    ld bc, $606c
    nop
    cp $64
    nop
    nop
    ld [bc], a
    ld h, [hl]
    nop
    ei
    rlca
    ld l, h
    nop
    ei
    rrca
    ld l, [hl]
    nop
    ei
    ld de, $206e
    ei
    add hl, de
    ld l, h
    jr nz, jr_005_6c1d

    rlca
    ld l, h
    ld b, b
    dec b
    rrca

jr_005_6c1d:
    ld l, [hl]
    ld b, b
    dec b
    ld de, $606e
    dec b
    add hl, de
    ld l, h
    ld h, b
    rlca
    ei
    ld l, h
    nop
    rlca
    inc bc
    ld l, [hl]
    nop
    rlca
    dec b
    ld l, [hl]
    jr nz, jr_005_6c3b

    dec c
    ld l, h
    jr nz, jr_005_6c49

    ei
    ld l, h
    ld b, b

jr_005_6c3b:
    ld de, $6e03
    ld b, b
    ld de, $6e05
    ld h, b
    ld de, $6c0d
    ld h, b
    cp $00

jr_005_6c49:
    ld h, d
    nop
    cp $08
    ld h, d
    jr nz, jr_005_6c52

    nop
    ld h, b

jr_005_6c52:
    nop

jr_005_6c53:
    ld [bc], a
    ld [$2060], sp
    rst $28
    ei
    ld l, h
    nop
    rst $28
    inc bc
    ld l, [hl]
    nop
    rst $28
    dec b

jr_005_6c61:
    ld l, [hl]
    jr nz, jr_005_6c53

    dec c
    ld l, h
    jr nz, jr_005_6c61

    ei
    ld l, h
    ld b, b
    ld sp, hl
    inc bc
    ld l, [hl]
    ld b, b
    ld sp, hl
    dec b
    ld l, [hl]
    ld h, b
    ld sp, hl
    dec c
    ld l, h
    ld h, b

Jump_005_6c77:
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    cp $08
    jr c, jr_005_6cae

    cp $28
    jr nc, jr_005_6cae

    ld hl, $6bd7
    cp $0e
    jr c, jr_005_6c92

    cp $22
    jr nc, jr_005_6c92

    ld hl, $6b37

jr_005_6c92:
    ldh a, [$f1]
    ld e, a
    ld d, b
    sla e
    sla e
    sla e
    ld a, e
    sla e
    sla e
    add e
    ld e, a
    add hl, de
    ld c, $0a
    call label_3CE6
    ld a, $08
    jp label_3DA0


jr_005_6cae:
    ldh a, [$f1]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $6af7
    add hl, de
    ld c, $04
    call label_3CE6
    ld a, $02
    jp label_3DA0


    call IsEntityFrameCounterZero
    ld [hl], $80
    xor a
    ld [$d200], a
    ld [$d203], a
    ld [$d204], a
    ld hl, $c390
    add hl, bc
    ld [hl], $01
    ret


    call label_394D
    call label_3EE8
    call label_C56
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    rst $00
    pop af
    ld l, h
    and $72
    pop de
    ld [hl], l
    ld a, c
    ld [$d201], a
    ldh a, [$f0]
    rst $00
    nop
    ld l, l
    ld b, d
    ld l, l
    ld a, l
    ld l, [hl]
    db $eb
    ld [hl], b
    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $80
    ld a, $ff
    ld [$c157], a
    ld a, $3e
    ldh [hFFF4], a
    ld [$d3e8], a
    ld a, $04
    ld [$c158], a
    jp IncrementEntityWalkingAttr


    jr nz, @+$62

    jr nz, jr_005_6d7e

    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [label_808], sp
    ld [$0b09], sp
    dec bc
    ld a, [bc]
    ld [label_808], sp
    ld [$0b09], sp
    dec bc
    ld a, [bc]
    dec b
    rlca
    rlca
    ld b, $04
    inc b
    inc b
    inc b
    dec b
    rlca
    rlca
    ld b, $04
    inc b
    inc b
    inc b
    ld a, $38
    ldh [$ce], a
    add $10
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ld a, $30
    ldh [$cd], a
    add $18
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    call IsEntityFrameCounterZero
    jp nz, Jump_005_6e30

    ld [hl], $ff
    xor a
    ld [$d3e8], a
    call IncrementEntityWalkingAttr
    ld a, $af
    ld [$d745], a
    ld a, $af
    ld [$d746], a
    ld a, $b0
    ld [$d755], a
    ld a, $b0
    ld [$d756], a
    call label_C00

jr_005_6d7e:
    ld [hl], $1f
    call label_BFB
    ld [hl], $b0
    call label_3E34
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $05
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    add $10
    ld [hl], a
    call label_3E34
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $05
    call label_3E34
    call label_C4B
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $05
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_005_6dfd

    push bc
    ldh a, [$cf]
    ld h, a
    ldh a, [$d0]
    ld l, a
    push hl
    inc l
    ld a, l
    ldh [$d0], a
    push hl
    ld a, $af
    ld [$ddd8], a
    ld a, $05
    call label_91D
    ldh a, [$d0]
    inc a
    inc a
    ldh [$d0], a
    ld a, $05
    call label_91D
    pop hl
    ld de, $0040
    add hl, de
    ld a, h
    ldh [$cf], a
    ld a, l
    ldh [$d0], a
    ld a, $b0
    ld [$ddd8], a
    ld a, $05
    call label_91D
    ldh a, [$d0]
    inc a
    inc a
    ldh [$d0], a
    ld a, $05
    call label_91D
    pop hl
    ld a, h
    ldh [$cf], a
    ld a, l
    ldh [$d0], a
    pop bc

jr_005_6dfd:
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $1c
    ld [wRequests], a
    call Call_005_6e15
    call Call_005_6e15
    call Call_005_6e15

Call_005_6e15:
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ldh [$d0], a
    ld [hl+], a
    ld a, $83
    ld [hl+], a
    ld a, $76
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld a, $77
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Jump_005_6e30:
    cp $40
    jp nz, Jump_005_6e7c

    call label_2887
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $1c
    ld [wRequests], a
    call Call_005_6e4a

Call_005_6e4a:
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ldh [$d0], a
    ld [hl+], a
    ld a, $83
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld a, $1e
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld a, $1e
    ld [hl+], a
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    inc a
    ldh [$d0], a
    ld [hl+], a
    ld a, $83
    ld [hl+], a
    ld a, $1d
    ld [hl+], a
    ld a, $1f
    ld [hl+], a
    ld a, $1d
    ld [hl+], a
    ld a, $1f
    ld [hl+], a
    xor a
    ld [hl], a

Jump_005_6e7c:
    ret


    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    push af
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    push af
    call $70eb
    pop af
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    pop af
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    call label_3D8A
    call IsEntityFrameCounterZero
    jp z, IncrementEntityWalkingAttr

    cp $98
    jr z, jr_005_6eb0

    cp $68
    jr z, jr_005_6eb0

    cp $38
    jr z, jr_005_6eb0

    cp $08
    ret nz

jr_005_6eb0:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $04
    ret z

    inc [hl]
    ld e, a
    ld d, b
    ld hl, $6d1a
    add hl, de
    ld a, [hl]
    ldh [$ce], a
    ld hl, $6d1e
    add hl, de
    ld a, [hl]
    ldh [$cd], a
    sla e
    sla e
    sla e
    ld hl, $6d22
    add hl, de
    push hl
    call label_2887
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $0e
    ld [wRequests], a
    pop de
    ldh a, [$cf]
    ld [hl+], a
    ldh a, [$d0]
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
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
    add $20
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $d5
    ld [$d713], a
    ld [$d717], a
    ld a, $d6
    ld [$d714], a
    ld [$d718], a
    ld a, $d7
    ld [$d783], a
    ld [$d787], a
    ld a, $d8
    ld [$d784], a
    ld [$d788], a
    ld a, $5d
    call label_3B86
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$ce]
    add $10
    ld [hl], a
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$cd]
    add $10
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, bc
    add $08
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $2f
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $03
    ld a, $00
    jr c, jr_005_6f78

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub $08
    ld [hl], a
    ld a, $01

jr_005_6f78:
    ld hl, $c380
    add hl, de
    ld [hl], a
    call label_3E34
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], $05
    jp label_C4B


    ret nc

    pop de
    call nc, $dfd9
    and $ee
    rst $30
    nop
    add hl, bc
    ld [de], a
    ld a, [de]
    ld hl, $2c27
    cpl
    jr nc, jr_005_6fca

    inc l
    daa
    ld hl, $121a
    add hl, bc
    nop
    rst $30
    xor $e6
    rst $18
    reti


    call nc, $d0d1
    pop de
    call nc, $dfd9
    and $ee
    rst $30
    jp c, $dddb

    pop hl
    and $eb
    ld a, [c]
    ld sp, hl
    nop
    rlca
    ld c, $15
    ld a, [de]
    rra
    inc hl
    dec h
    ld h, $25
    inc hl
    rra
    ld a, [de]
    dec d
    ld c, $07
    nop

jr_005_6fca:
    ld sp, hl
    ld a, [c]
    db $eb
    and $e1
    db $dd
    db $db
    jp c, $dddb

    pop hl
    and $eb
    ld a, [c]
    ld sp, hl
    db $e4
    push hl
    rst $20
    jp hl


    db $ed
    pop af
    or $fb
    nop
    dec b
    ld a, [bc]
    rrca
    inc de
    rla
    add hl, de
    dec de
    inc e
    dec de
    add hl, de
    rla
    inc de
    rrca
    ld a, [bc]
    dec b
    nop
    ei
    or $f1
    db $ed
    jp hl


    rst $20
    push hl
    db $e4
    push hl
    rst $20
    jp hl


    db $ed
    pop af
    or $fb
    xor $ef
    ldh a, [$f2]
    db $f4
    or $fa
    db $fd
    nop
    inc bc
    ld b, $0a
    inc c
    ld c, $10
    ld de, $1112
    db $10
    ld c, $0c
    ld a, [bc]
    ld b, $03
    nop
    db $fd
    ld a, [$f4f6]
    ld a, [c]
    ldh a, [$ef]
    xor $ef
    ldh a, [$f2]
    db $f4
    or $fa
    db $fd
    ld hl, sp-$07
    ld a, [$fbfb]
    db $fc
    db $fd
    rst $38
    nop
    ld bc, $0403
    dec b
    dec b
    ld b, $07
    ld [$0607], sp
    dec b
    dec b
    inc b
    inc bc
    ld bc, $ff00
    db $fd
    db $fc
    ei
    ei
    ld a, [$f8f9]
    ld sp, hl
    ld a, [$fbfb]
    db $fc
    db $fd
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    rst $38
    cp $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    cp $ff
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
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
    nop
    add hl, hl
    ld [hl], b
    ld bc, $d970
    ld l, a
    or c
    ld l, a
    adc c
    ld l, a
    inc b
    inc bc
    ld [bc], a
    ld bc, $7030
    jr nc, @+$72

    db $10
    db $10
    add b
    add b
    nop
    nop
    ld bc, $cd01
    ei
    dec bc
    ld a, [$d200]
    and a
    jr z, jr_005_70f6

    ld [hl], $20

jr_005_70f6:
    ld a, [hl]
    and a
    jr nz, jr_005_7151

    ld [hl], $2c
    ld a, $5d
    call label_3B86
    jr c, jr_005_7151

    ld hl, $c360
    add hl, de
    ld [hl], $ff
    ld hl, $c3b0
    add hl, de
    ld [hl], $ff
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $01
    push bc
    call GetRandomByte
    and $03
    ld c, a
    ld hl, $70df
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableC
    add hl, de
    ld [hl], a
    ld hl, $70e3
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $5f
    ld hl, $70e7
    add hl, bc
    ld a, [hl]
    ld hl, $c380
    add hl, de
    ld [hl], a
    pop bc

jr_005_7151:
    call label_C00
    jr z, jr_005_7167

    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $70db
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], a

jr_005_7167:
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    and $07
    ld hl, $d200
    or [hl]
    jr nz, jr_005_7188

    ldh a, [$f0]
    cp $03
    jr nz, jr_005_7188

    ld hl, $c390
    add hl, bc
    ld e, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    add e
    and $1f
    ld [hl], a

jr_005_7188:
    ld a, [$d200]
    and a
    ld a, $00
    jr nz, jr_005_719a

    ld hl, $c440
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    and $1f

jr_005_719a:
    ldh [hFFE8], a
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $50
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $48
    ldh a, [hFFE8]
    ld e, a
    ld d, b
    ld hl, $7051
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    add [hl]
    and $1f
    ld e, a
    ld d, b
    push de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    sla e
    ld d, b
    ld hl, $70d1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, $02
    call Call_005_7283
    ldh a, [hFFE8]
    ld e, a
    ld d, b
    ld hl, $7071
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    add [hl]
    and $1f
    ld e, a
    ld d, b
    push de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    dec e
    ld a, e
    cp $f0
    jp nc, Jump_005_72ca

    sla e
    ld d, b
    ld hl, $70d1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, $01
    call Call_005_7283
    ldh a, [hFFE8]
    ld e, a
    ld d, b
    ld hl, $7091
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    add [hl]
    and $1f
    ld e, a
    ld d, b
    push de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    dec e
    dec e
    ld a, e
    cp $f0
    jp nc, Jump_005_72ca

    sla e
    ld d, b
    ld hl, $70d1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, $01
    call Call_005_7283
    ldh a, [hFFE8]
    ld e, a
    ld d, b
    ld hl, $70b1
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    add [hl]
    and $1f
    ld e, a
    ld d, b
    push de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    dec e
    dec e
    dec e
    ld a, e
    cp $f0
    jp nc, Jump_005_72ca

    sla e
    ld d, b
    ld hl, $70d1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, $01
    call Call_005_7283
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld e, [hl]
    ld d, b
    push de
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld e, [hl]
    dec e
    dec e
    dec e
    dec e
    ld a, e
    cp $f0
    jp nc, Jump_005_72ca

    sla e
    ld d, b
    ld hl, $70d1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, $00

Call_005_7283:
    ldh [$f1], a
    add hl, de
    ld a, $48
    add [hl]
    ldh [$ec], a
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $50
    add [hl]
    ldh [$ee], a
    call $72e0
    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $08
    cp $10
    jr nc, jr_005_72c9

    ldh a, [hLinkPositionY]
    ld hl, $ffec
    sub [hl]
    add $08
    cp $10
    jr nc, jr_005_72c9

    ld a, [wLinkMotionState]
    and a
    jr nz, jr_005_72c9

    call label_3B18
    ld a, $18
    call label_3BB5
    ldh a, [$d7]
    ldh [$9b], a
    ldh a, [$d8]
    ldh [hFF9A], a

jr_005_72c9:
    ret


Jump_005_72ca:
    pop de
    ret


    ld [hl], b
    rlca
    ld [hl], b
    daa
    ld [hl], d
    rlca
    ld [hl], d
    daa
    ld [hl], h
    rlca
    ld [hl], h
    daa
    ld a, h
    ld b, $7c
    ld h, $7e
    ld b, $7e
    ld h, $11
    call z, $c372
    ret nz

    dec sp
    call Call_005_7982
    call Call_005_7a3a
    ldh a, [$f0]
    rst $00
    dec b
    ld [hl], e
    ld h, e
    ld [hl], e
    dec h
    ld [hl], h
    or c
    ld [hl], h
    inc a
    ld [hl], l
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    call IsEntityFrameCounterZero
    jp z, Jump_005_7535

    ld e, a
    cp $18
    jr nz, jr_005_7314

    ld a, $16
    ldh [hSFX], a

jr_005_7314:
    ld a, e
    rra
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    ld hl, $72f9
    jr z, jr_005_732a

    ld hl, $72ff

jr_005_732a:
    add hl, de
    ld a, [hl]
    jp label_3B0C


    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_005_7339:
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
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
    jr jr_005_7339

    inc b
    inc c
    call IsEntityFrameCounterZero
    jp z, Jump_005_7535

    ld e, a
    cp $20
    jr nz, jr_005_7372

    ld a, $16
    ldh [hSFX], a

jr_005_7372:
    ld a, e
    rra
    rra
    and $1f
    ld e, a
    ld d, b
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    ld hl, $732f
    jr z, jr_005_7387

    ld hl, $7347

jr_005_7387:
    add hl, de
    ld a, [hl]
    call label_3B0C
    cp $0b
    jr z, jr_005_7395

    cp $0e
    jp nz, Jump_005_7424

jr_005_7395:
    ldh a, [hFF9E]
    and $02
    jp z, Jump_005_7424

    ld a, [$c1a6]
    and a
    jp z, Jump_005_7424

    dec a
    ld [$d202], a
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_7424

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_005_7424

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$ee]
    sub [hl]
    add $08
    cp $10
    jr nc, jr_005_7424

    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$ec]
    sub [hl]
    add $0c
    cp $18
    jr nc, jr_005_7424

    ld a, [$d203]
    inc a
    ld [$d203], a
    cp $04
    jr c, jr_005_7414

    call GetRandomByte
    and $01
    jr nz, jr_005_7414

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], $02
    call label_BFB
    ld [hl], $30
    ld hl, $c300
    add hl, bc
    ld [hl], $20
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $735f
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ld hl, $7361
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], a
    jp Jump_005_7777


jr_005_7414:
    call IncrementEntityWalkingAttr
    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, $c390
    add hl, de
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

Jump_005_7424:
jr_005_7424:
    ret


    call $79a7
    ld a, $01
    ld [$d200], a
    ld a, [$d202]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_7478

    ld a, [$dbc7]
    and a
    jr nz, jr_005_7478

    ld hl, wEntitiesPosYTable
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_005_745f

    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_005_745f

    dec [hl]

jr_005_745f:
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_005_7469

    ld a, $29
    ldh [$f2], a

jr_005_7469:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    ld a, $00
    jr z, jr_005_7475

    ld a, $01

jr_005_7475:
    jp label_3B0C


jr_005_7478:
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $5f
    ret


    db $10
    db $10
    inc c
    ld [$0304], sp
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    call $79a7
    ld a, $01
    ld [$d200], a
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and a
    ld a, $08
    jr z, jr_005_74c5

    ld a, $0f

jr_005_74c5:
    call label_3B0C
    ldh a, [hLinkPositionX]
    push af
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionX], a
    ldh a, [hLinkPositionY]
    push af
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ldh [hLinkPositionY], a
    call IsEntityFrameCounterZero
    rra
    rra
    and $3f
    ld e, a
    ld d, b
    ld hl, $7481
    add hl, de
    ld a, [hl]
    call label_3BB5
    ldh a, [$d8]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ldh a, [$d7]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    call Call_005_7ab1
    ldh a, [hLinkPositionY]
    ld hl, $ffec
    sub [hl]
    add $03
    cp $06
    jr nc, jr_005_750d

    call Call_005_7535

jr_005_750d:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call IsEntityFrameCounterZero
    rra
    rra
    and $3f
    ld e, a
    ld d, b
    ld hl, $7499
    add hl, de
    ldh a, [hFrameCounter]
    and [hl]
    jr nz, jr_005_7534

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld a, [hl]
    cp $04
    jr z, jr_005_7534

    inc [hl]

jr_005_7534:
    ret


Call_005_7535:
Jump_005_7535:
    xor a
    ld [$d200], a
    jp Jump_005_7b4b


    call $79a7
    call IsEntityFrameCounterZero
    jp z, Jump_005_7585

    ld hl, $c420
    add hl, bc
    ld [hl], a
    cp $80
    ret nc

    jp Jump_005_7550


Jump_005_7550:
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
    sub $10
    ld e, a
    ld hl, $ffec
    add [hl]
    ld [hl], a
    jp Jump_005_7570


Jump_005_7570:
    call Call_005_7a40
    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $02
    call label_CC7
    ld a, $13
    ldh [hFFF4], a
    ret


Call_005_7585:
Jump_005_7585:
    ld a, $36
    call label_3B86
    jr jr_005_7599

Jump_005_758c:
    ld a, $36
    call label_3B86
    ld a, $48
    ldh [$d7], a
    ld a, $10
    ldh [$d8], a

jr_005_7599:
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$f9]
    and a
    jr z, jr_005_75b4

    ld hl, $c250
    add hl, bc
    ld [hl], $f0
    jr jr_005_75c0

jr_005_75b4:
    ld hl, $c320
    add hl, de
    ld [hl], $10
    ld hl, $c310
    add hl, de
    ld [hl], $08

jr_005_75c0:
    call Call_005_7b4b
    ld hl, hFFF4
    ld [hl], $1a
    ret


    inc bc
    dec b
    nop
    inc b
    ld [bc], a
    ld b, $01
    rlca
    call Call_005_766e
    call label_3D8A
    call Call_005_7a3a
    ld a, $01
    ld [$d200], a
    call label_BFB
    cp $10
    jr nc, jr_005_7621

    and a
    jr nz, jr_005_7619

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesUnknowTableF
    add hl, de
    ld [hl], $1f
    ld a, $02
    call label_3B86
    call label_C4B
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $17
    ld hl, $c440
    add hl, de
    ld [hl], $01
    jp Jump_005_7535


jr_005_7619:
    ldh a, [hFrameCounter]
    ld hl, $c420
    add hl, bc
    ld [hl], a
    ret


jr_005_7621:
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_005_7635

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_7635

    dec [hl]

jr_005_7635:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    and $7f
    ld [hl], a
    ld e, a
    ld d, b
    ld hl, $d000
    add hl, de
    ldh a, [$ee]
    ld [hl], a
    ld hl, $d100
    add hl, de
    ldh a, [$ec]
    ld [hl], a
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_765b

    call Call_005_7ab1
    jr jr_005_765e

jr_005_765b:
    call $7702

jr_005_765e:
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld e, [hl]
    srl e
    ld d, b
    ld hl, $75c9
    add hl, de
    ld a, [hl]
    jp label_3B0C


Call_005_766e:
    ldh a, [$f1]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld e, a
    ld d, b
    ld hl, $7782
    add hl, de
    ld c, $08
    call label_3CE6
    ld a, $08
    call label_3DA0
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    ldh a, [$d7]
    sub $0c
    and $7f
    ld e, a
    ld d, b
    ld hl, $d000
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    ld hl, $d100
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $00
    ldh [$f1], a
    ld de, $72cc
    call label_3BC0
    ldh a, [$d7]
    sub $18
    and $7f
    ld e, a
    ld d, b
    ld hl, $d000
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    ld hl, $d100
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $00
    ldh [$f1], a
    ld de, $72cc
    call label_3BC0
    ldh a, [$d7]
    sub $24
    and $7f
    ld e, a
    ld d, b
    ld hl, $d000
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    ld hl, $d100
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $02
    ldh [$f1], a
    ld de, $72cc
    jp label_3BC0


    nop
    ld b, $0c
    ld c, $10
    ld c, $0c
    ld b, $00
    ld a, [$f2f4]
    ldh a, [$f2]
    db $f4
    ld a, [$0600]
    inc c
    ld c, $cd
    or c
    ld a, d
    call label_3B44
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_7730

    call GetRandomByte
    rra
    jr c, jr_005_7721

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_005_7721:
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, [hl]
    add $08
    and $0f
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $10

jr_005_7730:
    call label_C00
    jr nz, jr_005_775e

    ld [hl], $04
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesWalkingTable
    add hl, bc
    add [hl]
    and $0f
    ld [hl], a
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $76ee
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ld hl, $76f2
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a

jr_005_775e:
    call IsEntityFrameCounterZero
    jr nz, jr_005_7776

    call GetRandomByte
    and $1f
    add $10
    ld [hl], a
    call GetRandomByte
    and $02
    dec a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a

jr_005_7776:
    ret


Jump_005_7777:
    ld e, $80
    ld hl, $d100

jr_005_777c:
    xor a
    ld [hl+], a
    dec e
    jr nz, jr_005_777c

    ret


    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$64f8], sp
    rlca
    ld [$6600], sp
    rlca
    ld [$6608], sp
    daa
    ld [$6410], sp
    daa
    ld hl, sp-$08
    ld h, h
    ld b, a
    ld hl, sp+$00
    ld h, [hl]
    ld b, a
    ld hl, sp+$08
    ld h, [hl]
    ld h, a
    ld hl, sp+$10
    ld h, h
    ld h, a
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld l, b
    rlca
    ld hl, sp+$00
    ld l, d
    rlca
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$68f8], sp
    ld b, a
    ld [$6a00], sp
    ld b, a
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld l, d
    daa
    ld hl, sp+$10
    ld l, b
    daa
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6a08], sp
    ld h, a
    ld [$6810], sp
    ld h, a
    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$6cf8], sp
    rlca
    ld [$6e00], sp
    rlca
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6e08], sp
    daa
    ld [$6c10], sp
    daa
    ld hl, sp-$08
    ld l, h
    ld b, a
    ld hl, sp+$00
    ld l, [hl]
    ld b, a
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld l, [hl]
    ld h, a
    ld hl, sp+$10
    ld l, h
    ld h, a
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld h, b
    rlca
    ld hl, sp+$00
    ld h, d
    rlca
    ld hl, sp+$08
    ld h, d
    daa
    ld hl, sp+$10
    ld h, b
    daa
    ld [$78f8], sp
    rlca
    ld [$7a00], sp
    rlca
    ld [$7a08], sp
    daa
    ld [$7810], sp
    daa
    ld [$7600], sp
    rlca
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$7608], sp
    daa
    ld [$64f8], sp
    rlca
    ld [$6600], sp
    rlca
    ld [$6608], sp
    daa
    ld [$6410], sp
    daa
    ld [$64f8], sp
    rlca
    ld [$6600], sp
    rlca
    ld [$6608], sp
    daa
    ld [$6410], sp
    daa
    ld [$78f8], sp
    rlca
    ld [$7a00], sp
    rlca
    ld [$7a08], sp
    daa
    ld [$7810], sp
    daa
    ld [$78f8], sp
    rlca
    ld [$7a00], sp
    rlca
    ld [$7a08], sp
    daa
    ld [$7810], sp
    daa
    ld hl, sp+$00
    db $76
    ld b, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp+$08
    db $76
    ld h, a
    ld hl, sp-$08
    ld h, h
    ld b, a
    ld hl, sp+$00
    ld h, [hl]
    ld b, a
    ld hl, sp+$08
    ld h, [hl]
    ld h, a
    ld hl, sp+$10
    ld h, h
    ld h, a
    ld hl, sp-$08
    ld h, h
    ld b, a
    ld hl, sp+$00
    ld h, [hl]
    ld b, a
    ld hl, sp+$08
    ld h, [hl]
    ld h, a
    ld hl, sp+$10
    ld h, h
    ld h, a
    ld hl, sp-$08
    ld a, b
    ld b, a
    ld hl, sp+$00
    ld a, d
    ld b, a
    ld hl, sp+$08
    ld a, d
    ld h, a
    ld hl, sp+$10
    ld a, b
    ld h, a
    ld hl, sp-$08
    ld a, b
    ld b, a
    ld hl, sp+$00
    ld a, d
    ld b, a
    ld hl, sp+$08
    ld a, d
    ld h, a
    ld hl, sp+$10
    ld a, b
    ld h, a
    ld [$60f8], sp
    ld b, a
    ld [$6200], sp
    ld b, a
    ld [$6208], sp
    ld h, a
    ld [$6010], sp
    ld h, a
    ld hl, sp-$08
    ld a, b
    ld b, a
    ld hl, sp+$00
    ld a, d
    ld b, a
    ld hl, sp+$08
    ld a, d
    ld h, a
    ld hl, sp+$10
    ld a, b
    ld h, a

Call_005_7982:
    ldh a, [$f1]
    ld d, b
    rla
    rl d
    rla
    rl d
    rla
    rl d
    rla
    rl d
    rla
    rl d
    and $e0
    ld e, a
    ld hl, $7782
    add hl, de
    ld c, $08
    call label_3CE6
    ld a, $08
    jp label_3DA0


    ld a, [c]
    ld c, $f0
    rst $20
    and $10
    ld a, $03
    jr z, jr_005_79b0

    inc a

jr_005_79b0:
    ldh [$f1], a
    nop

jr_005_79b3:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $79a5
    add hl, de
    ld a, [hl]
    ld hl, $ffec
    add [hl]
    ld [hl], a
    cp $14
    jr c, jr_005_7a1f

    cp $7c
    jr nc, jr_005_7a1f

    ld de, $72cc
    call label_3BC0
    ldh a, [$f0]
    cp $04
    jr nc, jr_005_7a1d

    ldh a, [$f1]
    and a
    jr z, jr_005_7a1a

    xor a
    ldh [$f1], a
    call label_3B70
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $16
    jr nz, jr_005_7a1a

    ld hl, $d204
    inc [hl]
    ld a, [hl]
    cp $08
    jr nz, jr_005_7a1a

    ld a, [$d201]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld [hl], b
    call IncrementEntityWalkingAttr
    ld [hl], $04
    call IsEntityFrameCounterZero
    ld [hl], $ff
    call label_27F2
    ld a, $03
    ld [$c5a7], a
    ld a, $5e
    ld [wWorldMusicTrack], a
    ld a, $b5
    call label_2385

jr_005_7a1a:
    call label_3B44

jr_005_7a1d:
    jr jr_005_79b3

jr_005_7a1f:
    call label_3D8A
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_7a39

    ld hl, $c430
    add hl, bc
    ld [hl], $c0
    call label_3B70
    ld hl, $c430
    add hl, bc
    ld [hl], $80

jr_005_7a39:
    ret


Call_005_7a3a:
    ldh a, [$ea]
    cp $05
    jr nz, jr_005_7a65

Call_005_7a40:
    ld a, [wGameplayType]
    cp $07
    jr z, jr_005_7a65

    cp $0b
    jr nz, jr_005_7a65

    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_005_7a65

    ld hl, $c1a8
    ld a, [wDialogState]
    or [hl]
    ld hl, wInventoryAppearing
    or [hl]
    jr nz, jr_005_7a65

    ld a, [wMapSlideTransitionState]
    and a
    jr z, jr_005_7a66

jr_005_7a65:
    pop af

jr_005_7a66:
    ret


    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_7ab0

    dec a
    ld [hl], a
    call label_3E8E
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $c250
    add hl, bc
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
    ld hl, $c250
    add hl, bc
    ld [hl], a
    call Call_005_7ab1
    ld hl, $c430
    add hl, bc
    ld a, [hl]
    and $20
    jr nz, jr_005_7aa3

    call label_3B23

jr_005_7aa3:
    ld hl, $c250
    add hl, bc
    pop af
    ld [hl], a
    ld hl, $c240
    add hl, bc
    pop af
    ld [hl], a
    pop af

jr_005_7ab0:
    ret


Call_005_7ab1:
Jump_005_7ab1:
    call Call_005_7abe

Call_005_7ab4:
Jump_005_7ab4:
    push bc
    ld a, c
    add $10
    ld c, a
    call Call_005_7abe
    pop bc
    ret


Call_005_7abe:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_7ae9

    push af
    swap a
    and $f0
    ld hl, $c260
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, wEntity0PosX

jr_005_7ad6:
    add hl, bc
    pop af
    ld e, $00
    bit 7, a
    jr z, jr_005_7ae0

    ld e, $f0

jr_005_7ae0:
    swap a
    and $0f
    or e
    rr d
    adc [hl]
    ld [hl], a

jr_005_7ae9:
    ret


Call_005_7aea:
Jump_005_7aea:
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_7ae9

    push af
    swap a
    and $f0
    ld hl, $c330
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, $c310
    jr jr_005_7ad6

Call_005_7b04:
    ld e, $00
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, jr_005_7b12

    inc e

jr_005_7b12:
    ld d, a
    ret


Call_005_7b14:
    ld e, $02
    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, bc
    sub [hl]
    bit 7, a
    jr nz, jr_005_7b22

    inc e

jr_005_7b22:
    ld d, a
    ret


Call_005_7b24:
    call Call_005_7b04
    ld a, e
    ldh [$d7], a
    ld a, d
    bit 7, a
    jr z, jr_005_7b31

    cpl
    inc a

jr_005_7b31:
    push af
    call Call_005_7b14
    ld a, e
    ldh [$d8], a
    ld a, d
    bit 7, a
    jr z, jr_005_7b3f

    cpl
    inc a

jr_005_7b3f:
    pop de
    cp d
    jr nc, jr_005_7b47

    ldh a, [$d7]
    jr jr_005_7b49

jr_005_7b47:
    ldh a, [$d8]

jr_005_7b49:
    ld e, a
    ret


Call_005_7b4b:
Jump_005_7b4b:
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], b
    ret


    db $10
    ldh a, [rNR23]
    add sp, $00
    ldh a, [$64]
    nop
    nop
    ld hl, sp+$66
    nop
    nop
    nop
    ld h, b
    nop
    nop
    ld [$2060], sp
    nop
    db $10
    ld l, d
    jr nz, jr_005_7b6a

jr_005_7b6a:
    jr jr_005_7bd4

    jr nz, jr_005_7b6e

jr_005_7b6e:
    ldh a, [$6c]
    nop
    nop
    ld hl, sp+$6e
    nop
    nop
    nop
    ld h, b
    nop
    nop
    ld [$2060], sp
    nop
    db $10
    ld l, [hl]
    jr nz, jr_005_7b82

jr_005_7b82:
    jr @+$6e

    jr nz, jr_005_7b86

jr_005_7b86:
    ldh a, [rBGPI]
    nop
    nop
    ld hl, sp+$6a
    nop
    nop
    nop
    ld h, b
    nop
    nop
    ld [$2060], sp
    nop
    db $10
    ld h, [hl]
    jr nz, jr_005_7b9a

jr_005_7b9a:
    jr @+$66

    jr nz, jr_005_7b9e

jr_005_7b9e:
    ldh a, [$64]
    nop
    nop
    ld hl, sp+$66
    nop
    nop
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    nop
    db $10
    ld l, d
    jr nz, jr_005_7bb2

jr_005_7bb2:
    jr jr_005_7c1c

    jr nz, jr_005_7bb6

jr_005_7bb6:
    ldh a, [$6c]
    nop
    nop
    ld hl, sp+$6e
    nop
    nop
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    nop
    db $10
    ld l, [hl]
    jr nz, jr_005_7bca

jr_005_7bca:
    jr @+$6e

    jr nz, jr_005_7bce

jr_005_7bce:
    ldh a, [rBGPI]
    nop
    nop
    ld hl, sp+$6a

jr_005_7bd4:
    nop
    nop
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    nop
    db $10
    ld h, [hl]

jr_005_7be0:
    jr nz, jr_005_7be2

jr_005_7be2:
    jr @+$66

    jr nz, jr_005_7be0

    ld h, [hl]
    pop bc
    cp $01
    jr nz, jr_005_7bf6

    call Call_005_7cd5
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld a, [hl]
    ldh [$f0], a

jr_005_7bf6:
    ldh a, [$f1]
    rla
    rla
    rla
    and $f8
    ld c, a
    rla
    and $f0
    add c
    ld e, a
    ld d, b
    ld hl, $7b55
    add hl, de
    ld c, $06
    call label_3CE6
    ld a, $06
    call label_3DA0
    ldh a, [$ea]
    cp $05
    jp nz, Jump_005_7e6c

    call Call_005_7a3a

jr_005_7c1c:
    call label_3EE8
    call label_3B39
    call Call_005_7ab1
    call label_3B23
    call label_C56
    ldh a, [$f0]
    rst $00
    ld [hl], $7c
    ld d, d
    ld a, h
    ld h, d
    ld a, l
    ld a, [bc]
    ld a, [hl]
    call GetRandomByte
    and $01
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a
    ld e, a
    ld d, b
    ld hl, $7b51
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ret


    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    call label_C00
    jp nz, Jump_005_7ce8

    call IsEntityFrameCounterZero
    jr z, jr_005_7c89

    cp $01
    jr nz, jr_005_7c9c

    call Call_005_7b04
    ld d, b
    ld hl, $7b53
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $c250
    add hl, bc
    ld [hl], b
    call label_C00
    call GetRandomByte
    and $3f
    add $60
    ld [hl], a
    jp Jump_005_7ce8


jr_005_7c89:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $08
    ld hl, hLinkPositionY
    cp [hl]
    jp c, Jump_005_7cb3

    call IsEntityFrameCounterZero
    ld [hl], $60

jr_005_7c9c:
    ld hl, $c250
    add hl, bc
    ld [hl], b
    ld hl, $c240
    add hl, bc
    and $04
    jr nz, jr_005_7cae

    ld [hl], $08
    jp Jump_005_7d40


jr_005_7cae:
    ld [hl], $f8
    jp Jump_005_7d40


Jump_005_7cb3:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ldh a, [hLinkPositionY]
    sub [hl]
    cp $28
    jr nc, jr_005_7ce8

    ld hl, $c480
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_7ce8

    call GetRandomByte
    and $7f
    add $40
    ld [hl], a
    and $03
    jr z, jr_005_7d21

    dec a
    jr nz, jr_005_7ce8

Call_005_7cd5:
    call IncrementEntityWalkingAttr
    ld [hl], $03
    call label_3D7F
    ld hl, $c300
    add hl, bc
    ld [hl], $40
    ld a, $01
    jp Jump_005_7d5f


Jump_005_7ce8:
jr_005_7ce8:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $03
    jr z, jr_005_7d09

    call label_C00
    jr z, jr_005_7d01

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    xor $f0
    ld [hl], a
    jp Jump_005_7d40


jr_005_7d01:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_005_7d09:
    call label_C00
    jr nz, jr_005_7d40

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    ld e, a
    ld d, b
    ld hl, $7b51
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    jr jr_005_7d48

jr_005_7d21:
    call IsEntityFrameCounterZero
    ld [hl], $60
    call label_C00
    ld [hl], b
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], b
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], a
    jr jr_005_7d48

Jump_005_7d40:
jr_005_7d40:
    ldh a, [hFrameCounter]
    and $07
    jr z, jr_005_7d4e

    jr jr_005_7d5a

jr_005_7d48:
    ldh a, [hFrameCounter]
    and $0f
    jr nz, jr_005_7d5a

jr_005_7d4e:
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $03
    jr nz, jr_005_7d5a

    ld [hl], $00

jr_005_7d5a:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]

Jump_005_7d5f:
    jp label_3B0C


    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_005_7ddc

    call IsEntityFrameCounterZero
    cp $02
    jr nc, jr_005_7dcc

    cp $00
    jr z, jr_005_7da8

    ld hl, hLinkPositionY
    ld a, [hl]
    ld hl, $c390
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $02
    jr z, jr_005_7d92

    call label_3D7F
    ld hl, $c250
    add hl, bc
    ld [hl], $10
    jp Jump_005_7d97


jr_005_7d92:
    ld a, $10
    call label_3BAA

Jump_005_7d97:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    add $08
    ld hl, hLinkPositionY
    cp [hl]
    jp nc, Jump_005_7de8

    jp Jump_005_7df0


jr_005_7da8:
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    sub $08
    ld hl, wEntitiesPosYTable
    add hl, bc
    cp [hl]
    jp nc, Jump_005_7df0

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    inc [hl]
    call label_3D7F
    ld hl, $c250
    add hl, bc
    ld [hl], $f0
    ld a, $16
    ldh [hSFX], a
    jp Jump_005_7df0


jr_005_7dcc:
    ld hl, $c240
    add hl, bc
    and $04
    jr nz, jr_005_7dd8

    ld [hl], $08
    jr jr_005_7df0

jr_005_7dd8:
    ld [hl], $f8
    jr jr_005_7df0

Jump_005_7ddc:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    cp [hl]
    jr c, jr_005_7df0

Jump_005_7de8:
    call label_3D7F
    call IncrementEntityWalkingAttr
    ld [hl], $01

Jump_005_7df0:
jr_005_7df0:
    ldh a, [hFrameCounter]
    and $0f
    jr nz, jr_005_7e02

    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $03
    jr nz, jr_005_7e02

    ld [hl], $00

jr_005_7e02:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    jp label_3B0C


    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_7e13

    ret


jr_005_7e13:
    call label_C00
    cp $02
    jr nc, jr_005_7e3a

    cp $00
    jr z, jr_005_7e35

    ld hl, $c350
    add hl, bc
    ld [hl], $80
    ld a, $01
    call label_3B0C
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ld hl, $c300
    add hl, bc
    ld [hl], $40
    ret


jr_005_7e35:
    call label_C00
    ld [hl], $30

jr_005_7e3a:
    cp $18
    jr nz, jr_005_7e61

    ld a, $7d
    call label_3B86
    jr c, jr_005_7e61

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
    inc [hl]
    push bc
    ld c, e
    ld b, d
    ld a, $18
    call label_3BAA
    pop bc

jr_005_7e61:
    ld hl, $c350
    add hl, bc
    ld [hl], $00
    ld a, $04
    jp label_3B0C


Jump_005_7e6c:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    rst $00
    ld a, b
    ld a, [hl]
    adc c
    ld a, [hl]
    sbc b
    ld a, [hl]
    call IsEntityFrameCounterZero
    ld [hl], $a0
    ld hl, $c420
    add hl, bc
    ld [hl], $ff

Jump_005_7e83:
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
    jp Jump_005_7e83


    call IsEntityFrameCounterZero
    jr nz, jr_005_7ed4

Jump_005_7e9d:
    ld a, $1a
    ldh [hFFF4], a
    ldh a, [$eb]
    cp $63
    jp z, Jump_005_758c

    call label_3F50
    ld e, $0f
    ld d, b

jr_005_7eae:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_005_7ebf

    ld hl, $c430
    add hl, de
    ld a, [hl]
    and $80
    jr nz, jr_005_7ecc

jr_005_7ebf:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_005_7eae

    xor a
    ld [$c1cf], a
    jp label_27DD


jr_005_7ecc:
    ldh a, [hMapTileset]
    cp $05
    ret nc

    jp Jump_005_7ed7


jr_005_7ed4:
    jp Jump_005_7550


Jump_005_7ed7:
    ld hl, $d900
    ldh a, [hMapIndex]
    ld e, a
    ld d, b
    ldh a, [hMapTileset]
    cp $ff
    jr nz, jr_005_7ee9

    ld hl, $dde0
    jr jr_005_7ef2

jr_005_7ee9:
    cp $1a
    jr nc, jr_005_7ef2

    cp $06
    jr c, jr_005_7ef2

    inc d

jr_005_7ef2:
    add hl, de
    set 5, [hl]
    ret


    ld c, $03
    ld de, $7ef6
    call label_3C77
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp z, Jump_005_7b4b

    bit 4, a
    ld e, $01
    jr z, jr_005_7f10

    ld e, $ff

jr_005_7f10:
    bit 0, a
    jr nz, jr_005_7f1b

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a

jr_005_7f1b:
    jp Jump_005_7ab1


    ld d, b
    ld bc, $0152
    ld d, d
    ld hl, $2150
    ld d, h
    ld bc, $0156
    ld d, [hl]
    ld hl, $2154
    ld a, [$db74]
    and a
    jp z, Jump_005_7b4b

    ld de, $7f1e
    call label_3BC0
    ld a, [$c50f]
    ld e, a
    ld d, b
    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$ef]
    ld e, $00
    cp [hl]
    jr c, jr_005_7f4d

    ld e, $02

jr_005_7f4d:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    rra
    and $01
    add e
    call label_3B0C
    call Call_005_54c3
    call Call_005_5506
    ret nc

    ld a, $96
    jp label_2373


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
