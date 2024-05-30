; The following equates show data references outside the range of the program.

data_1e         equ     0
data_2e         equ     0Ah
data_3e         equ     0Ch
data_4e         equ     15h
data_5e         equ     1Ah
data_6e         equ     26h
data_7e         equ     32h
data_8e         equ     34h
data_9e         equ     3Eh
data_10e        equ     124h
data_11e        equ     269Ch                   ;*
data_12e        equ     269Eh                   ;*
data_13e        equ     26A0h                   ;*
data_14e        equ     16h                     ;*
data_15e        equ     5D4h                    ;*
data_16e        equ     5D6h                    ;*
data_17e        equ     2                       ;*
data_18e        equ     0Ah                     ;*
data_19e        equ     1Ch                     ;*
data_20e        equ     79Fh                    ;*
data_21e        equ     0Ah                     ;*
data_22e        equ     358h                    ;*
data_23e        equ     16h                     ;*
data_237e       equ     2F41h                   ;*
data_238e       equ     440Ah                   ;*
data_357e       equ     2676h                   ;*
data_358e       equ     2678h                   ;*
data_359e       equ     26C2h                   ;*
data_360e       equ     26CBh                   ;*
data_361e       equ     2782h                   ;*
data_390e       equ     3Fh
data_391e       equ     304h
data_392e       equ     337h
data_393e       equ     3Fh

data_336        equ     64Ah                    ; XXX manually added
data_337        equ     64Bh                    ; XXX manually added

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_c
                dw      159h, seg_a
                dw      07A5h, seg_a
                dw      07FCh, seg_a
                dw      0A40h, seg_a
                dw      0904h, seg_a
data_34         dw      930h
data_35         dw      seg_a
                db      0, 0, 0, 0
data_36         dw      564Eh, 6D6Ch

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
                push    ax
                add     [di-43h],dl
                push    ax
                add     [di-43h],dl
                add     [bx+si],ax
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_10          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                mov     byte ptr cs:data_195,0FFh
                mov     ah,3Bh                  ; ';'
                pushf
                call    dword ptr [bp+20h]      ;*
                mov     byte ptr cs:data_195,0
                retn
sub_15          endp

data_38         dw      offset loc_6            ; Data table (indexed access)
data_39         dw      offset loc_7
data_40         dw      offset loc_19
data_41         dw      offset loc_22
data_42         dw      offset loc_28
data_43         dw      offset loc_29
data_44         dw      offset loc_34
data_45         dw      offset loc_41
data_46         dw      offset loc_47
data_47         dw      offset loc_49
data_48         dw      offset loc_50
data_49         dw      offset loc_45
data_50         dw      offset loc_45
data_51         dw      offset loc_66

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    far
                cmp     bx,0Eh
                jb      loc_4
                mov     ax,8811h
                retf
loc_4::
                push    bp
                mov     bp,sp
                sub     sp,8
                push    ax
                push    cx
                push    dx
                push    bx
                push    sp
                push    bp
                push    si
                push    di
                push    ds
                push    es

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                push    ax
                push    cs
                pop     ds
                pop     ax
                add     bx,bx
                mov     es,data_159
                mov     word ptr [bp-8],0
                cld
                jmp     word ptr data_38[bx]    ;*14 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                mov     word ptr [bp-10h],4
                mov     word ptr [bp-0Ch],15h
                xor     ax,ax
                jmp     loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_7::
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jnz     loc_8
                jmp     loc_46
loc_8::
                xor     al,al
                mov     es:data_336,al
                mov     byte ptr data_202,0
                mov     si,offset data_259
                xor     bx,bx
                mov     cx,8

locloop_9::
                inc     bx
                cmp     byte ptr es:[si],0FFh
                jne     loc_10
                mov     al,es:[si+17h]
                cmp     al,es:[si+1Bh]
                je      loc_10
                jmp     loc_17
loc_10::
                add     si,20h
                loop    locloop_9

                push    ds
                mov     ds,[bp-0Ch]
                mov     al,ds:data_393e
                pop     ds
                cmp     al,ds:data_360e
                jne     loc_11
                mov     byte ptr ds:data_357e,0
                assume  ds:seg_b
                mov     byte ptr es:data_337,0
                mov     byte ptr ds:data_360e,0
loc_11::
                push    es
                pop     ds
                cmp     byte ptr data_319,0FFh
                je      loc_12
                xor     bx,bx
                or      bl,data_319
                add     bl,1Ah
                cmp     data_272[bx],al
                jne     loc_12
                mov     bx,0
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                sub     bl,41h                  ; 'A'
                mov     al,bl
                les     di,cs:data_167
                lea     di,[di+16h]
                stosb
                mov     byte ptr data_319,0FFh
loc_12::
                mov     al,data_321
                or      al,al
                jz      loc_13
                les     di,data_310
                mov     ax,data_312
                stosw
                mov     ax,data_313
                stosw
                mov     byte ptr data_321,0
loc_13::
                mov     es,cs:data_159
                mov     ds,[bp-0Ch]
                mov     ah,data_261
                or      ah,ah
                jz      loc_18
                xor     bx,bx
                dec     bx
                mov     si,offset data_272
                mov     cx,20h
                push    es
                pop     ds
loc_14::
                jcxz    loc_18
                inc     bx
                lodsb
                dec     cx
;*              cmp     al,ah
                db       3Ah,0C4h
                jnz     loc_14
                test    byte ptr data_270[bx],2
                jz      loc_14
                push    ax
                push    si
                mov     si,bx
                cmp     si,19h
                jb      loc_15
                call    sub_40
loc_15::
                dec     data_275
                xor     ax,ax
                mov     data_269[bx],al
                mov     data_272[bx],al
                mov     data_271[bx],al
                and     byte ptr data_270[bx],0FDh
                pop     si
                pop     ax
                cmp     bx,19h
                jae     loc_14
                push    ax
                push    si
                mov     si,offset data_343
                mov     al,bl
                add     al,41h                  ; 'A'
                mov     [si],al
                mov     word ptr [si+1],3Ah
                mov     ax,5F04h
                push    ax
                mov     ax,111Eh
                int     2Fh                     ; ??INT Non-standard interrupt
                pop     ax
                pop     si
                pop     ax
                jmp     short loc_14
loc_17::
                call    sub_18
                jmp     loc_10
loc_18::
                jmp     loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_19::
                xor     bx,bx
                mov     ds,cx
                cmp     word ptr [bx],32h
                je      loc_21
                cmp     byte ptr [bx+0Ah],4
                je      loc_21
                push    cs
                pop     ds
                mov     bl,1
                call    sub_24
                jnz     loc_21
                mov     al,0FFh
                call    sub_25
                jz      loc_21
                dec     bx
                call    sub_27
loc_21::
                jmp     loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22::
                assume  ds:seg_a
                cmp     cx,data_180
                jne     loc_24
                xor     ax,ax
                mov     data_180,ax
                mov     data_181,0FFFFh
loc_24::
                mov     bl,1
                call    sub_24
                jz      loc_27
                cmp     byte ptr es:data_334,bl
                jne     loc_26
                xor     al,al
                mov     byte ptr es:data_334,al
loc_26::
                mov     ax,bx
                push    ax
                call    sub_18
                pop     ax
                call    sub_20
loc_27::
                jmp     loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_28::
                jmp     loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                mov     bl,1
                call    sub_24
                jz      loc_31
                cmp     byte ptr es:data_334,bl
                jne     loc_30
                mov     byte ptr es:data_334,0
loc_30::
                push    bx
                call    sub_17
                pop     bx
                mov     al,bl
                call    sub_20
loc_31::
                jmp     loc_46

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_17::
                push    cs
                pop     ds
                les     si,data_167
                mov     al,es:[si+16h]
                cbw
                mov     si,ax
                mov     es,data_159
                mov     ax,8801h
                mov     bl,es:data_271[si]
                or      bl,bl
                jz      loc_ret_33
                mov     cl,bl
                xor     ch,ch
                mov     bl,0
                call    sub_24
                jz      loc_ret_33
                xor     ax,ax
                mov     data_181,ax
                mov     data_180,bx

loc_ret_33::
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_34::
                cmp     byte ptr data_194,0FFh
                je      loc_35
                call    sub_21
                jz      loc_35
                mov     al,0FFh
                jmp     loc_46
loc_35::
                mov     bl,1
                call    sub_24
                jnz     loc_36
                mov     al,0FFh
                call    sub_25
                jnz     loc_36
                jmp     loc_46
loc_36::
                mov     al,12h
                cmp     byte ptr data_194,0FFh
                jne     loc_37
                mov     al,13h
                mov     ah,dl
                jmp     short loc_38
loc_37::
                xor     ah,ah
loc_38::
                mov     byte ptr data_177,dh
                mov     word ptr [bp-6],1
                mov     [bp-4],di
                cmp     dl,1
                jne     loc_39
                mov     [bp-2],bx
                mov     ds,data_159
                mov     al,dl
                mov     ah,1
                sub     dh,41h                  ; 'A'
                mov     dl,bl
                mov     bl,dh
                inc     cs:data_199
                jmp     loc_64
loc_39::
                push    ax
                push    cx
                push    es
                push    di
                mov     al,3Ah                  ; ':'
                mov     es,[bp-1Ch]
                mov     di,si
                mov     cx,100h
                repne   scasb
                cmp     byte ptr es:[di],0
                je      loc_40
                inc     byte ptr ds:data_359e
loc_40::
                pop     di
                pop     es
                pop     cx
                pop     ax
                jmp     loc_57

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_41::
                mov     ah,dl
                cmp     byte ptr data_195,0FFh
                je      loc_42
                cmp     byte ptr data_194,0FFh
                je      loc_42
                call    sub_21
                jz      loc_46
loc_42::
                mov     bl,1
                call    sub_24
                jz      loc_46
                cmp     byte ptr data_195,0FFh
                je      loc_43
                cmp     byte ptr data_194,0FFh
                je      loc_44
loc_43::
                push    ds
                push    es
                pop     ds
                push    bx
                xor     bh,bh
                mov     bl,dh
                sub     bl,41h                  ; 'A'
                assume  ds:seg_b
                mov     ah,data_269[bx]
                pop     bx
                pop     ds
loc_44::
                mov     al,14h
                mov     word ptr [bp-8],0FFFFh
                mov     word ptr [bp-6],0
                mov     word ptr [bp-4],0
                jmp     loc_57

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_45::
                mov     ax,8811h
loc_46::
                mov     [bp-0Ah],ax
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     bp
                pop     ax
                pop     bx
                pop     dx
                pop     cx
                pop     ax
                add     sp,8
                pop     bp
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_47::
                cmp     dl,2
                ja      loc_48
                mov     bl,1
                call    sub_24
                jnz     loc_48
                mov     al,0FFh
                call    sub_25
                jz      loc_48
                dec     bx
                call    sub_27
loc_48::
                jmp     short loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_49::
                jmp     short loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_50::
                cmp     dl,1
                je      loc_46
                cmp     byte ptr es:data_321,0
                jne     loc_51
                call    sub_21
                jz      loc_46
loc_51::
                mov     bl,1
                call    sub_24
                jz      loc_46
                push    ds
                mov     ds,[bp-1Ch]
                push    bx
                xor     bh,bh
                mov     bl,dh
                sub     bl,41h                  ; 'A'
                cmp     byte ptr es:data_321,0
                je      loc_52
                add     bl,1Ah
loc_52::
                mov     ah,es:data_269[bx]
                mov     al,es:data_274[bx]
                cmp     al,0FFh
                je      loc_56
                push    ax
                push    cx
                push    di
                mov     al,5Ch                  ; '\'
                xor     ah,ah
                mov     cx,di
                push    si
                pop     di
                push    es
                push    ds
                pop     es
                jcxz    loc_55
loc_53::
                repne   scasb
                jnz     loc_54
                inc     ah
                jmp     short loc_53
loc_54::
                inc     ah
loc_55::
                pop     es
                mov     es:data_274[bx],ah
                pop     di
                pop     cx
                pop     ax
loc_56::
                mov     dh,bl
                add     dh,41h                  ; 'A'
                pop     bx
                pop     ds
                mov     al,0
                assume  ds:seg_a
                mov     byte ptr data_177,dl
                mov     word ptr [bp-6],0
                mov     [bp-4],di
loc_57::
                push    es
                pop     ds
                mov     di,offset data_343
                push    ax
                cmp     al,14h
                mov     ax,[bp-4]
                jnz     loc_58
                dec     ax
                dec     ax
loc_58::
                mov     dx,ax
;*              add     ax,4
                db      5, 4, 0
                xchg    al,ah
                stosw
                pop     ax
                stosw
                mov     al,byte ptr cs:data_177
                mov     ah,[bp-4]
                stosw
                xchg    dx,ax
;*              add     ax,6
                db      5, 6, 0
                assume  ds:seg_b
                mov     data_338,65Ch
                mov     data_339,ds
                mov     data_340,ax
                push    cx
                mov     cx,[bp-4]
                push    ds
                mov     ds,[bp-1Ch]
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                pop     cx
                mov     si,64Ch
                mov     di,offset data_341
                push    di
                mov     ax,79Ch
                stosw
                mov     ax,ds
                stosw
                mov     ax,2
                stosw
                pop     di
                push    bx
                mov     bx,1
                mov     dx,[bp-6]
                mov     al,16h
                call    sub_12
                mov     cs:data_175,ax
                pop     word ptr [bp-2]
                jz      loc_59
                mov     di,offset data_343
                cmp     byte ptr [di+2],14h
                je      loc_59
                jmp     loc_46
loc_59::
                mov     al,[bp-0Dh]
                cbw
                sub     al,41h                  ; 'A'
                mov     bx,ax
                mov     dl,[bp-2]
                mov     ax,data_344
                cmp     al,0
                xchg    al,ah
                jz      loc_60
                mov     al,data_347
loc_60::
                mov     ah,1
                cmp     word ptr [bp-8],0FFFFh
                jne     loc_62
                mov     ah,0FFh
                jmp     short loc_64
loc_62::
                push    ds
                push    ax
                push    cs
                pop     ds
                assume  ds:seg_a
                cmp     byte ptr data_194,0FFh
                pop     ax
                jnz     loc_63
                mov     ah,2
loc_63::
                pop     ds
loc_64::
                cmp     byte ptr cs:data_201,0
                jne     loc_65
                cmp     byte ptr cs:data_196,0FFh
                je      loc_65
                call    sub_26
                dec     word ptr [bp-2]
                mov     bx,[bp-2]
                call    sub_27
loc_65::
                mov     ax,cs:data_175
                jmp     loc_46
sub_16          endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_66::
                mov     bx,1
                call    sub_24
                jz      loc_67
                dec     bx
                push    cx
                mov     cx,5
                shl     bx,cl
                mov     si,bx
                add     si,24h
                pop     cx
                push    ds
                mov     ds,cx
                mov     dx,ds:data_4e
                pop     ds
                mov     es:[si+1Bh],dx
                mov     es:[si+17h],dl
loc_67::
                mov     ax,0
                jmp     loc_46

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                push    bx
                xor     bh,bh
                push    cx
                dec     bx
                push    bx
                add     bx,bx
                mov     word ptr ds:data_361e[bx],0
                pop     bx
                push    bx
                mov     cl,5
                shl     bx,cl
                lea     si,[bx+24h]
                mov     ah,1
                call    sub_19
                mov     es,ds:data_358e
                lea     di,[bx+24h]
                xor     ax,ax
                push    di
                mov     cx,10h
                rep     stosw
                pop     di
                mov     byte ptr es:[di+17h],0FFh
                pop     ax
                mov     di,data_10e
                mov     cx,30h
                mov     dl,cl
                mul     dl
                add     di,ax
                xor     ax,ax
                rep     stosb
                pop     cx
                pop     bx
                retn
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                push    cx
                push    bp
                push    si
                push    di
                push    ds
                push    es
                cld
                mov     ds,cs:data_159
                push    ds
                pop     es
                mov     di,si
                mov     bp,20h
                mov     si,offset data_259
                mov     cx,8
                mov     dh,1
                mov     dl,[di+1]
                cmp     ah,0
                je      loc_70
                xor     ax,ax
                cmp     ax,[di+2]
                jne     locloop_68
                cmp     ax,[di+4]
                je      loc_76

locloop_68::
                cmp     dl,[si+1]
                jae     loc_69
                mov     al,[si+1]
                or      al,al
                jz      loc_69
                dec     byte ptr [si+1]
loc_69::
                add     si,bp
                loop    locloop_68

                jmp     short loc_76
loc_70::
                cmp     byte ptr [di],0FFh
                jne     loc_76
                mov     bx,di
                add     di,2
                xor     ax,ax

locloop_71::
                cmp     byte ptr [si],0FFh
                jne     loc_75
                push    si
                push    di
                push    cx
                add     si,2
                mov     cx,20h
                repe    cmpsb
                pop     cx
                pop     di
                pop     si
                jc      loc_73
                cmp     [si+1],dl
                jb      loc_72
                or      dl,dl
                jnz     loc_75
loc_72::
                inc     byte ptr [si+1]
                jmp     short loc_75
loc_73::
                cmp     [si+2],ax
                jne     loc_74
                cmp     [si+4],ax
                je      loc_75
loc_74::
                inc     dh
loc_75::
                add     si,bp
                loop    locloop_71

                mov     di,bx
                mov     [di+1],dh
loc_76::
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     bp
                pop     cx
                retn
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    ax
                mov     data_175,cx
                push    es
                pop     ds
                mov     di,offset data_271
                mov     si,di
                mov     cx,20h
loc_77::
                repne   scasb
                jnz     loc_78
                mov     bx,di
                sub     bx,si
                dec     bx
                mov     ah,0FFh
                push    ax
                push    bx
                call    sub_26
                pop     ax
                call    sub_3
                pop     ax
                jmp     short loc_77
loc_78::
                pop     ax
                retn
sub_20          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                xor     bh,bh
                mov     bl,dh
                sub     bl,41h                  ; 'A'
                mov     al,es:data_271[bx]
                or      al,al
                mov     al,0
                retn
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near
                mov     cx,8
                mov     di,2782h
                push    di
                pop     bx
                push    ds
                pop     es
                retn
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                call    sub_22
                repne   scasw
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                push    ax
                push    cx
                push    di
                push    es
                dec     bl
                jnz     loc_79
                jcxz    loc_81
                mov     ax,cx
                call    sub_23
                jnz     loc_81
                sub     di,bx
                shr     di,1
                mov     bx,di
                jmp     short loc_80
loc_79::
                jcxz    loc_81
                cmp     cx,8
                ja      loc_81
                mov     bx,cx
                dec     bx
                add     bx,bx
                mov     bx,data_233[bx]
loc_80::
                or      bx,bx
                pop     es
                pop     di
                pop     cx
                pop     ax
                retn
loc_81::
                xor     bx,bx
                jmp     short loc_80
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                push    ax
                push    cx
                push    di
                push    es
                xor     ax,ax
                call    sub_23
                jz      loc_82
                xor     bx,bx
                jmp     short loc_83
loc_82::
                sub     di,bx
                mov     bx,di
                shr     bx,1
loc_83::
                or      bx,bx
                pop     es
                pop     di
                pop     cx
                pop     ax
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                cmp     ah,0FFh
                jne     loc_84
                xor     al,al
                mov     dl,al
                assume  ds:seg_b
                and     byte ptr data_270[bx],80h
                jmp     short loc_85
loc_84::
                or      data_270[bx],ah
loc_85::
                mov     data_271[bx],dl
                mov     data_269[bx],al
                or      al,al
                jz      loc_87
                cmp     byte ptr cs:data_194,0FFh
                jne     loc_86
                push    ds
                push    bx
                mov     ah,51h                  ; 'Q'
                pushf
                call    dword ptr data_257
                mov     ax,bx
                pop     bx
                mov     ds,ax
                mov     al,ds:data_390e
                pop     ds
                mov     ds:data_391e[bx],al
loc_86::
                mov     al,cs:data_199
                or      al,al
                jnz     loc_89
                mov     al,ds:data_392e[bx]
                cmp     al,0FFh
                jne     loc_88
loc_87::
                mov     byte ptr ds:data_392e[bx],0FFh
loc_88::
                mov     byte ptr cs:data_199,0
                retn
loc_89::
                mov     byte ptr ds:data_392e[bx],0
                jmp     short loc_88
sub_26          endp

                                                ;* No entry point to code
                push    bx
                push    cx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                push    cs
                pop     ds
                mov     al,21h                  ; '!'
                mov     bx,0
;*              call    sub_2                   ;*
                db      0E8h, 6Fh,0F8h
                jnz     loc_90
                mov     al,2Fh                  ; '/'
;*              call    sub_2                   ;*
                db      0E8h, 68h,0F8h
                jz      loc_91
loc_90::
                mov     ax,884Eh
loc_91::
                xor     ax,ax
                or      cx,cx
                jnz     loc_92
                assume  ds:seg_a
                lds     dx,data_155
                mov     ax,2521h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,7A80h
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     es,cs:data_159
                assume  ds:seg_b
                lds     dx,es:data_330
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     si,596h
                mov     bx,19h
                call    dword ptr cs:data_169
                xor     ax,ax
loc_92::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                retf
                                                ;* No entry point to code
                push    cx
                push    si
                push    di
                push    ds
                push    cs
                pop     ds
                mov     si,offset data_154
                cmp     cx,[si]
                jbe     loc_93
                mov     cx,[si]
loc_93::
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                pop     di
                pop     si
                pop     cx
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                push    bx
                mov     dl,bl
                add     bx,bx
                push    cs
                pop     ds
                assume  ds:seg_a
                mov     data_233[bx],cx
                mov     bl,dl
                xor     bh,bh
                push    cx
                mov     cx,5
                shl     bx,cl
                mov     si,bx
                add     si,24h
                mov     ds,data_159
                pop     cx
                pop     bx
                push    bx
                push    ds

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_94::
                pop     es
                mov     byte ptr [si],0FFh
                mov     byte ptr [si+18h],0FFh
                lea     di,[si+2]
                push    ds
                push    cx
                push    si
                mov     ds,cx
                cld
                mov     cx,6
                mov     si,data_5e
                rep     movsw
                pop     si
                pop     cx
                lea     di,[si+10h]
                push    si
                mov     si,data_6e
                movsw
                movsw
                movsw
                pop     si
                mov     dx,ds:data_4e
                pop     ds
                mov     [si+1Bh],dx
                mov     [si+17h],dl
                push    ds
                mov     ds,cx
                mov     ax,ds:data_3e
                mov     bx,ds:data_2e
                pop     ds
                mov     [si+0Eh],ax
                shl     ax,1
                shl     ax,1
                shl     ax,1
                shl     ax,1
                mov     [si+19h],ax
                sub     bl,2
                mov     [si+1Dh],bl
                mov     [si+1Fh],bh
                mov     ah,0
                call    sub_19
                pop     ax
                mov     di,ax
                push    cx
                mov     cl,5
                shl     di,cl
                dec     cx
                shl     ax,cl
                pop     cx
                add     ax,di
                mov     di,124h
                add     di,ax
                call    sub_5
                xor     al,al
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
                mov     cx,seg seg_a
                mov     ds,cx
                cmp     byte ptr cs:data_205,1
                jne     loc_95
                mov     ah,cs:data_204
                mov     si,cs:data_185
loc_95::
                mov     data_175,ax
                mov     data_176,si
                mov     data_177,es
                add     al,41h                  ; 'A'
                mov     es,data_159
                mov     di,offset data_343
                stosb
                mov     ax,3Ah
                stosw
                cmp     data_179,5F04h
                je      loc_96
                call    sub_31
loc_96::
                mov     di,65Fh
                mov     si,65Ch
                push    es
                pop     ds
                mov     cx,4E57h
                mov     bx,4
                mov     ax,cs:data_179
                pushf
                assume  ds:seg_b
                call    dword ptr data_257
                jc      loc_ret_97
                xor     al,al

loc_ret_97::
                retn
sub_28          endp

                                                ;* No entry point to code
                push    bx
                push    ds
                push    es
                mov     ax,cs:data_159
                mov     es,ax
                push    cs
                pop     ds
                mov     ax,8801h
                xor     ch,ch
                mov     cl,es:data_336
                pop     es
                mov     bl,0
                call    sub_24
                jz      loc_98
                mov     cx,bx
                xor     ax,ax
loc_98::
                or      ax,ax
                pop     ds
                pop     bx
                retf
data_92         dw      offset loc_99           ; Data table (indexed access)
data_93         dw      offset loc_103
data_94         dw      offset loc_101
                db       83h,0FBh, 03h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 53h, 1Eh, 50h
                db       0Eh, 1Fh, 58h, 03h,0DBh, 2Eh
                db      0FFh,0A7h
                db       2Ah, 09h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_99::
                push    cs
                pop     ds
                assume  ds:seg_a
                mov     ax,data_181
                mov     cx,data_180
                or      ax,ax
loc_100::
                pop     ds
                pop     bx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_101::
                mov     bx,data_159
                mov     ds,bx
                assume  ds:seg_b
                mov     byte ptr data_328,0
                or      ax,ax
                jz      loc_102
                dec     data_328
                mov     data_329,ax
loc_102::
                mov     dl,cs:data_157
                or      dl,data_327
                jmp     short loc_100

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_103::
                push    dx
                push    di
                push    si
                push    es
                push    cs
                pop     ds
                xor     bl,bl
                jcxz    loc_104
                mov     bl,1
                call    sub_24
                jnz     loc_104
                mov     ax,8801h
                call    sub_25
                jz      loc_105
                push    bx
                dec     bx
                call    sub_27
                pop     bx
loc_104::
                assume  ds:seg_a
                mov     ds,cs:data_159
                assume  ds:seg_b
                mov     byte ptr data_334,bl
                xor     ax,ax
loc_105::
                pop     es
                pop     si
                pop     di
                pop     dx
                pop     ds
                pop     bx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                push    ax
                push    bx
                push    dx
                push    si
                push    di
                push    es
                assume  ds:seg_a
                mov     es,data_159
                mov     al,es:data_336
                or      al,al
                jz      loc_106
                mov     byte ptr es:data_334+1,al
                call    sub_30
                jnz     loc_109
loc_106::
                les     si,data_167
                mov     al,es:[si+16h]
                les     si,data_165
                mul     byte ptr data_178
                add     si,ax
                cmp     word ptr es:[si+4Dh],4E57h
                jne     loc_107
                mov     cx,es:[si+4Bh]
                mov     bl,1
                call    sub_24
                mov     es,data_159
                mov     byte ptr es:data_334+1,bl
                jmp     short loc_109
loc_107::
                push    es
                mov     es,data_159
                mov     al,byte ptr es:data_334
                or      al,al
                pop     es
                jz      loc_108
                call    sub_30
                jnz     loc_109
loc_108::
                xor     ax,ax
                call    sub_22
                inc     cx
                repe    scasw
                jcxz    loc_109
                mov     cx,es:[di-2]
                mov     bl,1
                call    sub_24
                mov     es,data_159
                mov     byte ptr es:data_334+1,bl
loc_109::
                mov     data_235,cx
                pop     es
                pop     di
                pop     si
                pop     dx
                pop     bx
                pop     ax
                or      cx,cx
                retn
sub_29          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                cbw
                push    es
                mov     es,data_159
                mov     byte ptr es:data_334+1,al
                pop     es
                mov     cx,ax
                mov     bl,0
                call    sub_24
                mov     cx,bx
                retn
sub_30          endp

                                                ;* No entry point to code
                sti
                mov     bx,ds:[0]
                cmp     bh,19h
                jne     loc_110
                mov     bh,0F4h
loc_110::
                cmp     bx,data_238e
                jne     loc_111
                mov     bh,0F5h
loc_111::
                mov     bl,bh
                sub     bl,0B3h
                xor     bh,bh
                add     bx,bx
                mov     data_34,sp
                mov     data_35,ss
                push    ds
                pop     ss
                mov     sp,0A10h
                push    cs
                pop     ds
                mov     bp,0
                mov     ax,[bp]
                call    word ptr data_232[bx]   ;*
loc_112::
                mov     ds,cs:data_159
                assume  ds:seg_b
                mov     ss,data_254
                mov     sp,data_253
                retf
                                                ;* No entry point to code
                assume  ds:seg_a
                les     si,data_167
                mov     al,es:[si+16h]
                cbw
                mov     si,ax
                mov     es,data_159
                mov     al,es:data_271[si]
                or      al,al
                jz      loc_113
                mov     cl,al
                xor     ch,ch
                mov     bl,0
                call    sub_24
                mov     di,bx
                jmp     short loc_114
loc_113::
                call    sub_29
                mov     di,cx
loc_114::
                mov     dx,8
                xor     si,si
loc_115::
                mov     cx,data_233[si]
                or      cx,cx
                jz      loc_116
                cmp     di,cx
                je      loc_116
                push    dx
                mov     dl,1
                call    sub_8
                pop     dx
loc_116::
                inc     si
                inc     si
                dec     dx
                jnz     loc_115
                mov     cx,di
                call    sub_9
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     di,offset data_273
                xor     ch,ch
                mov     cl,11h
                mov     al,0FFh
                rep     stosb
                xor     al,al
                mov     [bp],al
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                push    dx
                push    ds
                mov     di,offset data_344+1
                mov     ax,5C5Ch
                stosw
                push    es
                call    sub_29
                pop     es
                call    sub_5
                jnz     loc_120
                add     di,bx
                mov     al,5Ch                  ; '\'
                stosb
                mov     al,es:data_322
                or      al,al
                jz      loc_120
                mov     byte ptr es:data_322,0
                push    ss
                pop     ds
                mov     si,69Ch
                mov     cs:data_182,si
                lodsb
                cbw
                xchg    cx,ax

locloop_117::
                lodsb
                cmp     al,3Ah                  ; ':'
                jne     loc_118
                mov     al,5Ch                  ; '\'
                stosb
                jmp     short loc_119
loc_118::
                stosb
                loop    locloop_117

loc_119::
                xor     ax,ax
                stosw
                pop     ds
                pop     dx
                retn
loc_120::
                pop     ds
                pop     dx
                mov     cx,ds:data_11e
                mov     si,ds:data_12e
                mov     ds,ds:data_13e
                push    cx
                push    di
                mov     cl,ch
                xor     ch,ch
                rep     movsb
                xchg    cx,ax
                stosw
                pop     di
                pop     cx
                mov     al,3Ah                  ; ':'
                mov     cx,100h
                repne   scasb
                jcxz    loc_ret_122
                mov     byte ptr es:[di-1],5Ch  ; '\'
                cmp     byte ptr es:[di],5Ch    ; '\'
                jne     loc_ret_122
loc_121::
                mov     al,es:[di+1]
                mov     es:[di],al
                inc     di
                or      al,al
                jnz     loc_121

loc_ret_122::
                retn
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near
                mov     al,byte ptr ss:[5E6h]
                or      al,al
                jz      loc_ret_124
                push    bx
                push    dx
                push    si
                push    ds
                push    es
                push    ss
                pop     es
                mov     di,69Ch
                call    sub_33
                jz      loc_123
                jmp     loc_270
loc_123::
                pop     es
                pop     ds
                pop     si
                pop     dx
                pop     bx

loc_ret_124::
                retn
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near
                push    di
                mov     si,64Ch
                push    ss
                pop     ds
                mov     bx,658h
                mov     word ptr [si+4],4
                mov     [si],bx
                mov     [si+2],ds
                mov     [bx+3],al
                mov     ax,di
                mov     di,652h
                mov     [di],ax
                mov     [di+2],ds
                mov     word ptr [di+4],100h
                mov     ax,16h
                mov     bx,1
                mov     dx,bx
                call    sub_12
                pop     di
                retn
sub_33          endp

loc_125::
                call    sub_43
                jz      loc_126
                jmp     loc_270
loc_126::
                push    si
                les     si,cs:data_167
                mov     dl,es:[si+16h]
                pop     si
                mov     di,65Ch
                mov     al,[si+4]
                or      al,al
                jnz     loc_127
                jmp     loc_135
loc_127::
                mov     byte ptr ss:[5E6h],al
                mov     al,[si+3]
                push    si
                call    sub_41
                mov     bx,si
                mov     cs:data_200,bl
                lahf
                add     byte ptr cs:data_200,41h        ; 'A'
                sahf
                pop     si
                mov     al,0FFh
                jz      loc_128
                jmp     loc_270
loc_128::
                call    sub_32
                push    si
                les     si,cs:data_167
                mov     es:[si+16h],bl
                mov     ax,bx
                pop     si
                push    bx
                mov     al,bl
                mov     ah,[si+5]
                lea     si,[si+6]
                push    cs
                pop     ds
                push    ss
                pop     es
                mov     data_175,ax
                mov     data_176,si
                mov     ax,[bp+0Eh]
                mov     data_177,ax
                call    sub_31
                pop     bx
                push    es
                pop     ds
                mov     cx,dx
                mov     dx,65Fh
                les     di,cs:data_167
                cmp     byte ptr es:[di+16h],19h
                jbe     loc_132
                push    dx
                pop     di
                push    ds
                pop     es
                mov     al,5Ch                  ; '\'
                inc     di
                inc     di
                push    cx
                mov     cx,100h
                push    cx
                cld
                repne   scasb
                pop     cx
                repne   scasb
                push    di
                pop     si
                pop     cx
                dec     bx
                call    sub_34
                lea     di,ss:[371h][bp+di]
loc_130::
                lodsb
                or      al,al
                jz      loc_131
                stosb
                jmp     short loc_130
loc_131::
                mov     byte ptr cs:data_194,0FFh
                stosb
                push    cx
                mov     cx,cs:data_235
                mov     ds,[bp+0Ah]
                mov     si,[bp+8]
                mov     al,[si+5]
                mov     dl,[si+4]
                mov     dh,cs:data_200
                xor     ah,ah
                xchg    di,ax
                lea     si,[si+6]
                push    ds
                pop     es
                mov     bx,0Ah
                callf   sub_16
                pop     cx
                mov     byte ptr cs:data_194,0
                jmp     short loc_136
loc_132::
                push    cx
                push    ds
                mov     cx,1Ah
                mov     ds,[bp+0Ah]
                mov     si,[bp+8]
                mov     al,[si+3]
                push    ss
                pop     es
                mov     ah,byte ptr es:[649h]
                mov     di,2A4h
loc_133::
                jcxz    loc_134
                repne   scasb
                jnz     loc_134
                mov     si,offset data_35
                sub     si,cx
                dec     si
                cmp     ah,byte ptr ss:[2E4h][bp+si]
                jne     loc_133
                test    byte ptr ss:[2C4h][bp+si],2
                jz      loc_134
                mov     byte ptr cs:data_194,0FFh
loc_134::
                pop     ds
                pop     cx
                call    sub_15
                mov     byte ptr cs:data_194,0
                jc      loc_136
                xor     ax,ax
                les     di,cs:data_167
                lds     si,dword ptr [bp+8]
                mov     al,es:[di+16h]
                add     al,41h                  ; 'A'
                call    sub_38
                jmp     short loc_136
loc_135::
                les     di,cs:data_167
                mov     al,es:[di+16h]
                add     al,41h                  ; 'A'
                call    sub_38
                jmp     loc_270
loc_136::
                les     si,cs:data_167
                mov     es:[si+16h],cl
                jmp     loc_270
                                                ;* No entry point to code
                call    sub_29
                push    ds
                pop     es
                mov     ds,[bp+0Ah]
                mov     al,[si+2]
                or      al,al
                jnz     loc_137
                jmp     loc_125
loc_137::
                cmp     al,14h
                ja      loc_140
                jnz     loc_138
                mov     es:data_179,5F04h
                jmp     loc_168
loc_138::
                cmp     al,12h
                jb      loc_140
                mov     es:data_179,5F03h
                mov     bl,[si+4]
                pushf
                cmp     bl,5Ah                  ; 'Z'
                jbe     loc_139
                cmp     bl,61h                  ; 'a'
                jb      loc_139
                and     bl,0DFh
loc_139::
                mov     es:data_200,bl
                sub     bl,41h                  ; 'A'
                mov     byte ptr es:data_193,0
                popf
                cbw
                jz      loc_141
                cmp     bl,1Ah
                jae     loc_142
                jmp     loc_154
loc_140::
                call    sub_44
                mov     al,16h
                jmp     loc_248
loc_141::
                jmp     loc_155
loc_142::
                mov     byte ptr es:data_193,0FFh
                mov     byte ptr es:data_194,0FFh
                xor     bh,bh
                mov     al,byte ptr ss:[2A4h][bx]
                or      al,al
                jz      loc_143
                push    si
                mov     si,bx
                call    sub_40
                call    sub_34
                push    bx
                mov     dl,byte ptr ss:[3B8h][bp+di]
                mov     ax,si
                mov     dh,al
                add     dh,41h                  ; 'A'
                mov     bx,7
                mov     al,0
                callf   sub_16
                pop     bx
                pop     si
                or      ax,ax
                jnz     loc_143
                dec     byte ptr ss:[357h][bp]
loc_143::
                call    sub_34
                mov     cx,cs:data_235
                mov     word ptr ss:[3B9h][bp+di],cx
                mov     dl,[si+3]
                mov     dh,[si+4]
                mov     word ptr ss:[35Ch][bp],di
                mov     al,[si+5]
                cbw
                mov     di,ax
                push    si
                lea     si,[si+6]
                push    ds
                pop     es
                call    sub_36
                or      ax,ax
                jnz     loc_144
                inc     byte ptr ss:[357h][bp]
loc_144::
                pop     si
                mov     di,6C0h
                mov     es,cs:data_159
                or      ax,ax
                jz      loc_145
                jmp     loc_153
loc_145::
                mov     ax,word ptr ss:[79Ch]
                call    sub_35
                mov     dh,[si+4]
                or      al,al
                jz      loc_149
                push    dx
                call    sub_33
                pop     dx
                mov     al,3Ah                  ; ':'
                mov     cl,es:[di]
                xor     ch,ch
                inc     di
                push    di
                mov     bx,cx
                repne   scasb
                mov     ax,bx
                sub     ax,cx
                push    ax
                sub     bx,ax
                mov     cx,bx
                sub     cl,1
                adc     cl,0
                mov     al,[di]
                mov     byte ptr [di],0
                mov     si,di
                mov     di,word ptr ss:[35Ch][bp]
                lea     di,ss:[371h][bp+di]
                jcxz    loc_147
                stosb
                inc     si
                cmp     cx,3Fh
                jbe     loc_146
                mov     cx,3Fh
loc_146::
                rep     movsb
loc_147::
                xor     al,al
                stosb
                pop     di
                pop     si
                jmp     short loc_152

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near
                mov     al,bl
                mov     ah,byte ptr cs:data_178
                sub     al,1Ah
                mul     ah
                mov     di,ax
                retn
sub_34          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near
loc_148::
                push    ax
                push    di
                push    es
                mov     ax,word ptr ss:[79Ch]
                les     di,dword ptr [bp+0Ch]
                inc     di
                inc     di
                stosw
                pop     es
                pop     di
                pop     ax
                retn
sub_35          endp

loc_149::
                mov     cl,[si+5]
                xor     ch,ch
                push    di
                lea     si,[si+6]
                xor     bx,bx
                inc     bx

locloop_150::
                lodsb
                cmp     al,3Ah                  ; ':'
                je      loc_151
                stosb
                inc     bx
                loop    locloop_150

loc_151::
                stosb
                xor     al,al
                stosb
                pop     si
                mov     di,bx
loc_152::
                xor     dl,dl
                mov     byte ptr cs:data_201,0FFh
                call    sub_36
                mov     byte ptr cs:data_201,0
                mov     bx,word ptr ss:[79Ch]
                mov     di,word ptr ss:[35Ch][bp]
                mov     byte ptr ss:[3B8h][bp+di],bl
loc_153::
                mov     byte ptr cs:data_194,0
                jmp     loc_270

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    near
                mov     al,1
                mov     cx,cs:data_235
                mov     bx,6
                callf   sub_16
                retn
sub_36          endp

loc_154::
                inc     byte ptr ss:[357h][bp]
                mov     byte ptr es:data_194,0FFh
loc_155::
                mov     al,bl
                call    sub_42
                jz      loc_158
                call    sub_43
                jz      loc_156
                jmp     short loc_153
loc_156::
                call    sub_32
                mov     es:data_179,5F04h
                push    bx
                push    si
                push    ds
                push    es
                call    sub_37
                pop     es
                pop     ds
                pop     si
                pop     bx
                mov     es:data_179,5F03h
loc_157::
                call    sub_37
                mov     byte ptr cs:data_194,0
                jmp     loc_148
loc_158::
                mov     al,[si+3]
                mov     byte ptr ss:[5E6h],al
                call    sub_32
                jmp     short loc_157

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near
                cmp     cs:data_179,5F03h
                jne     loc_160
                cmp     byte ptr cs:data_194,0
                jne     loc_160
                push    cx
                xor     cx,cx
                push    ds
                pop     es
                lea     di,[si+6]
                mov     al,3Ah                  ; ':'
                mov     cl,[si+5]
                jcxz    loc_159
                repne   scasb
                jnz     loc_159
                mov     cs:data_203,cl
                mov     cs:data_184,di
                mov     al,[si+5]
                mov     cs:data_204,al
                sub     cs:data_204,cl
                lea     ax,[si+6]
                mov     cs:data_185,ax
                mov     byte ptr cs:data_205,1
                cmp     cx,0
                jne     loc_159
                mov     byte ptr cs:data_206,1
loc_159::
                pop     cx
loc_160::
                mov     al,bl
                mov     ah,[si+5]
                lea     si,[si+6]
                push    ds
                pop     es
                call    sub_28
                mov     cs:data_183,ax
                jc      loc_162
                cmp     cs:data_179,5F03h
                jne     loc_162
                cmp     byte ptr cs:data_193,0
                jne     loc_162
                cmp     byte ptr cs:data_206,0
                je      loc_161
                mov     ax,cs:data_183
                jmp     short loc_162
loc_161::
                lds     si,dword ptr [bp+8]
                mov     al,[si+4]
                call    sub_38
loc_162::
                mov     byte ptr cs:data_205,0
                mov     byte ptr cs:data_206,0
                mov     [bp],al
                retn
sub_37          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near
                push    cx
                push    ss
                push    ss
                pop     es
                pop     ds
                mov     bx,ax
                xor     cx,cx
                cmp     cs:data_182,cx
                je      loc_163
                push    ax
                mov     si,cs:data_182
                mov     di,si
                inc     di
                mov     cs:data_182,cx
                lodsb
                cbw
                mov     cx,ax
                xchg    bx,ax
                mov     byte ptr [bx+si],0
                mov     al,3Ah                  ; ':'
                repne   scasb
                dec     di
                dec     di
                mov     al,cs:data_200
                stosb
                dec     di
                mov     dx,di
                call    sub_15
                pop     bx
loc_163::
                push    ss
                pop     es
                mov     di,65Ch
                xor     ch,ch
                lds     si,dword ptr [bp+8]
                mov     al,bl
                cmp     byte ptr cs:data_205,0
                je      loc_164
                mov     cl,cs:data_203
                mov     si,cs:data_184
                jmp     short loc_165
loc_164::
                mov     cl,[si+5]
                lea     si,[si+6]
                jcxz    loc_166
loc_165::
                mov     ah,3Ah                  ; ':'
                stosw
                mov     dx,65Ch
                rep     movsb
                xor     al,al
                stosb
                push    es
                pop     ds
                call    sub_15
                jc      loc_167
loc_166::
                xor     al,al
loc_167::
                pop     cx
                retn
sub_38          endp

                                                ;* No entry point to code
                mov     di,[bp+0Ch]
                mov     si,[bp+8]
                mov     es,[bp+0Ah]
                dec     byte ptr es:[si+3]
                call    sub_44
                mov     al,16h
                push    ax
                push    cx
                push    dx
                push    di
                push    si
                push    cx
                mov     cx,data_235
                pop     bx
                call    sub_48
                call    sub_12
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     ax
                dec     di
                dec     di
                mov     es,[bp+0Ah]
                inc     byte ptr es:[si+3]
                mov     ax,es:[si]
                xchg    al,ah
                mov     es:[si],ax
                call    sub_44
                mov     al,16h
                jmp     loc_248
loc_168::
                push    ds
                push    cs
                pop     ds
                mov     cx,data_235
                pop     ds
                mov     dl,[si+3]
                mov     al,dl
                mov     byte ptr cs:data_194,0FFh
                call    sub_41
                jz      loc_169
                mov     byte ptr cs:data_196,0FFh
                jmp     short loc_171
loc_169::
                mov     byte ptr cs:data_194,0
                cmp     si,1Ah
                jb      loc_172
                mov     cl,byte ptr es:[2E4h][si]
                xor     ch,ch
                mov     bl,0
                push    cs
                pop     ds
                call    sub_24
                mov     cx,bx
                mov     bx,si
                mov     dh,bl
                add     dh,41h                  ; 'A'
                call    sub_34
                push    dx
                mov     dl,byte ptr ss:[3B8h][bp+di]
                mov     byte ptr data_194,0FFh
                mov     byte ptr cs:data_201,0FFh
                call    sub_39
                or      ax,ax
                jnz     loc_170
                dec     byte ptr es:[357h]
loc_170::
                mov     byte ptr data_194,0
                pop     dx
loc_171::
                mov     byte ptr cs:data_201,0
                call    sub_39
                mov     byte ptr cs:data_194,0
                mov     byte ptr cs:data_196,0
                jmp     loc_270

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near
                mov     bx,7
                mov     al,0
                callf   sub_16
                retn
sub_39          endp

loc_172::
                mov     al,byte ptr ss:[2C4h][bp+si]
                test    al,2
                jz      loc_173
                dec     byte ptr es:[357h]
loc_173::
                mov     bx,si
                call    sub_37
                les     di,dword ptr [bp+0Ch]
                xor     ax,ax
                stosw
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near
                push    ax
                push    si
                push    ds
                push    cs
                pop     ds
                mov     ds,data_159
                xchg    si,ax
                mov     ah,byte ptr cs:data_178
                sub     al,1Ah
                mul     ah
                xchg    si,ax
                assume  ds:seg_b
                mov     byte ptr data_288[si],0
                pop     ds
                pop     si
                pop     ax
                retn
sub_40          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    near
                push    cx
                push    dx
                push    ss
                pop     es
                mov     di,2A4h
                mov     cx,20h
loc_174::
                repne   scasb
                jnz     loc_175
                mov     si,di
                sub     si,2A4h
                dec     si
                mov     dh,byte ptr ss:[2E4h][bp+si]
                cmp     dh,byte ptr ss:[649h]
                jne     loc_174
loc_175::
                pop     dx
                pop     cx
                retn
sub_41          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near
                cbw
                mov     di,ax
                mov     al,byte ptr ss:[2A4h][bp+di]
                or      al,al
                retn
sub_42          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near
                push    bx
                push    dx
                push    si
                push    ds
                push    es
                push    ds
                push    es
                pop     ds
                mov     cl,byte ptr ss:[649h]
                xor     ch,ch
                mov     bl,0
                call    sub_24
                mov     cx,bx
                pop     ds
                mov     di,65Ch
                push    di
                push    ss
                pop     es
                mov     ax,[si]
                inc     ax
                inc     ax
                mov     dx,ax
                dec     dx
                xchg    al,ah
                stosw
                mov     al,3
                stosb
                mov     al,[si+3]
                cmp     byte ptr [si+2],0
                jne     loc_176
                mov     al,[si+4]
loc_176::
                or      al,al
                jz      loc_177
                mov     byte ptr es:[5E6h],al
loc_177::
                stosb
                push    cx
                xor     ch,ch
                mov     cl,[si+5]
                inc     cx
                lea     si,[si+5]
                rep     movsb
                pop     cx
                pop     di
                mov     si,64Ch
                push    ss
                pop     ds
                mov     [si+4],dx
                mov     [si],di
                mov     [si+2],ds
                mov     ax,762h
                mov     di,652h
                mov     word ptr [di+4],1
                mov     [di],ax
                mov     [di+2],ss
                mov     ax,16h
                mov     bx,1
                mov     dx,bx
                call    sub_12
                pop     es
                pop     ds
                pop     si
                pop     dx
                pop     bx
                retn
sub_43          endp

                                                ;* No entry point to code
                call    sub_44
                assume  ds:seg_a
                mov     byte ptr data_191,0FFh
                mov     al,17h
                jmp     loc_248

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near
                mov     ds,[bp+0Ah]
                lodsw
                dec     si
                dec     si
                mov     cx,ax
                xchg    al,ah
                mov     [si],ax
                push    ds
                push    cs
                pop     ds
                mov     byte ptr data_198,0FFh
                pop     ds
                mov     es,[bp+0Eh]
                inc     cx
                inc     cx
                mov     dx,es:[di]
                inc     di
                inc     di
                push    cs
                pop     ds
                retn
sub_44          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45          proc    near
                mov     cx,100h
                xor     ax,ax
                repne   scasb
                neg     cx
                add     cx,0FFh
                retn
sub_45          endp

                                                ;* No entry point to code
                cmp     al,9
                jbe     loc_178
                jmp     loc_269
loc_178::
                mov     bl,al
                xor     bh,bh
                add     bx,bx
                mov     si,bx
                mov     bx,[bp+2]
                jmp     word ptr data_209[si]   ;*16 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_179::
                mov     ax,dx
                cbw
                xchg    si,ax
                mov     al,byte ptr ss:[2A4h][bp+si]
                mov     ah,byte ptr ss:[2C4h][bp+si]
                cmp     ah,0
                jne     loc_180
                cmp     dx,1Ah
                jae     loc_180
                push    ax
                push    es
                push    si
                les     si,data_165
                mov     ax,dx
                mul     byte ptr data_178
                add     si,ax
                cmp     word ptr es:[si+43h],0
                pop     si
                pop     es
                pop     ax
                jz      loc_180
                mov     ax,8000h
loc_180::
                jmp     loc_271

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_181::
                push    dx
                pop     di
                mov     es,[bp+0Ah]
                mov     si,324h
                push    ss
                pop     ds
                mov     cx,8
                rep     movsw
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_182::
                push    dx
                pop     si
                push    ss
                pop     es
                mov     ds,[bp+0Ah]
                mov     di,324h
                mov     cx,8
                rep     movsw
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_183::
                mov     bx,dx
                or      byte ptr ss:[2C4h][bx],80h
                add     dl,41h                  ; 'A'
                mov     si,65Ch
                mov     [si],dl
                inc     si
                mov     word ptr [si],3Ah
                mov     ax,5F04h
                pushf
                call    dword ptr [bp+20h]      ;*
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_184::
                mov     si,dx
                and     byte ptr ss:[2C4h][bp+si],7Fh
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_185::
                mov     ax,3
                cmp     bl,1Ah
                ja      loc_186
                or      bl,bl
                jz      loc_187
                dec     bx
                jmp     short loc_188
loc_186::
                jmp     loc_270
loc_187::
                les     di,data_167
                mov     bl,es:[di+16h]
loc_188::
                mov     ah,60h                  ; '`'
                mov     si,dx
                mov     ds,[bp+0Ah]
                mov     di,6DCh
                push    ss
                pop     es
                cmp     word ptr [si],5C5Ch
                je      loc_189
                cmp     word ptr [si],2F2Fh
                jne     loc_191
loc_189::
                pushf
                call    dword ptr cs:data_155
                jc      loc_191
                mov     ax,5C5Ch
                cmp     es:[di],ax
                je      loc_190
                inc     di
                inc     di
                cmp     es:[di],ax
                je      loc_190
                add     sp,2
                mov     al,0FFh
                jmp     loc_198
loc_190::
                push    ss
                pop     ds
                mov     ax,4300h
                mov     dx,di
                pushf
                call    dword ptr cs:data_155
                jc      loc_191
                mov     di,6D9h
                mov     si,di
                mov     ah,3Ah                  ; ':'
                mov     al,bl
                add     al,41h                  ; 'A'
                stosw
                xor     ax,ax
                stosb
                mov     ax,5F04h
                pushf
                call    dword ptr data_36
                mov     ax,5F03h
                mov     bx,4
                mov     cx,4E57h
                mov     di,6DCh
                pushf
                call    dword ptr data_36
                jc      loc_198
                xor     ax,ax
                jmp     short loc_198
loc_191::
                push    ss
                pop     ds
                mov     di,65Ch
                mov     si,dx
                mov     ds,[bp+0Ah]
                cmp     byte ptr [si+1],3Ah     ; ':'
                je      loc_202
                cmp     byte ptr [si],2Eh       ; '.'
                je      loc_197
                mov     di,dx
                push    ds
                pop     es
loc_192::
                cmp     byte ptr es:[di],3Ah    ; ':'
                je      loc_193
                cmp     byte ptr es:[di],0
                jne     loc_194
loc_193::
                push    ss
                pop     es
                mov     di,65Ch
                jmp     short loc_199
loc_194::
                cmp     byte ptr es:[di],5Ch    ; '\'
                je      loc_195
                cmp     byte ptr es:[di],2Fh    ; '/'
                jne     loc_196
loc_195::
                push    ss
                pop     es
                mov     di,65Ch
                jmp     short loc_202
loc_196::
                inc     di
                jmp     short loc_192
loc_197::
                mov     al,bl
                add     al,41h                  ; 'A'
                mov     ah,3Ah                  ; ':'
                stosw
                jmp     short loc_202
loc_198::
                jmp     loc_270
loc_199::
                push    si
                push    ds
                push    ss
                pop     ds
                mov     al,byte ptr ds:[649h]
                dec     ax
                mov     si,124h
                mov     cx,30h
                mul     cl
                add     si,ax
loc_200::
                lodsb
                or      al,al
                jz      loc_201
                stosb
                jmp     short loc_200
loc_201::
                pop     ds
                pop     si
                cmp     byte ptr [si],5Ch       ; '\'
                je      loc_202
                mov     al,5Ch                  ; '\'
                stosb
loc_202::
                lodsb
                or      al,al
                jz      loc_203
                stosb
                jmp     short loc_202
loc_203::
                stosb
                mov     si,65Ch
                push    es
                pop     ds
                call    sub_46
                mov     dx,di
                push    cs
                pop     ds
                push    ds
                call    sub_47
                pop     ds
                xor     al,al
                mov     di,dx
                mov     ax,5C5Ch
                scasw
                mov     ax,0FFFFh
                jnz     loc_198
                mov     al,5Ch                  ; '\'
                mov     cx,0FEh
                repne   scasb
                jnz     loc_198
                mov     si,di
                call    sub_45
                mov     ah,cl
                mov     cs:data_179,5F03h
                mov     al,bl
                inc     cs:data_199
                call    sub_28
                jc      loc_198
                xor     al,al
                jmp     short loc_198
                db      0B8h, 0Fh, 00h,0C3h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_204::
                or      bl,bl
                jnz     loc_205
                les     si,data_167
                mov     bl,es:[si+16h]
                inc     bx
loc_205::
                dec     bx
                xor     bh,bh
                mov     byte ptr ss:[337h][bx],0FFh
                mov     di,65Ch
                mov     si,di
                push    si
                mov     ax,bx
                add     al,41h                  ; 'A'
                mov     ah,3Ah                  ; ':'
                push    ss
                push    ss
                pop     es
                pop     ds
                stosw
                xor     al,al
                stosb
                dec     di
                mov     bx,0
                call    sub_13
                mov     cx,100h
                repne   scasb
                mov     word ptr es:[di-1],5C00h
                pop     dx
                mov     ah,3Bh                  ; ';'
                pushf
                call    dword ptr [bp+20h]      ;*
                jmp     loc_268

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_206::
                or      bl,bl
                jnz     loc_207
                les     di,data_167
                mov     bl,es:[di+16h]
                inc     bx
loc_207::
                dec     bx
                xor     bh,bh
                mov     al,0FFh
                cmp     bl,1Ah
                jae     loc_208
                mov     al,byte ptr ss:[337h][bx]
                xor     ah,ah
                jmp     loc_271
loc_208::
                jmp     loc_270

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_209::
                push    bx
                xor     ax,ax
                mov     bx,5
                call    sub_13
                pop     bx
                push    cx
                xor     cx,cx
                or      bl,bl
                jz      loc_210
                mov     cl,1
loc_210::
                mov     ax,1
                mov     bx,5
                call    sub_13
                pop     cx
                mov     [bp+2],cl
                jmp     loc_270

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_211::
                push    ss
                pop     es
                mov     di,65Ch
                call    sub_14
                or      ax,ax
                jnz     loc_212
                push    ax
                mov     ax,es:[di]
                mov     [bp+2],ax
                mov     ax,es:[di+2]
                mov     [bp+4],ax
                mov     ax,es:[di+4]
                mov     [bp+6],ax
                pop     ax
loc_212::
                jmp     loc_270

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46          proc    near
                mov     di,6DCh
                mov     ah,60h                  ; '`'
                pushf
                call    dword ptr cs:data_155
                mov     ax,5C5Ch
                cmp     es:[di],ax
                je      loc_ret_213
                inc     di
                inc     di
                cmp     es:[di],ax
                je      loc_ret_213
                add     sp,2
                mov     al,0FFh
                jmp     loc_270

loc_ret_213::
                retn
sub_46          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_47          proc    near
                mov     al,bl
                call    sub_42
                jz      loc_ret_214
                mov     al,bl
                mov     cs:data_179,5F04h
                push    bx
                push    dx
                push    di
                push    ds
                call    sub_28
                pop     ds
                pop     di
                pop     dx
                pop     bx

loc_ret_214::
                retn
sub_47          endp

                                                ;* No entry point to code
                or      al,al
                jz      loc_215
                mov     ds,data_159
                mov     si,offset data_303
                mov     cx,1Ch
                rep     movsb
loc_215::
                mov     word ptr [bp],0
                mov     word ptr [bp+2],415h
                mov     word ptr [bp+4],300h
                retn
                                                ;* No entry point to code
                push    ss
                pop     ds
                mov     si,0A10h
                mov     ax,[si+4]
                xchg    ah,al
                mov     [bp+4],ax
                mov     ax,[si+6]
                xchg    ah,al
                mov     [bp+2],ax
                mov     ax,[si+8]
                xchg    ah,al
                mov     [bp],ax
                retn
                                                ;* No entry point to code
                cmp     al,6
                ja      loc_ret_216
                mov     bl,al
                xor     bh,bh
                add     bx,bx
                mov     ax,word ptr data_225[bx]
                mov     [bp+8],ax
                mov     [bp+0Eh],ss
                xor     ax,ax
                mov     [bp],ax

loc_ret_216::
                retn
                                                ;* No entry point to code
                cmp     al,5
                jbe     loc_217
                jmp     loc_234
loc_217::
                mov     bl,al
                xor     bh,bh
                add     bx,bx
                jmp     word ptr data_219[bx]   ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_218::
                cmp     dl,8
                ja      loc_ret_223
                or      dl,dl
                jz      loc_219
                mov     bl,dl
                xor     bh,bh
                dec     bx
                mov     cx,5
                shl     bx,cl
                cmp     byte ptr ss:[bx+24h],0FFh
                jne     loc_228
loc_219::
                mov     byte ptr ss:[64Ah],dl
loc_220::
                jmp     loc_268

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_221::
                mov     al,byte ptr ss:[64Ah]
                jmp     loc_272

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_222::
                call    sub_29
                mov     al,byte ptr ss:[649h]
                jmp     loc_272

loc_ret_223::
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_224::
                mov     dl,data_192
                xor     dh,dh
                mov     bx,1
                mov     byte ptr [bp+1],0
                call    sub_11
                jz      loc_225
                xor     ax,ax
                jmp     short loc_228
loc_225::
                push    ss
                pop     es
                mov     di,65Ch
                mov     ax,4
                mov     bx,3
                mov     cx,2
                call    sub_10
                jnz     loc_230
                mov     cx,word ptr es:[65Ch]
                mov     al,0FFh
                or      cx,cx
                jnz     loc_226
                mov     bl,1
                jmp     short loc_227
loc_226::
                mov     bl,1
                call    sub_24
                jz      loc_230
loc_227::
                mov     ah,al
                mov     al,bl
loc_228::
                cmp     al,4Ch                  ; 'L'
                jne     loc_229
                mov     ax,1
loc_229::
                jmp     loc_271
loc_230::
                jmp     loc_269

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_231::
                cmp     dl,8
                ja      loc_ret_223
                or      dl,dl
                jz      loc_232
                mov     bl,0
                xor     ch,ch
                mov     cl,dl
                call    sub_24
                jz      loc_233
loc_232::
                mov     byte ptr ss:[648h],dl
                mov     cx,bx
                mov     ax,2
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_161
                pop     bp
loc_233::
                jmp     loc_220

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_234::
                mov     al,byte ptr ss:[648h]
                jmp     loc_272
                                                ;* No entry point to code
                cbw
                or      al,al
                jnz     loc_236
                dec     dx
                mov     al,dl
                add     ax,ax
                mov     di,ax
                mov     cx,4
                shl     ax,cl
                mov     si,ax
                cmp     byte ptr [bp+si+24h],0FFh
                jne     loc_237
                mov     cx,data_233[di]
                or      cx,cx
                jz      loc_238
loc_235::
                xor     al,al
                jmp     loc_270
loc_236::
                jmp     short loc_242
loc_237::
                jmp     short loc_237
loc_238::
                push    ss
                pop     ds
                push    si
                push    dx
                mov     ax,di
                shr     ax,1
                mov     si,124h
                mov     cx,30h
                mov     dl,cl
                mul     dl
                add     si,ax
                xor     cx,cx
                call    sub_4
                pop     dx
                pop     si
                jz      loc_239
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jnz     loc_241
                push    dx
                lea     si,[bp+si+26h]
                mov     dl,8
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                pop     dx
                jnz     loc_240
loc_239::
                mov     bl,dl
                xor     bh,bh
                call    sub_27
                jmp     short loc_235
                jmp     short loc_235
loc_240::
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                inc     dx
                xchg    dx,bx
                push    cs
                pop     ds
                call    sub_18
loc_241::
                jmp     loc_269
loc_242::
                dec     ax
                jnz     loc_243
                xor     ch,ch
                mov     cl,dl
                mov     bl,0
                call    sub_24
                mov     cx,bx
                mov     dl,1
                call    sub_8
                jmp     short loc_245
loc_243::
                dec     ax
                jnz     loc_241
                mov     bl,dl
                xor     bh,bh
                dec     bx
                add     bx,bx
                mov     cx,data_233[bx]
                les     si,data_167
                mov     al,es:[si+16h]
                cbw
                mov     bx,ax
                mov     es,data_159
                xor     dx,dx
                mov     al,byte ptr es:data_334+1
                cmp     es:data_271[bx],al
                jne     loc_244
                mov     al,data_197
                sub     al,41h                  ; 'A'
;*              cmp     al,bl
                db       3Ah,0C3h
                jnc     loc_244
                mov     al,es:data_271[bx]
                add     al,0FFh
                adc     dx,1
                inc     al
loc_244::
                call    sub_9
                or      dx,dx
                jnz     loc_246
loc_245::
                jmp     loc_270
loc_246::
                mov     al,byte ptr es:data_334+1
                mov     es:data_271[bx],al
                mov     al,1
                mov     es:data_269[bx],al
                mov     es:data_270[bx],al
                jmp     loc_274
data_107        db      68h
                db       79h, 71h, 7Ch, 69h, 7Fh, 72h
                db       83h, 73h, 84h
data_108        dw      offset loc_260          ; Data table (indexed access)
data_109        dw      offset loc_261
data_110        dw      offset loc_260
data_111        dw      offset loc_261
data_112        dw      offset loc_259
data_113        dw      offset loc_259
data_114        dw      offset loc_259
data_115        dw      offset loc_259
data_116        dw      offset loc_259
data_117        dw      offset loc_259
loc_247::
                jmp     loc_269
loc_248::
                push    cx
                call    sub_29
                pop     bx
                jz      loc_247
                call    sub_48
                mov     cs:data_175,ax
loc_249::
                call    sub_12
                mov     bx,ax
                lahf
                cmp     bx,8805h
                jne     loc_251
                mov     al,cs:data_157
                or      al,al
                jz      loc_250
                xchg    bx,ax
                jmp     short loc_251
loc_250::
                call    sub_49
                jcxz    loc_251
                mov     ax,cs:data_175
                jmp     short loc_249
loc_251::
                cmp     byte ptr cs:data_198,0FFh
                jne     loc_252
                mov     byte ptr cs:data_198,0
                push    ax
                push    si
                push    ds
                mov     ds,[bp+0Ah]
                mov     si,[bp+8]
                lodsw
                xchg    al,ah
                mov     [si-2],ax
                pop     ds
                pop     si
                pop     ax
loc_252::
                mov     bx,cs:data_175
                cmp     bl,17h
                jne     loc_255
                lds     si,dword ptr [si]
                mov     bl,[si+2]
                or      bl,bl
                jz      loc_253
                cmp     bl,18h
                je      loc_253
                cmp     bl,14h
                je      loc_253
                jmp     short loc_255
loc_253::
                cmp     al,0DFh
                je      loc_254
                sahf
                jnz     loc_255
loc_254::
                push    ax
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_1e,31h
                xor     ax,ax
                pop     ds
                mov     bh,3
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                pop     ax
                cmp     byte ptr cs:data_202,0FFh
                je      loc_255
                call    sub_50
loc_255::
                cmp     byte ptr cs:data_191,0FFh
                jne     loc_257
                lds     si,dword ptr ss:[di]
                push    ax
                xchg    al,bl
                push    cx
                mov     cx,0Ah
                mov     di,offset data_107
                push    cs
                pop     es
                repne   scasb
                pop     cx
                jz      loc_258
loc_256::
                mov     byte ptr cs:data_191,0
                pop     ax
loc_257::
                jmp     loc_270
loc_258::
                sub     di,1717h
                add     di,di
                jmp     word ptr cs:data_108[di]        ;*

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_259::
                mov     al,0
                jmp     short loc_263

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_260::
                mov     bx,2Ch
                lea     si,[bx+si]
                lodsw
                xchg    dx,ax
                lodsw
                xchg    di,ax
                jmp     short loc_262

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_261::
                mov     bx,3Eh
                lea     si,[bx+si]
                lodsw
                xchg    di,ax
                lodsw
                xchg    dx,ax
loc_262::
                mov     al,1
loc_263::
                mov     bx,2
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jmp     short loc_256

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_48          proc    near
                push    ss
                pop     ds
                push    ax
                mov     word ptr ds:[64Ch],si
                mov     ax,[bp+0Ah]
                mov     word ptr ds:[64Eh],ax
                mov     word ptr ds:[650h],bx
                mov     word ptr ds:[652h],di
                mov     ax,[bp+0Eh]
                mov     word ptr ds:[654h],ax
                mov     word ptr ds:[656h],dx
                pop     ax
                mov     si,64Ch
                mov     di,652h
                push    ds
                pop     es
                mov     bx,101h
                mov     dx,1
                retn
sub_48          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_49          proc    near
                mov     word ptr ss:[35Eh][bp],sp
                mov     word ptr ss:[360h][bp],ss
                mov     ss,data_35
                mov     sp,data_34
                mov     ax,50h
                push    ax
                push    cx
                call    dword ptr cs:data_171
                pop     cx
                add     sp,2
                mov     al,5
                mov     bx,101h
                mov     cs:data_177,es
                mov     es,cs:data_159
                mov     ss,es:data_280[bp]
                mov     sp,es:data_279[bp]
                mov     es,cs:data_177
                retn
sub_49          endp

                                                ;* No entry point to code
                mov     ds,[bp+0Eh]
                mov     bx,[di]
                mov     si,bx
                xor     dx,dx
                xor     cx,cx
                mov     ax,4201h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_266
                push    dx
                push    ax
                mov     bx,[di+2]
                xor     dx,dx
                xor     cx,cx
                mov     ax,4201h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_265
                push    dx
                push    ax
                mov     bx,[di]
                mov     dx,[di+4]
                mov     cx,[di+6]
                mov     ax,4200h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_264
                mov     bx,[di+2]
                mov     dx,[di+8]
                mov     cx,[di+0Ah]
                mov     ax,4200h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_264
                mov     bx,4E57h
                mov     cx,[di+0Ch]
                mov     dx,[di+0Eh]
                push    di
                mov     di,[di+2]
                mov     ax,1127h
                int     2Fh                     ; ??INT Non-standard interrupt
                pop     di
                jc      loc_264
                mov     [bp+6],dx
                mov     [bp+4],cx
                pop     dx
                pop     cx
                mov     bx,[di+2]
                mov     ax,4200h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_265
                pop     dx
                pop     cx
                mov     bx,[di]
                mov     ax,4200h
                pushf
                call    dword ptr [bp+20h]      ;*
                jc      loc_266
                xor     al,al
                jmp     short loc_266
loc_264::
                pop     bx
                pop     bx
loc_265::
                pop     bx
                pop     bx
loc_266::
                jmp     short loc_270
                                                ;* No entry point to code
                mov     bx,[bp+2]
                pushf
                call    dword ptr data_155
                mov     [bp],ax
                pushf
                pop     bx
                and     bl,1
                mov     cl,[bp+16h]
                and     cl,0FEh
                or      cl,bl
                mov     [bp+16h],cl
                or      bl,bl
                jnz     loc_ret_267
                mov     [bp+6],dx
                mov     bx,[bp+2]
                push    ss
                pop     es
                mov     di,65Ch
                call    sub_14
                or      ax,ax
                jnz     loc_ret_267
                mov     bl,1
                call    sub_24
                jz      loc_ret_267
                xor     bh,bh
                mov     [bp+4],bx

loc_ret_267::
                retn
                db       32h,0C0h,0E9h,0FEh,0F0h
loc_268::
                xor     ax,ax
                jmp     short loc_270
loc_269::
                mov     al,0FFh
loc_270::
                mov     [bp],al
                or      al,al
                jz      loc_273
                or      byte ptr [bp+16h],1
                jmp     loc_112
loc_271::
                mov     [bp+1],ah
loc_272::
                mov     [bp],al
loc_273::
                and     byte ptr [bp+16h],0FEh
                jmp     loc_112
loc_274::
                push    ss
                pop     es
                mov     di,2A4h
                push    di
                mov     al,1
                mov     cx,20h
                repne   scasb
                pop     ax
                jnz     loc_275
                sub     di,ax
                dec     di
                mov     al,byte ptr ss:[2E4h][di]
                xchg    byte ptr ss:[64Ah],al
                mov     data_190,al
                mov     ax,di
                mov     ah,9
                mov     si,7A6h
                mov     data_179,5F03h
                call    sub_28
                push    cs
                pop     ds
                mov     es,bx
                mov     al,data_190
                mov     byte ptr ss:[64Ah],al
loc_275::
                mov     byte ptr ss:[79Fh],0FFh
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_50          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                mov     cs:data_236,cx
                les     di,cs:data_173
                mov     ax,es:[di-2]
                or      ax,ax
                jnz     loc_276
                jmp     loc_281
loc_276::
                mov     cx,es:[3h]
                dec     ax
                mov     es,ax
                inc     ax
                mov     es,ax
                shl     cx,1
                shl     cx,1
                shl     cx,1
                shl     cx,1
                xor     di,di
                mov     al,42h                  ; 'B'
                mov     dx,5441h
loc_277::
                repne   scasb
                jz      loc_278
                jmp     loc_281
loc_278::
                cmp     es:[di],dx
                jne     loc_277
                push    es
                pop     ds
                mov     si,di
                add     si,2
                mov     dx,si
                add     dx,7
                std
                mov     cx,100h
                mov     al,3Ah                  ; ':'
                repne   scasb
                jnz     loc_281
                xor     ax,ax
                mov     al,es:[di]
                sub     al,41h                  ; 'A'
                mov     cx,cs:data_236
                push    ax
                push    es
                push    si
                les     si,cs:data_165
                mul     byte ptr cs:data_178
                add     si,ax
                cmp     es:[si+4Bh],cx
                pop     si
                pop     es
                pop     ax
                jnz     loc_281
                push    si
                xchg    si,ax
                mov     al,byte ptr ss:[2A4h][bp+si]
                pop     si
                or      al,al
                jz      loc_281
                dec     ax
                jnz     loc_281
                cmp     word ptr es:[di+3],4F4Ch
                jne     loc_279
                cmp     word ptr es:[di+5],4947h
                je      loc_281
loc_279::
                cmp     byte ptr es:[di+2],5Ch  ; '\'
                jne     loc_280
                dec     dx
loc_280::
                add     di,2
                mov     bx,di
                mov     ax,dx
                sub     ax,bx
                xchg    cx,ax
                mov     di,dx
                rep     movsb
                mov     word ptr [bx],4C5Ch
                mov     word ptr [bx+2],474Fh
                mov     word ptr [bx+4],4E49h
                mov     byte ptr [bx+6],5Ch     ; '\'
                cld
loc_281::
                mov     byte ptr cs:data_202,0FFh
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_50          endp

                db       00h, 00h, 3Ch, 05h, 73h, 04h
                db       3Ch, 02h, 75h, 09h, 53h,0B3h
                db       00h,0E8h, 36h,0ECh, 8Bh,0CBh
                db       5Bh, 8Eh, 5Eh, 0Ah, 55h,0BDh
                db       50h, 00h, 55h,0BDh, 30h, 00h
                db       55h,0BDh, 10h, 00h, 55h, 2Eh
                db      0FFh, 1Eh, 7Ch, 26h, 5Dh, 89h
                db       5Eh, 02h, 89h, 4Eh, 04h, 74h
                db       03h,0B8h, 01h, 00h
loc_282::
                jmp     loc_271
                                                ;* No entry point to code
                push    ss
                pop     es
                mov     di,65Ch
                push    di
                push    si
                inc     si
                inc     si
                mov     ds,[bp+0Ah]
                mov     cx,3
                rep     movsw
                xor     ax,ax
                stosw
                mov     ax,5624h
                mov     cx,3
                rep     stosw
                mov     al,byte ptr es:[79Eh]
                add     al,1
                mov     byte ptr es:[79Eh],al
                daa
                mov     ah,al
                and     al,0Fh
                mov     cx,4
                shr     ah,cl
                add     ax,3030h
                stosw
                mov     al,2Eh                  ; '.'
                stosb
                xor     ax,ax
                stosb
                stosw
                stosw
                pop     si
                mov     al,[si+1]
                stosb
                mov     cx,0Bh
                xor     ax,ax
                rep     stosb
                pop     di
                xor     ch,ch
                mov     cl,[si]
                mov     bl,0
                mov     ax,seg_a
                mov     ds,ax
                call    sub_24
                mov     cx,bx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     ax,bx
                jmp     loc_271
data_118        dw      offset loc_283          ; Data table (indexed access)
data_119        dw      offset loc_ret_284
data_120        dw      offset loc_ret_284
data_121        dw      offset loc_285
data_122        dw      offset loc_286
data_123        dw      offset loc_ret_284
data_124        dw      offset loc_287
data_125        dw      offset loc_ret_284
data_126        dw      offset loc_94
data_127        dw      offset loc_5
                db      0C3h, 98h,0D1h,0E0h, 8Bh,0D8h
                db      0FFh,0A7h
                db       56h, 1Bh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_283::
                mov     word ptr [bp+4],0
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ


loc_ret_284::
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_285::
                xor     ax,ax
                push    ds
                push    ss
                pop     ds
                mov     al,byte ptr ds:[7A1h]
                pop     ds
                mov     [bp],ax
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_286::
                mov     [bp+0Eh],ss
                mov     word ptr [bp+2],7A1h
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_287::
                mov     word ptr [bp],2
                retn
                                                ;* No entry point to code
                push    ax
                xor     ax,ax
                inc     ax
                call    sub_51
                pop     ax
                mov     ah,43h                  ; 'C'
                mov     ds,[bp+0Ah]
                xor     cx,cx
                pushf
                call    dword ptr cs:data_155
                mov     [bp],ax
                mov     [bp+4],cx
                pushf
                pop     word ptr [bp+16h]
                xor     ax,ax

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_51          proc    near
                mov     bx,3
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_51          endp

data_128        dw      offset loc_288          ; Data table (indexed access)
data_129        dw      offset loc_294
data_130        dw      offset loc_289
data_131        dw      offset loc_296
data_132        dw      offset loc_303
data_133        dw      offset loc_304
data_134        dw      offset loc_306
data_135        dw      offset loc_307
data_136        dw      offset loc_309
data_137        dw      offset loc_310
data_138        dw      offset loc_307
data_139        dw      offset loc_311
data_140        dw      0C3Ch
data_141        dw      572h
                db      0B0h,0FFh,0E9h, 8Eh,0FDh, 98h
                db       8Bh,0D8h,0D1h,0E3h,0FFh,0A7h
                db      0CFh
                db      1Bh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_288::
                mov     dh,data_192

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_289::
                xor     dl,dl
                xchg    dl,dh
                mov     di,[bp+2]
                mov     bx,3
                mov     cx,2
                mov     ax,4
                push    dx
                call    sub_10
                pop     dx
                jnz     loc_292
                mov     si,es:[di]
                mov     bx,1
                mov     cx,[bp+4]
                xor     ax,ax
                call    sub_10
                cmp     cx,16h
                jbe     loc_290
                mov     ax,es:[di+16h]
                push    dx
                mov     dx,12h
                mul     dx
                pop     dx
                mov     es:[di+16h],ax
                xor     ax,ax
loc_290::
                mov     cx,si
                mov     bl,1
                call    sub_24
                jz      loc_291
                cmp     word ptr [bp+4],35h
                jbe     loc_291
                mov     es:[di+35h],bl
loc_291::
                jmp     loc_305
loc_292::
                push    ax
                xor     al,al
                mov     cx,[bp+4]
                push    di
                rep     stosb
                pop     di
                cmp     word ptr [bp+4],35h
                jb      loc_293
                add     di,2Dh
                mov     ax,0A44h
                stosw
                mov     ax,data_159
                stosw
                mov     ax,0A44h
                stosw
                mov     ax,data_159
                stosw
loc_293::
                pop     ax
                jmp     loc_270

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_294::
                cmp     cx,15h
                jb      loc_295
                mov     bx,[bp+2]
                mov     dh,es:[bx+15h]
                cmp     dh,0
                je      loc_295
                mov     data_192,dh
loc_295::
                mov     dh,data_192

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_296::
                xor     dl,dl
                xchg    dl,dh
                mov     bx,[bp+2]
                cmp     cx,3
                jbe     loc_297
                mov     al,es:[bx+3]
                mov     data_187,al
                mov     byte ptr es:[bx+3],0
loc_297::
                cmp     cx,35h
                jbe     loc_298
                mov     cl,es:[bx+35h]
                xor     ch,ch
                mov     bl,0
                call    sub_24
                jz      loc_298
                push    ss
                pop     ds
                mov     si,65Ch
                mov     [si],cx
                mov     ax,4
                mov     cx,2
                mov     bx,2
                push    dx
                call    sub_10
                pop     dx
                jnz     loc_300
loc_298::
                push    es
                pop     ds
                mov     si,[bp+2]
                mov     cx,[bp+4]
                cmp     cx,16h
                jbe     loc_299
                mov     ax,[si+16h]
                mov     cs:data_186,ax
                mov     ax,[si+16h]
                push    dx
                push    cx
                xor     cx,cx
                xor     dx,dx
                mov     cl,12h
                div     cx
                pop     cx
                pop     dx
                mov     [si+16h],ax
loc_299::
                mov     bx,0
                xor     ax,ax
                call    sub_10
                jnz     loc_300
                xor     al,al
loc_300::
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                test    data_186,0FFFFh
                jz      loc_301
                mov     ax,data_186
                mov     es:[si+16h],ax
loc_301::
                test    byte ptr data_187,0FFh
                jz      loc_302
                mov     al,cs:data_187
                mov     es:[si+3],al
loc_302::
                pop     ax
                mov     byte ptr data_187,0
                mov     data_186,0
                mov     [bp],al
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_303::
                mov     al,data_192
                mov     [bp+7],al
                jmp     short loc_305

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_304::
                mov     data_192,dh
loc_305::
                xor     ax,ax
                jmp     loc_271

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_306::
                mov     di,65Ch
                push    ss
                pop     es
                push    cx
                push    dx
                mov     dx,[bp+2]
                mov     si,cx
                mov     bx,4
                push    es
                call    sub_29
                pop     es
                call    sub_7
                push    es
                pop     ds
                pop     dx
                xchg    dh,dl
                xor     dh,dh
                push    dx
                xchg    di,si
                mov     bx,2
                mov     cx,41h
                mov     ax,6
                call    sub_10
                pop     dx
                pop     cx
                mov     bx,[bp+2]
                mov     [si],bx
                mov     [si+2],cx
                mov     bx,0
                mov     cx,4
                mov     ax,39h
                mov     di,4E57h
                call    sub_10
                jmp     loc_271

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_307::
                xor     dl,dl
                xchg    dl,dh
                push    ss
                pop     ds
loc_308::
                mov     si,65Ch
                mov     ax,[bp+2]
                mov     [si],ax
                mov     ax,3Dh
                mov     bx,0
                mov     cx,2
                push    dx
                mov     di,4E57h
                call    sub_10
                pop     dx
                mov     ax,[bp+8]
                mov     [si],ax
                mov     ax,[bp+0Ch]
                mov     [si+2],ax
                mov     ax,[bp+4]
                mov     [si+4],ax
                mov     ax,71h
                mov     bx,2
                mov     cx,6
                mov     di,4E57h
                call    sub_10
                jmp     loc_271

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_309::
                mov     di,[bp+2]
                mov     bx,1
                call    sub_6
                jmp     loc_271

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_310::
                push    es
                pop     ds
                mov     si,[bp+2]
                mov     bx,0
                call    sub_6
                jmp     loc_271
                                                ;* No entry point to code
                push    ss
                pop     ds
                xor     dl,dl
                xchg    dl,dh
                mov     si,65Ch
                mov     [si],es
                mov     ax,41h
                mov     bx,0
                mov     cx,2
                mov     di,4E57h
                push    dx
                call    sub_10
                pop     dx
                jmp     short loc_308

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_311::
                push    ss
                pop     es
                mov     di,65Ch
                xor     dl,dl
                xchg    dl,dh
                mov     ax,3Dh
                mov     bx,1
                mov     cx,6
                call    sub_10
                mov     ax,es:[di]
                mov     dx,es:[di+4]
                mov     [bp+6],dx
                jmp     loc_271
                                                ;* No entry point to code
                push    bx
                xor     bx,bx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                pop     bx
                mov     [bp+6],dx
                mov     [bp+0Ch],di
                mov     [bp+0Eh],es
                retn
                                                ;* No entry point to code
                xchg    data_158,al
                and     byte ptr data_158,0Fh
                jz      loc_312
                push    ds
                push    ss
                pop     ds
                and     byte ptr ds:[7A1h],0Bh
                pop     ds
                jmp     short loc_313
loc_312::
                push    ds
                push    ss
                pop     ds
                or      byte ptr ds:[7A1h],4
                pop     ds
loc_313::
                jmp     loc_272
                                                ;* No entry point to code
                push    bx
                push    cx
                push    dx
                mov     ah,51h                  ; 'Q'
                call    dword ptr cs:data_155
                mov     ax,bx
                mov     es,ax
                mov     [bp],es
                push    es
                mov     cx,es:data_7e
                sub     cx,5
                cmp     cx,0
                je      loc_316
                les     di,dword ptr es:data_8e
                mov     dx,di
                add     dx,5

locloop_314::
                mov     bx,dx
                cmp     byte ptr es:[bx],0FFh
                je      loc_315
                sub     bx,di
                mov     ah,3Eh                  ; '>'
                call    dword ptr cs:data_155
loc_315::
                inc     dx
                loop    locloop_314

loc_316::
                pop     es
                cmp     byte ptr data_158,0
                je      loc_318
                cmp     byte ptr es:data_9e,0CEh
                jne     loc_318
                mov     bx,6
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     cx,bx
                or      cx,cx
                jz      loc_318
                mov     ax,0FF18h
                xor     bx,bx
                xor     dx,dx
                cmp     cx,0FFFFh
                jne     loc_317
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jmp     short loc_318
loc_317::
                mov     bh,2
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
loc_318::
                push    es
                mov     cx,es
                mov     ax,1
                mov     bx,1
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                pop     es
                mov     [bp],es
                mov     cx,[bp]
                mov     ax,es:data_14e
                mov     es,ax
                cmp     es:data_23e,ax
                jne     loc_322
                xchg    [bp],ax
                push    ax
                mov     bx,6
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     cx,bx
                or      cx,cx
                jz      loc_321
                cmp     byte ptr data_158,0
                je      loc_320
                mov     ax,0FF18h
                xor     bx,bx
                xor     dx,dx
                cmp     cx,0FFFFh
                jne     loc_319
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jmp     short loc_320
loc_319::
                mov     bh,2
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_161
                pop     bp
loc_320::
                xor     ax,ax
                mov     bx,7
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_161
                pop     bp
loc_321::
                pop     ax
                mov     [bp],ax
loc_322::
                pop     es
                pop     dx
                pop     cx
                pop     bx
                xor     ax,ax
                jmp     loc_270
                                                ;* No entry point to code
                call    sub_29
                push    ss
                pop     ds
                mov     si,65Ch
                mov     ax,si
                mov     word ptr ds:[64Ch],ax
                mov     word ptr ds:[64Eh],ds
                mov     word ptr ds:[652h],di
                mov     word ptr ds:[654h],es
                mov     [si],dl
                mov     word ptr ds:[650h],1
                mov     word ptr ds:[656h],1Ch
                mov     ax,1
                mov     bx,ax
                mov     dx,ax
                mov     al,12h
                mov     si,64Ch
                mov     di,652h
                push    ss
                pop     es
                call    sub_12
                jmp     loc_270
                                                ;* No entry point to code
                xor     bx,bx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                xchg    bx,ax
                sub     al,41h                  ; 'A'
                mov     [bp],al
                retn
                                                ;* No entry point to code
                call    sub_29
                mov     al,byte ptr ss:[649h]
                cbw
                mov     si,ax
                dec     si
                mov     cl,5
                shl     si,cl
                mov     bx,[bp+si+3Fh]
                push    bx
                call    sub_52
                mov     dl,al
                call    sub_52
                mov     dh,al
                call    sub_52
                mov     bl,al
                mov     cx,dx
                pop     ax
                xchg    ch,cl
                or      ah,ah
                jnz     loc_323
                mov     [bp+4],cx
                jmp     loc_272
loc_323::
                mov     cl,58h                  ; 'X'
                mov     [bp+4],cx
                jmp     loc_271

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_52          proc    near
                mov     al,bl
                and     al,0Fh
                add     al,30h                  ; '0'
                cmp     al,39h                  ; '9'
                jbe     loc_324
                add     al,7
loc_324::
                mov     cl,4
                shr     bx,cl
                retn
sub_52          endp

                                                ;* No entry point to code
                mov     al,0FFh
                jmp     loc_270
                                                ;* No entry point to code
                mov     bx,0
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     al,data_157
                mov     [bp],al
                mov     data_157,dl
                mov     data_207,bl
                push    ss
                pop     ds
                mov     byte ptr ds:[64Bh],dl
                retn
                                                ;* No entry point to code
                cmp     dl,4
                ja      loc_ret_325
                xor     cx,cx
                mov     bx,2
                call    sub_7
                mov     al,dl
                mov     [bp],dl

loc_ret_325::
                retn
data_143        dw      offset loc_326          ; Data table (indexed access)
data_144        dw      offset loc_330
data_145        dw      offset loc_328
data_146        dw      offset loc_334
data_147        dw      offset loc_335
data_148        dw      offset loc_336
data_149        dw      offset loc_337
data_150        dw      offset loc_338
                db       80h,0FAh, 08h, 72h, 05h,0B0h
                db      0FFh,0E9h,0BEh,0F8h, 98h, 32h
                db      0FFh, 8Ah,0DAh, 03h,0DBh,0FFh
                db      0A7h,0A6h
                db      20h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_326::
                mov     dl,data_192
loc_327::
                xor     dh,dh
                call    sub_29
                push    ss
                pop     ds
                xor     bx,bx
                mov     ax,bx
                push    ds
                pop     es
                mov     di,65Ch
                mov     word ptr [di],0FFFFh
                mov     word ptr [di+2],0FFFFh
                push    dx
                call    sub_11
                pop     dx
                jmp     short loc_339

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_328::
                mov     dl,cs:data_192
loc_329::
                xor     dh,dh
                jmp     short loc_332

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_330::
                mov     dl,cs:data_192
loc_331::
                xor     dh,dh
                call    sub_53
loc_332::
                mov     bx,2
                call    sub_11
                cmp     ax,884Ch
                jne     loc_333
                xor     al,al
loc_333::
                jmp     loc_270

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_334::
                mov     dl,cs:data_192
                xor     dh,dh
                call    sub_53
                jmp     loc_270

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_53          proc    near
                push    bx
                xor     bx,bx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                pop     bx
                retn
sub_53          endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_335::
                mov     dl,dh
                jmp     short loc_327

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_336::
                mov     dl,dh
                jmp     short loc_331

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_337::
                mov     dl,dh
                jmp     short loc_329

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_338::
                mov     dl,dh
                xor     dh,dh
                xor     bx,bx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
loc_339::
                jmp     loc_270
                                                ;* No entry point to code
                mov     ds,[bp+0Ah]
                mov     al,[si+2]
                cmp     al,9
                je      loc_340
                jmp     loc_348
loc_340::
                mov     al,[si+3]
                or      al,al
                jnz     loc_341
                jmp     loc_346
loc_341::
                push    ds
                pop     es
                push    si
                pop     di
                xor     cx,cx
                mov     cl,[di+4]
                add     di,5
                push    ax
                mov     al,3Ah                  ; ':'
                repne   scasb
                pop     ax
                jcxz    loc_342
                jmp     loc_346
loc_342::
                mov     byte ptr cs:data_208,0
                cmp     byte ptr [si+5],5Ch     ; '\'
                jne     loc_343
                mov     byte ptr cs:data_208,0FFh
loc_343::
                push    si
                push    ds
                push    ss
                push    ss
                pop     ds
                pop     es
                mov     di,65Ch
                mov     word ptr ds:[64Ch],di
                mov     word ptr ds:[64Eh],ss
                add     di,4
                mov     word ptr ds:[652h],di
                mov     word ptr ds:[654h],ss
                mov     word ptr ds:[650h],4
                mov     bx,101h
                xchg    bl,bh
                mov     word ptr ds:[656h],bx
                mov     word ptr es:[di-4],200h
                dec     di
                dec     di
                xchg    al,ah
                mov     al,1
                stosw
                push    ax
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                call    sub_29
                pop     ds
                pop     ax
                mov     si,64Ch
                mov     di,652h
                mov     al,16h
                mov     bx,1
                mov     dx,1
                call    sub_12
                xor     bh,bh
                mov     di,65Ch
                add     di,4
                mov     bl,[di]
                mov     dx,di
                cmp     byte ptr cs:data_208,0
                je      loc_344
                lea     di,[di+1]
                mov     cx,bx
                mov     al,3Ah                  ; ':'
                repne   scasb
                jmp     short loc_345
loc_344::
                lea     di,[bx+di+1]
                mov     al,5Ch                  ; '\'
                stosb
loc_345::
                pop     ds
                pop     si
                xor     ch,ch
                mov     cl,[si+4]
                lea     si,[si+5]
                rep     movsb
                xor     al,al
                stosb
                inc     dx
                xor     ax,ax
loc_346::
                or      ax,ax
                jz      loc_347
                lodsw
                xchg    cx,ax
                push    ss
                pop     es
                mov     di,65Ch
                push    di
                rep     movsb
                xor     al,al
                stosb
                pop     dx
                inc     dx
                inc     dx
                inc     dx
loc_347::
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jnz     loc_349
                stosw
                jmp     loc_270
loc_348::
                cmp     al,6
                jne     loc_350
loc_349::
                mov     ax,9Ch
                stosw
                jmp     loc_270
loc_350::
                mov     al,1
                jmp     loc_270
                                                ;* No entry point to code
                call    sub_44
                mov     al,15h
                jmp     loc_248
                                                ;* No entry point to code
                call    sub_29
                push    ss
                push    ss
                pop     ds
                pop     es
                mov     word ptr ds:[656h],7
                mov     word ptr ds:[652h],dx
                mov     ax,[bp+0Ah]
                mov     word ptr ds:[654h],ax
                xor     bx,bx
                mov     dx,1
                mov     al,14h
                mov     di,652h
                call    sub_12
                jmp     loc_270
                db      8 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_54          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_54          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_55          proc    near
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                retn
sub_55          endp

                                                ;* No entry point to code
                mov     byte ptr ss:[65Ch],al
                mov     ax,[bp+10h]
                xchg    ah,al
                mov     word ptr ss:[66Bh],ax
                mov     al,1Ah
loc_351::
                mov     bx,[bp+2]
                push    ax
                push    ss
                pop     es
                mov     di,65Dh
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jz      loc_352
                pop     ax
                mov     byte ptr ss:[79Fh],0FFh
                retn
loc_352::
                mov     di,663h
                mov     ax,[bp+4]
                xchg    ah,al
                stosw
                mov     ax,dx
                xchg    ah,al
                stosw
                mov     ax,si
                xchg    ah,al
                stosw
                mov     ax,[bp+0Ch]
                xchg    ah,al
                stosw
                mov     bx,1
                xor     dx,dx
                push    ss
                pop     ds
                pop     ax
                mov     si,0ABDh
                mov     word ptr [si+4],11h
                call    sub_12
                jmp     loc_270
                                                ;* No entry point to code
                mov     al,1Ch
                jmp     short loc_351
                db      0B0h, 1Eh,0EBh,0A3h
loc_353::
                mov     al,1
                jmp     loc_270
                                                ;* No entry point to code
                push    ss
                pop     ds
                mov     byte ptr ds:[65Ch],al
                mov     ax,[bp+10h]
                xchg    ah,al
                mov     word ptr ds:[65Dh],ax
                mov     ax,1D1Bh
                mov     bx,1
                xor     dx,dx
                mov     si,0A80h
                xor     dx,dx
                call    sub_54
                jmp     loc_270
                db      0B0h, 1Dh
loc_354::
                mov     ah,0FFh
                mov     bx,1
                xor     dx,dx
                push    ss
                pop     ds
                mov     si,0AC9h
                mov     byte ptr ds:[65Ch],dl
                call    sub_54
                jmp     loc_270
                                                ;* No entry point to code
                mov     al,1Fh
                jmp     short loc_354
                                                ;* No entry point to code
                mov     si,65Ch
                mov     ss:[si],al
                call    sub_29
                push    ss
                pop     ds
                or      al,al
                jnz     loc_356
                mov     bl,[bp+4]
                mov     [si+1],bl
                mov     si,0A8Ch
                mov     [si+6],dx
                mov     es,[bp+0Ah]
                mov     [si+8],es
                mov     di,dx
                mov     al,es:[di]
                cbw
                inc     ax
                mov     [si+0Ah],ax
                mov     al,20h                  ; ' '
                mov     bx,2
                mov     di,0A98h
                push    ds
                pop     es
                mov     dx,1
                call    sub_12
                jnz     loc_355
                mov     bx,word ptr ds:[65Ch]
                mov     [bp+4],bx
                mov     bx,word ptr ds:[65Eh]
                mov     [bp+6],bx
                mov     bl,byte ptr ds:[660h]
                mov     [bp+2],bl
loc_355::
                jmp     loc_270
loc_356::
                mov     bx,[bp+4]
                mov     [si+1],bx
                mov     [si+3],dx
                mov     si,0A98h
                push    ds
                pop     es
                mov     di,0A9Eh
                mov     bx,1
                xor     dx,dx
                cmp     al,2
                je      loc_357
                ja      loc_358
                mov     al,20h                  ; ' '
                inc     dx
                call    sub_12
                jnz     loc_355
                mov     bl,byte ptr ds:[661h]
                xor     bh,bh
                mov     [bp+4],bx
                mov     bl,byte ptr ds:[662h]
                mov     [bp+6],bl
                jmp     loc_270
loc_357::
                inc     bx
                mov     ax,[bp+10h]
                xchg    ah,al
                mov     word ptr ds:[661h],ax
loc_358::
                mov     al,20h                  ; ' '
                call    sub_12
                jmp     loc_270
                                                ;* No entry point to code
                cmp     al,2
                je      loc_359
                mov     bx,3
                call    sub_55
loc_359::
                mov     bx,4
                call    sub_55
                mov     al,bl
                jmp     loc_272
loc_360::
                mov     al,0FFh
                jmp     loc_270
data_152        db      1
                db       01h, 01h, 01h, 05h, 01h, 03h
                db       01h, 03h, 01h, 02h, 3Ch, 0Ah
                db       77h,0ECh, 3Ch, 02h, 77h, 06h
                db       2Ch, 02h, 74h, 02h, 04h, 03h
loc_361::
                mov     si,65Ch
                mov     ss:[si],al
                mov     ss:[si+1],cx
                mov     ss:[si+3],dx
                call    sub_29
                mov     bx,offset data_152
                xlat
                cbw
                push    ss
                pop     ds
                mov     word ptr ds:[0AA8h],ax
                mov     al,22h                  ; '"'
                push    ds
                pop     es
                mov     si,0AA4h
                mov     di,0AAAh
                mov     bx,1
                mov     dx,bx
                call    sub_12
                mov     ah,0
                mov     bl,byte ptr ds:[65Ch]
                cmp     bl,0
                jne     loc_363
                cmp     al,0FFh
                jne     loc_362
                mov     al,1
loc_362::
                jmp     loc_270
loc_363::
                or      al,al
                jnz     loc_365
                cmp     bl,2
                je      loc_364
                cmp     bl,5
                je      loc_364
                cmp     bl,7
                jne     loc_366
loc_364::
                mov     si,661h
                mov     cx,[si]
                mov     [bp+4],cx
                mov     dx,[si+2]
                mov     [bp+6],dx
                jmp     loc_272
loc_365::
                jmp     loc_270
loc_366::
                cmp     bl,9
                jne     loc_367
                mov     al,byte ptr ds:[661h]
loc_367::
                jmp     loc_272
                                                ;* No entry point to code
                call    sub_56
                mov     bx,di
                xchg    bh,bl
                mov     word ptr ss:[65Ch],bx
                mov     ax,604h
                mov     si,0A8Ch
loc_368::
                push    ss
                pop     ds
                mov     bx,1
                xor     dx,dx
                call    sub_54
                jmp     loc_270

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_56          proc    near
                mov     di,[bp+10h]
                mov     bx,4
                call    sub_55
                or      bl,bl
                jnz     loc_ret_369
                mov     di,0FFFFh
                or      dl,dl
                jnz     loc_ret_369
                inc     di

loc_ret_369::
                retn
sub_56          endp

                                                ;* No entry point to code
                mov     al,6
                jmp     loc_354
                                                ;* No entry point to code
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,41h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                mov     al,8
                jmp     loc_354
                                                ;* No entry point to code
                mov     bx,4
                call    sub_55
                mov     al,[bp]
                or      bl,bl
                jnz     loc_370
                xor     al,al
loc_370::
                mov     byte ptr ss:[65Ch],al
                mov     ax,[bp+10h]
                xchg    ah,al
                mov     word ptr ss:[65Dh],ax
                mov     al,9
                mov     bx,2
                mov     si,0AB0h
loc_371::
                mov     di,dx
                mov     word ptr ss:[0AB6h],di
                mov     es,[bp+0Ah]
                mov     word ptr ss:[0AB8h],es
                mov     dl,es:[di]
                xor     dh,dh
                inc     dx
                mov     word ptr ss:[0ABAh],dx
                call    sub_29
                push    ss
                pop     ds
                xor     dx,dx
                call    sub_12
                jmp     loc_270
                                                ;* No entry point to code
                call    sub_56
                mov     byte ptr ss:[65Ch],al
                or      bl,bl
                jnz     loc_372
                mov     byte ptr ss:[65Ch],0
loc_372::
                mov     bx,di
                xchg    bh,bl
                mov     word ptr ss:[65Dh],bx
                mov     ax,0D0Ah
                mov     si,0AB0h
                jmp     loc_368
                db      0B0h, 0Ch
loc_373::
                mov     bx,1
                mov     si,0AB6h
                jmp     short loc_371
                                                ;* No entry point to code
                mov     al,0Dh
                jmp     loc_354
                                                ;* No entry point to code
                mov     al,0Bh
                jmp     short loc_373
                                                ;* No entry point to code
                mov     al,0Eh
                jmp     loc_354
                jmp     loc_353
                jmp     loc_353
                                                ;* No entry point to code
                mov     byte ptr ss:[0ABCh],3
                mov     byte ptr ss:[0AC1h],5
loc_374::
                mov     ds,[bp+0Ah]
                mov     si,dx
                mov     di,661h
                push    ss
                pop     es
                mov     ah,60h                  ; '`'
                pushf
                call    dword ptr cs:data_155
                jc      loc_376
                inc     di
                inc     di
                cmp     word ptr es:[di],5C5Ch
                jne     loc_375
                inc     di
                inc     di
loc_375::
                mov     si,di
                mov     cx,31h
                mov     al,5Ch                  ; '\'
                repne   scasb
                jz      loc_377
loc_376::
                mov     byte ptr ss:[79Fh],0FFh
                retn
loc_377::
                push    es
                pop     ds
                mov     byte ptr [di-1],0
                mov     word ptr ds:[0AC3h],di
                mov     word ptr ds:[0AC5h],es
                mov     cl,11h
                repne   scasb
                jnz     loc_376
                mov     byte ptr [di-1],3Ah     ; ':'
                mov     di,word ptr ds:[0AC3h]
                mov     cx,0FFh
                xor     al,al
                repne   scasb
                neg     cl
                add     cl,0FEh
                mov     word ptr ds:[0AC7h],cx
                mov     al,[bp]
                cmp     al,0
                jz      $+2
                mov     byte ptr ds:[65Dh],al
                mov     ax,[bp+10h]
                xchg    ah,al
                mov     word ptr ds:[65Eh],ax
                mov     bx,word ptr ds:[0AC1h]
                mov     byte ptr ds:[65Bh][bx],cl
                xor     cx,cx
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0eh
                push    bp
                call    dword ptr cs:data_161
                pop     bp
                jnz     loc_376
                mov     byte ptr ds:[65Ch],0
                mov     al,byte ptr ds:[0ABCh]
                mov     bx,2
                xor     dx,dx
                mov     si,0ABDh
                call    sub_12
                jmp     loc_270
                                                ;* No entry point to code
                mov     byte ptr ss:[0ABCh],5
                mov     byte ptr ss:[0AC1h],2
                jmp     loc_374
                                                ;* No entry point to code
                mov     byte ptr ss:[0ABCh],7
                mov     byte ptr ss:[0AC1h],2
                jmp     loc_374
                db      12 dup (0)
data_154        db      8
                db      0
data_155        dd      00000h
data_157        db      0
data_158        db      1
data_159        dw      seg_b
                db      0, 0
data_161        dw      0, 0
data_163        dw      0, 0
data_165        dd      00000h
data_167        dd      00000h
data_169        dw      0, 0
                db      0, 0, 0, 0
data_171        dw      0, 0
data_173        dd      00000h
data_175        dw      0
data_176        dw      0
data_177        dw      0                       ; segment storage
data_178        dw      0
data_179        dw      0
data_180        dw      0FFFFh
data_181        dw      0FFFFh
data_182        dw      0
data_183        dw      0
data_184        dw      0
data_185        dw      0
data_186        dw      0
data_187        db      0
                db      0, 0
data_189        db      0
data_190        db      0
data_191        db      0
data_192        db      0
data_193        db      0
data_194        db      0
data_195        db      0
data_196        db      0
data_197        db      0
                db      0
data_198        db      0
data_199        db      0
                db      0
data_200        db      0
data_201        db      0
data_202        db      0
data_203        db      0
data_204        db      0
data_205        db      0
data_206        db      0
data_207        db      0
data_208        db      0
                db      0
data_209        dw      offset loc_179          ; Data table (indexed access)
data_210        dw      offset loc_181
data_211        dw      offset loc_182
data_212        dw      offset loc_183
data_213        dw      offset loc_184
data_214        dw      offset loc_185
data_215        dw      offset loc_204
data_216        dw      offset loc_206
data_217        dw      offset loc_209
data_218        dw      offset loc_211
data_219        dw      offset loc_218          ; Data table (indexed access)
data_220        dw      offset loc_221
data_221        dw      offset loc_222
data_222        dw      offset loc_224
data_223        dw      offset loc_231
data_224        dw      offset loc_234
data_225        dw      2A4h
data_226        dw      2C4h
data_227        dw      2E4h
data_228        dw      offset loc_2
data_229        dw      124h
data_230        dw      304h
data_231        dw      337h
data_232        dw      1AB0h                   ; Data table (indexed access)
                db      0E5h, 1Ah, 66h, 1Bh, 97h, 1Bh
                db       34h, 23h,0E7h, 1Bh, 34h, 23h
                db       2Bh, 1Eh, 4Ch, 1Eh,0C8h
                db      '",#0#4#4#4#9#Y#q#u#'
                db      12h
                db      '$'
                db      '7$'
                db      '4#4#4#'
                db      0B8h, 24h, 34h, 23h,0EDh, 24h
                db       34h, 23h,0F2h, 24h, 0Ah, 25h
                db       55h, 25h, 78h, 25h, 82h, 25h
                db       87h, 25h, 8Bh, 25h, 6Eh, 1Eh
                db       84h, 0Ah, 34h, 23h, 34h, 23h
                db      0BFh, 1Fh,0FDh, 1Fh, 19h, 20h
                db       68h, 20h, 93h, 20h,0B6h, 20h
                db       5Fh, 21h, 69h, 22h, 1Ch, 0Dh
                db      0C7h, 11h
                db      'c 4#4#q"4#'
                db       04h, 12h,0D7h, 14h, 96h, 25h
                db       46h, 26h, 55h, 26h,0F7h, 14h
                db       15h, 15h, 2Fh, 15h,0FFh, 15h
                db       37h, 17h,0AAh, 18h, 99h, 19h
                db       35h, 19h
data_233        dw      0                       ; Data table (indexed access)
                db      14 dup (0)
data_235        dw      0
data_236        dw      0
                db      10 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

data_239        db      0
data_240        db      0
data_241        dd      00000h                  ; Data table (indexed access)
data_244        dw      0
data_245        dw      0
data_246        dw      0                       ; segment storage
data_247        dw      0
data_248        dw      0                       ; segment storage
data_249        dw      0
data_250        dw      0
data_251        dw      0
data_252        dw      0
data_253        dw      0
data_254        dw      0
data_255        dw      0, 0
data_257        dw      0, 0
data_259        db      0
                db      22 dup (0)
                db      0FFh, 00h
                db      0, 0
data_261        db      0
                db      27 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      30 dup (0)
                db      0FFh, 00h
                db      391 dup (0)
data_269        db      0                       ; Data table (indexed access)
                db      31 dup (0)
data_270        db      0                       ; Data table (indexed access)
                db      31 dup (0)
data_271        db      0                       ; Data table (indexed access)
                db      31 dup (0)
data_272        db      0                       ; Data table (indexed access)
                db      31 dup (0)
data_273        dw      9 dup (0FFFFh)
                db      0FFh
data_274        db      0FFh                    ; Data table (indexed access)
                db      31 dup (0FFh)
data_275        db      0
data_276        db      0, 0
data_277        dw      0                       ; segment storage
data_278        dw      0
data_279        dw      0                       ; Data table (indexed access)
data_280        dw      0                       ; Data table (indexed access)
data_281        dw      0
data_282        dw      0
data_283        dw      0, 0
data_285        dw      0
data_286        dw      0
data_287        db      41h
                db       3Ah, 5Ch
data_288        db      0                       ; Data table (indexed access)
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
                db       42h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
                db       43h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
                db       44h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
                db       45h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
                db       46h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h
                db      7 dup (0)
data_301        db      0
                db      23 dup (0)
data_302        db      0
                db      12 dup (0)
data_303        db      4Dh
                db       53h, 44h, 4Fh, 53h, 00h, 56h
data_304        db      30h
                db      2Eh
data_305        dw      3030h
                db      0
data_306        db      49h
                db       42h, 4Dh, 5Fh, 50h, 43h, 00h
data_307        db      49h
                db       42h, 4Dh
                db      18 dup (0)
                db       15h, 04h, 00h
data_309        db      0, 0
data_310        dd      00000h
data_312        dw      0
data_313        dw      0
data_314        dw      0, 0
data_316        dd      00000h
                db      1
data_318        dw      0
data_319        db      0FFh
data_320        db      0
data_321        db      0
data_322        db      0
                db      0
data_323        dw      0, 0
                db      10 dup (0)
                db       21h, 00h, 03h, 00h
                db      40 dup (0)
data_326        db      0
data_327        db      0
data_328        db      0
data_329        dw      0
data_330        dd      00000h
                db      0, 3, 0
data_332        db      0, 0
data_333        dw      0
                db      8 dup (0)
                db       3Eh, 06h
                dw      seg_b
                db       48h, 06h
                dw      seg_b
                db      4, 0, 0, 0, 0, 0
data_334        dw      100h, 0                 ; Data table (indexed access)
data_338        dw      0
data_339        dw      0                       ; segment storage
data_340        dw      0
data_341        dw      0, 0, 0
                db      0, 2, 1
                db      0
data_343        db      0
                db      0
data_344        dw      0
                db      303 dup (0)
data_346        db      0
                db      12 dup (0)
data_347        db      0
                db      0, 0
data_348        db      0
                db       1Fh, 02h, 00h, 00h, 00h, 01h
                db      'SYS:LOGIN'
                db      7 dup (0)
data_350        db      '<=[;K9:;CAl)'
                db       0Fh, 11h, 12h, 13h, 16h, 17h
                db       23h, 36h, 47h, 0Eh, 1Ch, 19h
                db       1Bh, 56h, 4Eh, 4Fh, 44h, 5Ah
data_351        dw      0D8Eh                   ; Data table (indexed access)
                db       8Eh, 0Dh, 8Eh, 0Dh, 8Eh, 0Dh
                db       8Eh, 0Dh, 8Eh, 0Dh, 8Eh, 0Dh
                db       8Eh, 0Dh, 8Eh, 0Dh, 8Eh, 0Dh
                db       9Dh, 0Eh, 9Dh, 0Eh,0C0h, 0Eh
                db      0C0h, 0Eh,0C0h, 0Eh,0C0h, 0Eh
                db      0C0h, 0Eh,0C0h, 0Eh,0C0h, 0Eh
                db      0AAh, 0Fh,0AAh, 0Fh,0AAh, 0Fh
                db      0AAh, 0Fh, 31h, 10h, 31h, 10h
                db       8Eh, 0Dh, 8Eh, 0Dh, 0Dh, 0Fh
                db       0Dh, 0Fh, 0Dh, 0Fh
                db      78h
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxNx'
                db      'NxNxNxNxNxNxNxNxNxNxNxNxNxNxNxN'
                db      64 dup (0)
                dw      seg_b
                db      0A4h, 02h,0B3h, 00h, 6Eh, 0Ah
                dw      seg_b
                db       06h, 00h, 5Ch, 06h
                dw      seg_b
                db       02h, 00h, 74h, 0Ah
                dw      seg_b
                db       04h, 00h, 5Ch, 06h
                dw      seg_b
                db       00h, 00h, 00h, 04h, 12h, 00h
                db       00h, 00h, 00h, 02h, 14h, 00h
                db      8 dup (0)
                db       5Ch, 06h
                dw      seg_b
                db       03h, 00h, 5Fh, 06h
                dw      seg_b
                db       0Eh, 00h, 5Ch, 06h
                dw      seg_b
                db       02h, 00h, 00h, 00h, 00h, 00h
                db       00h, 00h, 5Ch, 06h
                dw      seg_b
                db       05h, 00h, 61h, 06h
                dw      seg_b
                db       02h, 00h, 5Ch, 06h
                dw      seg_b
                db       00h, 00h, 61h, 06h
                dw      seg_b
                db       05h, 00h, 5Ch, 06h
                dw      seg_b
                db      3, 0
                db      7 dup (0)
                db       5Ch, 06h
                dw      seg_b
                db      8 dup (0)
                db       5Ch, 06h
                dw      seg_b
                db      1, 0, 0
loc_379::
                cmp     word ptr es:[di],2F2Fh
                je      loc_380
                cmp     word ptr es:[di],5C5Ch
                jne     loc_381
loc_380::
                jmp     loc_389
loc_381::
                cmp     byte ptr es:[di+1],3Ah  ; ':'
                jne     loc_382
                jmp     loc_389
loc_382::
                push    bx
                mov     bx,1
                call    sub_57
                pop     bx
                call    sub_64
                push    ds
                push    es
                pop     ds
                pop     es
                mov     cx,100h
                mov     si,di
                mov     di,offset data_343
                mov     ax,5C5Ch
                cld
                stosw

locloop_383::
                lodsb
                or      al,al
                jz      loc_385
                cmp     al,3Ah                  ; ':'
                jne     loc_384
                mov     al,5Ch                  ; '\'
loc_384::
                stosb
                loop    locloop_383

loc_385::
                stosb
                push    cs
                pop     ds
                call    sub_65
                mov     bx,word ptr data_241
                mov     ds,data_246
                mov     di,offset data_343
                push    cs
                pop     es
                popf
                pushf
                call    dword ptr cs:data_257
                pushf
                push    bx
                mov     bx,2
                call    sub_57
                pop     bx
                popf
                mov     di,cs:data_247
                mov     es,cs:data_248
                call    sub_59
                retf    2

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_57          proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_255
                pop     bp
                retn
sub_57          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_58          proc    near
                pushf
                push    bx
                push    ds
                mov     bx,cs:data_314
                mov     ds,word ptr cs:data_314+2
                inc     byte ptr [bx+1]
                pop     ds
                pop     bx
                popf
                retn
sub_58          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_59          proc    near
                pushf
                push    bx
                push    ds
                mov     bx,cs:data_314
                mov     ds,word ptr cs:data_314+2
                cmp     byte ptr [bx+1],0
                je      loc_386
                dec     byte ptr [bx+1]
loc_386::
                pop     ds
                pop     bx
                popf
                retn
sub_59          endp

loc_387::
                popf
                pushf
                call    dword ptr cs:data_257
                push    bp
                mov     bp,sp
                clc
                lahf
                mov     [bp+6],ah
                pop     bp
                mov     ax,0E20h
                call    sub_59
                iret

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_60          proc    far
loc_388::
                pushf
                push    ax
                sub     ah,0B3h
                cmp     ah,40h                  ; '@'
                pop     ax
                jbe     loc_394
                cmp     ax,440Ah
                je      loc_394
                cmp     cs:data_275,0
                jne     loc_391
                cmp     ah,0Eh
                je      loc_387
                cmp     ah,19h
                je      loc_394
                cmp     ax,5F03h
                je      loc_390
loc_389::
                call    sub_59
                popf
                jmp     dword ptr cs:data_257
loc_390::
                jmp     loc_379
loc_391::
                cld
                push    di
                push    ax
                push    cx
                push    es
                mov     al,ah
                mov     di,offset data_350      ; ('<=[;K9:;CAl)')
                mov     cx,1Eh
                push    cs
                pop     es
                repne   scasb
                pop     es
                pop     cx
                pop     ax
                jz      loc_396
                pop     di
                popf
loc_392::
                pushf
                cmp     ah,0Eh
                je      loc_387
                popf
loc_393::
                call    sub_59
                jmp     dword ptr cs:data_257
loc_394::
                popf
                push    bx
                mov     bx,1
                call    sub_57
                pop     bx
                call    sub_64
                xor     ax,ax
                push    ax
                mov     ax,50h
                push    ax
                mov     ax,4
                push    ax
                call    dword ptr ds:[1Ch]
                call    sub_65
                mov     bx,word ptr ds:[2]
                pushf
                cmp     byte ptr ds:[79Fh],0FFh
                pushf
                mov     byte ptr ds:[79Fh],0
                mov     ds,ds:data_21e
                push    bx
                mov     bx,2
                call    sub_57
                pop     bx
                popf
                jnz     loc_395
                popf
                jmp     short loc_393
loc_395::
                call    sub_59
                popf
                iret
loc_396::
                push    bx
                mov     bx,1
                call    sub_57
                pop     bx
                pop     word ptr cs:data_276
                xchg    word ptr cs:data_276,di
                popf
                call    sub_64
                mov     di,word ptr ds:[358h]
                sub     di,7B7h
                add     di,di
                mov     ds,ds:data_2e
                call    cs:data_351[di]         ;*
                pushf
                push    cs:data_250
                push    cs:data_251
                push    bx
                mov     bx,2
                call    sub_57
                pop     bx
                call    sub_59
                iret
sub_60          endp

loc_397::
                popf
                push    dx
                push    ds
                pushf
                push    ax
                push    bx
                push    cx
                push    di
                push    si
                push    es
                mov     si,dx
                cmp     byte ptr [si+1],3Ah     ; ':'
                jne     loc_398
                inc     si
                inc     si
                inc     dx
                inc     dx
loc_398::
                lodsb
                or      al,al
                jz      loc_400
                cmp     al,5Ch                  ; '\'
                je      loc_399
                cmp     al,2Fh                  ; '/'
                jne     loc_398
loc_399::
                mov     dx,si
                jmp     short loc_398
loc_400::
                mov     si,dx
                push    cs
                pop     es
                mov     di,offset data_346
                mov     cx,8

locloop_401::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_403
                or      al,al
                jz      loc_403
                cmp     al,61h                  ; 'a'
                jb      loc_402
                cmp     al,7Ah                  ; 'z'
                ja      loc_402
                and     al,0DFh
loc_402::
                stosb
                loop    locloop_401

loc_403::
                cmp     byte ptr es:[di-1],3Ah  ; ':'
                jne     loc_404
                mov     byte ptr es:[di-1],0
                inc     cx
                dec     di
loc_404::
                mov     al,20h                  ; ' '
                rep     stosb
                push    es
                pop     ds
                les     bx,data_316
                add     bx,22h
loc_405::
                test    byte ptr es:[bx+5],80h
                jz      loc_406
                mov     si,offset data_346
                lea     di,[bx+0Ah]
                mov     cx,8
                repe    cmpsb
                jz      loc_408
loc_406::
                les     bx,dword ptr es:[bx]
                inc     bx
                jz      loc_407
                dec     bx
                jmp     short loc_405
loc_407::
                pop     es
                pop     si
                pop     di
                pop     cx
                pop     bx
                pop     ax
                popf
                pop     ds
                pop     dx
                jmp     loc_388
loc_408::
                mov     dx,78Fh
                pop     es
                pop     si
                pop     di
                pop     cx
                pop     bx
                pop     ax
                popf
                call    sub_61
                pop     ds
                pop     dx
                call    sub_59
                iret
loc_409::
                jmp     loc_397

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_21h_entry   proc    far
                pushf
                call    sub_58
                cmp     ah,5Ch                  ; '\'
                je      loc_412
                cmp     ah,0E2h
                je      loc_411
                cmp     ah,0E3h
                je      loc_411
                cmp     ah,3Ch                  ; '<'
                je      loc_409
                cmp     byte ptr cs:[64Bh],1
                jne     loc_410
                cmp     ah,3Dh                  ; '='
                je      loc_412
loc_410::
                popf
                jmp     loc_388
loc_411::
                mov     cs:data_327,80h
                jmp     short loc_413
loc_412::
                mov     cs:data_327,0
loc_413::
                mov     cs:data_328,0
                popf
                push    dx
                push    ds
                call    sub_61
                pop     ds
                pop     dx
                test    cs:data_328,0FFh
                jnz     loc_415
loc_414::
                call    sub_59
                iret
int_21h_entry   endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_61          proc    near
                pushf
                callf   sub_60
                push    bp
                mov     bp,sp
                push    ax
                lahf
                mov     [bp+0Ch],ah
                pop     ax
                pop     bp
                retn
sub_61          endp

loc_415::
                mov     ax,cs:data_329
                xor     ah,ah
                jmp     short loc_414
loc_416::
                jmp     loc_425
                db       8Bh,0FAh, 33h,0EDh
loc_417::
                cmp     byte ptr [di+1],3Ah     ; ':'
                jne     loc_420
                mov     al,[di]
                cmp     al,5Ah                  ; 'Z'
                jbe     loc_418
                cmp     al,61h                  ; 'a'
                jb      loc_418
                and     al,0DFh
loc_418::
                cmp     al,5Bh                  ; '['
                jb      loc_416
                cmp     al,61h                  ; 'a'
                ja      loc_416
                sub     byte ptr [di],1Ah
                mov     word ptr cs:data_276,di
                mov     cs:data_277,ds
                callf   sub_63
                pushf
                push    di
                mov     di,word ptr cs:data_276
                mov     ds,cs:data_277
                add     byte ptr [di],1Ah
                pop     di
                popf
                retn
loc_419::
                mov     si,ax
                pop     ax
                popf
                retn
loc_420::
                cmp     cs:data_319,0FFh
                jne     loc_421
                jmp     loc_425
loc_421::
                push    ds
                push    cs
                pop     ds
                push    di
                mov     di,offset data_343
                mov     ax,data_246
                mov     data_278,ax
                mov     ax,ds
                mov     data_246,ax
                mov     ax,data_245
                mov     word ptr data_276,ax
                mov     data_245,di
                or      bp,bp
                jnz     loc_422
                mov     ax,word ptr data_276
                mov     data_245,ax
                mov     ax,data_244
                mov     word ptr data_276,ax
                mov     data_244,di
loc_422::
                pop     di
                mov     data_318,bp
                pop     es
                mov     cx,100h
                xor     ax,ax
                push    di
                repne   scasb
                pop     si
                neg     cx
                add     cx,100h
                mov     al,cs:data_319
                add     al,41h                  ; 'A'
                mov     ah,3Ah                  ; ':'
                mov     di,offset data_343
                push    ds
                push    es
                pop     ds
                pop     es
                stosw
                rep     movsb
                xor     al,al
                stosb
                callf   sub_63
                pushf
                push    ax
                mov     ax,cs:data_278
                mov     ds,ax
                mov     ax,word ptr cs:data_276
                cmp     cs:data_318,0
                je      loc_423
                jmp     loc_419
loc_423::
                mov     dx,ax
                pop     ax
                popf
                retn
                                                ;* No entry point to code
                push    ax
                mov     al,cs:data_321
                or      al,al
                jz      loc_424
                push    di
                push    ds
                push    es
                push    cs
                pop     ds
                call    sub_62
                mov     ax,data_251
                mov     data_281,ax
                mov     ax,data_250
                mov     data_282,ax
                mov     ax,word ptr data_276
                mov     data_285,ax
                mov     ax,data_277
                mov     data_286,ax
                pop     es
                pop     ds
                pop     di
loc_424::
                pop     ax
                jmp     dword ptr cs:data_283

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_62          proc    near
                les     di,data_310
                cld
                mov     ax,data_312
                stosw
                mov     ax,data_313
                stosw
                dec     data_321
                retn
sub_62          endp

                                                ;* No entry point to code
                mov     di,si
                inc     bp
                jmp     loc_417
loc_425::
                add     sp,2
                push    cs
                pop     ds
                call    sub_65
                mov     bx,word ptr data_241
                mov     ds,data_246
                pushf
                push    bx
                mov     bx,2
                call    sub_57
                pop     bx
                popf
                jmp     loc_392
                                                ;* No entry point to code
                mov     di,dx
                cmp     byte ptr [di],0FFh
                jne     loc_426
                add     di,7
loc_426::
                cmp     byte ptr [di],1Bh
                jb      loc_425
                cmp     byte ptr [di],21h       ; '!'
                ja      loc_425
                sub     byte ptr [di],1Ah
                mov     word ptr cs:data_276,di
                callf   sub_63
                pushf
                push    di
                mov     di,word ptr cs:data_276
                add     byte ptr [di],1Ah
                push    es
                les     di,dword ptr cs:data_314
                lea     di,[di+0Ch]
                les     di,dword ptr es:[di]
                cmp     byte ptr es:[di],0FFh
                jne     loc_427
                add     di,7
loc_427::
                cmp     byte ptr es:[di],1Ah
                ja      loc_428
                add     byte ptr es:[di],1Ah
loc_428::
                pop     es
                pop     di
                popf
                retn
                                                ;* No entry point to code
                cmp     cs:data_319,0FFh
                je      loc_425
                callf   sub_63
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_63          proc    far
                push    cs
                pop     ds
                push    ds
                pop     es
                cld
                mov     si,offset data_269
                mov     di,offset data_301
;*              mov     bx,offset loc_378       ;*
                db      0BBh, 04h, 00h
loc_429::
                mov     cx,3
                rep     movsw
                add     si,1Ah
                dec     bx
                jnz     loc_429
                les     di,data_310
                mov     ax,36Eh
                stosw
                mov     ax,cs
                stosw
                inc     data_321
                call    sub_65
                pop     ax
                pop     ax
                mov     ax,word ptr data_239
                mov     bx,word ptr data_241
                mov     ds,data_246
                call    dword ptr cs:data_257
                pushf
                push    ax
                push    bx
                push    cx
                push    di
                push    si
                push    ds
                push    es
                push    cs
                pop     ds
                cmp     cs:data_321,0
                je      loc_432
                cld
                push    ds
                pop     es
                mov     di,offset data_269
                mov     si,offset data_301
                mov     bx,4
loc_430::
                mov     cx,3
                rep     movsw
                add     di,1Ah
                dec     bx
                jnz     loc_430
                call    sub_62
loc_431::
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     cx
                pop     bx
                pop     ax
                popf
                retf
loc_432::
                mov     di,data_282
                mov     data_250,di
                mov     di,data_281
                mov     data_251,di
                mov     ax,data_285
                mov     word ptr data_276,ax
                mov     ax,data_286
                mov     data_277,ax
                jmp     short loc_431
sub_63          endp

                                                ;* No entry point to code
                mov     ax,1A20h
                cmp     cs:data_240,0Eh
                je      loc_433
                inc     ax
                inc     ah
                or      dl,dl
                jnz     loc_433
                cmp     cs:data_319,0FFh
                je      loc_433
                push    ax
                mov     al,cs:data_319
                add     al,1Ah
                mov     byte ptr cs:data_244,al
                inc     cs:data_320
                pop     ax
                jmp     short loc_437
loc_433::
                xor     bp,bp
;*              cmp     dl,ah
                db       3Ah,0D4h
                jc      loc_434
;*              cmp     dl,al
                db       3Ah,0D0h
                ja      loc_434
                inc     bp
loc_434::
                cmp     cs:data_240,0Eh
                jne     loc_436
                or      bp,bp
                jz      loc_435
                mov     al,byte ptr cs:data_244
                sub     al,1Ah
                mov     cs:data_319,al
                jmp     short loc_437
loc_435::
                mov     cs:data_319,0FFh
loc_436::
                dec     bp
                jz      loc_437
                jmp     loc_425
loc_437::
                sub     byte ptr cs:data_244,1Ah
                callf   sub_63
                pushf
                cmp     cs:data_320,0
                je      loc_438
                xor     dl,dl
                dec     cs:data_320
                jmp     short loc_439
loc_438::
                add     dl,1Ah
                cmp     cs:data_240,0Eh
                jne     loc_439
                mov     al,20h                  ; ' '
loc_439::
                popf
                retn
                                                ;* No entry point to code
                cmp     cs:data_319,0FFh
                jne     loc_440
                jmp     loc_425
loc_440::
                callf   sub_63
                pushf
                add     al,1Ah
                popf
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_64          proc    near
                push    ds
                push    cs
                pop     ds
                pop     data_246
                mov     word ptr data_241,bx
                mov     word ptr data_239,ax
                pop     bx
                pop     data_251
                pop     data_250
                pop     data_252
                mov     word ptr ds:[4],cx
                mov     data_244,dx
                mov     data_245,si
                mov     data_247,di
                mov     data_249,bp
                mov     data_248,es
                jmp     bx                      ;*

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_65::
                pop     bx
                mov     es,data_248
                mov     ax,word ptr data_239
                mov     cx,word ptr ds:[4]
                mov     dx,data_244
                mov     si,data_245
                mov     di,data_247
                mov     bp,data_249
                push    data_252
                push    data_250
                push    data_251
                jmp     bx                      ;*
                                                ;* No entry point to code
                mov     al,3
                stosb
                retf
sub_64          endp

                                                ;* No entry point to code
                sbb     dx,[bx+di]
                rcl     word ptr [bx+si],cl
                db      0DAh, 10h, 0Dh, 11h, 14h, 11h
                db       29h, 11h, 22h, 11h, 8Ah, 47h
                db       2Bh, 8Ch,0CAh, 8Eh,0DAh, 98h
                db       03h,0C0h, 3Dh, 0Eh, 00h, 73h
                db       07h, 33h,0FFh, 97h,0FFh,0A5h
                db      0A8h, 10h,0B4h, 00h,0B0h,0FFh
                db       33h,0C9h,0CBh,0BBh, 10h, 0Ah
                db      0B9h, 0Ch, 00h,0CBh,0FBh,0BBh
                db       1Ch, 0Ah, 8Bh,0F3h,0B9h, 28h
                db       00h, 53h, 51h, 52h, 1Eh, 0Eh
                db       1Fh, 32h,0C0h,0A2h, 22h, 06h
                db      0BFh,0ECh, 05h, 89h, 4Dh, 1Eh
                db       8Ch, 5Dh, 30h, 89h, 75h, 2Ah
                db       1Eh, 07h, 33h,0C0h,0FFh, 1Eh
                db      0E8h, 05h, 1Fh, 5Ah, 59h, 5Bh
                db       33h,0C0h, 43h, 43h, 49h, 49h
                db      0CBh,0BBh, 24h, 00h,0B9h, 00h
                db       01h,0CBh,0BBh, 24h, 01h,0B9h
                db       80h, 01h,0CBh,0BBh,0A2h, 05h
                db      0B9h, 29h, 00h,0CBh,0BBh,0CBh
                db       05h,0B9h, 03h, 00h,0CBh,0BBh
                db       48h, 06h,0B9h, 01h, 00h,0CBh

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_2Fh_entry   proc    far
                pushf
                cmp     ax,1605h
                je      loc_441
                popf
                jmp     cs:data_330
loc_441::
                call    cs:data_330
                push    es
                push    cs
                pop     es
                pop     ax
                mov     word ptr es:data_332,bx
                mov     es:data_333,ax
                mov     bx,62Ch
                iret
int_2Fh_entry   endp

                db      14 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

data_362        db      50h
                db       53h,0B8h
                dw      seg_c
data_363        db      8Eh
data_364        db      0D8h
                db      0B8h
data_365        db      20h
                db       7Ah,0BBh, 02h, 00h,0CDh, 2Fh
                db       89h, 1Eh, 84h, 05h, 8Ch, 06h
                db       86h, 05h, 5Bh, 58h, 0Bh,0C0h
                db       74h, 09h,0E8h, 1Fh, 04h,0E8h
                db      0FCh, 04h,0E9h, 23h, 03h
loc_442::
                mov     byte ptr data_377,0FFh
                push    bx
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_a
                mov     es,ax
                push    es
                mov     word ptr es:data_161,bx
                mov     word ptr es:data_161+2,cx
                mov     data_368,bx
                mov     word ptr data_368+2,cx
                mov     ax,seg_b
                mov     es,ax
                mov     word ptr es:data_255,bx
                mov     word ptr es:data_255+2,cx
                pop     es
                pop     bx
                mov     es:data_159,bx
                mov     ax,seg_a
                mov     es,ax
                push    bx
                mov     ax,7A20h
                mov     bx,5
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     dx,seg seg_a
                mov     es,dx
                mov     word ptr es:data_171,bx
                mov     word ptr es:data_171+2,ax
                pop     bx
                push    bx
                push    ds
                mov     ax,5C9h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_370
                add     sp,4
                pop     bx
                mov     ax,seg_b
                mov     es,ax
                mov     dx,bx
                mov     si,offset data_378
                mov     cx,data_379
                jcxz    loc_444

locloop_443::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_443

loc_444::
                mov     es,dx
                mov     ax,seg_b
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,seg_c
                sub     ax,seg_b
                mov     cl,4
                shl     ax,cl
                mov     cx,ax
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                mov     ax,seg_c
                mov     ds,ax
                call    sub_66
                mov     ax,seg_a
                mov     es,ax
                xor     al,al
                xchg    es:data_197,al
                cmp     al,41h                  ; 'A'
                jb      loc_445
                cmp     al,5Ah                  ; 'Z'
                ja      loc_445
                xchg    es:data_197,al
loc_445::
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     word ptr data_169,di
                mov     word ptr data_169+2,es
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     bx,ds
                mov     ax,seg_a
                mov     ds,ax
                mov     word ptr data_167,si
                mov     word ptr data_167+2,bx
                mov     es,data_159
                mov     es:data_314,si
                mov     word ptr es:data_314+2,bx
                and     data_158,0Fh
                jz      loc_446
                and     byte ptr ds:data_237e,0Bh
                jmp     short loc_447
loc_446::
                or      byte ptr ds:data_237e,4
loc_447::
                mov     ax,352Fh
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                push    ds
                mov     ds,data_159
                assume  ds:seg_b
                mov     word ptr data_330,bx
                mov     word ptr data_330+2,es
                push    dx
                mov     dx,offset int_2Fh_entry
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     dx
                mov     ax,3521h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     word ptr data_257,bx
                mov     word ptr data_257+2,es
                mov     cs:data_375,bx
                mov     cs:data_376,es
                pop     ds
                assume  ds:seg_a
                mov     word ptr data_155,bx
                mov     word ptr data_155+2,es
                mov     ds,data_159
                mov     ax,7A20h
                mov     bx,1
                int     2Fh                     ; ??INT Non-standard interrupt
                assume  ds:seg_b
                mov     word ptr data_323,bx
                mov     word ptr data_323+2,es
                xor     ax,ax
                mov     bx,4
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_368
                pop     bp
                mov     word ptr data_283,di
                mov     word ptr data_283+2,es
                mov     ax,1
                push    ds
                pop     es
                mov     di,0E59h
                mov     bx,4
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_368
                pop     bp
                mov     ah,52h
                int     21h                     ; DOS Services  ah=function 52h
                                                ;  get DOS data table ptr es:bx
                                                ;*  undocumented function
                mov     word ptr data_316,bx
                mov     word ptr data_316+2,es
                lea     ax,[bx+16h]
                mov     word ptr data_310,ax
                mov     word ptr data_310+2,es
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     data_163,bx
                mov     word ptr data_163+2,es
                mov     dl,es:[bx+21h]
                cmp     dl,1Ah
                jae     loc_448
                push    dx
                push    bx
                push    dx
                mov     ax,39h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr cs:data_370
                add     sp,4
                pop     bx
                pop     dx
loc_448::
                mov     data_189,dl
                les     di,dword ptr es:[bx+16h]
                mov     word ptr data_165,di
                mov     word ptr data_165+2,es
                pop     ds
                mov     ds:data_15e,di
                mov     ds:data_16e,es
                mov     ax,seg_a
                mov     ds,ax
                mov     si,di
                mov     al,42h                  ; 'B'
                mov     cx,200h
loc_449::
                repne   scasb
                jnz     loc_450
                cmp     byte ptr es:[di],3Ah    ; ':'
                jne     loc_449
                neg     cx
                add     cx,1FFh
                mov     data_178,cx
loc_450::
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                push    ax
                pop     bx
                mov     ax,4452h
                int     21h                     ; ??INT Non-standard interrupt
                jc      loc_451
                cmp     ax,1071h
                jb      loc_451
                cmp     ax,1072h
                jne     loc_451
                mov     bx,7
loc_451::
                xchg    bx,ax
                cmp     al,4
                jae     loc_452
                push    ax
                mov     di,offset data_287
                mov     es,data_159
                mov     ax,seg_c
                mov     ds,ax
                mov     si,offset data_383
                mov     cx,1E6h
                rep     movsb
                mov     ax,seg_a
                mov     ds,ax
                pop     ax
loc_452::
                xchg    al,ah
                push    ds
                mov     ds,data_159
                assume  ds:seg_b
                mov     word ptr data_309,ax
                add     data_304,ah
                xor     ah,ah
                aam
                xchg    ah,al
                add     data_305,ax
                pop     ds
                call    sub_68
                assume  ds:seg_a
                mov     es,data_159
                mov     si,0A10h
                mov     bx,9
                mov     ax,seg_a
                mov     ds,ax
                push    ds
                push    es
                call    dword ptr data_169
                pop     es
                pop     ds
                mov     ax,1600h
                int     2Fh                     ; Enhanced Windows install check
                or      al,al
                jnz     loc_453
                mov     si,offset data_302
                mov     word ptr es:[si+4],10A4h
                mov     es:[si+6],es
                mov     word ptr es:[si+8],10B6h
                mov     es:[si+0Ah],es
                mov     bx,offset data_34
                push    es
                call    dword ptr data_169
                pop     es
loc_453::
                mov     bx,cs:data_375
                mov     dx,cs:data_376
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_368
                pop     bp
                mov     ax,4452h
                int     21h                     ; ??INT Non-standard interrupt
                mov     bx,5244h
                jc      loc_455
                cmp     ax,1072h
                jne     loc_454
                mov     bx,574Eh
loc_454::
                cld
                xchg    bx,ax
                mov     di,offset data_303
                stosw
loc_455::
                mov     ds,data_159
                mov     cx,ds
                mov     dx,offset int_21h_entry
                mov     ax,2521h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     cx,ds
                mov     dx,0D22h
                mov     ax,7A81h
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     bx,offset data_239
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_368
                pop     bp
                mov     ax,seg_a
                mov     ds,ax
                mov     word ptr data_173,di
                mov     word ptr data_173+2,es
loc_456::
                mov     ax,seg_c
                mov     ds,ax
                assume  ds:seg_c
                cmp     byte ptr cs:data_377,0FFh
                jne     loc_457
                jmp     loc_459
loc_457::
                mov     bx,offset data_362
                mov     dx,40h
                call    dword ptr data_370
                or      ax,ax
                jz      loc_458
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,offset data_364
                mov     cx,5
                mov     si,5ABh
                push    cs
                pop     ds
                call    dword ptr cs:data_370
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,5B0h
                push    ax
                push    cs
                mov     ax,5ABh
                push    ax
                push    cs
                mov     ax,5B0h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,offset data_364
                mov     ah,0
                mov     al,0
                call    dword ptr data_370
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,5ABh
                push    ax
                push    cs
                mov     ax,5B0h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,offset data_364
                mov     ah,0
                mov     al,0
                call    dword ptr data_370
                add     sp,0Ah
                pop     bx
                mov     ax,0FFFFh
                jmp     short loc_460
loc_458::
                mov     bx,offset data_362
                mov     dx,42h
                call    dword ptr data_370
                or      ax,ax
                jz      loc_459
                push    bx
                mov     ax,4
                push    ax
                mov     bx,offset data_364
                mov     ah,0
                mov     al,1
                call    dword ptr data_370
                add     sp,2
                pop     bx
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,1
                mov     bx,offset data_364
                mov     cx,3Ah
                mov     si,5ABh
                push    cs
                pop     ds
                call    dword ptr cs:data_370
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,3Ah
                push    ax
                mov     bx,offset data_364
                mov     ah,0
                mov     al,1
                call    dword ptr data_370
                add     sp,2
                pop     bx
loc_459::
                mov     ax,seg_c
                mov     ds,ax
                mov     si,seg_a+041fh
                sub     si,seg_c
                mov     cx,seg seg_c
                sub     cx,seg_b
                mov     dx,seg seg_b
                sub     dx,seg_a
                xor     ax,ax
loc_460::
                mov     bx,50h
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_66          proc    near
                push    ax
                push    cx
                push    dx
                push    bx
                push    sp
                push    bp
                push    si
                push    di
                push    ds
                push    es
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_380,bx
                mov     word ptr data_380+2,es
                mov     cx,6
                mov     si,6CCh
                mov     di,588h
                push    ds
                pop     es
                call    dword ptr data_380
                cmp     byte ptr cs:data_377,0FFh
                jne     loc_461
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     es,data_159
                mov     di,offset data_306
                mov     cx,0FFFFh
                xor     al,al
                repne   scasb
                mov     cx,5
                mov     si,offset data_307
                push    es
                pop     ds
                rep     movsb
loc_461::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     bp
                pop     ax
                pop     bx
                pop     dx
                pop     cx
                pop     ax
                retn
sub_66          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_67          proc    near
                push    ds
                pop     es
                mov     bp,data_178
                lds     bx,dword ptr data_163
                mov     dx,bp
                xor     dh,dh
                add     bx,16h
                lds     bx,dword ptr [bx]
                mov     al,cs:data_374
                push    ax
                push    ax
                mul     dl
                mov     si,ax
                lea     bx,[bx+si]
                xor     ch,ch
                mov     cl,es:data_189
                pop     ax
                sub     cl,al
                pop     dx
                jcxz    loc_464
                xor     dh,dh

locloop_462::
                test    word ptr [bx+43h],0F000h
                jnz     loc_463
                mov     cs:data_374,dl
                inc     cs:data_374
                clc
                retn
loc_463::
                inc     dx
                add     bx,bp
                loop    locloop_462

loc_464::
                stc
                retn
sub_67          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_68          proc    near
                mov     es,data_159
                mov     di,offset data_270
                xor     ch,ch
                mov     cl,data_189
                mov     al,data_197
                or      al,al
                jz      loc_465
                sub     al,41h                  ; 'A'
                xchg    al,cl
loc_465::
                mov     al,80h
                cld
                rep     stosb
loc_466::
                push    ds
                push    es
                call    sub_67
                pop     es
                pop     ds
                jc      loc_ret_468
                mov     bx,dx
                mov     al,data_197
                or      al,al
                jz      loc_467
                sub     al,41h                  ; 'A'
;*              cmp     bl,al
                db       3Ah,0D8h
                jbe     loc_466
loc_467::
                xor     al,al
                mov     es:data_270[bx],al
                jmp     short loc_466

loc_ret_468::
                retn
sub_68          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_69          proc    near
                assume  ds:seg_c
                cmp     byte ptr data_382,0
                je      loc_ret_469
                mov     bx,offset data_363
                call    dword ptr data_370

loc_ret_469::
                retn
sub_69          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


netx            proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
                db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.  All Rights Res'
                db      'erved.'
                db      0, 0, 0, 0, 0, 0
data_368        dw      0, 0
data_370        dw      0, 0
                db      'NETWARE DOS REQUESTER', 0
                db      'DOSRQSTR.MSG', 0
                db      'NETX', 0
                db      'REDIR', 0
                db      'PRINT', 0
                db      'VeRsIoN=4.21', 0
                db      'NETX.VLM     - NetWare workstati'
                db      'on shell module  v4.21 (960514)', 0Dh
                db      0Ah
                db      0, 0
data_374        db      0
                db      0
data_375        dw      0
data_376        dw      0                       ; segment storage
data_377        db      0
data_378        db      54h
                db       06h, 82h, 0Ah, 88h, 0Ah, 8Eh
                db       0Ah, 9Ah, 0Ah,0A0h, 0Ah,0ACh
                db       0Ah,0A6h, 0Ah,0B2h, 0Ah,0B8h
                db       0Ah,0BFh, 0Ah,0CBh, 0Ah,0CBh
                db       0Ah,0B3h, 17h,0E8h, 17h,0CDh
                db       17h, 50h, 0Ah, 3Ch, 06h, 40h
                db       06h
                db      'X', 0Ah, '^', 0Ah, 'd', 0Ah, 'j', 0Ah
data_379        dw      17h
data_380        dw      0, 0
data_382        db      0
                db      'DOS NAME'
                db       00h,0A3h, 05h
                dw      seg_b
                db      1, 0, 5, 0
                db      'LONG MACHINE TYPE'
                db       00h,0AFh, 05h
                dw      seg_b
                db      1, 0, 6, 0
                db      'SHORT MACHINE TYPE'
                db       00h,0B6h, 05h
                dw      seg_b
                db      1, 0, 4, 0
                db      'FIRST NETWORK DRIVE'
                db       00h,0BFh, 26h
                dw      seg_a
                db      1, 0, 1, 0
                db      'LOAD LOW NETX'
                db       00h, 47h, 06h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh, 45h, 4Fh
                db       4Ah, 00h
                db       77h, 26h
                dw      seg_a
                db       01h, 00h, 01h, 00h, 48h, 06h
                db       09h, 01h, 06h, 00h, 51h, 06h
                db       73h, 06h, 13h, 01h, 06h, 00h
                db       86h, 06h, 59h, 06h, 12h, 01h
                db       06h, 00h, 6Bh, 06h, 8Eh, 06h
                db       14h, 00h, 06h, 00h,0A2h, 06h
                db      0AAh, 06h, 0Eh, 00h, 04h, 00h
                db      0B8h, 06h,0C0h, 06h, 04h, 01h
                db       04h, 00h,0C4h, 06h
data_383        db      41h
                db       3Ah, 5Ch
                db      65 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h, 42h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h, 43h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h, 44h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h, 45h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h, 46h, 3Ah, 5Ch, 00h
                db      64 dup (0)
                db      0C0h, 00h, 00h, 00h, 00h,0C0h
                db       00h, 00h, 00h, 57h, 4Eh, 02h
                db       00h

netx            endp

seg_c           ends



                end     start
