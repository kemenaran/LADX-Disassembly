; Interrupts setup
section "RST 0x0000", rom0 [$0000]
    jp   TableJump

; Debug Mode (see debug.asm)
; Uncomment to enable
;section "Enable debug tools", rom0 [$0003]
;    db   01

section "Interrupt VBlank", rom0 [$0040]
    jp   InterruptVBlank

section "Interrupt LCD Stat", rom0 [$0048]
    jp   InterruptLCDStatus

section "Interrupt Timer", rom0 [$0050]
    reti

section "Interrupt Serial", rom0 [$0058]
    jp   InterruptSerial

section "Interrupt Joypad", rom0 [$0060]
    reti

; Data-copy routines
section "Hardcoded CopyData variants", rom0 [$0062]
Copy6900ToTileMemory89A0::
    ld   hl, $6900
    ld   de, $89A0
    jr   Copy48BytesAndClearFlags

Copy6930ToTileMemory89D0::
    ld   hl, $6930
    ld   de, $89D0
    jr   Copy48BytesAndClearFlags

Copy49D0ToTileMemory89D0::
    ld   hl, $49D0
    ld   de, $89D0
    jr   Copy48BytesAndClearFlags

Copy49A0ToTileMemory89A0::
    ld   hl, $49A0
    ld   de, $89A0

Copy48BytesAndClearFlags::
    ld   bc, $0030
    call CopyData
    xor  a
    ldh  [$FF90], a
    ldh  [hBGTilesLoadingStage], a
.restoreBank0C
    ld   a, $0C
    ld   [MBC3SelectBank], a
    ret

section "Entry", rom0 [$100]
	; This is the entry point to the program.
	nop
	jp Start

section "Header", rom0 [$104]
	; The header is created by rgbfix.
	; The space here is allocated as a placeholder.
	ds $150 - $104
