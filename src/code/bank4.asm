; Disassembly of "game.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

; This is the code called when the Level 2 Boss is loaded
    call label_394D
    call label_3EE8
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    rst $00 ; Initial TableJump call on bank 4
data_004_400C:
    db $16, $40
    db $E7, $42
    db $3F, $48
    db $D9, $48
    db $3E, $49

; Called by TableJump above
label_004_4016::
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $03
    jr c, jr_004_404e

    ld a, $5c
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    sub $18
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $27
    ld hl, $c360
    add hl, de
    ld [hl], $08
    call label_3E34
    ld a, $29
    ldh [hFFF4], a
    ret


jr_004_404e:
    ld hl, $c360
    add hl, bc
    ld [hl], $20
    ld a, c
    ld [wIntroSubTimer], a
    call Call_004_42b3
    call Call_004_7fa3
    ld hl, $c340
    add hl, bc
    ld [hl], $81
    ld hl, $c350
    add hl, bc
    ld [hl], $80
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    ldh [hFFE8], a
    and $80
    jr z, jr_004_4085

    xor a
    ld [hl], a
    ld hl, $c320
    add hl, bc
    ld [hl], b

jr_004_4085:
    ldh a, [$f0]
    rst $00
    sub b
    ld b, b
    and e
    ld b, b
    ld d, l
    ld b, c
    inc d
    ld b, d
    ldh a, [hLinkPositionY]
    cp $70
    jr nc, jr_004_409e

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $ff

jr_004_409e:
    ret


    nop
    ld bc, $0200
    call label_C56
    call label_3B70
    call label_3B44
    jr nc, jr_004_40c7

    call label_CB6
    ld a, $09
    ldh [$f2], a
    ld a, $10
    ld [$c13e], a
    ld a, $14
    call label_3BB5
    ldh a, [$d7]
    ldh [$9b], a
    ldh a, [$d8]
    ldh [hFF9A], a

jr_004_40c7:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_4118

    ldh a, [hFFE8]
    and $80
    jr z, jr_004_40df

    ld hl, $c320
    add hl, bc
    ld [hl], $10
    ld a, $20
    ldh [$f2], a

jr_004_40df:
    ldh a, [hLinkPositionX]
    push af
    ld a, $50
    ldh [hLinkPositionX], a
    ldh a, [hLinkPositionY]
    push af
    ld a, $48
    ldh [hLinkPositionY], a
    ld a, $08
    call label_3BAA
    ldh a, [$ee]
    ld hl, hLinkPositionX
    sub [hl]
    add $02
    cp $04
    jr nc, jr_004_410f

    ldh a, [$ef]
    ld hl, hLinkPositionY
    sub [hl]
    add $02
    cp $04
    jr nc, jr_004_410f

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    inc [hl]

jr_004_410f:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call Call_004_6dca

jr_004_4118:
    call IsEntityFrameCounterZero
    cp $01
    jr nz, jr_004_4144

    ld a, $5c
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    sub $26
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $47
    ld a, $06
    ldh [$f2], a

Jump_004_4144:
jr_004_4144:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $409f
    add hl, de
    ld a, [hl]
    jp label_3B0C


    call IsEntityFrameCounterZero
    jr z, jr_004_41ac

    dec a
    jr nz, jr_004_4163

    call IncrementEntityWalkingAttr
    ld [hl], $03
    ret


jr_004_4163:
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_41a6

    call IsEntityFrameCounterZero
    cp $28
    jr c, jr_004_418d

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    or [hl]
    jr z, jr_004_418d

    ld hl, $c390
    add hl, bc
    ld a, [hl]
    and $01
    jr nz, jr_004_418d

    inc [hl]
    ld a, $7f
    call label_2373

jr_004_418d:
    call label_3D7F
    call IsEntityFrameCounterZero
    cp $28
    jr nc, jr_004_41a9

    ld e, $08
    ldh a, [hFrameCounter]
    and $04
    jr z, jr_004_41a1

    ld e, $f8

jr_004_41a1:
    ld hl, $c240
    add hl, bc
    ld [hl], e

jr_004_41a6:
    call Call_004_6dca

jr_004_41a9:
    call label_3B23

jr_004_41ac:
    call label_C56
    call label_3B70
    call Call_004_7be3
    ldh a, [$ee]
    ld hl, hLinkPositionX
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_4210

    ldh a, [$ec]
    ld hl, hLinkPositionY
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_4210

    call label_CB6
    ld a, [wAButtonSlot]
    cp $03
    jr nz, jr_004_41df

    ldh a, [hPressedButtonsMask]
    and $20
    jr nz, jr_004_41ec

    jr jr_004_4210

jr_004_41df:
    ld a, [wBButtonSlot]
    cp $03
    jr nz, jr_004_4210

    ldh a, [hPressedButtonsMask]
    and $10
    jr z, jr_004_4210

jr_004_41ec:
    ld a, [$c3cf]
    and a
    jr nz, jr_004_4210

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
    ld hl, hSFX
    ld [hl], $02
    call IsEntityFrameCounterZero
    ld [hl], $08

jr_004_4210:
    xor a
    jp label_3B0C


    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_4245

    ld [hl], b
    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, $c320
    add hl, bc
    ld [hl], $20
    ld a, $08
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
    ld hl, $c240
    add hl, bc
    ld [hl], a
    call IsEntityFrameCounterZero
    ld [hl], $c0
    ret


jr_004_4245:
    call Call_004_6d80
    ld hl, $c340
    add hl, bc
    ld [hl], $01
    ld hl, $c350
    add hl, bc
    ld [hl], $00
    ld hl, $c430
    add hl, bc
    ld [hl], $00
    call label_3B39
    ld hl, $c430
    add hl, bc
    ld [hl], $d0
    ldh a, [hFFE8]
    and $80
    jr z, jr_004_4278

    ld hl, $c320
    add hl, bc
    ld [hl], $10
    ld a, $20
    ldh [$f2], a
    ld a, $0c
    call label_3BAA

jr_004_4278:
    call Call_004_6dca
    call label_3B23
    jp Jump_004_4144


    ldh a, [rP1]
    db $76
    ld b, $f0
    ld [$2676], sp
    nop
    nop
    ld a, b
    ld b, $00
    ld [$2678], sp
    ldh a, [rP1]
    ld a, d
    ld b, $f0
    ld [$067c], sp
    nop
    nop
    ld a, [hl]
    ld b, $00
    ld [label_267E], sp
    ldh a, [rP1]
    ld a, h
    ld h, $f0
    ld [$267a], sp
    nop
    nop
    ld a, [hl]
    ld b, $00
    ld [label_267E], sp
    ld h, $00

Call_004_42b3:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    rla
    rla
    rla
    rla
    and $f0
    ld e, a
    ld d, b
    ld hl, $4281
    add hl, de
    ld c, $04
    call label_3CE6
    ld a, $04
    call label_3DA0
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ldh a, [$ef]
    add $0a
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $42b1
    call label_3C77
    jp label_3D8A

; Called by TableJump above for Level 2 Boss
label_004_42E7::
    call Call_004_46f9
    ldh a, [$ea]
    cp $05
    jr z, jr_004_431a

; Kill Clown (Level 2 Boss)
label_004_42F0::
    ld hl, $c420
    add hl, bc
    ldh a, [hFrameCounter]
    ld [hl], a
    ldh a, [$f0]
    rst $00 ; This reset calls TableJump, which loads $4311 from below when a is 2
	
; Loaded when level 2 boss is killed to load heart container
data_004_42FE::
	db $00, $43, $08, $43, $11, $43

	call IsEntityFrameCounterZero
    ld [hl], $40
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $a0
    jp IncrementEntityWalkingAttr

label_004_4311::
	; Called by Level 2 boss to load heart container
    call IsEntityFrameCounterZero
    ;jp z, DropSomethingElse
    jp z, DropHeartContainer

    jp Jump_004_50ef


jr_004_431a:
    call Call_004_7fa3
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld [$d000], a
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    ld [wIntroTimer], a
    ldh a, [$f0]
    cp $05
    jr z, jr_004_4336

    call label_3B44

jr_004_4336:
    ldh a, [$f0]
    rst $00
    ld b, l
    ld b, e
    add b
    ld b, e
    sbc a
    ld b, h
    jp hl


    ld b, h
    rla
    ld b, l
    ld [hl], l
    ld b, l
    call IsEntityFrameCounterZero
    ret nz

    call IncrementEntityWalkingAttr
    call label_C00
    ld [hl], $ff
    ld a, [wIntroSubTimer]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    ld a, $52
    jr nz, jr_004_436d

    call IncrementEntityWalkingAttr
    ld [hl], $04
    ld hl, $c360
    add hl, bc
    ld [hl], $08
    ld a, $53

jr_004_436d:
    jp label_2385


    db $10
    inc d
    jr jr_004_4394

    jr z, jr_004_43a6

    jr c, @+$42

    rst $38
    rst $38
    ld h, b
    ld b, b
    ld bc, $08ff
    ld hl, sp-$33
    jp z, $216d

    add b
    jp Jump_004_5e09


    ld d, b
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_004_43a6

    ld hl, $c240
    add hl, bc
    ld a, [hl]

jr_004_4394:
    ld hl, $437e
    add hl, de
    cp [hl]
    jr z, jr_004_43a6

    ld hl, $437c
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    add [hl]
    ld [hl], a

jr_004_43a6:
    ld hl, $437a
    add hl, de
    ldh a, [$ee]
    cp [hl]
    jr nz, jr_004_43b7

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_004_43b7:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_43dd

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $437c
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $437e
    add hl, de
    cp [hl]
    jr nz, jr_004_43dd

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a

jr_004_43dd:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_004_4438

    push hl
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ld e, a
    cp $08
    jr c, jr_004_43ff

    call IncrementEntityWalkingAttr
    pop hl
    ld [hl], $30
    ret


jr_004_43ff:
    ld d, b
    ld hl, $4370
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl], a
    ld a, $5c
    call label_3B86
    jr c, jr_004_4438

    ldh a, [$d7]
    sub $0c
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    sub $14
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $03
    ld hl, $c320
    add hl, de
    ld [hl], $20
    ld hl, $c240
    add hl, de
    ld [hl], $0c
    ld hl, $c340
    add hl, de
    ld [hl], $42

jr_004_4438:
    call label_C00
    jr nz, jr_004_4487

    ld [hl], $30
    ld a, $5c
    call label_3B86
    jr c, jr_004_4487

    push bc
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    and $01
    ld c, a
    ld hl, $449d
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
    ld hl, $c320
    add hl, de
    ld [hl], $24
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $04
    ld hl, $c340
    add hl, de
    ld [hl], $12
    ld c, e
    ld b, d
    ld a, $1f
    call label_3BAA
    pop bc
    ld hl, $c300
    add hl, bc
    ld [hl], $10
    ld a, $28
    ldh [hFFF4], a

jr_004_4487:
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    and $01
    ld a, $02
    jr z, jr_004_449a

    inc a

jr_004_449a:
    jp label_3B0C


    db $f4
    inc c
    ld a, [wIntroSubTimer]
    ld e, a
    ld d, b
    ldh a, [hLinkPositionX]
    push af
    ld hl, wEntity0PosX
    add hl, de
    ld a, [hl]
    ldh [hLinkPositionX], a
    ldh a, [hLinkPositionY]
    push af
    ld hl, wEntitiesPosYTable
    add hl, de
    ld a, [hl]
    sub $20
    ldh [hLinkPositionY], a
    ld a, $10
    call label_3BAA
    call Call_004_6dca
    ld hl, hLinkPositionX
    ldh a, [$ee]
    sub [hl]
    add $03
    cp $06
    jr nc, jr_004_44e2

    ld hl, hLinkPositionY
    ldh a, [$ec]
    sub [hl]
    add $03
    cp $06
    jr nc, jr_004_44e2

    call IsEntityFrameCounterZero
    ld [hl], $10
    call IncrementEntityWalkingAttr

jr_004_44e2:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    ret


    call IsEntityFrameCounterZero
    jp z, Jump_004_6d7a

    cp $04
    jr nz, jr_004_4516

    ld a, $5c
    call label_3B86
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
    ld [hl], $c7
    ld a, $1f
    ldh [$f2], a

jr_004_4516:
    ret


    ld hl, $c350
    add hl, bc
    ld [hl], $0c
    ld hl, $c430
    add hl, bc
    ld [hl], $81
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_004_4535

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $80
    ret


jr_004_4535:
    call Call_004_6d80
    call label_3B70
    call Call_004_6dca
    call label_3B23
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_4568

    ld a, $10
    call label_3BB5
    ld hl, $c240
    add hl, bc
    ldh a, [$d8]
    sub [hl]
    and $80
    jr z, jr_004_4559

    dec [hl]
    dec [hl]

jr_004_4559:
    inc [hl]
    ld hl, $c250
    add hl, bc
    ldh a, [$d7]
    sub [hl]
    and $80
    jr z, jr_004_4567

    dec [hl]
    dec [hl]

jr_004_4567:
    inc [hl]

Jump_004_4568:
jr_004_4568:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    add $02
    jp label_3B0C


    ld hl, $c340
    add hl, bc
    ld [hl], $41
    call IsEntityFrameCounterZero
    jr nz, jr_004_45f1

    call IncrementEntityWalkingAttr
    ld [hl], $04
    ld hl, $c340
    add hl, bc
    ld [hl], $01
    call GetRandomByte
    and $01
    jr nz, jr_004_45a6

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a

jr_004_45a6:
    call label_3D7F
    ld hl, $c410
    add hl, bc
    ld [hl], b
    ld a, $5c
    call label_3B86
    jr c, jr_004_45f0

    push bc
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    and $01
    ld c, a
    ld hl, $449d
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
    ld hl, $c320
    add hl, de
    ld [hl], $24
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $04
    ld hl, $c340
    add hl, de
    ld [hl], $12
    ld c, e
    ld b, d
    ld a, $1f
    call label_3BAA
    pop bc
    ld a, $28
    ldh [hFFF4], a

jr_004_45f0:
    ret


jr_004_45f1:
    ldh a, [hLinkPositionX]
    push af
    ld a, $50
    ldh [hLinkPositionX], a
    ldh a, [hLinkPositionY]
    push af
    ld a, $48
    ldh [hLinkPositionY], a
    ld a, $20
    call label_3BB5
    ldh a, [$d8]
    cpl
    inc a
    push af
    ldh a, [$d7]
    push af
    ld a, $04
    call label_3BB5
    ld hl, $ffd8
    pop af
    add [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $ffd7
    pop af
    add [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call Call_004_6dca
    call Call_004_4634
    jp Jump_004_4568


Call_004_4634:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub $48
    ld e, a
    ld a, $48
    sub e
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $50
    ld e, a
    ld a, $50
    sub e
    ld hl, $c440
    add hl, bc
    ld [hl], a
    ret


    ldh a, [hFFF4]
    ld h, b
    ld [bc], a
    ldh a, [$fc]
    ld h, d
    ld [bc], a
    ldh a, [rDIV]
    ld h, h
    ld [bc], a
    ldh a, [$0c]
    ld h, d
    ld [hl+], a
    ldh a, [rNR14]
    ld h, b
    ld [hl+], a
    nop
    db $f4
    ld h, [hl]
    ld [bc], a
    nop
    db $fc
    ld l, b
    ld [bc], a
    nop
    inc b
    ld l, d
    ld [bc], a
    nop
    inc c
    ld l, b
    ld [hl+], a
    nop
    inc d
    ld h, [hl]
    ld [hl+], a
    ldh a, [hFFF4]
    ld h, b
    ld [bc], a
    ldh a, [$fc]
    ld h, d
    ld [bc], a
    ldh a, [rDIV]
    ld h, h
    ld [hl+], a
    ldh a, [$0c]
    ld h, d
    ld [hl+], a
    ldh a, [rNR14]
    ld h, b
    ld [hl+], a
    nop
    db $f4
    ld h, [hl]
    ld [bc], a
    nop
    db $fc
    ld l, b
    ld [bc], a
    nop
    inc b
    ld l, d
    ld [hl+], a
    nop
    inc c
    ld l, b
    ld [hl+], a
    nop
    inc d
    ld h, [hl]
    ld [hl+], a
    ldh a, [hFFF4]
    ld h, b
    ld [bc], a
    ldh a, [$fc]
    ld h, d
    ld [bc], a
    ldh a, [rDIV]
    ld h, h
    ld [bc], a
    ldh a, [$0c]
    ld l, h
    ld [bc], a
    ldh a, [rNR14]
    ld l, [hl]
    ld [bc], a
    nop
    db $f4
    ld h, [hl]
    ld [bc], a
    nop
    db $fc
    ld l, b
    ld [bc], a
    nop
    inc b
    ld l, d
    ld [bc], a
    nop
    inc c
    ld [hl], b
    ld [bc], a
    nop
    inc d
    ld [hl], d
    ld [bc], a
    ldh a, [hFFF4]
    ld l, [hl]
    ld [hl+], a
    ldh a, [$fc]
    ld l, h
    ld [hl+], a
    ldh a, [rDIV]
    ld h, h
    ld [hl+], a
    ldh a, [$0c]
    ld h, d
    ld [hl+], a
    ldh a, [rNR14]
    ld h, b
    ld [hl+], a
    nop
    db $f4
    ld [hl], d
    ld [hl+], a
    nop
    db $fc
    ld [hl], b
    ld [hl+], a
    nop
    inc b
    ld l, d
    ld [hl+], a
    nop
    inc c
    ld l, b
    ld [hl+], a
    nop
    inc d
    ld h, [hl]
    ld [hl+], a
    ld [hl], h
    ld [bc], a
    ld [hl], h
    ld [hl+], a

Call_004_46f9:
    ldh a, [$f0]
    cp $05
    jr nz, jr_004_4713

    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_4713

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ldh [$ec], a
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    ldh [$ee], a

jr_004_4713:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
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
    ld hl, $4655
    add hl, de
    ld c, $0a
    call label_3CE6
    ld a, $0a
    call label_3DA0
    ldh a, [$ec]
    add $10
    ldh [$ec], a
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ldh [$f1], a
    ld de, $46f5
    call label_3C77
    jp label_3D8A


    stop
    ld e, $01
    db $10
    ld [$611e], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    ld [$3000], sp
    ld bc, label_808
    jr nc, jr_004_47d6

    ld [$3000], sp
    ld bc, label_808
    jr nc, @+$63

    ld [$3000], sp
    ld bc, label_808
    jr nc, @+$63

    ld [$3000], sp
    ld bc, label_808
    jr nc, @+$63

    inc b
    nop
    jr nc, jr_004_4792

    inc b

jr_004_4792:
    ld [$6130], sp
    inc d
    nop
    ld e, $01
    inc d
    ld [$611e], sp
    inc d
    nop
    ld e, $01
    inc d
    ld [$611e], sp
    inc d
    nop
    ld e, $01
    inc d
    ld [$611e], sp
    nop
    nop
    jr nc, jr_004_47b2

    nop

jr_004_47b2:
    ld [$6130], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    stop
    ld e, $01
    db $10
    ld [$611e], sp
    ld a, [c]
    ld a, [$0130]
    ld a, [c]
    ld [bc], a
    jr nc, @+$63

    ld a, [c]

jr_004_47d6:
    ld b, $30
    ld bc, $0ef2
    jr nc, jr_004_483e

    cp $fa
    jr nc, @+$03

    cp $02
    jr nc, @+$63

    cp $06
    jr nc, @+$03

    cp $0e
    jr nc, jr_004_484e

    ldh a, [hFFF8]
    jr nc, jr_004_4832

    ldh a, [rP1]
    jr nc, @+$23

    ldh a, [$08]
    jr nc, jr_004_483a

    ldh a, [rNR10]
    jr nc, jr_004_481e

    nop
    ld hl, sp+$30
    ld b, c
    nop
    nop
    jr nc, jr_004_4826

    nop
    ld [$4130], sp
    nop
    db $10
    jr nc, @+$23

    ldh a, [hFFF8]
    ld [hl-], a
    ld bc, $00f0
    ld [hl-], a
    ld h, c
    ldh a, [$08]
    ld [hl-], a
    ld bc, $10f0
    ld [hl-], a
    ld h, c
    nop

jr_004_481e:
    ld hl, sp+$32
    ld bc, $0000
    ld [hl-], a
    ld h, c
    nop

jr_004_4826:
    ld [$0132], sp
    nop
    db $10
    ld [hl-], a
    ld h, c
    ld b, $05
    inc b
    dec b
    inc b

jr_004_4832:
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0302

jr_004_483a:
    inc b
    dec b
    inc b
    dec b

jr_004_483e:
    ld b, $cd
    cp b
    ld c, b
    call Call_004_7fa3
    call IsEntityFrameCounterZero
    bit 7, a
    jr z, jr_004_486d

    and $7f

jr_004_484e:
    jr nz, jr_004_485e

    ld a, [wIntroSubTimer]
    ld e, a
    ld d, b
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $03
    jp Jump_004_6d7a


jr_004_485e:
    rra
    rra
    rra
    and $0f
    ld e, a
    ld d, b
    ld hl, $4836
    add hl, de
    ld a, [hl]
    jp label_3B0C


jr_004_486d:
    and a
    jp z, Jump_004_6d7a

    cp $06
    jr nz, jr_004_48a6

    ld a, $5c
    call label_3B86
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    cp $14
    jr nc, jr_004_4889

    ld a, $14

jr_004_4889:
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $40
    ld hl, $c340
    add hl, de
    ld [hl], $01
    ld hl, $c350
    add hl, de
    ld [hl], $8c

jr_004_48a6:
    call IsEntityFrameCounterZero
    rra
    rra
    rra
    and $0f
    ld e, a
    ld d, b
    ld hl, $482d
    add hl, de
    ld a, [hl]
    jp label_3B0C


    ldh a, [$f1]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld e, a
    ld d, b
    ld hl, $474d
    add hl, de
    ld c, $08
    call label_3CE6
    ld a, $08
    jp label_3DA0

data_004_48D1::
    db $34, $02, $34, $22, $34, $12, $34, $32

; Called by first table jump at 004_400B
label_004_48D9::
    ld de, $48d1
    call label_3BC0
    call Call_004_7fa3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push af
    ld a, [$d000]
    add [hl]
    ld [hl], a
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    push af
    ld a, [wIntroTimer]
    add [hl]
    ld [hl], a
    call Call_004_6dca
    pop af
    ld hl, $c250
    add hl, bc
    ld [hl], a
    pop af
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ldh a, [$f0]
    and a
    jr nz, jr_004_4938

    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_004_4937

    ld [hl], b
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $08
    ld hl, $c240
    add hl, bc
    ld [hl], $e0

jr_004_4937:
    ret


jr_004_4938:
    call IsEntityFrameCounterZero
    jp z, Jump_004_6d7a

    ld de, $48d1
    call label_3BC0
    call Call_004_7fa3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    call label_3B44
    call Call_004_6dca
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jp nz, Jump_004_6d7a

    ret


    xor $12
    ld hl, sp+$08

Jump_004_496f:
    xor a
    ldh [hFFE8], a

jr_004_4972:
    ld a, $5b
    call label_3B86
    ld hl, $c390
    add hl, de
    ld [hl], $01
    push bc
    ldh a, [hFFE8]
    ld c, a
    ld hl, $496b
    add hl, bc
    ldh a, [$d7]
    add [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $496d
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $c320
    add hl, de
    ld [hl], $10
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $01
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c360
    add hl, de
    ld [hl], $05
    pop bc
    ldh a, [hFFE8]
    inc a
    ldh [hFFE8], a
    cp $02
    jr nz, jr_004_4972

    jp Jump_004_6d7a


    ld hl, $c310
    add hl, bc
    ld [hl], $7e
    call IsEntityFrameCounterZero
    ld [hl], $a0
    ret


    call label_394D
    call label_3EE8
    call Call_004_4e52
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    rst $00
    call c, $fb49
    ld c, l
    ld hl, $c360
    add hl, bc
    ld [hl], $50
    ldh a, [$f0]
    rst $00
    db $ed
    ld c, c
    dec l
    ld c, d
    ld l, d
    ld c, d
    ld a, [hl]
    ld c, d
    ld a, [$c157]
    cp $05
    jr nz, jr_004_49fb

    call IncrementEntityWalkingAttr
    ld a, $08
    ldh [$f2], a

jr_004_49fb:
    call IsEntityFrameCounterZero
    jr nz, jr_004_4a2c

    ld [hl], $50
    ld a, [$c1ae]
    cp $02
    jr nc, jr_004_4a2c

    ld a, $1b
    call label_3B86
    call GetRandomByte
    and $3f
    add $40
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    call GetRandomByte
    and $3f
    add $30
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c310
    add hl, de
    ld [hl], $70

jr_004_4a2c:
    ret


    call Call_004_4db5
    call Call_004_7fa3
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    cp $a0
    jr z, jr_004_4a41

    dec [hl]
    dec [hl]

jr_004_4a41:
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    ret z

    ld [hl], b
    ld a, $50
    ld [$c157], a
    ld a, $04
    ld [$c158], a
    call IsEntityFrameCounterZero
    ld [hl], $40
    call label_C4B
    ld a, [$c146]
    and a
    jr nz, jr_004_4a67

    call label_BFB
    ld [hl], $14

jr_004_4a67:
    jp IncrementEntityWalkingAttr


    call Call_004_4db5
    call Call_004_7fa3
    call IsEntityFrameCounterZero
    jr nz, jr_004_4a78

    call IncrementEntityWalkingAttr

jr_004_4a78:
    call Call_004_4b2e
    jp label_3B44


    call Call_004_4db5
    call Call_004_7fa3
    call label_C56
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_4aa5

    cp $01
    jp z, Jump_004_496f

    ldh [$a1], a
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_4aa0

    ld hl, hLinkPositionY
    dec [hl]

jr_004_4aa0:
    ld a, $06
    jp label_3B0C


jr_004_4aa5:
    call Call_004_4b52
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_4acb

    inc a
    call label_3B0C
    call label_C00
    jr nz, jr_004_4acb

    ld [hl], $28
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    dec [hl]

jr_004_4acb:
    xor a
    ldh [hFFE8], a
    ld a, $14
    call Call_004_4b37
    call label_3B70
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    ld hl, $c300
    add hl, bc
    or [hl]
    jr nz, jr_004_4aef

    call Call_004_4b2e
    call label_3B44
    ld a, $01
    ldh [hFFE8], a
    call label_3B70

jr_004_4aef:
    ld a, $14
    call Call_004_4b37
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_4b11

    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_004_4b11

    call label_C00
    ld [hl], $50
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_004_4b11

    inc [hl]

jr_004_4b11:
    ret


    ld [$0014], sp
    inc c
    ld [$0015], sp
    dec bc
    ld [$0016], sp
    ld [$1708], sp
    nop
    ld b, $08
    jr jr_004_4b25

jr_004_4b25:
    inc b
    ld [$0803], sp
    inc bc
    ld [$020c], sp
    inc c

Call_004_4b2e:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    sla a
    sla a

Call_004_4b37:
    ld e, a
    ld d, b
    ld hl, $4b12
    add hl, de
    ld e, l
    ld d, h
    push bc
    sla c
    sla c
    ld hl, $d580
    add hl, bc
    ld c, $04

jr_004_4b4a:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_004_4b4a

    pop bc
    ret


Call_004_4b52:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    rst $00
    ld a, h
    ld c, e
    rst $00
    ld c, e
    db $10
    inc c
    ld b, $02
    ldh a, [hFFF4]
    ld a, [$10fe]
    inc c
    ld b, $02
    ldh a, [hFFF4]
    ld a, [$02fe]
    ld b, $0c
    db $10
    ld [bc], a
    ld b, $0c
    db $10
    cp $fa
    db $f4
    ldh a, [hIsGBC]
    ld a, [$f0f4]
    call IsEntityFrameCounterZero
    and a
    jr nz, jr_004_4bc6

    call GetRandomByte
    and $1f
    add $10
    ld [hl], a
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    inc [hl]
    ld e, $00
    ldh a, [$ee]
    cp $50
    jr c, jr_004_4b98

    inc e

jr_004_4b98:
    ld d, $00
    ldh a, [$ec]
    cp $48
    jr c, jr_004_4ba2

    inc d
    inc d

jr_004_4ba2:
    ld a, d
    or e
    sla a
    sla a
    push af
    call GetRandomByte
    and $03
    pop de
    or d
    ld e, a
    ld d, b
    ld hl, $4b5c
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $4b6c
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a

jr_004_4bc6:
    ret


    call IsEntityFrameCounterZero
    jr z, jr_004_4bd5

    and $0e
    ret nz

    call Call_004_6dca
    jp label_3B23


jr_004_4bd5:
    ld [hl], $30
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], b
    ret


    ldh a, [$f0]
    ld h, b
    inc bc
    ldh a, [hFFF8]
    ld h, d
    inc bc
    ldh a, [rP1]
    ld [hl], b
    inc bc
    ldh a, [$08]
    ld [hl], b
    inc hl
    ldh a, [rNR10]
    ld h, d
    inc hl
    ldh a, [rNR23]
    ld h, b
    inc hl
    nop
    ldh a, [$64]
    inc bc
    nop
    ld hl, sp+$6e
    inc bc
    nop
    nop
    ld [hl], d
    inc bc
    nop
    ld [$2372], sp
    nop
    db $10
    ld l, [hl]
    inc hl
    nop
    jr jr_004_4c70

    inc hl
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
    nop
    nop
    rst $38
    nop
    ldh a, [$f0]
    ld l, b
    inc bc
    ldh a, [hFFF8]
    ld l, d
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    inc bc
    ldh a, [$08]
    ld a, [hl]
    inc hl
    ldh a, [rNR10]
    ld l, d
    inc hl
    ldh a, [rNR23]
    ld l, b
    inc hl
    nop
    ldh a, [$6c]
    inc bc
    nop
    ld hl, sp+$6e
    inc bc
    nop
    nop
    ld [hl], d
    inc bc
    nop
    ld [$2372], sp
    nop
    db $10
    ld l, [hl]
    inc hl
    nop
    jr jr_004_4cb8

    inc hl
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
    nop
    nop
    rst $38
    nop
    ldh a, [$f0]
    ld h, b
    inc bc
    ldh a, [hFFF8]
    ld h, d
    inc bc
    ldh a, [rP1]
    ld h, d
    inc hl
    ldh a, [$08]
    ld h, d
    inc bc
    ldh a, [rNR10]
    ld h, d

jr_004_4c70:
    inc hl
    ldh a, [rNR23]
    ld h, b
    inc hl
    nop
    ldh a, [$64]
    inc bc
    nop
    ld hl, sp+$66
    inc bc
    nop
    nop
    ld h, [hl]
    inc hl
    nop
    ld [$0366], sp
    nop
    db $10
    ld h, [hl]
    inc hl
    nop
    jr jr_004_4cf0

    inc hl
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
    nop
    nop
    rst $38
    nop
    ldh a, [$ec]
    ld h, b
    inc bc
    ldh a, [hFFF4]
    ld h, d
    inc bc
    ldh a, [$fc]
    ld h, d
    inc hl
    ldh a, [rDIV]
    ld [hl], h
    inc bc
    ldh a, [$0c]
    ld h, d
    inc bc
    ldh a, [rNR14]
    ld h, d
    inc hl
    ldh a, [rNR32]
    ld h, b

jr_004_4cb8:
    inc hl
    nop
    db $ec
    ld h, h
    inc bc
    nop
    db $f4
    ld h, [hl]
    inc bc
    nop
    db $fc
    ld h, [hl]
    inc hl
    nop
    inc b
    db $76
    inc bc
    nop
    inc c
    ld h, [hl]
    inc bc
    nop
    inc d
    ld h, [hl]
    inc hl
    nop
    inc e
    ld h, h
    inc hl
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [hFFE8]
    ld h, b
    inc bc
    ldh a, [$f0]
    ld h, d
    inc bc
    ldh a, [hFFF8]
    ld h, d
    inc hl
    ldh a, [rP1]
    ld a, b
    inc bc
    ldh a, [$08]
    ld a, b

jr_004_4cf0:
    inc hl
    ldh a, [rNR10]
    ld h, d
    inc bc
    ldh a, [rNR23]
    ld h, d
    inc hl
    ldh a, [rNR41]
    ld h, b
    inc hl
    nop
    add sp, $64
    inc bc
    nop
    ldh a, [$66]
    inc bc
    nop
    ld hl, sp+$66
    inc hl
    nop
    nop
    ld a, d
    inc bc
    nop
    ld [$237a], sp
    nop
    db $10
    ld h, [hl]
    inc bc
    nop
    jr jr_004_4d7e

    inc hl
    nop
    jr nz, jr_004_4d80

    inc hl
    ldh a, [hFFE8]
    ld h, b
    inc bc
    ldh a, [$f0]
    ld h, d
    inc bc
    ldh a, [hFFF8]
    ld h, d
    inc hl
    ldh a, [rP1]
    ld a, b
    inc bc
    ldh a, [$08]
    ld a, b
    inc hl
    ldh a, [rNR10]
    ld h, d
    inc bc
    ldh a, [rNR23]
    ld h, d
    inc hl
    ldh a, [rNR41]
    ld h, b
    inc hl
    nop
    add sp, $64
    inc bc
    nop
    ldh a, [$66]
    inc bc
    nop
    ld hl, sp+$66
    inc hl
    nop
    nop
    ld a, h
    inc bc
    nop
    ld [label_237C], sp
    nop
    db $10
    ld h, [hl]
    inc bc
    nop
    jr jr_004_4dbe

    inc hl
    nop
    jr nz, @+$66

    inc hl
    ldh a, [$e6]
    ld h, b
    inc bc
    ldh a, [$ee]
    ld h, d
    inc bc
    ldh a, [hMapIndex]
    ld h, d
    inc hl
    ldh a, [hIsGBC]
    ld a, b
    inc bc
    ldh a, [$0a]
    ld a, b
    inc hl
    ldh a, [rNR12]
    ld h, d
    inc bc
    ldh a, [rNR30]
    ld h, d
    inc hl
    ldh a, [rNR43]
    ld h, b
    inc hl
    nop

jr_004_4d7e:
    and $64

jr_004_4d80:
    inc bc
    nop
    xor $66
    inc bc
    nop
    or $66
    inc hl
    nop
    cp $7c
    inc bc
    nop
    ld a, [bc]
    ld a, h
    inc hl
    nop
    ld [de], a
    ld h, [hl]
    inc bc
    nop
    ld a, [de]
    ld h, [hl]
    inc hl
    nop
    ld [hl+], a
    ld h, h
    inc hl
    inc c
    push af
    ld h, $00
    inc c
    ei
    ld h, $00
    inc c
    ld bc, $0026
    inc c
    rlca
    ld h, $00
    inc c
    dec c
    ld h, $00
    inc c
    inc de
    ld h, $00

Call_004_4db5:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    ld d, b
    rla
    rl d

jr_004_4dbe:
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
    and $c0
    ld e, a
    ld hl, $4bdd
    add hl, de
    ld c, $10
    call label_3CE6
    ld a, $10
    call label_3DA0
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ldh a, [$ef]
    sub $08
    ldh [$ec], a
    ld hl, $4d9d
    ld c, $06
    call label_3CE6
    ld a, $06
    call label_3DA0
    jp label_3D8A


    call Call_004_4ffe
    ldh a, [$ea]
    cp $05
    jp z, Jump_004_4e60

    ld hl, $c420
    add hl, bc
    ldh a, [hFrameCounter]
    ld [hl], a
    ldh a, [$f0]
    rst $00
    dec d
    ld c, [hl]
    dec e
    ld c, [hl]
    ld h, $4e
    call IsEntityFrameCounterZero
    ld [hl], $40
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $a0
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    jr nz, jr_004_4e4f

    ld e, $0f
    ld d, b

jr_004_4e2e:
    ld a, c
    cp e
    jr z, jr_004_4e43

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_4e43

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $5b
    jr z, jr_004_4e4c

jr_004_4e43:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_004_4e2e

    jp DropHeartContainer


jr_004_4e4c:
    jp Jump_004_6d7a


jr_004_4e4f:
    jp Jump_004_50ef


Call_004_4e52:
    call label_BFB
    jr z, jr_004_4e5f

    ld a, $02
    ldh [$a1], a
    ld a, $6a
    ldh [hLinkAnimationState], a

jr_004_4e5f:
    ret


Jump_004_4e60:
    call Call_004_7fa3
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_004_4e83

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_4e82

    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld a, $24
    ldh [$f2], a
    call label_3D7F
    jr jr_004_4e83

jr_004_4e82:
    inc [hl]

jr_004_4e83:
    call Call_004_6d80
    xor a
    ldh [hFFE8], a
    ldh a, [$f0]
    rst $00
    and h
    ld c, [hl]
    db $eb
    ld c, [hl]
    ld h, l
    ld c, a
    ld a, [hl]
    ld c, a
    db $10
    inc c
    nop
    db $f4
    ldh a, [hFFF4]
    nop
    inc c
    nop
    inc c
    db $10
    inc c
    nop
    db $f4
    ldh a, [hFFF4]
    ld a, $18
    call Call_004_4b37
    call label_3B39
    call IsEntityFrameCounterZero
    jr nz, jr_004_4ee7

    call GetRandomByte
    and $07
    ld e, a
    ld d, b
    ld hl, $4e94
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $4e9c
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    call GetRandomByte
    and $03
    jr nz, jr_004_4ed8

    ld a, $18
    call label_3BAA

jr_004_4ed8:
    call GetRandomByte
    and $0f
    ld hl, $c320
    add hl, bc
    add $08
    ld [hl], a
    call IncrementEntityWalkingAttr

jr_004_4ee7:
    ld a, b
    jp label_3B0C


    call IsEntityFrameCounterZero
    and a
    jr nz, jr_004_4f60

    call Call_004_6dca
    call label_3B23
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld a, $18
    call Call_004_4b37
    call label_3B44
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_4f14

    call label_3B70
    xor a

jr_004_4f14:
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_004_4f60

    ld [hl], b
    ld hl, $c440
    add hl, bc
    ld [hl], b
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    sub $e0
    and $80
    jr z, jr_004_4f49

    ld a, $18
    ld [$c157], a
    ld a, $0b
    ldh [$f2], a
    ld a, [$c146]
    and a
    jr nz, jr_004_4f49

    call label_BFB
    ld [hl], $0e
    ld hl, $c320
    add hl, bc
    ld [hl], b
    jr jr_004_4f57

jr_004_4f49:
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    ld [hl], b
    cp $f2
    jr nc, jr_004_4f57

    ld a, $20
    ldh [$f2], a

jr_004_4f57:
    call IncrementEntityWalkingAttr
    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $20

jr_004_4f60:
    ld a, $01
    jp label_3B0C


    ld hl, $c320
    add hl, bc
    ld [hl], $60
    call Call_004_6e03
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    cp $70
    ret c

    call IsEntityFrameCounterZero
    ld [hl], $30
    jp IncrementEntityWalkingAttr


    ld a, $ff
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_004_4fad

    ld [hl], $18
    ld hl, $c440
    add hl, bc
    ld [hl], $01
    call IncrementEntityWalkingAttr
    ld [hl], $01
    ld hl, $c320
    add hl, bc
    ld [hl], $c0
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], a
    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], a
    ld a, $08
    ldh [$f2], a

jr_004_4fad:
    ret


    ldh a, [hFFF8]
    ld h, b
    inc bc
    ldh a, [rP1]
    ld h, d
    inc bc
    ldh a, [$08]
    ld h, d
    inc hl
    ldh a, [rNR10]
    ld h, b
    inc hl
    nop
    ld hl, sp+$64
    inc bc
    nop
    nop
    ld h, [hl]
    inc bc
    nop
    ld [$2366], sp
    nop
    db $10
    ld h, h
    inc hl
    ldh a, [hFFF8]
    ld l, b
    inc bc
    ldh a, [rP1]
    ld l, d
    inc bc
    ldh a, [$08]
    ld l, d
    inc hl
    ldh a, [rNR10]
    ld l, b
    inc hl
    nop
    ld hl, sp+$6c
    inc bc
    nop
    nop
    ld h, [hl]
    inc bc
    nop
    ld [$2366], sp
    nop
    db $10
    ld l, h
    inc hl
    inc c
    ei
    ld h, $00
    inc c
    ld bc, $0026
    inc c
    rlca
    ld h, $00
    inc c
    dec c
    ld h, $00

Call_004_4ffe:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
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
    ld hl, $4fae
    add hl, de
    ld c, $08
    call label_3CE6
    ld a, $08
    call label_3DA0
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_004_5048

    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5048

    ldh a, [$ef]
    sub $02
    ldh [$ec], a
    ld hl, $4fee
    ld c, $04
    call label_3CE6
    ld a, $04
    call label_3DA0

jr_004_5048:
    jp label_3D8A


    call IsEntityFrameCounterZero
    ld [hl], $ff
    ld hl, $c410
    add hl, bc
    ld [hl], $08
    ld hl, $c360
    add hl, bc
    ld [hl], $12
    ld hl, wEntity0PosX
    add hl, bc
    call Call_004_5067
    ld hl, wEntitiesPosYTable
    add hl, bc

Call_004_5067:
    ld a, [hl]
    add $08
    ld [hl], a
    ld a, $ff
    jp label_3B0C


    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld d, b
    ld h, [hl]
    ld d, h
    add hl, bc
    ld d, l
    sbc l
    ld d, l
    xor a
    ld [wScreenShakeHorizontal], a
    call label_3EE8
    call label_394D
    call Call_004_542f
    ldh a, [$ea]
    cp $05
    jp z, Jump_004_510f

    ld hl, $c420
    add hl, bc
    ldh a, [hFrameCounter]
    ld [hl], a
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    rst $00
    and l
    ld d, b
    pop hl
    ld d, b
    jp hl


    ld d, b
    call IsEntityFrameCounterZero
    ld [hl], $80
    ld e, $0f
    ld d, b

jr_004_50ad:
    ld a, c
    cp e
    jr z, jr_004_50d5

    ld hl, $c340
    add hl, de
    ld a, [hl]
    and $80
    jr nz, jr_004_50d5

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    cp $05
    jr c, jr_004_50d5

    ld [hl], $01
    ld hl, $c480
    add hl, de
    ld [hl], $1f
    ld hl, $c340
    add hl, de
    ld a, [hl]
    and $f0
    or $02
    ld [hl], a

jr_004_50d5:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_004_50ad

jr_004_50db:
    ld hl, $c440
    add hl, bc
    inc [hl]
    ret


    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $ff
    jr jr_004_50db

    call IsEntityFrameCounterZero
    jp z, DropHeartContainer

Jump_004_50ef:
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
    jp Jump_004_5a05


Jump_004_510f:
    call Call_004_7fa3
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5120

    ld hl, $c390
    add hl, bc
    ld [hl], $ff

jr_004_5120:
    ld hl, $c340
    add hl, bc
    ld [hl], $08
    ldh a, [$f0]
    rst $00
    cpl
    ld d, c
    ld e, b
    ld d, c
    add sp, $51
    call IsEntityFrameCounterZero

jr_004_5132:
    ret nz

    ld [hl], $ff
    jp IncrementEntityWalkingAttr


jr_004_5138:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call IsEntityFrameCounterZero
    jr z, jr_004_516c

    rra
    rra
    rra
    and $1f
    ld e, a
    ld d, b
    ld hl, $5138
    add hl, de

jr_004_5168:
    ld a, [hl]
    jp label_3B0C


jr_004_516c:
    call IncrementEntityWalkingAttr
    call label_C00
    ld [hl], $a0
    call label_BFB
    ld [hl], $ff
    ld a, $b6
    jp label_2385


    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    jr z, jr_004_51bc

    ld c, b
    ld e, b
    ld l, b
    ld a, b
    jr z, jr_004_5202

    jr z, @+$7a

    jr z, jr_004_51c6

    ld c, b
    ld e, b
    ld l, b
    ld a, b
    jr nc, jr_004_51c4

    jr nc, jr_004_51c6

    jr nc, jr_004_51c8

    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr z, @+$3a

    ld c, b
    ld e, b
    ld l, b
    ld a, b
    jr jr_004_5132

    jr @-$76

    jr @-$76

    jr jr_004_5138

    jr z, jr_004_51ea

    ld c, b
    ld e, b
    ld l, b
    ld a, b
    jr nz, jr_004_51d8

    jr nz, jr_004_51da

    jr nz, @+$22

jr_004_51bc:
    jr nc, jr_004_51ee

    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b

jr_004_51c4:
    ld [hl], b
    ld [hl], b

jr_004_51c6:
    ld [hl], b
    ld [hl], b

jr_004_51c8:
    ld [hl], b
    ld [hl], b
    nop
    inc de
    ld bc, $0212
    ld de, $1003
    inc b
    rrca
    dec b
    ld c, $06
    dec c

jr_004_51d8:
    rlca
    inc c

jr_004_51da:
    ld [$090b], sp
    ld a, [bc]
    jr jr_004_5168

    jr @-$76

    jr nz, jr_004_5254

    ld [hl], b
    jr nz, jr_004_51e7

jr_004_51e7:
    rst $38
    ldh a, [hFrameCounter]

jr_004_51ea:
    and $3f
    jr nz, jr_004_51fa

jr_004_51ee:
    call GetRandomByte
    and $01
    jr nz, jr_004_51fa

    call IsEntityFrameCounterZero
    ld [hl], $1f

jr_004_51fa:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld e, a

jr_004_5202:
    ld d, b
    ld hl, $51e6
    add hl, de
    ld a, [hl]
    ld [wScreenShakeHorizontal], a
    call label_BFB
    jr nz, jr_004_5273

    call GetRandomByte
    and $0f
    add $18
    ld [hl], a
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $14
    jr c, jr_004_5273

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $04
    jr c, jr_004_5273

    ld a, $5a
    call label_3B86
    jr c, jr_004_5273

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01

jr_004_5237:
    call GetRandomByte
    and $0f
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    cp [hl]
    jr z, jr_004_5237

    ld [hl], a
    push bc
    ld c, a
    ld hl, $5182
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $5192
    add hl, bc

jr_004_5254:
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $7f
    ld hl, $c340
    add hl, de
    ld [hl], $c2
    ld hl, $c350
    add hl, de
    ld [hl], $00
    ld hl, $c430
    add hl, de
    ld [hl], $00
    pop bc

jr_004_5273:
    call label_C00
    jr nz, jr_004_52c9

    ld [hl], $40
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $14
    jr nc, jr_004_52c9

    ld a, $5a
    call label_3B86
    jr c, jr_004_52c9

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $02
    push bc
    ld hl, $c3d0
    add hl, bc
    ld c, [hl]
    inc [hl]
    ld hl, $51ca
    add hl, bc
    ld c, [hl]
    ld hl, $51a2
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $51b6
    add hl, bc
    ld a, [hl]
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
    ld [hl], $02
    pop bc

jr_004_52c9:
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5340

    ld [hl], $40
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $04
    jr nc, jr_004_5340

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    cp $12
    jr c, jr_004_5340

    ld a, $5a
    call label_3B86
    jr c, jr_004_5340

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $03
    push bc
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld c, [hl]
    inc [hl]
    ld hl, $51de
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh [$ee], a
    ld hl, $51e2
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh [$ef], a
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
    ld [hl], $1b
    ld c, e
    ld b, d
    ld hl, $c240
    add hl, bc
    ld [hl], $01
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_533f

    call Call_004_6d7a

jr_004_533f:
    pop bc

jr_004_5340:
    call IsEntityFrameCounterZero
    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $517e
    add hl, de
    ld a, [hl]
    call label_3B0C
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_535f

    ld a, $02
    call label_3B0C

jr_004_535f:
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_537e

    dec [hl]
    rra
    rra
    rra
    rra
    and $0f
    ld e, a
    ld d, b
    ld hl, $537f
    add hl, de
    ld a, [hl]
    call label_3B0C
    ld hl, $c340
    add hl, bc
    ld [hl], $48

jr_004_537e:
    ret


    ld [bc], a
    ld bc, $ff00
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
    ld bc, $f802
    ldh a, [rSVBK]
    inc bc
    ld hl, sp-$08
    ld [hl], d
    inc bc
    ld hl, sp+$10
    ld [hl], d
    inc hl
    ld hl, sp+$18
    ld [hl], b
    inc hl
    ld [$7cf8], sp
    inc bc
    ld [$7e00], sp
    inc bc
    ld [$7e08], sp
    inc hl
    ld [$7c10], sp
    inc hl
    ld hl, sp-$10
    ld [hl], h
    inc bc
    ld hl, sp-$08
    db $76
    inc bc
    ld hl, sp+$10
    db $76
    inc hl
    ld hl, sp+$18
    ld [hl], h
    inc hl
    ld [$7cf8], sp
    inc bc
    ld [$7e00], sp
    inc bc
    ld [$7e08], sp
    inc hl
    ld [$7c10], sp
    inc hl
    ld hl, sp-$10
    ld [hl], h
    inc bc
    ld hl, sp-$08
    db $76
    inc bc
    ld hl, sp+$10
    db $76
    inc hl
    ld hl, sp+$18
    ld [hl], h
    inc hl
    ld [$60f8], sp
    inc bc
    ld [$6200], sp
    inc bc
    ld [$6208], sp
    inc hl
    ld [$6010], sp
    inc hl
    ld hl, sp-$10
    ld a, b
    inc bc
    ld hl, sp-$08
    ld a, d
    inc bc
    ld hl, sp+$10
    ld a, d
    inc hl
    ld hl, sp+$18
    ld a, b
    inc hl
    ld [$60f8], sp
    inc bc
    ld [$6200], sp
    inc bc
    ld [$6208], sp
    inc hl
    ld [$6010], sp
    inc hl
    ld hl, sp-$10
    ld [hl], b
    inc bc
    ld hl, sp-$08
    ld [hl], d
    inc bc
    ld hl, sp+$10
    ld [hl], d
    inc hl
    ld hl, sp+$18
    ld [hl], b
    inc hl
    ld [$60f8], sp
    inc bc
    ld [$6200], sp
    inc bc
    ld [$6208], sp
    inc hl
    ld [$6010], sp
    inc hl

Call_004_542f:
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld e, a
    ld d, b
    ld hl, $538f
    add hl, de
    ld c, $08
    jp label_3CE6


    ld l, b
    ld b, $68
    ld h, $6a
    ld b, $6a
    ld h, $6c
    ld b, $6c
    ld h, $6e
    ld b, $6e
    ld h, $00
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld de, $5446
    call label_3BC0
    call Call_004_7fa3
    call IsEntityFrameCounterZero
    jp z, Jump_004_6d7a

    cp $50
    jr nz, jr_004_547e

    ld hl, $fff2
    ld [hl], $40

jr_004_547e:
    rra
    rra
    rra
    and $0f
    ld e, a
    ld d, b
    ld hl, $5456
    add hl, de
    ld a, [hl]
    call label_3B0C
    cp $03
    jr nz, jr_004_54f0

    ld a, [wLinkMotionState]
    cp $06
    jr z, jr_004_54f0

    ldh a, [$a2]
    and a
    jr nz, jr_004_54f0

    call Call_004_6e35
    add $08
    cp $10
    jr nc, jr_004_54f0

    call Call_004_6e45
    add $08
    cp $10
    jr nc, jr_004_54f0

    ld a, $0c
    call label_3BB5
    ldh a, [$d7]
    cpl
    inc a
    ldh [$9b], a
    ldh a, [$d8]
    cpl
    inc a
    ldh [hFF9A], a
    push bc
    call label_21A8
    pop bc
    call Call_004_6e35
    add $03
    cp $06
    jr nc, jr_004_54f0

    call Call_004_6e45
    add $03
    cp $06
    jr nc, jr_004_54f0

    ldh a, [$ee]
    ldh [hLinkPositionX], a
    ld a, $06
    ld [wLinkMotionState], a
    call label_CAF
    ld [$c198], a
    call IsEntityFrameCounterZero
    ld [hl], $40
    ld a, $50
    ld [$dbcb], a

jr_004_54f0:
    ret


    ld b, b
    ld b, $40
    ld h, $42
    ld b, $42
    ld h, $70
    ld b, $70
    ld h, $72
    ld b, $72
    ld h, $40
    rlca
    ld b, b
    daa
    ld b, d
    rlca
    ld b, d
    daa
    ld de, $5501
    ldh a, [hMapTileset]
    cp $06
    jr z, jr_004_551c

    ld de, $54f1
    cp $01
    jr nz, jr_004_551c

    ld de, $54f9

jr_004_551c:
    call label_3BC0
    call label_C56
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5596

    call Call_004_7fa3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_004_5541

    ld a, $3f
    ldh [$f2], a

jr_004_5541:
    ldh a, [$f0]
    rst $00
    ld c, d
    ld d, l
    ld l, c
    ld d, l
    add [hl]
    ld d, l
    call IsEntityFrameCounterZero
    ld [hl], $60
    call IncrementEntityWalkingAttr
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp $01
    jp z, Jump_004_5607

    cp $10
    jp z, Jump_004_5615

    cp $20
    jp z, Jump_004_560e

    jp Jump_004_5623


    call label_3B70
    call IsEntityFrameCounterZero
    jr z, jr_004_557e

    cp $30
    ret c

    and $03
    jr nz, jr_004_557d

    ld hl, $c310
    add hl, bc
    inc [hl]

jr_004_557d:
    ret


jr_004_557e:
    call IncrementEntityWalkingAttr
    ld a, $18
    jp label_3BAA


    call Call_004_6dca
    call label_3B23
    call label_3B39
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    ret z

Jump_004_5596:
jr_004_5596:
    jp label_3E34


    ldh a, [rNR21]
    ldh a, [$36]
    ld de, $5599
    call label_3BC0
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5596

    call Call_004_7fa3
    ldh a, [$f0]
    rst $00
    or a
    ld d, l
    jp $e055


    ld d, l
    call Call_004_561c
    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $60
    ret


    call label_3B70
    call IsEntityFrameCounterZero
    jr z, jr_004_55d8

    cp $30
    ret c

    and $03
    jr nz, jr_004_55d7

    ld hl, $c310
    add hl, bc
    inc [hl]

jr_004_55d7:
    ret


jr_004_55d8:
    call IncrementEntityWalkingAttr
    ld a, $18
    jp label_3BAA


    call Call_004_6dca
    call label_3B23
    call label_3B39
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_004_5596

    ret


    db $10
    ld [de], a
    ld de, $1013
    ld [de], a
    ld de, $1413
    ld d, $15
    rla
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld c, c
    db $76
    ld c, c

Jump_004_5607:
    ld de, $55fb
    ld a, $aa
    jr jr_004_5628

Jump_004_560e:
    ld de, $55ff
    ld a, $ae
    jr jr_004_5628

Jump_004_5615:
    ld de, $5603
    ld a, $1d
    jr jr_004_5628

Call_004_561c:
    ld de, $55f7
    ld a, $0d
    jr jr_004_5628

Jump_004_5623:
    ld de, $55f3
    ld a, $0d

jr_004_5628:
    ldh [$d7], a
    push de
    ldh a, [$ef]
    sub $0f
    ldh [$cd], a
    ldh a, [$ee]
    sub $07
    ldh [$ce], a
    swap a
    and $0f
    ld e, a
    ldh a, [$cd]
    and $f0
    or e
    ld e, a
    ld d, $00
    ld hl, wTileMap
    add hl, de
    ldh a, [$d7]
    ld [hl], a
    call label_2887
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_565f

    push bc
    ldh a, [$d7]
    ld [$ddd8], a
    ld a, $04
    call label_91D
    pop bc

jr_004_565f:
    ld a, [wRequests]
    ld e, a
    ld d, $00
    ld hl, wRequestDestinationHigh
    add hl, de
    add $0a
    ld [wRequests], a
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
    xor a
    ld [hl], a
    ret


Jump_004_5690:
    xor a
    ld [$d201], a
    ld e, $80
    ld hl, $d100

jr_004_5699:
    xor a
    ld [hl+], a
    dec e
    jr nz, jr_004_5699

    ret


    ld b, $07
    nop
    ld bc, $0302
    inc b
    dec b

Call_004_56a7:
    call Call_004_7fa3
    jp label_3B39


    call label_394D
    call Call_004_56a7
    call $5902
    call label_C56
    ld a, [wMapSlideTransitionState]
    and a
    jp nz, Jump_004_5690

    call label_3EE8
    ldh a, [$ea]
    cp $05
    jp z, Jump_004_5791

    ldh a, [$f0]
    rst $00

; Data that tells where to jump to load reward for killing boss of level 1 ($571D in particular)
data_004_56CD::
	db $D5, $56, $E3, $56, $F2, $56, $1D, $57
	
    call IsEntityFrameCounterZero
    ld [hl], $60
    ld hl, $c420
    add hl, bc
    ld [hl], $ff
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $ff
    ld hl, $c420
    add hl, bc
    ld [hl], $ff
    jp IncrementEntityWalkingAttr


    call IsEntityFrameCounterZero
    and $1f
    ret nz

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_004_5705

    inc [hl]
    jp Jump_004_5a05


jr_004_5705:
    call IsEntityFrameCounterZero
    ld [hl], $30
    jp IncrementEntityWalkingAttr


    nop
    ld b, $08
    ld b, $00
    ld a, [$faf8]
    ld hl, sp-$06
    nop
    ld b, $08
    ld b, $00
	db $FA
	
	; Loop until boss destruction animation is done, then call to load heart
	; This particular counter is called on Level 1 and 2 Boss at least
label_004_571D::
	call IsEntityFrameCounterZero
    jp z, DropHeartContainer

    and $03
    jr nz, jr_004_5750

    ld a, [hl]
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $570d
    add hl, de
    ldh a, [$ee]
    add [hl]
    ldh [$ee], a
    ld hl, $5715
    add hl, de
    ldh a, [$ec]
    add [hl]
    ldh [$ec], a
    call Call_004_5a05
    call IsEntityFrameCounterZero
    cp $10
    jr nz, jr_004_5750

    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld [hl], $05

jr_004_5750:
    ret


; Load heart container value to load when boss is killed
DropHeartContainer:
    ld a, $36
    call label_3B86
    ldh a, [$d7]
    cp $88
    jr c, jr_004_575e

    ld a, $88

jr_004_575e:
    cp $18
    jr nc, jr_004_5764

    ld a, $18

jr_004_5764:
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    cp $70
    jr c, jr_004_5771

    ld a, $70

jr_004_5771:
    cp $20
    jr nc, jr_004_5777

    ld a, $20

jr_004_5777:
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c320
    add hl, de
    ld [hl], $10
    ldh a, [$da]
    ld hl, $c310
    add hl, de
    ld [hl], a
    ld hl, hFFF4
    ld [hl], $1a
    jp Jump_004_6d7a


Jump_004_5791:
    call label_3D8A
    call Call_004_7fa3
    xor a
    ld [$d3d6], a
    ld e, $10
    ld hl, $c360
    add hl, bc
    ld a, [hl]
    cp $02
    jr c, jr_004_57ae

    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_57b8

jr_004_57ae:
    call Call_004_57c6
    ld a, $01
    ld [$d3d6], a
    ld e, $0b

jr_004_57b8:
    ld hl, $d201
    ld a, [hl]
    inc a
    ld [hl], a
    cp e
    jr c, jr_004_57c6

    ld [hl], b
    ld a, $1b
    ldh [hFFF4], a

Call_004_57c6:
jr_004_57c6:
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
    call Call_004_5ae6
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    srl e
    ld d, b
    ld hl, $569f
    add hl, de
    ld a, [hl]
    jp label_3B0C


    ld hl, sp-$08
    ld h, b
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp+$08
    ld h, d
    jr nz, @-$06

    db $10
    ld h, b
    jr nz, @+$0a

    ld hl, sp+$64
    nop
    ld [$6600], sp
    nop
    ld [$6608], sp
    jr nz, @+$0a

    db $10
    ld h, h
    jr nz, @-$06

    ld hl, sp+$60
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp+$08
    ld h, d
    jr nz, @-$06

    db $10
    ld h, b
    jr nz, @+$0a

    ld hl, sp+$6c
    nop
    ld [$6e00], sp
    nop
    ld [$6208], sp
    ld h, b
    ld [$6010], sp
    ld h, b
    ld hl, sp-$08
    ld l, b
    nop
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp+$08
    ld h, d
    jr nz, @-$06

    db $10
    ld h, b
    jr nz, @+$0a

    ld hl, sp+$68
    ld b, b
    ld [$6a00], sp
    ld b, b
    ld [$6208], sp
    ld h, b
    ld [$6010], sp
    ld h, b
    ld hl, sp-$08
    ld l, h
    ld b, b
    ld hl, sp+$00
    ld l, [hl]
    ld b, b
    ld hl, sp+$08
    ld h, d
    jr nz, @-$06

    db $10
    ld h, b
    jr nz, @+$0a

    ld hl, sp+$60
    ld b, b
    ld [$6200], sp
    ld b, b
    ld [$6208], sp
    ld h, b
    ld [$6010], sp
    ld h, b
    ld hl, sp-$08
    ld h, h
    ld b, b
    ld hl, sp+$00
    ld h, [hl]
    ld b, b
    ld hl, sp+$08
    ld h, [hl]
    ld h, b
    ld hl, sp+$10
    ld h, h
    ld h, b
    ld [$60f8], sp
    ld b, b
    ld [$6200], sp
    ld b, b
    ld [$6208], sp
    ld h, b
    ld [$6010], sp
    ld h, b
    ld hl, sp-$08
    ld h, b
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp+$08
    ld l, [hl]
    ld h, b
    ld hl, sp+$10
    ld l, h
    ld h, b
    ld [$60f8], sp
    ld b, b
    ld [$6200], sp
    ld b, b
    ld [$6208], sp
    ld h, b
    ld [$6010], sp
    ld h, b
    ld hl, sp-$08
    ld h, b
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp+$08
    ld l, d
    jr nz, @-$06

    db $10
    ld l, b
    jr nz, @+$0a

    ld hl, sp+$60
    ld b, b
    ld [$6200], sp
    ld b, b
    ld [$6a08], sp
    ld h, b
    ld [$6810], sp
    ld h, b
    ld hl, sp-$08
    ld h, b
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp+$08
    ld h, d
    jr nz, @-$06

    db $10
    ld h, b
    jr nz, @+$0a

    ld hl, sp+$60
    ld b, b
    ld [$6200], sp
    ld b, b
    ld [$6e08], sp
    jr nz, jr_004_58f7

    db $10
    ld l, h
    jr nz, jr_004_5963

    nop
    ld [hl], b
    jr nz, @+$74

jr_004_58f7:
    nop
    ld [hl], d
    jr nz, @+$76

    nop
    ld [hl], h
    jr nz, jr_004_5975

    nop
    db $76
    jr nz, jr_004_5924

    ret nc

    jp nz, Jump_004_7e09

    cp $05
    jp nc, Jump_004_5a04

    ld hl, $c340
    add hl, bc
    ld [hl], $08
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld e, a
    ld d, b
    ld hl, $57f2
    add hl, de

jr_004_5924:
    ld c, $08
    call label_3CE6
    ld hl, $c340
    add hl, bc
    ld [hl], $02
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $04
    jp nc, Jump_004_5a04

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
    ld de, $58f2
    call label_3BC0
    ld hl, wEntitiesUnknownTableD

jr_004_5963:
    add hl, bc
    ld a, [hl]
    cp $03
    jp nc, Jump_004_5a04

    ldh a, [$d7]
    sub $18
    and $7f
    ld e, a
    ld d, b
    ld hl, $d000

jr_004_5975:
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    ld hl, $d100
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $00
    ldh [$f1], a
    ld de, $58f2
    call label_3BC0
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    cp $02
    jr nc, jr_004_5a04

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
    ld a, $01
    ldh [$f1], a
    ld de, $58f2
    call label_3BC0
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5a04

    ldh a, [$d7]
    sub $2e
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
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    add $02
    ldh [$f1], a
    ldh a, [hFrameCounter]
    rla
    rla
    and $10
    ld hl, $ffed
    xor [hl]
    ld [hl], a
    ld de, $58f2
    call label_3BC0
    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5a04

    ld hl, $c430
    add hl, bc
    ld [hl], $90
    call label_3B70
    ld hl, $c430
    add hl, bc
    ld [hl], $d0

Jump_004_5a04:
jr_004_5a04:
    ret


Call_004_5a05:
Jump_004_5a05:
    call Call_004_7fa9
    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $02
    call label_CC7
    ld a, $13
    ldh [hFFF4], a
    ret


Call_004_5a1a:
    ld hl, $c460
    add hl, bc
    ld e, [hl]
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

jr_004_5a31:
    xor a
    ld [hl+], a
    dec e
    ld a, e
    cp $00
    jr nz, jr_004_5a31

    pop de
    ld hl, $d100
    add hl, de
    ld e, $20

jr_004_5a40:
    xor a
    ld [hl+], a
    dec e
    ld a, e
    cp $00
    jr nz, jr_004_5a40

    ret


    ld [hl], b
    nop
    ld [hl], b
    jr nz, jr_004_5abe

    ld b, b
    ld [hl], b
    ld h, b
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld [hl], h
    jr nz, @+$74

    jr nz, jr_004_5ad0

    nop
    ld a, b
    nop
    ld a, b
    jr nz, @+$78

    jr nz, jr_004_5ad8

    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld h, b
    db $76
    ld h, b
    ld a, d
    nop
    ld a, d
    jr nz, jr_004_5aea

    nop
    ld a, h
    jr nz, jr_004_5a75

    inc bc
    dec b
    dec b

jr_004_5a75:
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0701
    rlca
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
    ld a, a
    ld e, e
    ld a, [wMapSlideTransitionState]
    and a
    jr nz, jr_004_5aa6

    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5aa9

jr_004_5aa6:
    call Call_004_5a1a

jr_004_5aa9:
    call Call_004_7fa3
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    and $1f
    ld [hl], a
    ldh [$d7], a
    ld hl, $c460
    add hl, bc
    ld e, [hl]
    sla e

jr_004_5abe:
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

jr_004_5ad0:
    add hl, de
    ldh a, [$ee]
    ld [hl], a
    pop de
    ld hl, $d100

jr_004_5ad8:
    add hl, de
    ldh a, [$d7]
    ld e, a
    add hl, de
    ldh a, [$ec]
    ld [hl], a
    call Call_004_6d80
    call label_3B39

Call_004_5ae6:
    ld hl, $c420
    add hl, bc

jr_004_5aea:
    ld a, [hl]
    and a
    jr nz, jr_004_5af1

    call Call_004_6dca

jr_004_5af1:
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5b28

    ld e, $08
    bit 0, a
    jr nz, jr_004_5b10

    ld e, $00
    bit 1, a
    jr nz, jr_004_5b10

    ld e, $04
    bit 2, a
    jr nz, jr_004_5b10

    ld e, $0c

jr_004_5b10:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], e
    call GetRandomByte
    rra
    jr c, jr_004_5b23

    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_004_5b23:
    call IsEntityFrameCounterZero
    ld [hl], $10

jr_004_5b28:
    call label_C00
    jr nz, jr_004_5b66

    ld [hl], $04
    ldh a, [$eb]
    cp $59
    jr nz, jr_004_5b37

    ld [hl], $06

jr_004_5b37:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    add [hl]
    and $0f
    ld [hl], a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $5a71
    add hl, de
    ld a, [hl]
    call label_3B0C
    ld hl, $5a81
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ld hl, $5a85
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a

jr_004_5b66:
    call IsEntityFrameCounterZero
    jr nz, jr_004_5b7e

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

jr_004_5b7e:
    ret


    ld de, $5a49
    call label_3BC0
    call Call_004_7fa3
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    ldh [$d7], a
    ld hl, $c460
    add hl, bc
    ld e, [hl]
    sla e
    sla e
    sla e
    sla e
    sla e
    ld d, b
    push de
    push de
    ld hl, $d000
    add hl, de
    ldh a, [$d7]
    sub $09
    and $1f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    pop de
    ld hl, $d100
    add hl, de
    ldh a, [$d7]
    sub $09
    and $1f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $08
    ldh [$f1], a
    ld de, $5a49
    call label_3BC0
    pop de
    push de
    ld hl, $d000
    add hl, de
    ldh a, [$d7]
    sub $10
    and $1f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    pop de
    ld hl, $d100
    add hl, de
    ldh a, [$d7]
    sub $10
    and $1f
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    ldh [$ec], a
    ld a, $09
    ldh [$f1], a
    ld de, $5a49
    call label_3BC0
    jp label_3D8A


    ld e, b
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, h
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    inc c
    db $f4
    ld [$cdf8], sp
    and [hl]
    ld e, l
    jr jr_004_5c16

    call Call_004_7f90
    ld de, $5bfc
    call label_3BC0

jr_004_5c16:
    ldh a, [$f0]
    and a
    jr z, jr_004_5c43

    ld a, $ff
    call label_3B0C
    call Call_004_6e35
    add $10
    cp $20
    jr nc, jr_004_5c42

    call Call_004_6e45
    add $10
    cp $20
    jr nc, jr_004_5c42

    ld a, [$c133]
    and a
    jr z, jr_004_5c42

    call IncrementEntityWalkingAttr
    ld [hl], b
    ld hl, $c300
    add hl, bc
    ld [hl], $30

jr_004_5c42:
    ret


jr_004_5c43:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    xor c
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $00
    jr z, jr_004_5c5a

    ld a, $ff
    call label_3B0C

jr_004_5c5a:
    call Call_004_7fa3
    call Call_004_6d80
    call label_3B70
    call Call_004_6dca
    call Call_004_6e03
    call Call_004_5d08
    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_004_5d07

    call label_3B44
    call IsEntityFrameCounterZero
    jr nz, jr_004_5c8c

    call GetRandomByte
    and $1f
    add $20
    ld [hl], a
    and $01
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], a

jr_004_5c8c:
    call label_C00
    jr nz, jr_004_5ca0

    call GetRandomByte
    and $0f
    add $18
    ld [hl], a
    and $01
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a

jr_004_5ca0:
    ldh a, [hFrameCounter]
    xor c
    and $03
    jr nz, jr_004_5d07

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ldh a, [$ee]
    cp $28
    jr nc, jr_004_5cb5

    ld [hl], $00
    jr jr_004_5cbb

jr_004_5cb5:
    cp $78
    jr c, jr_004_5cc0

    ld [hl], $01

jr_004_5cbb:
    call IsEntityFrameCounterZero
    ld [hl], $20

jr_004_5cc0:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ldh a, [$ec]
    cp $28
    jr nc, jr_004_5cce

    ld [hl], $00
    jr jr_004_5cd4

jr_004_5cce:
    cp $60
    jr c, jr_004_5cd9

    ld [hl], $01

jr_004_5cd4:
    call label_C00
    ld [hl], $20

jr_004_5cd9:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $5c04
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    sub [hl]
    and $80
    jr nz, jr_004_5cef

    inc [hl]
    inc [hl]

jr_004_5cef:
    dec [hl]
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $5c06
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    sub [hl]
    and $80
    jr nz, jr_004_5d06

    inc [hl]
    inc [hl]

jr_004_5d06:
    dec [hl]

Jump_004_5d07:
jr_004_5d07:
    ret


Call_004_5d08:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_5d25

    ld hl, $c310
    add hl, bc
    ld a, [hl]
    cp $10
    jr z, jr_004_5d25

    bit 7, a
    jr z, jr_004_5d1e

    inc [hl]
    jr jr_004_5d25

jr_004_5d1e:
    cp $10
    jr nc, jr_004_5d24

    inc [hl]
    ret


jr_004_5d24:
    dec [hl]

jr_004_5d25:
    ret


    ld hl, sp-$08
    ld h, b
    ld [bc], a
    ld hl, sp+$00
    ld h, d
    ld [bc], a
    ld hl, sp+$08
    ld h, d
    ld [hl+], a
    ld hl, sp+$10
    ld h, b
    ld [hl+], a
    ld [$64f8], sp
    ld [bc], a
    ld [$6600], sp
    ld [bc], a
    ld [$6808], sp
    ld [bc], a
    ld [$6a10], sp
    ld [bc], a
    ld hl, sp-$08
    ld h, b
    ld [bc], a
    ld hl, sp+$00
    ld h, d
    ld [bc], a
    ld hl, sp+$08
    ld h, d
    ld [hl+], a
    ld hl, sp+$10
    ld h, b
    ld [hl+], a
    ld [$64f8], sp
    ld [bc], a
    ld [$6c00], sp
    ld [bc], a
    ld [$6e08], sp
    ld [bc], a
    ld [$6a10], sp
    ld [bc], a
    ld hl, sp-$08
    ld h, b
    ld [bc], a
    ld hl, sp+$00
    ld h, d
    ld [bc], a
    ld hl, sp+$08
    ld h, d
    ld [hl+], a
    ld hl, sp+$10
    ld h, b
    ld [hl+], a
    ld [$6af8], sp
    ld [hl+], a
    ld [$6800], sp
    ld [hl+], a
    ld [$6608], sp
    ld [hl+], a
    ld [$6410], sp
    ld [hl+], a
    ld hl, sp-$08
    ld h, b
    ld [bc], a
    ld hl, sp+$00
    ld h, d
    ld [bc], a
    ld hl, sp+$08
    ld h, d
    ld [hl+], a
    ld hl, sp+$10
    ld h, b
    ld [hl+], a
    ld [$6af8], sp
    ld [hl+], a
    ld [$6e00], sp
    ld [hl+], a
    ld [$6c08], sp
    ld [hl+], a
    ld [$6410], sp
    ld [hl+], a
    call Call_004_7f90
    ldh a, [$ed]
    push af
    rla
    and $40
    ldh [$d7], a
    pop af
    and $0f
    ldh [$ed], a
    ld hl, $c3b0
    add hl, bc
    ld a, [hl]
    rla
    rla
    rla
    rla
    rla
    and $e0
    ld hl, $ffd7
    add [hl]
    ld e, a
    ld d, b
    ld hl, $5d26
    add hl, de
    ld c, $08
    jp label_3CE6


    ld [hl], b
    ld bc, $0172
    ld [hl], d
    ld hl, $2170
    ld [hl], h
    ld bc, $2174
    nop
    nop
    nop
    nop
    ld a, d
    ld bc, $217a
    rst $38
    nop
    rst $38
    nop
    db $76
    ld bc, $0178
    ld a, b
    ld hl, $2176
    ldh a, [$f1]
    cp $03
    jr nz, jr_004_5e1c

    ldh a, [$ee]
    sub $08
    ldh [$ee], a
    ld a, $06
    ldh [$f1], a
    ld de, $5dd1
    call label_3BC0
    ldh a, [$ee]

Jump_004_5e09:
    add $10
    ldh [$ee], a
    ld a, $07
    ldh [$f1], a
    ld de, $5dd1
    call label_3BC0
    call label_3D8A
    jr jr_004_5e22

jr_004_5e1c:
    ld de, $5dd1
    call label_3BC0

jr_004_5e22:
    call Call_004_7fa3
    call Call_004_6d80
    ldh a, [$f0]
    rst $00
    ld sp, $765e
    ld e, [hl]
    or [hl]
    ld e, [hl]
    call label_3B39
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call IsEntityFrameCounterZero
    cp $18
    jr nz, jr_004_5e4a

    call Call_004_5ec6
    and a

jr_004_5e4a:
    jr nc, jr_004_5e72

    call Call_004_6e35
    add $20
    cp $40
    jr nc, jr_004_5e72

    call Call_004_6e45
    add $20
    cp $40
    jr nc, jr_004_5e72

    ld hl, $c420
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_5e72

    call IsEntityFrameCounterZero
    ld [hl], $20
    call IncrementEntityWalkingAttr
    ld a, $3c
    ldh [$f2], a

jr_004_5e72:
    ret


    inc b
    inc bc
    ld [bc], a
    call IsEntityFrameCounterZero
    cp $18
    jp nc, label_3B39

    and a
    jr nz, jr_004_5ea4

    ld [hl], $40
    call IncrementEntityWalkingAttr
    ld a, $ff
    call label_3B0C
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    sub $48
    ld e, a
    ld a, $48
    sub e
    ld [hl], a
    ld hl, wEntity0PosX
    add hl, bc
    ld a, [hl]
    sub $50
    ld e, a
    ld a, $50
    sub e
    ld [hl], a
    ret


jr_004_5ea4:
    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $5e73
    add hl, de
    ld a, [hl]
    jp label_3B0C


    ld [bc], a
    inc bc
    inc b
    call IsEntityFrameCounterZero
    cp $18
    ret nc

    and a
    jr nz, jr_004_5ee5

    ld [hl], $30
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


Call_004_5ec6:
    ld a, $58
    call label_3B86
    jr c, jr_004_5ee4

    ld hl, wEntity0PosX
    add hl, de
    ldh a, [$d7]
    ld [hl], a
    ld hl, wEntitiesPosYTable
    add hl, de
    ldh a, [$d8]
    ld [hl], a
    push bc
    ld c, e
    ld b, d
    ld a, $18
    call label_3BAA
    pop bc

jr_004_5ee4:
    ret


jr_004_5ee5:
    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $5eb3
    add hl, de
    ld a, [hl]
    jp label_3B0C


    ld a, h
    nop
    ld a, h
    jr nz, @+$80

    nop
    ld a, [hl]
    jr nz, @+$13

    db $f4
    ld e, [hl]
    call label_3BC0
    call Call_004_7fa3
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    call Call_004_6dca
    call label_3B2E
    call label_3B4F
    call label_3B70
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    ret z

    call Call_004_6d7a
    jp Jump_004_6c20


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
    ld bc, $169a
    sbc h
    ld d, $21
    ld b, b
    call nz, Call_004_7e09
    and a
    jr z, jr_004_5f96

    ldh a, [$ec]
    add $04
    ldh [$ec], a
    ld de, $5f58
    call label_3BC0
    call Call_004_6dca
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_004_5f91

    call Call_004_6d7a
    xor a
    ld [$db7f], a
    ld [wC167], a
    jp label_C0C


jr_004_5f91:
    ld a, $02
    ldh [$a1], a
    ret


jr_004_5f96:
    ldh a, [$f9]
    and a
    jp nz, $60a4

    ld hl, $c340
    add hl, bc
    ld [hl], $84
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    ldh [hFFE8], a
    ld a, [wDialogState]
    and a
    ld hl, $5f48
    jr nz, jr_004_5fc2

    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld hl, $5f28
    and $30
    jr z, jr_004_5fc2

    ld hl, $5f38

jr_004_5fc2:
    ld c, $04
    call label_3CE6
    ld a, $04
    call label_3DA0
    call Call_004_7be3
    ldh a, [$f0]
    rst $00
    ret c

    ld e, a
    rst $28
    ld e, a
    ld b, c
    ld h, b
    ld a, [wGameplayType]
    cp $0b
    ret nz

    call Call_004_7c4b
    ret nc

    ld a, $02
    ld [wC167], a
    ld a, $45
    call label_2385
    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    call IncrementEntityWalkingAttr
    ld a, [wC177]
    and a
    jr z, jr_004_6007

    ld [hl], b
    xor a
    ld [wC167], a
    ld a, $46
    jp label_2385


jr_004_6007:
    push hl
    push de
    ld a, [wAddRupeeBufferHigh]
    ld e, a
    ld a, [$db8f]
    ld d, a
    ld a, [wRupeeCountLow]
    ld l, a
    ld a, [wRupeeCountHigh]
    ld h, a

jr_004_6019:
    ld a, e
    or d
    jr z, jr_004_6023

    daa
    inc hl
    daa
    dec de
    jr jr_004_6019

jr_004_6023:
    ld a, l
    sub $10
    ld a, h
    sbc $00
    pop de
    pop hl
    jr c, jr_004_6037

    ld a, $0a
    ld [wSubstractRupeeBufferHigh], a
    ld a, $47
    jp label_2385


jr_004_6037:
    ld [hl], b
    xor a
    ld [wC167], a
    ld a, $4e
    jp label_2385


    ld a, [wDialogState]

jr_004_6044:
    and a
    ret nz

    call label_3E83
    jp Jump_004_67fb


    ld e, b
    nop
    ld e, d
    nop
    ld d, [hl]
    jr nz, @+$01

    nop
    ld e, h
    nop
    ld e, [hl]
    nop
    ld e, b
    nop
    ld e, d
    nop
    ld e, b
    nop
    ld e, d
    nop
    ld e, h
    nop
    ld e, [hl]
    nop
    ld e, h
    nop
    ld e, [hl]
    nop
    ld d, [hl]
    nop
    rst $38
    nop
    ld e, [hl]
    jr nz, jr_004_60cb

    jr nz, jr_004_60c9

    nop
    ld e, d
    nop
    ld b, $16
    db $10
    db $10
    jr c, jr_004_60b2

    add hl, sp
    add hl, sp
    ld d, $38
    or $00
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    cp $04
    ld a, [c]
    nop
    ldh a, [$fa]
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$0e
    cp $e8
    nop
    ldh [hFFE8], a
    nop
    nop
    nop
    nop
    inc d
    db $10
    ldh [hFFF8], a
    stop
    nop
    nop
    nop
    ldh a, [$3e]
    ld bc, $67ea
    pop bc
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    rst $00
    ret nc

    ld h, b
    add c

jr_004_60b2:
    ld h, d
    ld a, [hl-]
    ld h, h
    ld hl, $1867
    ld e, b
    ld h, b
    jr jr_004_6044

    ld b, b
    ld c, h
    inc [hl]
    ld l, b
    ld d, b
    ld bc, $0000
    ld bc, $0200
    ld [bc], a
    ld [bc], a

jr_004_60c9:
    inc bc
    inc bc

jr_004_60cb:
    nop
    ld a, $1e
    db $10
    jr nc, @+$40

    ld [bc], a
    ldh [$a1], a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_6120

    inc [hl]
    push bc
    ld c, $05

jr_004_60e0:
    ld a, $54
    call label_3B86
    ld hl, $60b6
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $60bb
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $60c0
    add hl, bc
    ld a, [hl]
    ld hl, $c380
    add hl, de
    ld [hl], a
    ld hl, $60c5
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], a
    ld hl, $60ca
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], a
    dec c
    jr nz, jr_004_60e0

    xor a
    ld [$d004], a
    pop bc
    ret


jr_004_6120:
    ldh a, [$f1]
    ld e, a
    ld d, b
    ld hl, $6074
    add hl, de
    ld a, [hl]
    ldh [hLinkAnimationState], a
    ld hl, $607e
    add hl, de
    ldh a, [hLinkPositionX]
    add [hl]
    ldh [$ee], a
    ld hl, $6088
    add hl, de
    ldh a, [hLinkPositionY]
    add [hl]
    ldh [$ec], a
    ld de, $604c
    call label_3BC0
    ldh a, [$f0]
    rst $00
    ld d, h
    ld h, c
    ld a, e
    ld h, c
    db $e4
    ld h, c
    push hl
    ld h, c
    ld b, a
    ld h, d
    ld d, d
    ld h, d
    ld l, h
    ld h, d
    ld a, [wDialogState]
    and a
    jr nz, jr_004_616c

    ldh a, [hFFCC]
    and $30
    jr z, jr_004_616c

    call IncrementEntityWalkingAttr
    call IsEntityFrameCounterZero
    ld [hl], $23
    xor a
    ld [wIntroSubTimer], a

jr_004_616c:
    ld a, $09
    jp Jump_004_61ba


    ld bc, label_808
    ld [label_808], sp
    ld bc, $0302
    nop
    call IsEntityFrameCounterZero
    jr nz, jr_004_61b6

    call IncrementEntityWalkingAttr
    ld a, $02
    ld [$c3b0], a
    ld a, $54
    call label_3B86
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], $78
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], $18
    ld hl, $c240
    add hl, de
    ld [hl], $e2
    ld hl, $c250
    add hl, de
    ld [hl], $fa
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $14
    ld a, $08
    ldh [$f2], a
    ret


jr_004_61b6:
    rra
    rra
    and $1f

Jump_004_61ba:
    ld e, a
    ld d, b
    ld hl, $6171
    add hl, de
    ld a, [hl]
    ld [$c3b0], a
    ld e, a
    ld d, b
    ld hl, $6092
    add hl, de
    ldh a, [hLinkPositionX]
    add [hl]
    ldh [$ee], a
    ld hl, $609b
    add hl, de
    ldh a, [hLinkPositionY]
    add [hl]
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $626d
    call label_3BC0
    jp label_3D8A


    ret


    ld a, [wDialogState]
    and a
    ret nz

    ld a, [wC177]
    and a
    jr nz, jr_004_6237

    ld a, [$d004]
    cp $05
    jr c, jr_004_6202

    ld a, $4b
    call label_2385
    call IncrementEntityWalkingAttr
    ld [hl], $05
    ret


jr_004_6202:
    push hl
    push de
    ld a, [wAddRupeeBufferHigh]
    ld e, a
    ld a, [$db8f]
    ld d, a
    ld a, [wRupeeCountLow]
    ld l, a
    ld a, [wRupeeCountHigh]
    ld h, a

jr_004_6214:
    ld a, e
    or d
    jr z, jr_004_621e

    daa
    inc hl
    daa
    dec de
    jr jr_004_6214

jr_004_621e:
    ld a, l
    sub $10
    ld a, h
    sbc $00
    pop de
    pop hl
    jr c, jr_004_623f

    ld a, $0a
    ld [wSubstractRupeeBufferHigh], a
    ld a, $47
    call label_2385
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_004_6237:
    ld a, $46
    call label_2385
    jp IncrementEntityWalkingAttr


jr_004_623f:
    ld a, $4e
    call label_2385
    jp IncrementEntityWalkingAttr


    ld a, [wDialogState]
    and a
    ret nz

    call label_3E83
    jp Jump_004_67fb


    ld a, [wDialogState]
    and a
    ret nz

    call IncrementEntityWalkingAttr
    ld [hl], $04
    ld a, [wC177]
    and a
    jr nz, jr_004_6267

    ld a, $4c
    jp label_2385


jr_004_6267:
    ld a, $46
    jp label_2385


    ret


    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld b, d
    ld d, h
    ld [bc], a
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld d, h
    ld h, d
    ld d, b
    ld h, d
    ld a, c
    ld [$d003], a
    ld de, $626d
    call label_3BC0
    ldh a, [$ee]
    ld [$d000], a
    ldh a, [$ef]
    ld [wIntroTimer], a
    call Call_004_7fa3
    ldh a, [$f0]
    rst $00
    sbc a
    ld h, d
    ld [$cd63], sp
    rst $10
    ld l, l
    call Call_004_6dcd
    ldh a, [hPressedButtonsMask]
    and $01
    jr z, jr_004_62bc

    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_62bc

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_62bc

    inc [hl]
    jr jr_004_62c1

jr_004_62bc:
    call IsEntityFrameCounterZero
    jr nz, jr_004_62e7

jr_004_62c1:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_62d1

    ld hl, $c250
    add hl, bc
    ld a, [hl]
    cp $20
    jr z, jr_004_62d1

    inc [hl]

jr_004_62d1:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    cp $03
    ld [hl], a
    jr nz, jr_004_62e7

    xor a
    ld [hl], a
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_62e7

    inc [hl]

jr_004_62e7:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    cp $2a
    jr c, jr_004_6307

    call label_3D7F
    call IncrementEntityWalkingAttr

Jump_004_62f6:
    ldh a, [$ec]
    ldh [$d8], a
    ldh a, [$ee]
    ldh [$d7], a
    ld a, $01
    call label_CC7
    ld a, $0e
    ldh [$f2], a

jr_004_6307:
    ret


    ld hl, $c3b0
    ld [hl], $00
    call IsEntityFrameCounterZero
    jr z, jr_004_6317

    ld hl, $c3b0
    ld [hl], $04

jr_004_6317:
    call label_C00
    jr z, jr_004_6321

    ld hl, $c3b0
    ld [hl], $05

jr_004_6321:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    call Call_004_6dca
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_004_6354

    ld hl, $c250
    add hl, bc
    ld a, [hl]
    sub $04
    jr z, jr_004_6345

    and $80
    jr z, jr_004_6344

    inc [hl]
    inc [hl]

jr_004_6344:
    dec [hl]

jr_004_6345:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6354

    and $80
    jr z, jr_004_6353

    inc [hl]
    inc [hl]

jr_004_6353:
    dec [hl]

jr_004_6354:
    ldh a, [hFFCC]
    and $30
    jr z, jr_004_63b9

    call IsEntityFrameCounterZero
    ld [hl], $08
    ldh a, [hLinkPositionX]
    push af
    sub $17
    ldh [hLinkPositionX], a
    ld a, $04
    call label_3BAA
    pop af
    ldh [hLinkPositionX], a
    ldh a, [$ec]
    cp $25
    jr nc, jr_004_63ad

    ldh a, [$ee]
    cp $70
    jr c, jr_004_63ad

    ld hl, wEntitiesWalkingTable
    ld [hl], $03
    ld a, $48
    call label_2385
    call Call_004_6d7a
    ld e, $0f
    ld d, b

jr_004_638a:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_63a7

    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld a, [hl]
    cp $02
    jr c, jr_004_63a7

    ld hl, wEntitiesWalkingTable
    add hl, de
    ld a, [hl]
    cp $02
    jr c, jr_004_63a7

    and $01
    ld [hl], a

jr_004_63a7:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_004_638a

jr_004_63ad:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    jr jr_004_63de

jr_004_63b9:
    ldh a, [hFFCC]
    and $05
    jr z, jr_004_63de

    ldh a, [$ec]
    cp $30
    jr c, jr_004_63de

    ld hl, $c300
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_63de

    ld hl, $c250
    add hl, bc
    ld [hl], $fa
    ld hl, $c300
    add hl, bc
    ld [hl], $50
    call label_C00
    ld [hl], $10

jr_004_63de:
    ldh a, [$ee]
    ld hl, wEntity0PosX
    add hl, bc
    cp [hl]
    jr nz, jr_004_63f0

    ldh a, [$ef]
    ld hl, wEntitiesPosYTable
    add hl, bc
    cp [hl]
    jr z, jr_004_6402

jr_004_63f0:
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    push af
    push hl
    and $80
    jr z, jr_004_63fc

    ld [hl], b

jr_004_63fc:
    call label_3B23
    pop hl
    pop af
    ld [hl], a

jr_004_6402:
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_640e

    xor a
    call label_3B0C

jr_004_640e:
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    rla
    ret c

    ld a, $02
    jp label_3B0C


    ld c, h
    nop
    ld c, d
    nop
    ld c, h
    nop
    ld c, [hl]
    nop
    ld c, b
    nop
    ld c, d
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld c, d
    jr nz, @+$4e

    jr nz, @+$50

    jr nz, @+$4e

    jr nz, @+$4c

    jr nz, @+$4a

    jr nz, @+$50

    jr nz, @+$4a

    jr nz, jr_004_645c

    add b
    jp Jump_004_7e09


    and a
    jr nz, jr_004_6448

    ldh a, [$f1]
    add $04
    ldh [$f1], a

jr_004_6448:
    ld de, $641a
    call label_3BC0

Jump_004_644e:
    call Call_004_7fa3
    call Call_004_6dca
    ldh a, [$f0]
    rst $00
    ld h, e
    ld h, h
    sbc e
    ld h, h
    ld a, [c]

jr_004_645c:
    ld h, h
    dec l
    ld h, l
    ld a, d
    ld h, l
    adc c
    ld h, [hl]
    call Call_004_679b
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $03
    jp z, Jump_004_6738

    call IsEntityFrameCounterZero
    jr nz, jr_004_6482

    ld [hl], $30
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    call IncrementEntityWalkingAttr

jr_004_6482:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_6497

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6497

    and $80
    jr z, jr_004_6496

    inc [hl]
    inc [hl]

jr_004_6496:
    dec [hl]

jr_004_6497:
    jr jr_004_64e0

    db $10
    ldh a, [$cd]
    sbc e
    ld h, a
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $03
    jp z, $6762

    call IsEntityFrameCounterZero
    jr nz, jr_004_64b3

    ld [hl], $50
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_004_64b3:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_64e0

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push hl
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $6499
    add hl, de
    sub [hl]
    pop hl
    and a
    jr z, jr_004_64e0

    and $80
    jr z, jr_004_64df

    inc [hl]
    inc [hl]

jr_004_64df:
    dec [hl]

jr_004_64e0:
    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    cp $34
    jr nc, jr_004_64ef

    inc [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], b

jr_004_64ef:
    ret


    ld a, [c]
    inc d
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    call IsEntityFrameCounterZero
    jr nz, jr_004_6504

    call IncrementEntityWalkingAttr

jr_004_6504:
    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $64f0
    add hl, de
    ld a, [$d000]
    add [hl]
    ldh [hLinkPositionX], a
    ld a, [wIntroTimer]
    ldh [hLinkPositionY], a
    ld a, $04
    call label_3BAA
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    jp Jump_004_6dca


    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    add $02
    call label_3B0C
    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld a, [$d000]
    add $04
    ldh [hLinkPositionX], a
    ld a, [wIntroTimer]
    ldh [hLinkPositionY], a
    ld a, $10
    call label_3BAA
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call Call_004_6dca
    ld a, [$d000]
    ld hl, $ffee
    sub [hl]
    add $08
    cp $10
    jr nc, jr_004_6575

    call label_3D7F
    call IncrementEntityWalkingAttr
    ld a, [$d003]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld [hl], b

jr_004_6575:
    ret


    ld d, h
    nop
    ld [$21f8], sp
    add b
    jp Jump_004_5e09


    ld d, b
    ld hl, $6578
    add hl, de
    ldh a, [$ee]
    add [hl]
    ldh [$ee], a
    ld hl, $fff1
    ld [hl], b
    ld de, $6576
    call label_3C77
    call label_3D8A
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $07
    jr nz, jr_004_65db

    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld a, $00
    ldh [hLinkPositionX], a
    ld a, $59
    ldh [hLinkPositionY], a
    ld a, $08
    call label_3BB5
    ldh a, [$d7]
    ld hl, $c250
    add hl, bc
    sub [hl]
    inc [hl]
    and $80
    jr z, jr_004_65c7

    dec [hl]
    dec [hl]

jr_004_65c7:
    ldh a, [$d8]
    ld hl, $c240
    add hl, bc
    sub [hl]
    inc [hl]
    and $80
    jr z, jr_004_65d5

    dec [hl]
    dec [hl]

jr_004_65d5:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a

jr_004_65db:
    ldh a, [hFFCC]
    and $30
    jr z, jr_004_6631

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $03
    jr nz, jr_004_65f1

    call GetRandomByte
    and $03
    jr z, jr_004_6631

jr_004_65f1:
    ldh a, [hLinkPositionX]
    push af
    sub $14
    ldh [hLinkPositionX], a
    ldh a, [hLinkPositionY]
    push af
    add $08
    ldh [hLinkPositionY], a
    ld a, $03
    call label_3BB5
    ldh a, [$d7]
    ld hl, $c250
    add hl, bc
    sub [hl]
    inc [hl]
    inc [hl]
    and $80
    jr z, jr_004_6615

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]

jr_004_6615:
    ldh a, [$d8]
    ld hl, $c240
    add hl, bc
    sub [hl]
    inc [hl]
    inc [hl]
    and $80
    jr z, jr_004_6626

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]

jr_004_6626:
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    call IsEntityFrameCounterZero
    ld [hl], $10

jr_004_6631:
    call Call_004_6dca
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6644

    rlca
    and $01
    ld hl, $c380
    add hl, bc
    ld [hl], a

jr_004_6644:
    ld hl, $c3b0
    ld [hl], $05
    call IsEntityFrameCounterZero
    jr z, jr_004_6659

    ldh a, [hFrameCounter]
    and $30
    jr z, jr_004_6659

    ld hl, $c3b0
    ld [hl], $07

jr_004_6659:
    ldh a, [$ec]
    cp $2c
    jr nc, jr_004_6677

    ldh a, [$ee]
    cp $74
    jr c, jr_004_6677

    call IncrementEntityWalkingAttr
    ld hl, $c240
    add hl, bc
    ld [hl], $05
    ld hl, $c250
    add hl, bc
    ld [hl], $f0
    jp Jump_004_62f6


jr_004_6677:
    ldh a, [$ee]
    cp $03
    ret nc

    ld hl, wEntitiesWalkingTable
    ld [hl], $03
    ld a, $49
    call label_2385
    jp Jump_004_6d7a


    ld hl, $c3b0
    ld [hl], $01
    call Call_004_6dca
    ld hl, $c250
    add hl, bc
    inc [hl]
    nop
    ld a, [hl]
    cp $0c
    ret nz

    ld hl, wEntitiesWalkingTable
    ld [hl], $03
    ld a, c
    cp $0f
    jr nz, jr_004_66e6

    ldh a, [hFFF8]
    and $10
    jr nz, jr_004_66e6

    ld a, $01
    ldh [$f2], a
    ldh a, [hMapIndex]
    ld e, a
    ld d, $01
    ld hl, $d900
    add hl, de
    ld a, [hl]
    or $10
    ld [hl], a
    ldh [hFFF8], a
    ld a, [$db5c]
    inc a
    ld [$db5c], a
    cp $04
    jr nz, jr_004_66da

    xor a
    ld [$db5c], a
    ld hl, wSubstractRupeeBufferLow
    ld [hl], $40
    ld hl, $db5b
    inc [hl]
    ld a, $ff
    jr jr_004_66dc

jr_004_66da:
    ld a, $fe

jr_004_66dc:
    call label_2373
    ld hl, wAddRupeeBufferHigh
    ld [hl], $14
    jr jr_004_66fe

jr_004_66e6:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cp $03
    ld e, $14
    ld a, $4a
    jr z, jr_004_66f7

    ld e, $05
    ld a, $4d

jr_004_66f7:
    ld hl, wAddRupeeBufferHigh
    ld [hl], e
    call label_2385

jr_004_66fe:
    jp Jump_004_6d7a


    ld b, h
    nop
    ld b, d
    nop
    ld b, h
    nop
    ld b, [hl]
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld b, d
    jr nz, jr_004_6758

    jr nz, jr_004_675c

    jr nz, jr_004_675c

    jr nz, jr_004_675c

    jr nz, jr_004_675c

    jr nz, jr_004_6764

    jr nz, jr_004_6760

    jr nz, jr_004_6743

    add b
    jp Jump_004_7e09


    and a
    jr nz, jr_004_672f

    ldh a, [$f1]
    add $04
    ldh [$f1], a

jr_004_672f:
    ld de, $6701
    call label_3BC0
    jp Jump_004_644e


Jump_004_6738:
    call IsEntityFrameCounterZero
    jr nz, jr_004_674a

    ld [hl], $18
    ld hl, $c380
    add hl, bc

jr_004_6743:
    ld a, [hl]
    xor $01
    ld [hl], a
    call IncrementEntityWalkingAttr

jr_004_674a:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_675f

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_675f

jr_004_6758:
    and $80
    jr z, jr_004_675e

jr_004_675c:
    inc [hl]
    inc [hl]

jr_004_675e:
    dec [hl]

jr_004_675f:
    ret


jr_004_6760:
    ld [$cdf8], sp
    dec b

jr_004_6764:
    inc c
    jr nz, jr_004_676d

    ld [hl], $50
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_004_676d:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_679a

    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push hl
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $6760
    add hl, de
    sub [hl]
    pop hl
    and a
    jr z, jr_004_679a

    and $80
    jr z, jr_004_6799

    inc [hl]
    inc [hl]

jr_004_6799:
    dec [hl]

jr_004_679a:
    ret


Call_004_679b:
    ld a, [wIntroSubTimer]
    and a
    jr nz, jr_004_67fa

    ld a, [$d003]
    ld e, a
    ld d, b
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_67fa

    ld hl, wEntitiesWalkingTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_67fa

    ld a, [$d000]
    ld hl, $ffee
    sub [hl]
    rlca
    rlca
    and $01
    ld hl, $c380
    add hl, bc
    cp [hl]
    jr nz, jr_004_67fa

    ld a, [$d000]
    ld hl, $ffee
    sub [hl]
    add $18
    cp $30
    jr nc, jr_004_67fa

    ld a, [wIntroTimer]
    ld hl, $ffef
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_67fa

    call IncrementEntityWalkingAttr
    ld [hl], $02
    ld hl, wIntroSubTimer
    inc [hl]
    ld hl, $d004
    inc [hl]
    call IsEntityFrameCounterZero
    call GetRandomByte
    and $3f
    add $30
    ld [hl], a

jr_004_67fa:
    ret


Jump_004_67fb:
    call $0c83
    ldh a, [hLinkPositionX]
    swap a
    and $0f
    ld e, a
    ldh a, [hLinkPositionY]
    sub $08
    and $f0
    or e
    ld [$d416], a
    xor a
    ld [wC167], a
    ret


    ld c, h
    rlca
    ld c, h
    daa
    ld c, [hl]
    inc b
    ld c, [hl]
    inc h
    ld a, h
    rlca
    ld a, h
    daa
    ld a, [hl]
    inc b
    ld a, [hl]
    inc h
    ld hl, $d45e
    inc [hl]
    ld de, $6814
    ldh a, [hMapTileset]
    cp $01
    jr nz, jr_004_6834

    ld de, $681c

jr_004_6834:
    call label_3BC0
    call Call_004_7fa3
    call label_3B70
    ldh a, [$f0]
    rst $00
    ld c, b
    ld l, b
    db $fd
    ld l, b
    nop
    inc bc
    ld bc, $cd02
    ei
    dec bc
    jr nz, jr_004_6852

    ld [hl], $10
    jp IncrementEntityWalkingAttr


jr_004_6852:
    ld a, [wLinkMotionState]
    cp $00
    jp nz, Jump_004_68e4

    ldh a, [hFF9A]
    push af
    ldh a, [$9b]
    push af
    ld e, $00
    ldh a, [$eb]
    cp $52
    ld a, $14
    jr nz, jr_004_686d

    inc e
    ld a, $08

jr_004_686d:
    push de
    call label_3BB5
    pop de
    ldh a, [$d7]
    bit 0, e
    jr z, jr_004_687a

    cpl
    inc a

jr_004_687a:
    ldh [$9b], a
    ldh a, [$d8]
    bit 0, e
    jr z, jr_004_6884

    cpl
    inc a

jr_004_6884:
    ldh [hFF9A], a
    push bc
    call label_21A8
    call label_3E19
    pop bc
    pop af
    ldh [$9b], a
    pop af
    ldh [hFF9A], a
    xor a
    ld [$c144], a
    ldh a, [$eb]
    cp $52
    jp nz, Jump_004_68e4

    ld a, [$c146]
    and a
    jr nz, jr_004_68d4

    call Call_004_6e35
    add $04
    cp $08
    jr nc, jr_004_68d4

    call Call_004_6e45
    add $04
    cp $08
    jr nc, jr_004_68d4

    ldh a, [$ee]
    ldh [hLinkPositionX], a
    ldh a, [$ec]
    ldh [hLinkPositionY], a
    ld a, $06
    ld [wLinkMotionState], a
    call label_CAF
    ld [$c198], a
    ld a, $ff
    ld [$dbcb], a
    ld a, $0c
    ldh [hSFX], a
    ret


jr_004_68d4:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $03
    ld e, a
    ld d, b
    ld hl, $6844
    add hl, de
    ld a, [hl]
    ldh [hFF9E], a

Jump_004_68e4:
    call Call_004_690d
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    call label_3B0C
    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_004_68fc

    ld a, $1f
    ldh [hFFF4], a

jr_004_68fc:
    ret


    call label_BFB
    jr nz, jr_004_6908

    ld [hl], $40
    call IncrementEntityWalkingAttr
    ld [hl], b

jr_004_6908:
    ld a, $00
    jp label_3B0C


Call_004_690d:
    ld e, $0f
    ld d, b

Jump_004_6910:
    push de
    ld a, e
    cp c
    jp z, Jump_004_69a5

    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jp z, Jump_004_69a5

    call label_3D8A
    push bc
    ld c, e
    ld b, d
    ldh a, [hFrameCounter]
    xor c
    and $01
    jr nz, jr_004_69a4

    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ldh a, [$ee]
    ldh [hLinkPositionX], a
    ldh a, [$ef]
    ldh [hLinkPositionY], a
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    push af
    ld a, $10
    call label_3BB5
    ld e, $00
    ldh a, [$eb]
    cp $52
    jr nz, jr_004_6954

    inc e

jr_004_6954:
    ldh a, [$d7]
    bit 0, e
    jr nz, jr_004_695c

    cpl
    inc a

jr_004_695c:
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ldh a, [$d8]
    bit 0, e
    jr nz, jr_004_6969

    cpl
    inc a

jr_004_6969:
    ld hl, $c240
    add hl, bc
    ld [hl], a
    call label_3D8A
    call Call_004_6dca
    call label_3B23
    ldh a, [$ee]
    ld hl, hLinkPositionX
    sub [hl]
    add $02
    cp $04
    jr nc, jr_004_6992

    ldh a, [$ec]
    ld hl, hLinkPositionY
    sub [hl]
    add $02
    cp $04
    jr nc, jr_004_6992

    call Call_004_6d7a

jr_004_6992:
    pop af
    ld hl, $c250
    add hl, bc
    ld [hl], a
    pop af
    ld hl, $c240
    add hl, bc
    ld [hl], a
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a

jr_004_69a4:
    pop bc

Jump_004_69a5:
    pop de
    dec e
    ld a, e
    cp $ff
    jp nz, Jump_004_6910

    ret


    ldh a, [hMapTileset]
    cp $14
    jr c, jr_004_69c9

    ldh a, [hFFF8]
    and $10
    jp nz, Jump_004_6d7a

    ld hl, $c460
    add hl, bc
    ld [hl], $ff
    ld hl, $c4e0
    add hl, bc
    ld [hl], $3c
    jr jr_004_69d5

jr_004_69c9:
    ld e, a
    ld d, b
    ld hl, wHasInstrument1
    add hl, de
    ld a, [hl]
    and $01
    jp nz, Jump_004_6d7a

jr_004_69d5:
    call $6ac7
    call label_3D8A
    call Call_004_7fa3
    call Call_004_6d80
    ld hl, $c430
    add hl, bc
    ld [hl], $00
    call label_3B39
    ldh a, [$f0]
    rst $00
    di
    ld l, c
    dec a
    ld l, d
    ld l, d
    ld l, d
    call IsEntityFrameCounterZero
    jr nz, jr_004_6a25

    ldh a, [hFrameCounter]
    xor c
    and $07
    jr nz, jr_004_6a04

    ld a, $04
    call label_3BAA

jr_004_6a04:
    call Call_004_6dca
    call label_3B23
    call Call_004_6e35
    add $30
    cp $60
    jr nc, jr_004_6a25

    call Call_004_6e45
    add $30
    cp $60
    jr nc, jr_004_6a25

    call IsEntityFrameCounterZero
    ld [hl], $28
    jp IncrementEntityWalkingAttr


jr_004_6a24:
    ret


jr_004_6a25:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_6a24

Jump_004_6a2b:
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra
    and $01
    jp label_3B0C


    inc b
    inc c
    nop
    ld [$05cd], sp
    inc c
    jr nz, jr_004_6a67

    call Call_004_6e55
    ld hl, $c380
    add hl, bc
    ld [hl], e
    ld d, b
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $6a39
    add hl, de
    cp [hl]
    jr nz, jr_004_6a67

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld [hl], $38
    ld hl, $c440
    add hl, bc
    ld [hl], b
    call IncrementEntityWalkingAttr

jr_004_6a67:
    jp Jump_004_6a2b


    call Call_004_6e1d
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    dec [hl]
    dec [hl]
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_6a7e

    ld hl, $c440
    add hl, bc
    inc [hl]

jr_004_6a7e:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6a8a

    and $80
    jr z, jr_004_6aa6

jr_004_6a8a:
    ld [hl], b
    call IncrementEntityWalkingAttr
    ld [hl], b
    call IsEntityFrameCounterZero
    ld [hl], $10
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $6a39
    add hl, de
    ld a, [hl]
    add $08
    ld hl, $c3d0
    add hl, bc
    ld [hl], a

jr_004_6aa6:
    ret


    ld [hl], b
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld [bc], a
    db $76
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, b
    ld [hl+], a
    ld a, [bc]
    ld b, $03
    ld bc, $0100
    inc bc
    ld b, $0a
    ld c, $11
    inc de
    inc d
    inc de
    ld de, $0a0e
    ld b, $03
    ld bc, $a711
    ld l, d
    call label_3BC0
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6b31

    xor a
    ldh [$d7], a
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    bit 1, a
    jr nz, jr_004_6b0b

    cp $01
    ld a, [hl]
    jr nz, jr_004_6af0

    ld hl, $ffd7
    inc [hl]
    cpl
    inc a

jr_004_6af0:
    ld hl, $ffee
    add [hl]
    ld [hl], a
    ld hl, $c440
    add hl, bc
    ldh a, [$d7]
    and a
    ld a, [hl]
    jr z, jr_004_6b02

    cpl
    and $0f

jr_004_6b02:
    ld hl, $ffec
    add [hl]
    add $f3
    ld [hl], a
    jr jr_004_6b51

jr_004_6b0b:
    cp $02
    ld a, [hl]
    jr nz, jr_004_6b16

    ld hl, $ffd7
    inc [hl]
    cpl
    inc a

jr_004_6b16:
    ld hl, $ffec
    add [hl]
    ld [hl], a
    ld hl, $c440
    add hl, bc
    ldh a, [$d7]
    and a
    ld a, [hl]
    jr nz, jr_004_6b28

    cpl
    and $0f

jr_004_6b28:
    ld hl, $ffee
    add [hl]
    add $f8
    ld [hl], a
    jr jr_004_6b51

jr_004_6b31:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $6ab3
    add hl, de
    ldh a, [$ec]
    add [hl]
    add $f0
    ldh [$ec], a
    ld hl, $6ab7
    add hl, de
    ldh a, [$ee]
    add [hl]
    add $f3
    ldh [$ee], a

jr_004_6b51:
    ld a, $02
    ldh [$f1], a
    ld de, $6aa7
    call label_3BC0
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and $80
    jr nz, jr_004_6b7c

    call label_C00
    jr nz, jr_004_6b7c

    ld hl, $c430
    add hl, bc
    ld [hl], $40
    call label_3B39
    call Call_004_6be1

jr_004_6b7c:
    ldh a, [$ee]
    add $04
    ld hl, wEntity0PosX
    add hl, bc
    sub [hl]
    sra a
    sra a
    ldh [$d7], a
    ldh [$d9], a
    ldh a, [$ec]
    ld hl, wEntitiesPosYTable
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
    call label_3D8A
    ld a, $03

jr_004_6bad:
    ldh [$db], a
    ldh a, [$ec]
    ld hl, $ffd8
    add [hl]
    ld [de], a
    inc de
    ldh a, [$ee]
    ld hl, $ffd7
    add [hl]
    ld [de], a
    inc de
    ld a, $24
    ld [de], a
    inc de
    ld a, $00
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
    jr nz, jr_004_6bad

    ld a, $03
    jp label_3DA0


Call_004_6be1:
    ldh a, [$ee]
    ldh [$db], a
    swap a
    and $0f
    ld e, a
    ldh a, [$ec]
    sub $10
    add $04
    ldh [$dc], a
    and $f0
    or e
    ld e, a
    ld d, $00
    ld hl, wTileMap
    ld a, h
    add hl, de
    ld h, a
    ld a, [hl]
    ldh [$af], a
    ld e, a
    ld a, [wActiveRoom]
    ld d, a
    call label_2A26
    cp $00
    ret z

    cp $01
    ret nz

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    call label_C00
    ld [hl], $08
    ld a, $07
    ldh [$f2], a

Jump_004_6c20:
    ldh a, [$ee]
    ldh [$d7], a
    ldh a, [$ec]
    ldh [$d8], a
    ld a, $05
    jp label_CC7


    ld [hl], b
    inc bc
    ld [hl], b
    inc hl
    ld a, b
    inc bc
    ld a, d
    inc bc
    ld [hl], h
    inc bc
    db $76
    inc bc
    ld a, h
    inc bc
    ld a, [hl]
    inc bc
    ld [hl], d
    inc bc
    ld [hl], d
    inc hl
    ld a, [hl]
    inc hl
    ld a, h
    inc hl
    db $76
    inc hl
    ld [hl], h
    inc hl
    ld a, d
    inc hl
    ld a, b
    inc hl
    db $10
    ld c, $0c
    ld b, $00
    ld a, [$f2f4]
    ldh a, [$f2]
    db $f4
    ld a, [$0600]
    inc c
    ld c, $10
    ld c, $0c
    ld b, $f0
    ldh a, [$a7]
    jp nz, Jump_004_6d0f

    ld de, $6c2d
    call label_3BC0
    call Call_004_7fa3
    call label_3B44
    call label_3B23
    call IsEntityFrameCounterZero
    jr z, jr_004_6cb4

    cp $10
    jr nz, jr_004_6cb3

    ld a, $2b
    call label_3B86
    jr c, jr_004_6cb3

    ld a, $08
    ldh [hFFF4], a
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ldh a, [$d9]
    ld hl, $c380
    add hl, de
    ld [hl], a
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a

jr_004_6cb3:
    ret


jr_004_6cb4:
    ld hl, $c3d0
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    and $07
    jr nz, jr_004_6d0e

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a
    srl a
    ld hl, $c3b0
    add hl, bc
    ld [hl], a
    ld a, $2a
    call label_3B86
    jr c, jr_004_6d0e

    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $01
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], c
    ld hl, $c340
    add hl, de
    ld [hl], $c0
    push bc
    ldh a, [$d9]
    ld c, a
    ld hl, $6c51
    add hl, bc
    ld a, [hl]
    ld hl, $c240
    add hl, de
    ld [hl], a
    ld hl, $6c4d
    add hl, bc
    ld a, [hl]
    ld hl, $c250
    add hl, de
    ld [hl], a
    pop bc

jr_004_6d0e:
    ret


Jump_004_6d0f:
    call label_3B2E
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_004_6d7a

    ldh a, [$ee]
    ld hl, hLinkPositionX
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_6d5c

    ldh a, [$ef]
    ld hl, hLinkPositionY
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_6d5c

    call Call_004_6d7a
    ld a, [$dbc7]
    and a
    jr nz, jr_004_6d5c

    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_6d5c

    ld [hl], $20
    ld hl, $c420
    add hl, de
    ld [hl], $10
    push bc
    ld c, e
    ld b, d
    ld a, $40
    call label_3BAA
    pop bc
    ret


jr_004_6d5c:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, bc
    add [hl]
    ld [hl], a
    cp $9c
    jp nc, Jump_004_6d7a

    ld hl, $c250
    add hl, bc
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, bc
    add [hl]
    ld [hl], a
    cp $78
    ret c

Call_004_6d7a:
Jump_004_6d7a:
    ld hl, wEntitiesTypeTable
    add hl, bc
    ld [hl], b
    ret


Call_004_6d80:
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6dc9

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
    call Call_004_6dca
    ld hl, $c430
    add hl, bc
    ld a, [hl]
    and $20
    jr nz, jr_004_6dbc

    call label_3B23

jr_004_6dbc:
    ld hl, $c250
    add hl, bc
    pop af
    ld [hl], a
    ld hl, $c240
    add hl, bc
    pop af
    ld [hl], a
    pop af

jr_004_6dc9:
    ret


Call_004_6dca:
Jump_004_6dca:
    call Call_004_6dd7

Call_004_6dcd:
    push bc
    ld a, c
    add $10
    ld c, a
    call Call_004_6dd7
    pop bc
    ret


Call_004_6dd7:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6e02

    push af
    swap a
    and $f0
    ld hl, $c260
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, wEntity0PosX

Jump_004_6def:
jr_004_6def:
    add hl, bc
    pop af
    ld e, $00
    bit 7, a
    jr z, jr_004_6df9

    ld e, $f0

jr_004_6df9:
    swap a
    and $0f
    or e
    rr d
    adc [hl]
    ld [hl], a

jr_004_6e02:
    ret


Call_004_6e03:
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6e02

    push af
    swap a
    and $f0
    ld hl, $c330
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, $c310
    jr jr_004_6def

Call_004_6e1d:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    push af
    swap a
    and $f0
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    add [hl]
    ld [hl], a
    rl d
    ld hl, wEntitiesUnknownTableD
    jp Jump_004_6def


Call_004_6e35:
    ld e, $00
    ldh a, [hLinkPositionX]
    ld hl, wEntity0PosX
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, jr_004_6e43

    inc e

jr_004_6e43:
    ld d, a
    ret


Call_004_6e45:
    ld e, $02
    ldh a, [hLinkPositionY]
    ld hl, wEntitiesPosYTable
    add hl, bc
    sub [hl]
    bit 7, a
    jr nz, jr_004_6e53

    inc e

jr_004_6e53:
    ld d, a
    ret


Call_004_6e55:
    call Call_004_6e35
    ld a, e
    ldh [$d7], a
    ld a, d
    bit 7, a
    jr z, jr_004_6e62

    cpl
    inc a

jr_004_6e62:
    push af
    call Call_004_6e45
    ld a, e
    ldh [$d8], a
    ld a, d
    bit 7, a
    jr z, jr_004_6e70

    cpl
    inc a

jr_004_6e70:
    pop de
    cp d
    jr nc, jr_004_6e78

    ldh a, [$d7]
    jr jr_004_6e7a

jr_004_6e78:
    ldh a, [$d8]

jr_004_6e7a:
    ld e, a
    ret


    ld a, [wIsMarinFollowingLink]
    push af
    ldh a, [hFFF8]
    and $10
    jr z, jr_004_6e8a

    xor a
    ld [wIsMarinFollowingLink], a

jr_004_6e8a:
    call Call_004_6e92
    pop af
    ld [wIsMarinFollowingLink], a
    ret


Call_004_6e92:
    ld hl, wEntitiesUnknownTableB
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_004_74d9

    ld a, c
    ld [$d210], a
    ld a, $02
    ld [$c50a], a
    call label_C00
    dec a
    jr nz, jr_004_6eae

    ld a, $19
    ldh [$f2], a

jr_004_6eae:
    ldh a, [$f1]
    inc a
    jr z, jr_004_6eca

    ldh a, [hFrameCounter]
    and $1f
    jr nz, jr_004_6ec1

    call Call_004_6e55
    ld hl, $c380
    add hl, bc
    ld [hl], e

jr_004_6ec1:
    call Call_004_7c98
    ld de, $76cb
    call label_3BC0

jr_004_6eca:
    call Call_004_73fe
    call label_3D8A
    call Call_004_7be3
    call Call_004_73b7
    ldh a, [$f0]
    cp $03
    jr c, jr_004_6ee9

    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_6ee9

    ld a, $02
    ldh [$a1], a
    ld [wC167], a

jr_004_6ee9:
    ld a, [wGameplayType]
    cp $0b
    ret nz

    ld a, [wTransitionSequenceCounter]
    cp $04
    ret nz

    ldh a, [$f0]
    rst $00
    jr c, @+$71

    add $6f
    jr nz, @+$72

    ld a, a
    ld [hl], b
    inc c
    ld [hl], c
    ld a, c
    ld [hl], c
    or b
    ld [hl], c
    rst $38
    ld [hl], c
    ld c, c
    ld [hl], d
    ld a, h
    ld [hl], d
    sub [hl]
    ld [hl], d
    rst $28
    ld [hl], d
    cpl
    ld [hl], e
    jr c, jr_004_6f6c

    ld a, b
    ld e, b
    ld b, b
    ld [hl], b
    ld l, $2e
    ld l, $3e
    ld c, [hl]
    ld c, [hl]
    nop
    nop
    nop
    inc b
    ld bc, $0502
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc b
    add c
    add c
    add c
    add d
    add c
    add c
    rst $38
    ld b, a
    ld sp, $c552
    jr z, jr_004_6f37

jr_004_6f37:
    nop
    ld e, $06
    ld d, $00

jr_004_6f3c:
    push de
    ld a, $4f
    ld e, $0e
    call label_3B98
    ld hl, wEntitiesUnknownTableB
    add hl, de
    ld [hl], $01
    ld hl, $6f09
    add hl, de
    ld a, [hl]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld hl, $6f0f
    add hl, de
    ld a, [hl]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $6f1b
    add hl, de
    ld a, [hl]
    ld hl, $c3b0
    add hl, de
    ld [hl], a
    ld hl, $6f21
    add hl, de

jr_004_6f6c:
    ld a, [hl]
    ld hl, $c340
    add hl, de
    ld [hl], a
    ld hl, $6f15
    add hl, de
    ld a, [hl]
    ld hl, $c380
    add hl, de
    ld [hl], a
    push bc
    ld c, e
    ld b, d
    call Call_004_76b3
    pop bc
    pop de
    dec e
    jr nz, jr_004_6f3c

    xor a
    ld [$d206], a
    ld a, $10
    ld [$d202], a
    ld [$d203], a
    ld a, $16
    ld [$d205], a
    ld a, $18
    ld [$d204], a
    ld a, $00
    ld [$d200], a
    ld a, $04
    ld [$d201], a
    call IncrementEntityWalkingAttr
    ld a, [wTradeSequenceItem]
    ld hl, $c390
    add hl, bc
    ld [hl], a
    ld hl, $dc78
    ld de, $6f30

jr_004_6fb8:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, l
    and $07
    jr nz, jr_004_6fb8

    ld a, $02
    ld [$ddd1], a
    ret


    ld a, [wC167]
    and a
    ret nz

    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_6fe2

    ldh a, [hLinkPositionX]
    cp $6c
    jr c, jr_004_6fe2

    ld hl, $daa0
    set 4, [hl]
    ld a, $6b
    ldh [hLinkPositionX], a
    jr jr_004_6fe6

jr_004_6fe2:
    call Call_004_7c06
    ret nc

jr_004_6fe6:
    xor a
    ld [wC120], a
    ldh [hFF9A], a
    ld e, $06
    ld hl, $c390
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6ff7

    dec e

jr_004_6ff7:
    ld hl, $c440
    add hl, bc
    ld a, [hl]
    cp e
    jr c, jr_004_7004

    ld a, $40
    jp label_2385


jr_004_7004:
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_700e

    ld a, $f7
    jr jr_004_701a

jr_004_700e:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    and a
    ld a, $3b
    jr z, jr_004_701a

    ld a, $3e

jr_004_701a:
    call label_2385
    jp IncrementEntityWalkingAttr


    ld a, $02
    ldh [$a1], a
    ld a, [wDialogState]
    and a
    jr nz, jr_004_705c

    ld a, [wDialogIndex]
    cp $f8
    jr z, jr_004_7038

    ld a, [wC177]
    cp $01
    jr nc, jr_004_704b

jr_004_7038:
    ld a, [wRupeeCountLow]
    sub $10
    ld a, [wRupeeCountHigh]
    sbc $00
    jr nc, jr_004_705d

    ld a, $34
    call label_2385
    jr jr_004_7056

jr_004_704b:
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_7056

    ld a, $f8
    jp label_2385


Jump_004_7056:
jr_004_7056:
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $01

jr_004_705c:
    ret


jr_004_705d:
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_7066

    ld [$db74], a

jr_004_7066:
    ld hl, wEntitiesUnknownTableD
    add hl, bc
    ld a, [hl]
    ld [hl], $01
    and a
    ld a, $3c
    jr z, jr_004_7074

    ld a, $3f

jr_004_7074:
    call label_2385
    ld a, $0a
    ld [wSubstractRupeeBufferHigh], a
    jp IncrementEntityWalkingAttr


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    ld [$d200], a
    ld a, $10
    ld [$d203], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_70a2

    ldh a, [hFrameCounter]
    and $08
    srl a
    srl a
    srl a
    add $03
    jr jr_004_70a6

jr_004_70a2:
    ldh a, [hFrameCounter]
    and $10

jr_004_70a6:
    ld [$d202], a
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_70f4

    call label_BFB
    jr z, jr_004_70b9

    dec a
    ret nz

    jp Jump_004_7104


jr_004_70b9:
    call Call_004_7fa3
    push bc
    ld a, [$c50f]
    ld c, a
    ldh a, [hFrameCounter]
    and $10
    ld a, $04
    jr z, jr_004_70ca

    inc a

jr_004_70ca:
    call label_3B0C
    ld hl, $c240
    add hl, bc
    ld [hl], $f8
    call Call_004_6dd7
    ld hl, wEntity0PosX
    add hl, bc
    pop bc
    ld a, [hl]
    cp $28
    ret nz

    call label_BFB
    ld [hl], $18
    ld a, [$c50f]
    ld e, a
    ld d, b
    ld hl, $c3b0
    add hl, de
    ld [hl], $02
    ld e, $01
    jp Jump_004_723b


jr_004_70f4:
    ldh a, [hPressedButtonsMask]
    and $20
    jr z, jr_004_710b

    ldh a, [hLinkPositionX]
    cp $20
    jr c, jr_004_710b

    cp $30
    jr nc, jr_004_710b

Jump_004_7104:
    call IncrementEntityWalkingAttr

Call_004_7107:
Jump_004_7107:
    ld a, $20
    ldh [hFFF4], a

jr_004_710b:
    ret


    call Call_004_7165
    ld a, $10
    ld [$d203], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_7127

    ldh a, [hFrameCounter]
    and $08
    srl a
    srl a
    srl a
    add $03
    jr jr_004_712b

jr_004_7127:
    ldh a, [hFrameCounter]
    and $10

jr_004_712b:
    ld [$d202], a
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_713b

    ld e, $02
    call Call_004_723b
    jr jr_004_7141

jr_004_713b:
    ldh a, [hPressedButtonsMask]
    and $20
    jr z, jr_004_7152

jr_004_7141:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_7164

    ld a, [$d204]
    inc a
    ld [$d204], a
    cp $88
    jr c, jr_004_7164

jr_004_7152:
    call IncrementEntityWalkingAttr
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_7160

    call label_BFB
    ld [hl], $10

Call_004_7160:
Jump_004_7160:
jr_004_7160:
    ld a, $21
    ldh [hFFF4], a

jr_004_7164:
    ret


Call_004_7165:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    ld [$d200], a
    ld a, $01
    ldh [$a1], a
    ld a, $02
    ldh [hFF9E], a
    ret


    call Call_004_7165
    ld a, $10
    ld [$d202], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_7194

    ldh a, [hFrameCounter]
    and $08
    srl a
    srl a
    srl a
    add $03
    jr jr_004_7198

jr_004_7194:
    ldh a, [hFrameCounter]
    and $10

jr_004_7198:
    ld [$d203], a
    call label_BFB
    ret nz

    ld a, [wIsMarinFollowingLink]
    and a
    jr nz, jr_004_71aa

    ldh a, [hPressedButtonsMask]
    and $10
    ret z

jr_004_71aa:
    call Call_004_7107
    jp IncrementEntityWalkingAttr


    call Call_004_7165
    ld a, $10
    ld [$d202], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_71cb

    ldh a, [hFrameCounter]
    and $08
    srl a
    srl a
    srl a
    add $03
    jr jr_004_71cf

jr_004_71cb:
    ldh a, [hFrameCounter]
    and $10

jr_004_71cf:
    ld [$d203], a
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_71da

    jr jr_004_71e0

jr_004_71da:
    ldh a, [hPressedButtonsMask]
    and $10
    jr z, jr_004_71ef

jr_004_71e0:
    ldh a, [hFrameCounter]
    and $03
    ret nz

    ld a, [$d205]
    inc a
    ld [$d205], a
    cp $55
    ret c

jr_004_71ef:
    call IncrementEntityWalkingAttr
    call Call_004_7160
    call IsEntityFrameCounterZero
    ld [hl], $60
    ld e, $00
    jp Jump_004_723b


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld [$d200], a
    ld a, $10
    ld [$d202], a
    ld [$d203], a
    call IsEntityFrameCounterZero
    cp $30
    jr nc, jr_004_721d

    ld hl, $d201
    ld [hl], $02

jr_004_721d:
    and a
    jr nz, jr_004_7248

    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_7248

    ld a, [$d206]
    inc a
    ld [$d206], a
    cp $0f
    jr nz, jr_004_7248

    call IsEntityFrameCounterZero
    ld [hl], $ff
    call IncrementEntityWalkingAttr
    ld e, $00

Call_004_723b:
Jump_004_723b:
    ld a, [wIsMarinFollowingLink]
    and a
    ret z

    ld a, e
    ldh [hFF9E], a
    push bc
    call $0bf0
    pop bc

jr_004_7248:
    ret


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld [$d200], a
    call IsEntityFrameCounterZero
    cp $c8
    jr nz, jr_004_725f

    ld hl, $d206
    ld [hl], $10

jr_004_725f:
    cp $a0
    jr nz, jr_004_7268

    ld hl, $d201
    ld [hl], $03

jr_004_7268:
    cp $50
    jr nz, jr_004_7274

    ld hl, $d201
    ld [hl], $04
    jp Jump_004_7332


jr_004_7274:
    and a
    ret nz

    call IncrementEntityWalkingAttr
    jp Jump_004_7107


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld [$d200], a
    ldh a, [hFrameCounter]
    and $03
    ret nz

    ld a, [$d206]
    dec a
    ld [$d206], a
    ret nz

    jp IncrementEntityWalkingAttr


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld [$d200], a
    ldh a, [hLinkPositionX]
    push af
    ldh a, [hLinkPositionY]
    push af
    ld a, $16
    ldh [hLinkPositionY], a
    ld a, $18
    ldh [hLinkPositionX], a
    ld a, [$d204]
    ld [wEntity1PosX], a
    ld a, [$d205]
    ld [$c211], a
    push bc
    ld c, $01
    ld a, $04
    call label_3BAA
    call Call_004_6dca
    ld a, [wEntity1PosX]
    ld [$d204], a
    ld a, [$c211]
    ld [$d205], a
    pop bc
    pop af
    ldh [hLinkPositionY], a
    pop af
    ldh [hLinkPositionX], a
    ld a, [$d204]
    cp $18
    ret nz

    ld a, [$d205]
    cp $16
    ret nz

    call IsEntityFrameCounterZero
    ld [hl], $c0
    call IncrementEntityWalkingAttr
    jp Jump_004_7160


    ldh a, [hFrameCounter]
    rra
    rra
    rra
    and $01
    ld [$d200], a
    call IsEntityFrameCounterZero
    cp $60
    jr nz, jr_004_7325

    ld hl, $d201
    ld [hl], $02
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_7324

    ld [hl], $00
    dec a
    ld e, a
    ld d, b
    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $02
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_7324

    ld hl, $c3b0
    add hl, de
    ld [hl], $07

jr_004_7324:
    ret


jr_004_7325:
    and a
    ret nz

    ld hl, $d201
    ld [hl], $04
    jp IncrementEntityWalkingAttr


    jp Jump_004_7056


Jump_004_7332:
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_735f

    ld a, $ff
    call label_3B0C
    ld a, $4f
    call label_3B86
    ld a, [$d204]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld a, [$d205]
    add $18
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, $c3b0
    add hl, de
    ld [hl], $06
    ld hl, wEntitiesUnknownTableB
    add hl, de
    inc [hl]

jr_004_735f:
    ld e, $0f
    ld d, b

jr_004_7362:
    ld hl, wEntitiesTypeTable
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_73b0

    ld hl, wEntitiesWalkingTable
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_73b0

    ld hl, $c3a0
    add hl, de
    ld a, [hl]
    cp $4f
    jr nz, jr_004_73b0

    ld hl, wEntity0PosX
    add hl, de
    ld a, [$d204]
    sub [hl]
    add $04
    cp $08
    jr nc, jr_004_73b0

    ld hl, wEntitiesPosYTable
    add hl, de
    ld a, [$d205]
    add $18
    sub [hl]
    add $06
    cp $0c
    jr nc, jr_004_73b0

    ld hl, wEntitiesWalkingTable
    add hl, de
    ld [hl], $01
    ld a, e
    inc a
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld [hl], a
    call label_C00
    ld [hl], $10
    ld hl, $c440
    inc [hl]
    ret


jr_004_73b0:
    dec e
    ld a, e
    cp $ff
    jr nz, jr_004_7362

    ret


Call_004_73b7:
    ld hl, wEntitiesUnknownTableC
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_73e1

    dec a
    ld e, a
    ld d, b
    ld a, [$d204]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ld a, [$d205]
    add $18
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $d206
    sub [hl]
    add $fe
    ld hl, $c310
    add hl, de
    ld [hl], a

jr_004_73e1:
    ret


    db $76
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc hl
    db $76
    inc hl
    ld [hl], b
    inc bc
    ld [hl], b
    inc hl
    ld [hl], d
    inc bc
    ld [hl], b
    inc hl
    ld [hl], d
    inc bc
    ld [hl], d
    inc hl
    ld a, [hl]
    nop
    ld a, [hl]
    jr nz, jr_004_7421

    nop
    ld h, $00

Call_004_73fe:
    ld a, [$d204]
    ldh [$ee], a
    ld a, [$d205]
    ld hl, $d206
    add [hl]
    add $08
    ldh [$ec], a
    ld a, [$d201]
    ldh [$f1], a
    ld de, $73e2
    call label_3BC0
    ld a, [$d204]
    ldh [$ee], a
    ld a, [$d205]

jr_004_7421:
    ldh [$ec], a
    ld a, [$d200]
    ldh [$f1], a
    ld de, $73e2
    call label_3BC0
    ld a, [$d206]
    cp $08
    jr c, jr_004_744b

    ld a, [$d204]
    ldh [$ee], a
    ld a, [$d205]
    add $10
    ldh [$ec], a
    ld a, $05
    ldh [$f1], a
    ld de, $73e2
    call label_3BC0

jr_004_744b:
    ldh a, [hFrameCounter]
    and $01
    jr nz, jr_004_7477

    ld a, [$d204]
    ldh [$ee], a
    ld a, [$d205]
    add $20
    ldh [$ec], a
    xor a
    ldh [$f1], a
    ld de, $73fa
    ld a, [$c3c0]
    push af
    call label_3BC0
    pop af
    ld e, a
    ld d, b
    ld hl, $c031
    add hl, de
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec [hl]

jr_004_7477:
    ld hl, $c020
    ld a, $50
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, $7a
    ld [hl+], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_748c

    ld a, $03
    jr jr_004_748f

jr_004_748c:
    ld a, [$d202]

jr_004_748f:
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld a, [$d202]
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $7c
    ld [hl+], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_74af

    ld a, $03
    jr jr_004_74b2

jr_004_74af:
    ld a, [$d203]

jr_004_74b2:
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld a, [$d203]
    ld [hl+], a
    ret


    rst $38
    rst $38
    sbc [hl]
    db $10
    and [hl]
    inc d
    adc [hl]
    ld d, $86
    dec d
    xor b
    inc d
    sbc d
    rla
    sbc h
    rla
    ld l, h
    inc bc
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc hl
    ld l, h
    inc hl

Jump_004_74d9:
    ldh a, [$f1]
    cp $06
    jr c, jr_004_74f1

    ld de, $74b9
    cp $07
    jr z, jr_004_74ef

    ldh a, [hFrameCounter]
    and $10
    jr nz, jr_004_74ef

    ld de, $74bd

jr_004_74ef:
    jr jr_004_750c

jr_004_74f1:
    cp $03
    jr nz, jr_004_74fe

    ld a, [$db4b]
    and a
    jp nz, Jump_004_6d7a

    jr jr_004_7511

jr_004_74fe:
    cp $00
    jr nz, jr_004_7511

    ld a, [wTradeSequenceItem]
    and a
    jp nz, Jump_004_6d7a

    ld de, $74cd

jr_004_750c:
    call label_3BC0
    jr jr_004_7517

jr_004_7511:
    ld de, $74c1
    call label_3C77

jr_004_7517:
    call Call_004_7fa3
    ldh a, [$f0]
    rst $00
    add hl, hl
    ld [hl], l
    ld e, h
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    cp h
    ld [hl], l
    add c
    db $76
    sbc b
    db $76
    call Call_004_6dca
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    rst $00
    inc a
    ld [hl], l
    ld b, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld d, h
    ld [hl], l
    ld b, e
    ld [hl], l
    ldh a, [$ee]
    cp $3a
    jp c, Jump_004_76aa

    ret


    ldh a, [$ec]
    cp $4e
    jp nc, Jump_004_76aa

    ret


    ldh a, [$ee]
    cp $78
    jp nc, Jump_004_76aa

    ret


    ldh a, [$ec]
    cp $2e
    jp c, Jump_004_76aa

    ret


    call Call_004_6e55
    ld a, e
    xor $01
    ld e, a
    jp Jump_004_723b


    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_7570

    ld a, $02
    ldh [$a1], a

jr_004_7570:
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_004_7598

    xor a
    ld [hl], a
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    sra a
    cpl
    ld [hl], a
    cp $07
    jr nc, jr_004_7594

    ld [hl], b
    jr jr_004_7598

jr_004_7594:
    ld a, $09
    ldh [$f2], a

jr_004_7598:
    ldh a, [hFrameCounter]
    and $03
    jr nz, jr_004_75a9

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld a, [hl]
    cp $56
    jr z, jr_004_75aa

    inc a
    ld [hl], a

jr_004_75a9:
    ret


jr_004_75aa:
    add $0a
    ld [hl], a
    ld hl, $c310
    add hl, bc
    ld [hl], $0a
    jp IncrementEntityWalkingAttr


    ld b, h
    ld b, e
    ld b, d
    ld b, c
    dec a
    ld a, [hl+]
    ld a, [wIsMarinFollowingLink]
    and a
    jr z, jr_004_75c6

    ld a, $02
    ldh [$a1], a

jr_004_75c6:
    call Call_004_6e03
    ld hl, $c320
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $c310
    add hl, bc
    ld a, [hl]
    and $80
    jp z, Jump_004_7680

    xor a
    ld [hl], a
    ld hl, $c320
    add hl, bc
    ld a, [hl]
    sra a
    cpl
    ld [hl], a
    cp $07
    jr nc, jr_004_75ea

    xor a
    ld [hl], a

jr_004_75ea:
    ldh a, [$f1]
    cp $06
    jr c, jr_004_75f8

    ld a, $f9
    call label_2385
    jp IncrementEntityWalkingAttr


jr_004_75f8:
    ldh a, [$ee]
    ld hl, hLinkPositionX
    sub [hl]
    add $07
    cp $0e
    ret nc

    ldh a, [$ec]
    ld hl, hLinkPositionY
    sub [hl]
    add $05
    cp $0a
    ret nc

    ld a, [$d210]
    ld e, a
    ld d, b
    ld hl, $c480
    add hl, de
    ld a, [hl]
    and a
    ret nz

    ld [hl], $18
    ldh a, [$f1]
    cp $00
    jr nz, jr_004_762d

    ld a, $01
    ld [wTradeSequenceItem], a
    call label_C0C
    jp Jump_004_6d7a


jr_004_762d:
    call Call_004_6d7a
    ld hl, hSFX
    ld [hl], $01
    ldh a, [$f1]
    ld e, a
    ld d, b
    ld hl, $75b6
    add hl, de
    ld a, [hl]
    call label_2385
    ldh a, [$f1]
    dec a
    jr nz, jr_004_7647

    ret


jr_004_7647:
    dec a
    jr nz, jr_004_7653

    ld a, [wAddRupeeBufferHigh]
    add $1e
    ld [wAddRupeeBufferHigh], a
    ret


jr_004_7653:
    dec a
    jr nz, jr_004_7673

    ld hl, $db76
    ld a, [$db4c]
    cp [hl]
    jr nc, jr_004_7666

    add $10
    daa
    cp [hl]
    jr c, jr_004_7666

    ld a, [hl]

jr_004_7666:
    ld [$db4c], a
    ld d, $0c
    call label_3E6B
    ld a, $0b
    ldh [$a5], a
    ret


jr_004_7673:
    dec a
    jr nz, jr_004_767b

    ld d, $04
    jp label_3E6B


jr_004_767b:
    ld a, $ff
    ld [wSubstractRupeeBufferLow], a

Jump_004_7680:
    ret


    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    ld a, [$c1ad]
    and a
    ret nz

    ld [$db74], a
    ld a, $18
    ld [$c1bc], a
    jp IncrementEntityWalkingAttr


    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    ret


    db $fc
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    db $fc
    nop

Jump_004_76aa:
    ld hl, $c380
    add hl, bc
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

Call_004_76b3:
    ld e, a
    ld d, b
    ld hl, $76a0
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $76a5
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    ret


    ret


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
    ld a, [$c50a]
    and a
    jr nz, jr_004_76f9

    ld a, $01
    ld [$c50a], a
    call Call_004_788e

jr_004_76f9:
    ld a, [wDidFindSword]
    and a
    jr z, jr_004_7705

    ldh a, [hFrameCounter]
    and $5f
    jr nz, jr_004_770e

jr_004_7705:
    call Call_004_6e55
    ld a, e
    ld hl, $c380
    add hl, bc
    ld [hl], a

jr_004_770e:
    call Call_004_7c98
    ld de, $76cb
    call label_3BC0
    call Call_004_7b70
    ldh a, [$f0]
    cp $04
    jr nc, jr_004_7723

    call Call_004_7be3

jr_004_7723:
    ldh a, [$f0]
    rst $00
    ld hl, sp+$77
    xor a
    ld a, b
    ld e, l
    ld a, c
    db $dd
    ld a, d
    db $ed
    ld a, d
    ld b, b
    ld a, e
    sbc b
    ld h, e
    ld [bc], a
    or d
    or b
    or b
    sbc b
    and h
    ld bc, $7f7f
    sbc b
    ld h, a
    ld [bc], a
    or c
    or b
    ld a, a
    sbc b
    xor b
    ld bc, $b30a
    sbc b
    ld l, d
    ld [bc], a
    ld a, a
    or d
    or b
    sbc b
    xor h
    ld bc, $b1ba
    sbc b
    ld l, [hl]
    ld [bc], a
    or c
    or b
    ld a, a
    sbc b
    or b
    ld bc, $090a
    sbc b
    ld h, e
    ld [bc], a
    cp c
    cp b
    or b
    sbc b
    and h
    ld bc, $7f7f
    sbc b
    ld h, e
    ld [bc], a
    or c
    or b
    ld a, a
    sbc b
    and h
    ld bc, $090a
    nop
    sbc b
    ld h, d
    ld b, e
    ld a, a
    sbc b
    add e
    ld b, d
    ld a, a
    sbc b
    and e
    ld b, d
    ld a, a
    nop
    nop
    nop
    nop
    sbc b
    ld h, [hl]
    ld b, e
    ld a, a
    sbc b
    add a
    ld b, d
    ld a, a
    sbc b
    and a
    ld b, d
    ld a, a
    nop
    nop
    nop
    nop
    sbc b
    ld l, d
    ld b, e
    ld a, a
    sbc b
    adc e
    ld b, d
    ld a, a
    sbc b
    xor e
    ld b, d
    ld a, a
    nop
    nop
    nop
    nop
    sbc b
    ld l, [hl]
    ld b, e
    ld a, a
    sbc b
    adc a
    ld b, d
    ld a, a
    sbc b
    xor a
    ld b, d
    ld a, a
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    ld bc, $0302
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    ld b, $02
    inc bc
    inc b
    rlca
    ld [$0a09], sp
    jr nc, jr_004_77fc

    ld [hl-], a
    inc sp
    inc l
    dec l
    add hl, sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nz, jr_004_77f1

    add b
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ret z

    ld a, [bc]

jr_004_77f1:
    inc d
    ld a, [bc]
    call nc, $000a
    nop
    nop
    ld a, [$db46]
    and a

jr_004_77fc:
    jr z, jr_004_7839

    ld hl, wEntitiesPosYTable
    add hl, bc
    ld [hl], $40
    ld hl, wEntity0PosX
    add hl, bc
    ld [hl], $50
    ld hl, $c380
    add hl, bc
    ld [hl], $03
    ld a, $02
    ldh [$a1], a
    ld [wC167], a
    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_004_7838

    ldh a, [hLinkPositionY]
    sub $01
    ldh [hLinkPositionY], a
    cp $74
    jr nz, jr_004_7838

    ld a, $38
    call label_2385
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $04
    ld a, $19
    ld [wWorldMusicTrack], a

jr_004_7838:
    ret


jr_004_7839:
    ld e, $00
    ld d, b
    ld a, [wHasInstrument2]
    and $02
    jr z, jr_004_7845

    ld e, $04

jr_004_7845:
    push bc
    ld hl, wAButtonSlot
    ld c, $0b

jr_004_784b:
    ld a, [$db7d]
    cp $0b
    jr z, jr_004_7857

    ld a, [hl+]
    cp $0b
    jr nz, jr_004_7859

jr_004_7857:
    ld e, $08

jr_004_7859:
    dec c
    ld a, c
    cp $ff
    jr nz, jr_004_784b

    ld hl, wAButtonSlot
    ld c, $0b

jr_004_7864:
    ld a, [$db7d]
    cp $05
    jr z, jr_004_7870

    ld a, [hl+]
    cp $05
    jr nz, jr_004_7872

jr_004_7870:
    ld e, $0c

jr_004_7872:
    dec c
    ld a, c
    cp $ff
    jr nz, jr_004_7864

    ld hl, $77b5
    add hl, de
    ld de, $c505
    ld c, $04

jr_004_7881:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_004_7881

    pop bc
    call IncrementEntityWalkingAttr
    jp Jump_004_788e


Call_004_788e:
Jump_004_788e:
    ld de, wRequestDestinationHigh
    push bc
    ld hl, $c505
    ld c, $04

jr_004_7897:
    ld a, [hl+]
    and a
    jr z, jr_004_78a0

    push hl
    call Call_004_798b
    pop hl

jr_004_78a0:
    dec c
    jr nz, jr_004_7897

    pop bc
    ret


    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, [$c509]
    and a
    jr z, jr_004_78d4

    ld hl, $c380
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_004_78d4

    ld a, [wLinkMotionState]
    cp $00
    jr nz, jr_004_78d4

    ldh a, [hLinkPositionY]
    cp $7b
    jr c, jr_004_78d4

    sub $02
    ldh [hLinkPositionY], a
    ld a, $2f
    jp label_2385


jr_004_78d4:
    ldh a, [hLinkPositionY]
    cp $48
    jr nc, jr_004_7940

    ldh a, [hFF9E]
    cp $02
    jr nz, jr_004_7940

    ldh a, [hFFCC]
    and $30
    jr z, jr_004_7940

    ld a, [$c509]
    and a
    jr z, jr_004_7907

    ldh a, [hLinkPositionX]
    add $00
    swap a
    and $0f
    ld e, a
    ld d, b
    ld hl, $78a5
    add hl, de
    ld a, [$c50b]
    cp [hl]
    jr nz, jr_004_7940

    ld a, $13
    ldh [$f2], a
    jp Jump_004_796d


jr_004_7907:
    ldh a, [hLinkPositionX]
    add $00
    swap a
    and $0f
    ld e, a
    ld d, b
    ld hl, $78a5
    add hl, de
    ld a, [hl]
    ld [$c50b], a
    ld e, a
    ld d, b
    ld hl, $c505
    add hl, de
    ld a, [hl]
    ld [$c509], a
    ld [hl], b
    and a
    jr z, jr_004_792b

    ld a, $13
    ldh [$f2], a

jr_004_792b:
    push bc
    ld a, e
    swap a
    ld e, a
    ld hl, $7775
    add hl, de
    ld de, wRequestDestinationHigh
    ld c, $0d

jr_004_7939:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_004_7939

    pop bc

jr_004_7940:
    call Call_004_7c06
    ret nc

    ld a, [$c509]
    and a
    jr z, jr_004_7958

    dec a
    ld e, a
    ld d, b
    ld hl, $77c9
    add hl, de
    ld a, [hl]
    call label_2385
    jp IncrementEntityWalkingAttr


jr_004_7958:
    ld a, $2e
    jp label_2385


    ld a, [wDialogState]
    and a
    ret nz

    ld a, [wC177]
    cp $00
    jr z, jr_004_79ab

    cp $02
    jr z, jr_004_7984

Jump_004_796d:
    ld a, [$c50b]
    ld e, a
    ld d, b
    ld hl, $c505
    add hl, de
    ld a, [$c509]
    ld [hl], a
    ld de, wRequestDestinationHigh
    call Call_004_798b
    xor a
    ld [$c509], a

jr_004_7984:
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $01
    ret


Call_004_798b:
    push de
    dec a
    ld d, a
    sla a
    ld e, a
    sla a
    sla a
    add e
    add d
    ld e, a
    ld d, b
    ld hl, $7732
    add hl, de
    pop de
    push bc
    ld c, $0b

jr_004_79a1:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_004_79a1

    xor a
    ld [de], a
    pop bc
    ret


jr_004_79ab:
    ld a, [$c509]
    ld e, a
    cp $02
    jr nz, jr_004_79bb

    ld a, [$c5a9]
    and a
    jr nz, jr_004_7a05

    jr jr_004_7a0c

jr_004_79bb:
    cp $04
    jr nz, jr_004_79d9

    ld hl, wAButtonSlot
    ld d, $0c

jr_004_79c4:
    ld a, [hl+]
    cp $02
    jr z, jr_004_79ce

    dec d
    jr nz, jr_004_79c4

    jr jr_004_7a0c

jr_004_79ce:
    ld a, [wBombCount]
    ld hl, $db77
    cp [hl]
    jr nc, jr_004_7a05

    jr jr_004_7a0c

jr_004_79d9:
    cp $06
    jr nz, jr_004_79f7

    ld hl, wAButtonSlot
    ld d, $0c

jr_004_79e2:
    ld a, [hl+]
    cp $05
    jr z, jr_004_79ec

    dec d
    jr nz, jr_004_79e2

    jr jr_004_7a0c

jr_004_79ec:
    ld a, [wArrowCount]
    ld hl, $db78
    cp [hl]
    jr nc, jr_004_7a05

    jr jr_004_7a0c

jr_004_79f7:
    cp $03
    jr nz, jr_004_7a0c

    ld hl, wAButtonSlot
    ld d, $0c

jr_004_7a00:
    ld a, [hl+]
    cp $04
    jr nz, jr_004_7a09

jr_004_7a05:
    ld a, $29
    jr jr_004_7a24

jr_004_7a09:
    dec d
    jr nz, jr_004_7a00

jr_004_7a0c:
    ld d, b
    ld hl, $77d3
    add hl, de
    ld a, [hl]
    ld hl, $77dc
    add hl, de
    ld e, [hl]
    ld d, a
    ld a, [wRupeeCountLow]
    sub e
    ld a, [wRupeeCountHigh]
    sbc d
    jr nc, jr_004_7a2e

    ld a, $34

jr_004_7a24:
    call label_2385
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $03
    ret


jr_004_7a2e:
    ld hl, $c509
    ld a, [hl]
    push af
    ld [hl], $00
    ld e, a
    ld d, b
    ld hl, $77ee
    add hl, de
    ld a, [wSubstractRupeeBufferHigh]
    add [hl]
    ld [wSubstractRupeeBufferHigh], a
    rl a
    ld hl, $77e5
    add hl, de
    rr a
    ld a, [wAddRupeeBufferLow]
    adc [hl]
    ld [wAddRupeeBufferLow], a
    ld hl, wEntitiesWalkingTable
    add hl, bc
    ld [hl], $01
    pop af
    push af
    ld a, $35
    call label_2385
    pop af
    dec a
    rst $00
    xor c
    ld a, d
    jp nc, $d87a

    ld a, d
    xor [hl]
    ld a, d
    ld [hl], e
    ld a, d
    ld a, [hl]
    ld a, d
    adc h
    ld a, d
    sub c
    ld a, d
    sbc a
    ld a, d
    ld d, $05
    call label_3E6B
    ld a, $20
    ld [wArrowCount], a
    ret


    ld a, [wArrowCount]
    add $0a
    daa
    jr nc, jr_004_7a88

    ld a, $99

jr_004_7a88:
    ld [wArrowCount], a
    ret


    ld d, $09
    jp label_3E6B


    ld a, [$db47]
    add $0a
    daa
    jr nc, jr_004_7a9b

    ld a, $99

jr_004_7a9b:
    ld [$db47], a
    ret


    ld a, [wHasMedicine]
    add $01
    daa
    ld [wHasMedicine], a
    ret


    ld d, $0b
    jp label_3E6B


    ld a, [wBombCount]
    add $0a
    daa
    jr nc, jr_004_7ab8

    ld a, $99

jr_004_7ab8:
    ld [wBombCount], a
    ld d, $02
    jp label_3E6B


    ld a, [wArrowCount]
    add $0a
    daa
    jr nc, jr_004_7aca

    ld a, $99

jr_004_7aca:
    ld [wArrowCount], a
    ld d, $0c
    jp label_3E6B


    ld a, $18
    ld [wSubstractRupeeBufferLow], a
    ret


    ld d, $04
    jp label_3E6B


    ld a, [wDialogState]
    and a
    ret nz

    jp Jump_004_796d


    inc sp
    ld h, d
    ld a, [de]
    ld bc, $0fff
    rst $38
    ld a, a
    ld a, [wDialogState]
    and a
    jr nz, jr_004_7b3f

    ld a, $ca
    call label_3B86
    ld a, $26
    ldh [hFFF4], a
    ldh a, [$d7]
    ld hl, wEntity0PosX
    add hl, de
    ld [hl], a
    ldh a, [$d8]
    ld hl, wEntitiesPosYTable
    add hl, de
    ld [hl], a
    ld hl, wEntitiesUnknownTableD
    add hl, de
    ld [hl], $01
    ld hl, wEntitiesFrameCounterTable
    add hl, de
    ld [hl], $c0
    call IsEntityFrameCounterZero
    ld [hl], $c0
    call IncrementEntityWalkingAttr
    xor a
    ld [wHasMedicine], a
    ld a, $ff
    ld [wDB94], a
    ldh a, [hIsGBC]
    and a
    jr z, jr_004_7b3f

    ld hl, $dc88
    ld de, $7ae5

jr_004_7b32:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, l
    and $07
    jr nz, jr_004_7b32

    ld a, $02
    ld [$ddd1], a

jr_004_7b3f:
    ret


    ld a, $02
    ldh [$a1], a
    call IsEntityFrameCounterZero
    ret nz

    ld a, [$db5a]
    and a
    ret nz

    ld [$db46], a
    ld [$c50a], a
    jp Jump_004_6d7a


    dec e
    dec a
    ld e, l
    ld a, l
    sub [hl]
    rla
    xor b
    inc d
    add [hl]
    rla
    add b
    rla
    adc b
    ld d, $ff
    rst $38
    sub b
    db $10
    xor [hl]
    db $10
    and b
    db $10
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld h, c

Call_004_7b70:
    ld a, $04

jr_004_7b72:
    ldh [$e6], a
    ld e, a
    ld d, b
    ld hl, $c504
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_7bac

    dec a
    ldh [$f1], a
    ld hl, $7b55
    ldh a, [$e6]
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [$ee], a
    ld a, $32
    ldh [$ec], a
    ldh a, [$f1]
    cp $01
    jr nz, jr_004_7b9a

    ld hl, $ffec
    ld [hl], $2f

jr_004_7b9a:
    cp $05
    jr nz, jr_004_7ba6

    ld de, $7b58
    call label_3BC0
    jr jr_004_7bac

jr_004_7ba6:
    ld de, $7b5a
    call label_3C77

jr_004_7bac:
    ldh a, [$e6]
    dec a
    jr nz, jr_004_7b72

    call Call_004_7bb7
    jp label_3D8A


Call_004_7bb7:
    ld a, [$c509]
    and a
    ret z

    dec a
    ldh [$f1], a
    ld a, $01
    ld [wC15C], a
    call label_CAF
    ldh a, [hLinkPositionX]
    ldh [$ee], a
    ldh a, [hLinkPositionY]
    sub $0e
    ldh [$ec], a
    ldh a, [$f1]
    cp $05
    jr nz, jr_004_7bdd

    ld de, $7b58
    jp label_3BC0


jr_004_7bdd:
    ld de, $7b5a
    jp label_3C77


Call_004_7be3:
    call label_3B5A
    jr nc, jr_004_7c05

    call label_CBE
    call label_CB6
    ld a, [$c1a6]
    and a
    jr z, jr_004_7c05

    ld e, a
    ld d, b
    ld hl, $c39f
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_004_7c05

    ld hl, $c28f
    add hl, de
    ld [hl], $00

jr_004_7c05:
    ret


Call_004_7c06:
    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $20
    cp $30
    jr nc, jr_004_7c49

    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_7c49

    call Call_004_6e55
    ldh a, [hFF9E]
    xor $01
    cp e
    jr nz, jr_004_7c49

    ld hl, $c1ad
    ld [hl], $01
    ld a, [wDialogState]
    ld hl, wInventoryAppearing
    or [hl]
    ld hl, $c134
    or [hl]
    jr nz, jr_004_7c49

    ld a, [wWindowY]
    cp $80
    jr nz, jr_004_7c49

    ldh a, [hFFCC]
    and $10
    jr z, jr_004_7c49

    scf
    ret


jr_004_7c49:
    and a
    ret


Call_004_7c4b:
    ld a, [wDialogState]
    ld hl, wInventoryAppearing
    or [hl]
    ld hl, $c146
    or [hl]
    ld hl, $c134
    or [hl]
    jr nz, jr_004_7c92

    ld a, [wWindowY]
    cp $80
    jr nz, jr_004_7c92

    ldh a, [hLinkPositionX]
    ld hl, $ffee
    sub [hl]
    add $10
    cp $20
    jr nc, jr_004_7c92

    ldh a, [hLinkPositionY]
    ld hl, $ffef
    sub [hl]
    add $14
    cp $28
    jr nc, jr_004_7c92

    call Call_004_6e55
    ldh a, [hFF9E]
    xor $01
    cp e
    jr nz, jr_004_7c92

    ld hl, $c1ad
    ld [hl], $01
    ldh a, [hFFCC]
    and $10
    jr z, jr_004_7c92

    scf
    ret


jr_004_7c92:
    and a
    ret


    ld b, $04
    ld [bc], a
    nop

Call_004_7c98:
    ld hl, $c380
    add hl, bc
    ld e, [hl]
    ld d, b
    ld hl, $7c94
    add hl, de
    push hl
    ld hl, $c3d0
    add hl, bc
    inc [hl]
    ld a, [hl]
    rra
    rra
    rra
    pop hl
    and $01
    or [hl]
    jp label_3B0C


    ld hl, $c240
    add hl, bc
    ld a, [hl]
    push af
    ld [hl], $01
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    push af
    ld [hl], $01
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $c240
    add hl, bc
    ld [hl], $ff
    ld hl, $c250
    add hl, bc
    ld [hl], $ff
    call label_3B23
    ld hl, wEntitiesUnknownTableA
    add hl, bc
    pop af
    or [hl]
    ld [hl], a
    pop af
    ld hl, $c250
    add hl, bc
    ld [hl], a
    pop af
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ret


    ld a, d
    jr nz, @+$7a

    jr nz, jr_004_7d6c

    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    jr nz, jr_004_7d6c

    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, h
    nop
    ld a, h
    jr nz, @+$6c

    jr nz, @+$6a

    jr nz, jr_004_7d74

    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    jr nz, jr_004_7d74

    nop
    ld h, d
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld l, h
    jr nz, jr_004_7d31

    rst $28
    ld a, h
    ldh a, [hMapTileset]
    cp $07
    jr nz, jr_004_7d2b

    ld de, $7d07

jr_004_7d2b:
    call label_C00
    rla
    rla
    rla

jr_004_7d31:
    and $10
    ldh [$ed], a
    call label_3BC0
    call Call_004_7fa3
    ld hl, $c410
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_004_7d51

    ldh a, [$f0]
    and a
    jr nz, jr_004_7d51

    call IncrementEntityWalkingAttr
    call label_BFB
    ld [hl], $6f

jr_004_7d51:
    call Call_004_6d80
    call Call_004_6dca
    call label_3B23
    ldh a, [$f0]
    rst $00
    ld l, c
    ld a, l
    and e
    ld a, l
    ld [$00f8], sp
    nop
    nop
    nop
    ld hl, sp+$00
    call label_3B39

jr_004_7d6c:
    call IsEntityFrameCounterZero
    jr nz, jr_004_7d91

    call GetRandomByte

jr_004_7d74:
    and $1f
    add $30
    ld [hl], a
    and $03
    ld e, a
    ld d, b
    ld hl, $7d61
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $7d65
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a

jr_004_7d91:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


    dec b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$c14a]
    and a
    jr z, jr_004_7dae

    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


jr_004_7dae:
    call label_3B70
    call Call_004_6e35
    add $12
    cp $24
    jr nc, jr_004_7dc3

    call Call_004_6e45
    add $12
    cp $24
    jr c, jr_004_7dd1

jr_004_7dc3:
    ldh a, [hFrameCounter]
    xor c
    and $03
    jr nz, jr_004_7dcf

    ld a, $0e
    call label_3BAA

jr_004_7dcf:
    jr jr_004_7dd4

jr_004_7dd1:
    call label_3D7F

jr_004_7dd4:
    call label_BFB
    jp z, Jump_004_7eba

    cp $18
    jr nz, jr_004_7de5

    ld [hl], $0a
    call label_C00
    ld [hl], $30

jr_004_7de5:
    rra
    rra
    rra
    rra
    and $07
    ld e, a
    ld d, b
    ld hl, $7d9c
    add hl, de
    ld a, [hl]
    jp label_3B0C


    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, b
    ld [bc], a
    ld a, d
    ld [bc], a
    ld l, d
    ld [hl+], a
    ld l, b
    ld [hl+], a
    ld l, b
    ld [bc], a
    ld l, d
    ld [bc], a
    ld [$00f8], sp
    nop

Call_004_7e09:
Jump_004_7e09:
    nop
    nop
    ld hl, sp+$08
    ld de, $7df5
    ldh a, [hMapTileset]
    cp $07
    jr nz, jr_004_7e19

    ld de, $7dfd

jr_004_7e19:
    call label_3BC0
    call Call_004_7fa3
    call Call_004_6d80
    call label_C00
    jr nz, jr_004_7e2a

    call label_3B39

jr_004_7e2a:
    call Call_004_6dca
    call label_3B23
    ldh a, [$f0]
    rst $00
    add hl, sp
    ld a, [hl]
    ld c, h
    ld a, [hl]
    add e
    ld a, [hl]
    call IsEntityFrameCounterZero
    jr nz, jr_004_7e41

    call IncrementEntityWalkingAttr

jr_004_7e41:
    ldh a, [hFrameCounter]
    rra
    rra
    rra
    rra
    and $01
    jp label_3B0C


    call GetRandomByte
    and $03
    jr z, jr_004_7e5a

    call GetRandomByte
    and $03
    jr jr_004_7e5d

jr_004_7e5a:
    call Call_004_6e55

jr_004_7e5d:
    ld e, a
    ld d, b
    ld hl, $7e05
    add hl, de
    ld a, [hl]
    ld hl, $c240
    add hl, bc
    ld [hl], a
    ld hl, $7e09
    add hl, de
    ld a, [hl]
    ld hl, $c250
    add hl, bc
    ld [hl], a
    call IsEntityFrameCounterZero
    call GetRandomByte
    and $0f
    add $20
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld [hl], b
    ret


    call label_3B7B
    call IsEntityFrameCounterZero
    jr z, jr_004_7eba

    ld hl, wEntitiesUnknownTableA
    add hl, bc
    ld a, [hl]
    and $03
    jr nz, jr_004_7e9b

    ld a, [hl]
    and $0c
    jr nz, jr_004_7ea5

    jr jr_004_7eb1

jr_004_7e9b:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    jr jr_004_7ead

jr_004_7ea5:
    ld hl, $c250
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_004_7ead:
    ld a, $09
    ldh [$f2], a

jr_004_7eb1:
    ldh a, [hFrameCounter]
    rra
    rra
    and $01
    jp label_3B0C


Jump_004_7eba:
jr_004_7eba:
    call Call_004_7ec0
    jp Jump_004_6d7a


Call_004_7ec0:
    ld a, $02
    call label_3B86
    jr c, jr_004_7ee4

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

jr_004_7ee4:
    ret


    ld d, [hl]
    ld [bc], a
    ld d, [hl]
    ld [hl+], a
    ld d, h
    ld [bc], a
    ld d, h
    ld [hl+], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld d, b
    ld [hl+], a
    ld de, $7ee5
    call label_3BC0
    call Call_004_7fa3
    call Call_004_6d80
    call Call_004_6dca
    call label_3B23
    ldh a, [$f0]
    and $03
    rst $00
    inc d
    ld a, a
    daa
    ld a, a
    ld c, c
    ld a, a
    ld [hl], l
    ld a, a
    ld a, $ff
    call label_3B0C
    call IsEntityFrameCounterZero
    ret nz

    ld [hl], $1f
    call IncrementEntityWalkingAttr
    jp label_3D7F


    ld bc, $cd00
    dec b
    inc c
    jr nz, jr_004_7f37

    call GetRandomByte
    and $3f
    add $70
    ld [hl], a
    jp IncrementEntityWalkingAttr


jr_004_7f37:
    ld hl, $7f25

Jump_004_7f3a:
    srl a
    srl a
    srl a
    srl a
    ld e, a
    ld d, b
    add hl, de
    ld a, [hl]
    jp label_3B0C


    call label_3B39
    call IsEntityFrameCounterZero
    jr nz, jr_004_7f59

    ld [hl], $1f
    call IncrementEntityWalkingAttr
    jp label_3D7F


jr_004_7f59:
    ldh a, [hFrameCounter]
    xor c
    push af
    and $0f
    jr nz, jr_004_7f66

    ld a, $08
    call label_3BAA

jr_004_7f66:
    pop af
    srl a
    srl a
    and $01
    call label_3B0C
    inc [hl]
    inc [hl]
    ret


    nop
    ld bc, $05cd
    inc c
    jr nz, jr_004_7f8a

    call GetRandomByte
    and $1f
    add $30
    ld [hl], a
    call IncrementEntityWalkingAttr
    ld a, $08
    jp label_3BAA


jr_004_7f8a:
    ld hl, $7f73
    jp Jump_004_7f3a


Call_004_7f90:
    ld hl, $c240
    add hl, bc
    ld a, [hl]
    rl a
    ld a, $00
    jr c, jr_004_7f9d

    ld a, $20

jr_004_7f9d:
    ld hl, $ffed
    xor [hl]
    ld [hl], a
    ret


Call_004_7fa3:
    ldh a, [$ea]
    cp $05
    jr nz, jr_004_7fce

Call_004_7fa9:
    ld a, [wGameplayType]
    cp $07
    jr z, jr_004_7fce

    cp $0b
    jr nz, jr_004_7fce

    ld a, [wTransitionSequenceCounter]
    cp $04
    jr nz, jr_004_7fce

    ld hl, $c1a8
    ld a, [wDialogState]
    or [hl]
    ld hl, wInventoryAppearing
    or [hl]
    jr nz, jr_004_7fce

    ld a, [wMapSlideTransitionState]
    and a
    jr z, jr_004_7fcf

jr_004_7fce:
    pop af

jr_004_7fcf:
    ret

label_004_7FD0:
DropSomethingElse::
    ld a, $3D ; Load secret seashell instead of Heart Container for Level 2 Boss
    jp $5753
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
