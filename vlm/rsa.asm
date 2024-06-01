; The following equates show data references outside the range of the program.

data_2e         equ     210h
data_3e         equ     214h
data_4e         equ     216h
data_5e         equ     218h
data_6e         equ     27Fh
data_7e         equ     281h
data_8e         equ     283h
data_9e         equ     0F8h                    ;*
data_10e        equ     2A58h                   ;*
data_11e        equ     2A70h                   ;*
data_12e        equ     2A72h                   ;*
data_13e        equ     2A74h                   ;*
data_14e        equ     2BE0h                   ;*
data_15e        equ     2C18h                   ;*
data_16e        equ     2C50h                   ;*
data_17e        equ     2CF8h                   ;*
data_18e        equ     2D08h                   ;*
data_19e        equ     3750h                   ;*
data_20e        equ     3752h                   ;*
data_21e        equ     3754h                   ;*
data_22e        equ     3756h                   ;*
data_23e        equ     3758h                   ;*
data_24e        equ     3988h                   ;*
data_25e        equ     3BF0h                   ;*
data_26e        equ     3BF2h                   ;*
data_27e        equ     3BF4h                   ;*
data_28e        equ     3BF6h                   ;*
data_29e        equ     12Ch                    ;*
data_30e        equ     12Eh                    ;*
data_31e        equ     130h                    ;*
data_32e        equ     132h                    ;*
data_33e        equ     262h                    ;*
data_34e        equ     264h                    ;*
data_35e        equ     10h                     ;*
data_75e        equ     4CE9h                   ;*

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw	    0h, seg_c
                dw      offset loc_0020, seg_a
                dw      offset loc_0039, seg_a
                dw      offset loc_003c, seg_a
                dw      offset loc_005d, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_RSA
data_40         dw      offset loc_1            ; Data table (indexed access)

loc_0020:
                db       83h,0FBh, 01h, 72h, 04h,0B8h
                db       11h, 88h,0CBh,0D1h,0E3h, 2Eh
                db      0FFh,0A7h, 1Eh, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

loc_0039:
                xor     ax,ax
                retf

loc_003c:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_46
                cmp     [si],cx
                jb      loc_2
                mov     cx,[si]
loc_2::
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

loc_005d:
                push    bp
                mov     bp,sp
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
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_3
                jmp     loc_6
loc_3::
                mov     bx,1
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     ax,seg_a
                mov     ds,ax
                mov     es,cs:data_47
                push    cx
                xor     si,si
                mov     di,408h
                mov     dx,110h
                mov     bx,2
                mov     cx,408h
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     si
                jnz     loc_5
                mov     bx,di
                cmp     word ptr es:[bx],0
                je      loc_4
                mov     ax,es:[bx+2]
                add     ax,es:[bx+4]
                add     ax,es:[bx+6]
                cmp     es:[bx],ax
                jne     loc_4
;*              add     ax,8
                db      5, 8, 0
                cmp     cx,ax
                jb      loc_4
                push    si                      ; PARAMETER_10
                mov     dx,[bp-6]
                mov     ax,[bp-2]
                mov     data_51,ss
                mov     data_52,sp
                mov     ss,cs:data_47
                mov     sp,0C10h
                push    si                      ; PARAMETER_9
                push    dx                      ; PARAMETER_8
                push    ax                      ; PARAMETER_7
                add     di,8
                push    es                      ; PARAMETER_6
                push    di                      ; PARAMETER_5
                add     di,es:[bx+2]
                push    es                      ; PARAMETER_4
                push    di                      ; PARAMETER_3
                add     di,es:[bx+4]
                push    es                      ; PARAMETER_2
                push    di                      ; PARAMETER_1
                push    ds
                pop     es
                nop
                callf   sub_49
                mov     ss,data_51
                mov     sp,data_52
                pop     cx
                or      ax,ax
                jnz     loc_5
                mov     bh,3
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     short loc_5
loc_4::
                mov     ax,8844h
loc_5::
                mov     bx,2
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
loc_6::
                mov     [bp-2],ax
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
                pop     bp
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,8
                push    si
                push    di
                les     bx,dword ptr [bp+PARAMETER_9]
                mov     ax,es:[bx+8]
;*              add     ax,7
                db      5, 7, 0
                mov     cl,3
                shr     ax,cl
                mov     di,ax
                mov     ax,[bp+PARAMETER_7]
                or      ax,[bp+PARAMETER_8]
                jnz     loc_7
                jmp     loc_13
loc_7::
                les     bx,data_73
                mov     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                xor     dx,dx
                add     ax,[bp+PARAMETER_7]
                adc     dx,[bp+PARAMETER_8]
                mov     bx,di
                shl     bx,1
                or      dx,dx
                ja      loc_9
                jnz     loc_8
                cmp     ax,bx
                ja      loc_9
loc_8::
                push    word ptr [bp+PARAMETER_7]
                push    word ptr [bp+PARAMETER_6]
                push    word ptr [bp+PARAMETER_5]
                les     bx,data_73
                mov     ax,data_71
                add     ax,es:[bx]
                push    data_72
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                les     bx,data_73
                mov     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                add     ax,[bp+PARAMETER_7]
                mov     es:[bx],ax
                jmp     loc_14
loc_9::
                xor     ax,ax
                push    ax
                push    di
                mov     ax,[bp+LOCAL_3]
                xor     dx,dx
                add     ax,[bp+PARAMETER_7]
                adc     dx,[bp+PARAMETER_8]
                mov     bx,di
                shl     bx,1
                sub     ax,bx
                sbb     dx,0
                push    dx
                push    ax
                call    sub_54
                mov     bx,di
                shl     bx,1
                xor     cx,cx
                add     bx,ax
                adc     cx,dx
                mov     [bp+LOCAL_1],cx
                mov     [bp+LOCAL_2],bx
                mov     ax,[bp+PARAMETER_8]
                mov     dx,[bp+PARAMETER_7]
                cmp     ax,[bp+LOCAL_1]
                jb      loc_11
                jnz     loc_10
                cmp     dx,[bp+LOCAL_2]
                jb      loc_11
loc_10::
                mov     ax,[bp+PARAMETER_7]
                sub     ax,[bp+LOCAL_2]
                push    ax
                push    word ptr [bp+PARAMETER_6]
                push    word ptr [bp+PARAMETER_5]
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_1]
                add     ax,es:[bx]
                les     bx,data_73
                add     ax,es:[bx]
                push    word ptr [bp+PARAMETER_2]
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                les     bx,data_73
                push    word ptr es:[bx]
                push    data_72
                push    data_71
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_1]
                add     ax,es:[bx]
                push    word ptr [bp+PARAMETER_2]
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                push    word ptr [bp+LOCAL_2]
                mov     ax,[bp+PARAMETER_7]
                sub     ax,[bp+LOCAL_2]
                mov     dx,[bp+PARAMETER_5]
                add     dx,ax
                push    word ptr [bp+PARAMETER_6]
                push    dx
                push    data_72
                push    data_71
                nop
                callf   sub_60
                add     sp,0Ah
                jmp     loc_12
loc_11::
                les     bx,data_73
                mov     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                mov     dx,[bp+LOCAL_2]
                sub     dx,[bp+PARAMETER_7]
                mov     [bp+LOCAL_4],dx
                sub     ax,dx
                push    ax
                push    data_72
                push    data_71
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_1]
                add     ax,es:[bx]
                push    word ptr [bp+PARAMETER_2]
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                mov     ax,[bp+LOCAL_2]
                sub     ax,[bp+PARAMETER_7]
                mov     [bp+LOCAL_4],ax
                push    ax
                les     bx,data_73
                mov     ax,data_71
                add     ax,es:[bx]
                sub     ax,[bp+LOCAL_4]
                push    data_72
                push    ax
                push    data_72
                push    data_71
                nop
                callf   sub_60
                add     sp,0Ah
                push    word ptr [bp+PARAMETER_7]
                push    word ptr [bp+PARAMETER_6]
                push    word ptr [bp+PARAMETER_5]
                mov     ax,[bp+LOCAL_2]
                sub     ax,[bp+PARAMETER_7]
                mov     [bp+LOCAL_4],ax
                mov     dx,data_71
                add     dx,ax
                push    data_72
                push    dx
                nop
                callf   sub_60
                add     sp,0Ah
loc_12::
                les     bx,data_73
                mov     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                xor     dx,dx
                add     ax,[bp+PARAMETER_7]
                adc     dx,[bp+PARAMETER_8]
                sub     ax,[bp+LOCAL_2]
                sbb     dx,[bp+LOCAL_1]
                les     bx,dword ptr [bp+PARAMETER_3]
                add     es:[bx],ax
                adc     es:[bx+2],dx
                les     bx,data_73
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                jmp     short loc_14
loc_13::
                les     bx,data_73
                push    word ptr es:[bx]
                push    data_72
                push    data_71
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_1]
                add     ax,es:[bx]
                push    word ptr [bp+PARAMETER_2]
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                les     bx,data_73
                push    es
                les     si,dword ptr [bp+PARAMETER_3]
                mov     ax,es:[si+2]
                mov     dx,es:[si]
                pop     es
                add     dx,es:[bx]
;*              adc     ax,0
                db       15h, 00h, 00h
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     es:[bx+2],ax
                mov     es:[bx],dx
                les     bx,data_73
                mov     word ptr es:[bx],0
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_14::
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                xor     si,si
                cmp     data_63,0
                jne     loc_15
                jmp     loc_18
loc_15::
                push    ds                      ; PARAMETER_3
                mov     ax,2D12h
                push    ax                      ; PARAMETER_2
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_6
                shl     ax,1
                mov     [bp+LOCAL_1],ax
                cmp     data_57,0
                je      loc_16
                mov     ax,data_56
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                mov     ax,data_57
                pop     si
                mov     sp,bp
                pop     bp
                retn    8
loc_16::
                mov     ax,data_66
                shl     ax,1
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,data_66
                shl     ax,1
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3110h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3110h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                push    ds                      ; PARAMETER_12
                mov     ax,3110h
                push    ax                      ; PARAMETER_11
                push    ds                      ; PARAMETER_10
                mov     ax,3150h
                push    ax                      ; PARAMETER_9
                push    ds                      ; PARAMETER_8
                mov     ax,2DE6h
                push    ax                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,2D12h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,2D7Ch
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                mov     ax,data_66
                shl     ax,1
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_1
                call    sub_20
                mov     si,ax
                or      si,si
                jnz     loc_17
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,3110h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
loc_17::
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3150h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3110h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,si
                pop     si
                mov     sp,bp
                pop     bp
                retn    8
loc_18::
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_9
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_8
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_7
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_6
                push    ds                      ; PARAMETER_5
                mov     ax,2DE6h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2D12h
                push    ax                      ; PARAMETER_2
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_21
                pop     si
                mov     sp,bp
                pop     bp
                retn    8
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                push    si
                xor     si,si
                push    word ptr [bp+PARAMETER_10]
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_1
                call    sub_44
                mov     si,ax
                or      si,si
                jz      loc_19
                jmp     loc_26
loc_19::
                les     bx,dword ptr [bp+PARAMETER_9]
                mov     ax,es:[bx+8]
;*              add     ax,7
                db      5, 7, 0
                mov     cl,3
                shr     ax,cl
                xor     dx,dx
                mov     [bp+LOCAL_3],dx
                mov     [bp+LOCAL_4],ax
                mov     [bp+LOCAL_5],dx
                mov     [bp+LOCAL_6],ax
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],0
                jmp     short loc_21
loc_20::
                mov     ax,[bp+LOCAL_1]
                mov     dx,[bp+LOCAL_2]
                add     dx,[bp+LOCAL_4]
                adc     ax,[bp+LOCAL_3]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
loc_21::
                mov     ax,[bp+LOCAL_1]
                mov     dx,[bp+LOCAL_2]
                cmp     ax,[bp+PARAMETER_8]
                jb      loc_23
                jz      loc_22
                jmp     loc_25
loc_22::
                cmp     dx,[bp+PARAMETER_7]
                jb      loc_23
                jmp     loc_25
loc_23::
                mov     ax,12Ch
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3858h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                push    word ptr [bp+LOCAL_4]
                mov     ax,[bp+PARAMETER_5]
                add     ax,[bp+LOCAL_2]
                push    word ptr [bp+PARAMETER_6]
                push    ax
                push    ds
                mov     ax,3858h
                push    ax
                nop
                callf   sub_60
                add     sp,0Ah
                push    ds                      ; PARAMETER_5
                mov     ax,2D12h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,3858h
                push    ax                      ; PARAMETER_2
                mov     ax,data_66
                shl     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_9
                or      ax,ax
                jge     loc_24
                mov     si,data_56
                add     si,0Bh
                jmp     short loc_26
loc_24::
                push    ds                      ; PARAMETER_4
                mov     ax,3858h
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    ax                      ; PARAMETER_1
                call    sub_2
                mov     si,ax
                or      si,si
                jnz     loc_26
                push    word ptr [bp+PARAMETER_10]
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                push    word ptr [bp+LOCAL_5]   ; PARAMETER_8
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,3858h
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_1
                jmp     loc_20
loc_25::
                or      si,si
                jnz     loc_26
                mov     ax,[bp+PARAMETER_7]
                or      ax,[bp+PARAMETER_8]
                jnz     loc_26
                push    word ptr [bp+PARAMETER_10]
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                xor     ax,ax
                xor     dx,dx
                push    ax                      ; PARAMETER_8
                push    dx                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,3858h
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_1
loc_26::
                mov     ax,si
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                mov     ax,[bp+PARAMETER_1]
                mov     data_57,ax
                pop     bp
                retn    2
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bp
                mov     bp,sp
                mov     ax,ds:data_11e
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                mov     ds:data_12e,ax
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,6
                push    si
                push    di
                mov     bx,[bp+PARAMETER_1]
                shl     bx,1
                mov     es,[bp+PARAMETER_3]
                add     bx,[bp+PARAMETER_2]
                cmp     word ptr es:[bx-2],0
                jl      loc_27
                xor     ax,ax
                jmp     short loc_28
loc_27::
                mov     ax,0FFFFh
loc_28::
                mov     [bp+LOCAL_2],ax
                cmp     data_57,0
                je      loc_29
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    6
loc_29::
                mov     si,[bp+PARAMETER_1]
                dec     si
                jmp     short loc_31
loc_30::
                dec     si
loc_31::
                or      si,si
                jl      loc_32
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_2]
                add     bx,ax
                mov     ax,es:[bx]
                cmp     ax,[bp+LOCAL_2]
                je      loc_30
loc_32::
                cmp     si,0FFFFh
                jne     loc_33
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    6
loc_33::
                mov     di,10h
                mov     word ptr [bp+LOCAL_1],8000h
                mov     ax,[bp+LOCAL_2]
                les     bx,dword ptr [bp+PARAMETER_2]
                mov     dx,si
                shl     dx,1
                add     bx,dx
                xor     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                jmp     short loc_35
loc_34::
                dec     di
                shr     word ptr [bp+LOCAL_1],1
loc_35::
                or      di,di
                jl      loc_36
                mov     ax,[bp+LOCAL_1]
                test    ax,[bp+LOCAL_3]
                jz      loc_34
loc_36::
                mov     ax,si
                mov     cl,4
                shl     ax,cl
                add     ax,di
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    6
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                cmp     word ptr [bp+PARAMETER_2],0
                jl      loc_37
                xor     ax,ax
                jmp     short loc_38
loc_37::
                mov     ax,0FFFFh
loc_38::
                mov     [bp+LOCAL_1],ax
                cmp     data_57,0
                jne     loc_39
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_2]
                mov     es:[bx],ax
                mov     dx,1
                cmp     dx,si
                jge     loc_39
                mov     cx,si
                dec     cx
                mov     di,[bp+PARAMETER_3]
                add     di,2
                mov     es,[bp+PARAMETER_4]
                mov     ax,[bp+LOCAL_1]
                rep     stosw
                mov     dx,si
loc_39::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    8
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah

                push    bp
                mov     bp,sp
                push    si
                push    di
                cmp     word ptr ds:data_12e,0
                jne     loc_41
                xor     si,si
                cmp     si,[bp+PARAMETER_1]
                jge     loc_40
                mov     cx,[bp+PARAMETER_1]
                mov     di,[bp+PARAMETER_3]
                mov     es,[bp+PARAMETER_4]
                xor     ax,ax
                rep     stosw
                mov     si,[bp+PARAMETER_1]
loc_40::
                mov     cl,[bp+PARAMETER_2]
                and     cl,0Fh
                mov     ax,1
                shl     ax,cl
                mov     dx,[bp+PARAMETER_2]
                mov     cl,4
                shr     dx,cl
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,dx
                mov     es:[bx],ax
loc_41::
                pop     di
                pop     si
                pop     bp
                retn    8
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_1],ax
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_2],ax
                cmp     data_57,0
                je      loc_42
                mov     ax,2
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_42::
                mov     ax,[bp+LOCAL_1]
                cmp     ax,[bp+LOCAL_2]
                jle     loc_43
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_43::
                mov     ax,[bp+LOCAL_1]
                cmp     ax,[bp+LOCAL_2]
                jge     loc_44
                mov     ax,0FFFFh
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_44::
                mov     si,di
                dec     si
                jmp     short loc_46
loc_45::
                dec     si
loc_46::
                or      si,si
                jl      loc_47
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_4]
                add     bx,ax
                mov     ax,es:[bx]
                mov     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_2]
                add     bx,dx
                cmp     ax,es:[bx]
                je      loc_45
loc_47::
                cmp     si,0FFFFh
                jne     loc_48
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_48::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_4]
                add     bx,ax
                mov     ax,es:[bx]
                mov     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_2]
                add     bx,dx
                cmp     ax,es:[bx]
                jbe     loc_49
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_49::
                mov     ax,0FFFFh
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                cmp     word ptr ds:data_12e,0
                je      loc_50
                xor     ax,ax
                pop     di
                pop     si
                pop     bp
                retn    2
loc_50::
                or      di,di
                jnz     loc_51
                mov     ax,ds:data_11e
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                xor     ax,ax
                pop     di
                pop     si
                pop     bp
                retn    2
loc_51::
                mov     ax,di
                dec     ax
                mov     di,ax
                xor     si,si
                jmp     short loc_53
loc_52::
                inc     si
                shr     di,1
loc_53::
                or      di,di
                ja      loc_52
                mov     ax,si
                pop     di
                pop     si
                pop     bp
                retn    2
sub_10          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                mov     ax,[bp+PARAMETER_1]
;*              add     ax,10h
                db       05h, 10h, 00h
                mov     bx,10h
                cwd
                idiv    bx
                mov     cl,4
                shl     ax,cl
                pop     bp
                retn    2
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    si
                push    di
                mov     ax,[bp+PARAMETER_1]
                mov     [bp+PARAMETER_1],ax
                les     bx,dword ptr [bp+PARAMETER_2]
                test    word ptr es:[bx],1
                jnz     loc_54
                mov     ax,data_56
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    6
loc_54::
                xor     di,di
                mov     si,1
                mov     word ptr [bp+LOCAL_1],1
                les     bx,dword ptr [bp+PARAMETER_2]
                mov     ax,es:[bx]
                mov     [bp+LOCAL_2],ax
                jmp     short loc_57
loc_55::
                mov     ax,[bp+LOCAL_2]
                imul    di
                and     ax,si
                cmp     ax,si
                je      loc_56
                add     di,si
loc_56::
                shl     si,1
                inc     word ptr [bp+LOCAL_1]
loc_57::
                cmp     word ptr [bp+LOCAL_1],10h
                jle     loc_55
                mov     ax,di
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    6
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_6
                mov     [bp+LOCAL_1],ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_1
                call    sub_11
                mov     [bp+LOCAL_2],ax
                mov     bx,10h
                cwd
                idiv    bx
                mov     [bp+LOCAL_3],ax
                mov     ax,[bp+LOCAL_1]
;*              add     ax,0FFFEh
                db       05h,0FEh,0FFh
                cwd
                idiv    bx
                mov     [bp+LOCAL_4],ax
                mov     cl,4
                shl     ax,cl
                mov     [bp+LOCAL_5],ax
                cmp     word ptr ds:data_12e,0
                je      loc_58
                jmp     loc_65
loc_58::
                mov     ax,di
                mov     cl,4
                shl     ax,cl
                dec     ax
                mov     dx,[bp+LOCAL_2]
                sub     dx,[bp+LOCAL_1]
                mov     [bp+LOCAL_6],dx
                add     dx,3
                cmp     ax,dx
                jl      loc_59
                mov     ax,[bp+LOCAL_6]
                shl     ax,1
;*              add     ax,3
                db      5, 3, 0
                sub     ax,[bp+LOCAL_5]
                mov     dx,di
                shl     dx,cl
                dec     dx
                cmp     ax,dx
                jg      loc_59
                mov     ax,[bp+LOCAL_2]
                shl     ax,1
                sub     ax,[bp+LOCAL_1]
                sub     ax,[bp+LOCAL_5]
;*              add     ax,3
                db      5, 3, 0
                mov     dx,di
                mov     cl,5
                shl     dx,cl
                dec     dx
                cmp     ax,dx
                jg      loc_59
                mov     ax,[bp+LOCAL_2]
                shl     ax,1
                sub     ax,[bp+LOCAL_1]
                sub     ax,[bp+LOCAL_5]
;*              add     ax,2
                db      5, 2, 0
                mov     dx,[bp+LOCAL_2]
                sub     dx,[bp+LOCAL_5]
                sub     ax,dx
                mov     dx,di
                mov     cl,4
                shl     dx,cl
                dec     dx
                cmp     ax,dx
                jle     loc_60
loc_59::
                mov     ax,ds:data_11e
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ch
loc_60::
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_8
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_24
                add     sp,6
                mov     ax,[bp+LOCAL_2]
                sub     ax,[bp+LOCAL_1]
                mov     [bp+LOCAL_6],ax
                inc     ax
                push    ax                      ; PARAMETER_1
                call    sub_10
                inc     ax
                mov     si,ax
                jmp     short loc_62
loc_61::
                push    di                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2E50h
                push    ax                      ; PARAMETER_1
                call    sub_35
                add     sp,0Ah
                push    di                      ; PARAMETER_7
                mov     ax,[bp+LOCAL_4]
                shl     ax,1
                add     ax,2E50h
                push    ds                      ; PARAMETER_6
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2ED0h
                push    ax                      ; PARAMETER_1
                call    sub_31
                add     sp,0Eh
                push    di                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_27
                add     sp,0Eh
                push    di                      ; PARAMETER_7
                mov     ax,[bp+LOCAL_3]
                sub     ax,[bp+LOCAL_4]
                shl     ax,1
                add     ax,2ED0h
                push    ds                      ; PARAMETER_6
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
                dec     si
loc_62::
                or      si,si
                jg      loc_61
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_24
                add     sp,6
loc_63::
                push    di                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2E50h
                push    ax                      ; PARAMETER_1
                call    sub_31
                add     sp,0Eh
                mov     ax,di
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2E50h
                push    ax                      ; PARAMETER_1
                call    sub_25
                add     sp,6
                push    ds                      ; PARAMETER_3
                mov     ax,2E50h
                push    ax                      ; PARAMETER_2
                mov     ax,di
                shl     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_6
                cmp     ax,[bp+LOCAL_2]
                jle     loc_64
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_25
                add     sp,6
                cmp     data_57,0
                je      loc_63
loc_64::
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,2E50h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,2ED0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_65::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ch
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
PARAMETER_11    =       18h                     ; bp+18h
PARAMETER_12    =       1Ah                     ; bp+1Ah
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_1
                call    sub_11
                mov     [bp+LOCAL_1],ax
                mov     bx,10h
                cwd
                idiv    bx
                mov     [bp+LOCAL_2],ax
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_6
                mov     [bp+LOCAL_3],ax
;*              add     ax,0FFFEh
                db       05h,0FEh,0FFh
                mov     bx,10h
                cwd
                idiv    bx
                mov     [bp+LOCAL_4],ax
                mov     ax,[bp+LOCAL_2]
                sub     ax,[bp+LOCAL_4]
                mov     [bp+LOCAL_6],ax
;*              add     ax,0FFFDh
                db       05h,0FDh,0FFh
                mov     [bp+LOCAL_5],ax
                cmp     word ptr ds:data_12e,0
                je      loc_66
                jmp     loc_76
loc_66::
                cmp     word ptr [bp+LOCAL_5],0
                jge     loc_67
                mov     word ptr [bp+LOCAL_5],0
loc_67::
                mov     ax,di
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                or      ax,ax
                jge     loc_68
                mov     ax,ds:data_11e
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                jmp     loc_75
loc_68::
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_6
                cmp     ax,[bp+PARAMETER_2]
                jle     loc_69
                mov     ax,ds:data_11e
;*              add     ax,0Dh
                db       05h, 0Dh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                jmp     loc_75
loc_69::
                push    di                      ; PARAMETER_8
                push    word ptr [bp+LOCAL_5]   ; PARAMETER_7
                mov     ax,[bp+LOCAL_4]
                shl     ax,1
                mov     dx,[bp+PARAMETER_7]
                add     dx,ax
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_6
                push    dx                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2FD0h
                push    ax                      ; PARAMETER_1
                call    sub_34
                add     sp,10h
                xor     si,si
                cmp     si,di
                jge     loc_72
                mov     ax,[bp+LOCAL_2]
                sub     ax,[bp+LOCAL_4]
                mov     [bp+LOCAL_6],ax
                jmp     short loc_71
loc_70::
                mov     bx,si
                add     bx,[bp+LOCAL_6]
                shl     bx,1
                mov     ax,word ptr ds:[2FD0h][bx]
                mov     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_11]
                add     bx,dx
                mov     es:[bx],ax
                inc     si
loc_71::
                cmp     si,di
                jl      loc_70
loc_72::
                push    di                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2F50h
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,0Eh
                push    di                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,2F50h
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
                jmp     short loc_74
loc_73::
                push    di                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_1
                call    sub_24
                add     sp,6
loc_74::
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_9
                or      ax,ax
                jl      loc_75
                cmp     word ptr ds:data_12e,0
                je      loc_73
loc_75::
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,2F50h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,2FD0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_76::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    18h
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h

                push    bp
                mov     bp,sp
                cmp     word ptr ds:data_12e,0
                jne     loc_77
                push    ds                      ; PARAMETER_12
                mov     ax,2ED0h
                push    ax                      ; PARAMETER_11
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_8
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_14
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,2ED0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_77::
                pop     bp
                retn    14h
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
PARAMETER_11    =       18h                     ; bp+18h
PARAMETER_12    =       1Ah                     ; bp+1Ah

                push    bp
                mov     bp,sp
                push    si
                mov     si,[bp+PARAMETER_1]
                cmp     word ptr ds:data_12e,0
                jne     loc_78
                push    si                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3050h
                push    ax                      ; PARAMETER_1
                call    sub_31
                add     sp,0Eh
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_9
                push    ds                      ; PARAMETER_8
                mov     ax,3050h
                push    ax                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_15
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3050h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_78::
                pop     si
                pop     bp
                retn    18h
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
PARAMETER_11    =       18h                     ; bp+18h
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                mov     ax,[bp+PARAMETER_2]
                cwd
                sub     ax,dx
                sar     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_11
                mov     [bp+LOCAL_1],ax
                mov     bx,10h
                cwd
                idiv    bx
                mov     di,ax
                cmp     data_57,0
                jne     loc_79
                push    si                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3050h
                push    ax                      ; PARAMETER_1
                call    sub_31
                add     sp,0Eh
                push    si                      ; PARAMETER_7
                push    di                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3050h
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,0Eh
                push    si                      ; PARAMETER_5
                mov     ax,di
                shl     ax,1
                add     ax,3050h
                push    ds                      ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3050h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_79::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    16h
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h

                push    bp
                mov     bp,sp
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_6
                shl     ax,1
                mov     di,ax
                cmp     word ptr ds:data_12e,0
                je      loc_80
                jmp     loc_81
loc_80::
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3190h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3190h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,31D0h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,31D0h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                push    ds                      ; PARAMETER_6
                mov     ax,30D0h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,31D0h
                push    ax                      ; PARAMETER_3
                push    di                      ; PARAMETER_2
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_1
                call    sub_13
                push    ds                      ; PARAMETER_12
                mov     ax,3110h
                push    ax                      ; PARAMETER_11
                push    ds                      ; PARAMETER_10
                mov     ax,3150h
                push    ax                      ; PARAMETER_9
                push    ds                      ; PARAMETER_8
                mov     ax,3190h
                push    ax                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,31D0h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,30D0h
                push    ax                      ; PARAMETER_3
                push    di                      ; PARAMETER_2
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_1
                call    sub_16
                push    si                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,3110h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,30D0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3110h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3150h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3190h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,31D0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_81::
                pop     di
                pop     si
                pop     bp
                retn    12h
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                mov     ax,[bp+PARAMETER_2]
                cwd
                sub     ax,dx
                sar     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_11
                mov     [bp+LOCAL_1],ax
                mov     bx,10h
                cwd
                idiv    bx
                mov     di,ax
                cmp     data_57,0
                jne     loc_82
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3050h
                push    ax                      ; PARAMETER_1
                call    sub_35
                add     sp,0Ah
                push    si                      ; PARAMETER_7
                push    di                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3050h
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,0Eh
                push    si                      ; PARAMETER_5
                mov     ax,di
                shl     ax,1
                add     ax,3050h
                push    ds                      ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3050h
                push    ax
                nop
                callf   sub_58
                add     sp,8
loc_82::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    12h
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
PARAMETER_11    =       18h                     ; bp+18h
PARAMETER_12    =       1Ah                     ; bp+1Ah
LOCAL_11        =       -16h                    ; bp+0FFEAh
LOCAL_10        =       -14h                    ; bp+0FFECh
LOCAL_9         =       -12h                    ; bp+0FFEEh
LOCAL_8         =       -10h                    ; bp+0FFF0h
LOCAL_7         =       -0Eh                    ; bp+0FFF2h
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,16h
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                mov     word ptr [bp+LOCAL_9],0
                mov     ax,[bp+PARAMETER_2]
                cwd
                sub     ax,dx
                sar     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_11
                mov     [bp+LOCAL_10],ax
                mov     bx,10h
                cwd
                idiv    bx
                mov     [bp+LOCAL_11],ax
                cmp     data_57,0
                je      loc_83
                mov     ax,data_57
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    18h
loc_83::
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_9
                or      ax,ax
                jl      loc_84
                mov     ax,data_56
;*              add     ax,0Bh
                db       05h, 0Bh, 00h
                push    ax                      ; PARAMETER_1
                call    sub_4
                mov     ax,data_56
;*              add     ax,0Bh
                db       05h, 0Bh, 00h
                mov     [bp+LOCAL_9],ax
                jmp     loc_103
loc_84::
                push    word ptr [bp+PARAMETER_6]
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_12
                mov     [bp+LOCAL_6],ax
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_6
                mov     [bp+LOCAL_1],ax
                cmp     word ptr [bp+LOCAL_1],4
                jae     loc_85
                mov     word ptr [bp+LOCAL_2],1
                jmp     short loc_88
loc_85::
                cmp     word ptr [bp+LOCAL_1],10h
                jae     loc_86
                mov     word ptr [bp+LOCAL_2],2
                jmp     short loc_88
loc_86::
                cmp     word ptr [bp+LOCAL_1],40h
                jae     loc_87
                mov     word ptr [bp+LOCAL_2],3
                jmp     short loc_88
loc_87::
                mov     word ptr [bp+LOCAL_2],4
loc_88::
                mov     ax,si
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3650h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                mov     bx,[bp+LOCAL_11]
                shl     bx,1
                mov     data_60[bx],1
                push    ds                      ; PARAMETER_10
                mov     ax,3210h
                push    ax                      ; PARAMETER_9
                push    ds                      ; PARAMETER_8
                mov     ax,3650h
                push    ax                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_15
                mov     ax,si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_12
                push    ax                      ; PARAMETER_11
                push    ds                      ; PARAMETER_10
                mov     ax,3210h
                push    ax                      ; PARAMETER_9
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_8
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_16
                mov     data_61,1
                mov     data_62,1
                mov     cx,3Eh
                mov     di,offset data_61
                add     di,4
                push    ds
                pop     es
                xor     ax,ax
                rep     stosw
                mov     word ptr [bp+LOCAL_8],40h
                mov     word ptr [bp+LOCAL_3],0
                mov     word ptr [bp+LOCAL_4],0
                mov     cl,[bp+LOCAL_1]
                and     cl,0Fh
                mov     ax,1
                shl     ax,cl
                mov     [bp+LOCAL_5],ax
                mov     ax,[bp+LOCAL_1]
                mov     [bp+LOCAL_7],ax
                jmp     short loc_90
loc_89::
                mov     ax,[bp+LOCAL_7]
                dec     ax
                mov     [bp+LOCAL_7],ax
loc_90::
                cmp     word ptr [bp+LOCAL_7],0
                jge     loc_91
                jmp     loc_101
loc_91::
                cmp     word ptr [bp+LOCAL_4],0
                je      loc_92
                push    ds                      ; PARAMETER_9
                mov     ax,3610h
                push    ax                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                push    ax                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_19
loc_92::
                mov     ax,[bp+LOCAL_3]
                shl     ax,1
                mov     [bp+LOCAL_3],ax
                mov     bx,[bp+LOCAL_3]
                shl     bx,1
                cmp     data_61[bx],0
                jne     loc_93
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_9
                push    ax                      ; PARAMETER_8
                mov     ax,[bp+LOCAL_3]
                shr     ax,1
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_7
                push    ax                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_19
                mov     bx,[bp+LOCAL_3]
                shl     bx,1
                mov     data_61[bx],1
loc_93::
                mov     ax,[bp+LOCAL_7]
                mov     bx,data_35e
                cwd
                idiv    bx
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_7]
                add     bx,ax
                mov     ax,[bp+LOCAL_5]
                test    ax,es:[bx]
                jz      loc_94
                mov     ax,[bp+LOCAL_3]
                inc     ax
                mov     [bp+LOCAL_3],ax
loc_94::
                cmp     word ptr [bp+LOCAL_5],1
                jne     loc_95
                mov     word ptr [bp+LOCAL_5],8000h
                jmp     short loc_96
loc_95::
                mov     ax,[bp+LOCAL_5]
                shr     ax,1
                and     ax,7FFFh
                mov     [bp+LOCAL_5],ax
loc_96::
                mov     bx,[bp+LOCAL_3]
                shl     bx,1
                cmp     data_61[bx],0
                jne     loc_97
                mov     ax,[bp+LOCAL_3]
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_11
                push    ax                      ; PARAMETER_10
                mov     ax,[bp+LOCAL_3]
                dec     ax
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_9
                push    ax                      ; PARAMETER_8
                mov     ax,si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_7
                push    ax                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_17
                mov     bx,[bp+LOCAL_3]
                shl     bx,1
                mov     data_61[bx],1
loc_97::
                cmp     word ptr [bp+LOCAL_7],0
                je      loc_98
                mov     cl,[bp+LOCAL_2]
                dec     cl
                mov     ax,1
                shl     ax,cl
                cmp     ax,[bp+LOCAL_3]
                jbe     loc_98
                jmp     loc_89
loc_98::
                cmp     word ptr [bp+LOCAL_4],0
                je      loc_99
                push    ds                      ; PARAMETER_11
                mov     ax,3610h
                push    ax                      ; PARAMETER_10
                push    ds                      ; PARAMETER_9
                push    ax                      ; PARAMETER_8
                mov     ax,[bp+LOCAL_3]
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_7
                push    ax                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_17
                jmp     short loc_100
loc_99::
                push    si                      ; PARAMETER_5
                mov     ax,[bp+LOCAL_3]
                imul    si
                shl     ax,1
                add     ax,3210h
                push    ds                      ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3610h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
loc_100::
                mov     word ptr [bp+LOCAL_3],0
                mov     word ptr [bp+LOCAL_4],1
                jmp     loc_89
loc_101::
                push    si                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,3610h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                push    ds                      ; PARAMETER_4
                mov     ax,3610h
                push    ax                      ; PARAMETER_3
                mov     ax,1
                push    ax                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_7
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_11
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_9
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                mov     ax,3610h
                push    ax                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_17
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_9
                or      ax,ax
                jl      loc_102
                push    si                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_12]      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_11]      ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
loc_102::
                mov     word ptr [bp+LOCAL_9],0
loc_103::
                mov     ax,400h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3210h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3610h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3650h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,80h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,36D0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,[bp+LOCAL_9]
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    18h
sub_20          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     si,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_6
                shl     ax,1
                mov     [bp+LOCAL_1],ax
                xor     di,di
                cmp     data_57,0
                je      loc_104
                mov     ax,data_57
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    12h
loc_104::
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3110h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3110h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3150h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3190h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,3190h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,31D0h
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    si                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,31D0h
                push    ax                      ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
                push    ds                      ; PARAMETER_6
                mov     ax,30D0h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,31D0h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_1
                call    sub_13
                push    ds                      ; PARAMETER_12
                mov     ax,3110h
                push    ax                      ; PARAMETER_11
                push    ds                      ; PARAMETER_10
                mov     ax,3150h
                push    ax                      ; PARAMETER_9
                push    ds                      ; PARAMETER_8
                mov     ax,3190h
                push    ax                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,31D0h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,30D0h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                mov     ax,si
;*              add     ax,3
                db      5, 3, 0
                push    ax                      ; PARAMETER_1
                call    sub_20
                mov     di,ax
                or      di,di
                jnz     loc_105
                push    si                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,3110h
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_1
                call    sub_23
                add     sp,0Ah
loc_105::
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,30D0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3110h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3150h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,3190h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,40h
                push    ax
                xor     ax,ax
                push    ax
                push    ds
                mov     ax,31D0h
                push    ax
                nop
                callf   sub_58
                add     sp,8
                mov     ax,di
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    12h
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                mov     cx,[bp+PARAMETER_3]
                xor     dx,dx
                cmp     dx,cx
                jge     loc_107
loc_106::
                mov     ax,dx
                inc     dx
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     word ptr es:[bx],0
                cmp     dx,cx
                jl      loc_106
loc_107::
                pop     bp
                retn
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp
                mov     bp,sp
                push    si
                mov     si,[bp+PARAMETER_5]
                xor     cx,cx
                cmp     cx,si
                jge     loc_109
loc_108::
                mov     ax,cx
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                mov     ax,es:[bx]
                mov     dx,cx
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     es:[bx],ax
                inc     cx
                cmp     cx,si
                jl      loc_108
loc_109::
                pop     si
                pop     bp
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     di,1
                xor     si,si
                mov     ax,[bp+PARAMETER_3]
                dec     ax
                mov     [bp+LOCAL_1],ax
                jmp     short loc_112
loc_110::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                inc     word ptr es:[bx]
                cmp     word ptr es:[bx],0
                je      loc_111
                xor     di,di
loc_111::
                inc     si
loc_112::
                cmp     [bp+LOCAL_1],si
                jle     loc_113
                or      di,di
                jnz     loc_110
loc_113::
                or      di,di
                jz      loc_114
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                inc     word ptr es:[bx]
                cmp     word ptr es:[bx],8000h
                jne     loc_114
                call    sub_5
loc_114::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     di,1
                xor     si,si
                mov     ax,[bp+PARAMETER_3]
                dec     ax
                mov     [bp+LOCAL_1],ax
                jmp     short loc_117
loc_115::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                dec     word ptr es:[bx]
                cmp     word ptr es:[bx],0FFFFh
                je      loc_116
                xor     di,di
loc_116::
                inc     si
loc_117::
                cmp     [bp+LOCAL_1],si
                jle     loc_118
                or      di,di
                jnz     loc_115
loc_118::
                or      di,di
                jz      loc_119
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                dec     word ptr es:[bx]
                cmp     word ptr es:[bx],7FFFh
                jne     loc_119
                call    sub_5
loc_119::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                mov     cx,[bp+PARAMETER_3]
                mov     bx,cx
                shl     bx,1
                mov     es,[bp+PARAMETER_2]
                add     bx,[bp+PARAMETER_1]
                test    word ptr es:[bx-2],8000h
                jz      loc_120
                mov     ax,0FFFFh
                pop     bp
                retn
loc_120::
                mov     ax,cx
                dec     ax
                mov     dx,ax
                jmp     short loc_123
loc_121::
                mov     ax,dx
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                cmp     word ptr es:[bx],0
                je      loc_122
                mov     ax,1
                pop     bp
                retn
loc_122::
                dec     dx
loc_123::
                or      dx,dx
                jge     loc_121
                xor     ax,ax
                pop     bp
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ah
                push    si
                push    di
                mov     di,[bp+PARAMETER_7]
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],0
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_4],ax
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_5],ax
                xor     si,si
                cmp     si,di
                jge     loc_125
loc_124::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_5]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                inc     si
                cmp     si,di
                jl      loc_124
loc_125::
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_3],ax
                cmp     word ptr [bp+LOCAL_3],1
                jne     loc_126
                cmp     word ptr [bp+LOCAL_4],0FFFFh
                jne     loc_127
                cmp     word ptr [bp+LOCAL_5],0FFFFh
                jne     loc_127
                call    sub_5
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
loc_126::
                cmp     word ptr [bp+LOCAL_3],0FFFFh
                jne     loc_127
                cmp     word ptr [bp+LOCAL_4],1
                jne     loc_127
                cmp     word ptr [bp+LOCAL_5],1
                jne     loc_127
                call    sub_5
loc_127::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ah
                push    si
                push    di
                mov     di,[bp+PARAMETER_7]
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],1
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_4],ax
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_5],ax
                xor     si,si
                cmp     si,di
                jge     loc_129
loc_128::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_5]
                add     bx,ax
                mov     ax,es:[bx]
                not     ax
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                inc     si
                cmp     si,di
                jl      loc_128
loc_129::
                push    di                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_26
                add     sp,6
                mov     [bp+LOCAL_3],ax
                cmp     word ptr [bp+LOCAL_3],1
                jne     loc_130
                cmp     word ptr [bp+LOCAL_4],0FFFFh
                jne     loc_131
                cmp     word ptr [bp+LOCAL_5],1
                jne     loc_131
                call    sub_5
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
loc_130::
                cmp     word ptr [bp+LOCAL_3],0FFFFh
                jne     loc_131
                cmp     word ptr [bp+LOCAL_4],1
                jne     loc_131
                cmp     word ptr [bp+LOCAL_5],0FFFFh
                jne     loc_131
                call    sub_5
loc_131::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                mov     ax,[bp+PARAMETER_3]
                dec     ax
                mov     dx,ax
                jmp     short loc_134
loc_132::
                mov     ax,dx
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                cmp     word ptr es:[bx],0
                je      loc_133
                mov     ax,dx
                inc     ax
                pop     bp
                retn
loc_133::
                dec     dx
loc_134::
                or      dx,dx
                jge     loc_132
                xor     ax,ax
                pop     bp
                retn
sub_29          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,8
                push    si
                push    di
                mov     di,[bp+PARAMETER_6]
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],0
                cmp     word ptr [bp+PARAMETER_3],0
                jne     loc_135
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
loc_135::
                mov     ax,[bp+PARAMETER_3]
                mov     word ptr [bp+LOCAL_3],0
                mov     [bp+LOCAL_4],ax
                xor     si,si
                cmp     si,di
                jge     loc_137
loc_136::
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_4]
                add     bx,ax
                mov     bx,es:[bx]
                xor     cx,cx
                mov     dx,[bp+LOCAL_3]
                mov     ax,[bp+LOCAL_4]
                call    sub_55
                add     [bp+LOCAL_2],ax
                adc     [bp+LOCAL_1],dx
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                inc     si
                cmp     si,di
                jl      loc_136
loc_137::
                mov     ax,[bp+LOCAL_2]
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_30          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h

                push    bp
                mov     bp,sp
                push    si
                push    di
                mov     ax,[bp+PARAMETER_7]
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_29
                add     sp,6
                mov     di,ax
                xor     si,si
                cmp     si,[bp+PARAMETER_7]
                jge     loc_139
loc_138::
                push    di                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                push    word ptr es:[bx]        ; PARAMETER_3
                mov     ax,si
                shl     ax,1
                mov     dx,[bp+PARAMETER_1]
                add     dx,ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    dx                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
                mov     dx,di
                add     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     es:[bx],ax
                inc     si
                cmp     si,[bp+PARAMETER_7]
                jl      loc_138
loc_139::
                pop     di
                pop     si
                pop     bp
                retn
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    si
                push    di
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],0
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_1
                call    sub_29
                add     sp,6
                mov     di,ax
                xor     si,si
                cmp     si,[bp+PARAMETER_6]
                jge     loc_141
loc_140::
                mov     ax,di
                add     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                push    di                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_4
                mov     ax,si
                shl     ax,1
                mov     bx,[bp+PARAMETER_1]
                add     bx,ax
                mov     ax,es:[bx]
                imul    word ptr [bp+PARAMETER_5]
                push    ax                      ; PARAMETER_3
                mov     ax,si
                shl     ax,1
                mov     dx,[bp+PARAMETER_1]
                add     dx,ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    dx                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,di
                add     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                inc     si
                cmp     si,[bp+PARAMETER_6]
                jl      loc_140
loc_141::
                mov     ax,di
                add     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_29
                add     sp,6
                mov     di,ax
                xor     si,si
                cmp     si,[bp+PARAMETER_7]
                jge     loc_145
loc_142::
                mov     ax,[bp+PARAMETER_7]
                sub     ax,si
                mov     [bp+LOCAL_1],ax
                cmp     ax,di
                jle     loc_143
                push    di                      ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                push    word ptr es:[bx]        ; PARAMETER_3
                mov     ax,si
                shl     ax,1
                mov     dx,[bp+PARAMETER_1]
                add     dx,ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    dx                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
                mov     dx,di
                add     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     es:[bx],ax
                jmp     short loc_144
loc_143::
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_6
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_4
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                push    word ptr es:[bx]        ; PARAMETER_3
                mov     ax,si
                shl     ax,1
                mov     dx,[bp+PARAMETER_1]
                add     dx,ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    dx                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
loc_144::
                inc     si
                cmp     si,[bp+PARAMETER_7]
                jl      loc_142
loc_145::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_33          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    si
                push    di
                mov     ax,[bp+PARAMETER_8]
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_1
                call    sub_29
                add     sp,6
                mov     [bp+LOCAL_2],ax
                mov     ax,[bp+PARAMETER_8]
                dec     ax
                mov     dx,[bp+PARAMETER_7]
                sub     dx,ax
                mov     [bp+LOCAL_1],dx
                cmp     word ptr [bp+LOCAL_1],0
                jge     loc_146
                mov     word ptr [bp+LOCAL_1],0
loc_146::
                mov     si,[bp+LOCAL_1]
                mov     ax,[bp+LOCAL_1]
                cmp     ax,[bp+PARAMETER_8]
                jge     loc_149
loc_147::
                mov     ax,[bp+PARAMETER_7]
                sub     ax,si
                mov     di,ax
                or      di,di
                jge     loc_148
                xor     di,di
loc_148::
                mov     ax,[bp+LOCAL_2]
                sub     ax,di
                push    ax                      ; PARAMETER_6
                mov     ax,di
                shl     ax,1
                mov     dx,[bp+PARAMETER_5]
                add     dx,ax
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    dx                      ; PARAMETER_4
                mov     ax,si
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                push    word ptr es:[bx]        ; PARAMETER_3
                mov     ax,si
                add     ax,di
                shl     ax,1
                mov     dx,[bp+PARAMETER_1]
                add     dx,ax
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    dx                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
                mov     dx,[bp+LOCAL_2]
                add     dx,si
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     es:[bx],ax
                inc     si
                cmp     si,[bp+PARAMETER_8]
                jl      loc_147
loc_149::
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_34          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,6
                push    si
                push    di
                mov     word ptr [bp+LOCAL_1],0
                mov     word ptr [bp+LOCAL_2],0
                mov     ax,[bp+PARAMETER_5]
                shl     ax,1
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_22
                add     sp,6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_1
                call    sub_29
                add     sp,6
                mov     [bp+LOCAL_3],ax
                xor     di,di
                jmp     short loc_151
loc_150::
                mov     ax,[bp+LOCAL_3]
                sub     ax,di
                dec     ax
                push    ax                      ; PARAMETER_6
                mov     ax,di
                shl     ax,1
                add     ax,[bp+PARAMETER_3]
;*              add     ax,2
                db      5, 2, 0
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_5
                push    ax                      ; PARAMETER_4
                mov     ax,di
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                push    word ptr es:[bx]        ; PARAMETER_3
                mov     ax,di
                shl     ax,1
                shl     ax,1
                add     ax,[bp+PARAMETER_1]
;*              add     ax,2
                db      5, 2, 0
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    ax                      ; PARAMETER_1
                call    sub_30
                add     sp,0Ch
                mov     dx,[bp+LOCAL_3]
                add     dx,di
                shl     dx,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     es:[bx],ax
                inc     di
loc_151::
                mov     ax,[bp+LOCAL_3]
                dec     ax
                cmp     ax,di
                jg      loc_150
                mov     ax,[bp+PARAMETER_5]
                shl     ax,1
                push    ax                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_27
                add     sp,0Eh
                xor     di,di
                cmp     di,[bp+LOCAL_3]
                jl      loc_152
                jmp     loc_153
loc_152::
                mov     ax,di
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                mov     bx,es:[bx]
                xor     cx,cx
                mov     ax,di
                shl     ax,1
                mov     si,[bp+PARAMETER_3]
                add     si,ax
                mov     ax,es:[si]
                xor     dx,dx
                call    sub_55
                add     [bp+LOCAL_2],ax
                adc     [bp+LOCAL_1],dx
                mov     ax,di
                shl     ax,1
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,es:[bx]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     ax,di
                shl     ax,1
                shl     ax,1
                mov     bx,[bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                mov     bx,di
                shl     bx,1
                shl     bx,1
                add     bx,[bp+PARAMETER_1]
                mov     ax,es:[bx+2]
                add     [bp+LOCAL_2],ax
                adc     word ptr [bp+LOCAL_1],0
                mov     bx,di
                shl     bx,1
                shl     bx,1
                add     bx,[bp+PARAMETER_1]
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx+2],ax
                mov     ax,[bp+LOCAL_1]
                mov     word ptr [bp+LOCAL_1],0
                mov     [bp+LOCAL_2],ax
                inc     di
                cmp     di,[bp+LOCAL_3]
                jge     loc_153
                jmp     loc_152
loc_153::
                mov     ax,di
                shl     ax,1
                shl     ax,1
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,ax
                mov     ax,[bp+LOCAL_2]
                mov     es:[bx],ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_35          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                cmp     word ptr [bp+PARAMETER_1],8
                ja      loc_154
                xor     dx,dx
                xor     ax,ax
                pop     bp
                retn    6
loc_154::
                mov     dx,[bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_2]
                pop     bp
                retn    6
sub_36          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+2]
                mov     ah,0
                mov     dl,es:[bx+3]
                mov     dh,0
                mov     cl,8
                shl     dx,cl
                add     ax,dx
                mov     [bp+LOCAL_1],ax
;*              add     ax,4
                db      5, 4, 0
                add     [bp+PARAMETER_1],ax
                mov     ax,[bp+PARAMETER_4]
                add     ax,[bp+PARAMETER_3]
;*              add     ax,0FFF8h
                db       05h,0F8h,0FFh
                cmp     ax,[bp+PARAMETER_1]
                ja      loc_155
                xor     dx,dx
                xor     ax,ax
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_155::
                mov     dx,[bp+PARAMETER_2]
                mov     ax,[bp+PARAMETER_1]
                mov     sp,bp
                pop     bp
                retn    0Ah
sub_37          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     al,es:[bx]
                les     bx,dword ptr [bp+PARAMETER_1]
                cmp     al,es:[bx]
                jne     loc_156
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     al,es:[bx+1]
                les     bx,dword ptr [bp+PARAMETER_1]
                cmp     al,es:[bx+1]
                jne     loc_156
                mov     ax,1
                jmp     short loc_157
loc_156::
                xor     ax,ax
loc_157::
                pop     bp
                retn    8
sub_38          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    si
                mov     si,[bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_36
                mov     [bp+LOCAL_1],dx
                mov     [bp+LOCAL_2],ax
                jmp     short loc_160
loc_158::
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_38
                or      ax,ax
                jz      loc_159
                mov     dx,[bp+LOCAL_1]
                mov     ax,[bp+LOCAL_2]
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_159::
                push    word ptr [bp+PARAMETER_5]
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    si                      ; PARAMETER_3
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_1
                call    sub_37
                mov     [bp+LOCAL_1],dx
                mov     [bp+LOCAL_2],ax
loc_160::
                mov     ax,[bp+LOCAL_2]
                or      ax,[bp+LOCAL_1]
                jnz     loc_158
                xor     dx,dx
                xor     ax,ax
                pop     si
                mov     sp,bp
                pop     bp
                retn    0Ah
sub_39          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+2]
                mov     ah,0
                mov     dl,es:[bx+3]
                mov     dh,0
                mov     cl,8
                shl     dx,cl
                add     ax,dx
                pop     bp
                retn    4
sub_40          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6

                push    bp
                mov     bp,sp
                mov     dx,[bp+PARAMETER_2]
                mov     ax,[bp+PARAMETER_1]
;*              add     ax,4
                db      5, 4, 0
                pop     bp
                retn    4
sub_41          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,8
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_1
                call    sub_39
                mov     [bp+LOCAL_1],dx
                mov     [bp+LOCAL_2],ax
                mov     ax,[bp+PARAMETER_4]
                or      ax,[bp+PARAMETER_5]
                jz      loc_161
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     word ptr es:[bx],0
loc_161::
                mov     ax,[bp+PARAMETER_2]
                or      ax,[bp+PARAMETER_3]
                jz      loc_162
                push    di
                xor     ax,ax
                push    ax
                push    word ptr [bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_2]
                nop
                callf   sub_58
                add     sp,8
loc_162::
                mov     ax,[bp+LOCAL_2]
                or      ax,[bp+LOCAL_1]
                jnz     loc_163
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_163::
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_1
                call    sub_40
                mov     si,ax
                cmp     si,di
                jbe     loc_164
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_164::
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_1
                call    sub_41
                mov     [bp+LOCAL_3],dx
                mov     [bp+LOCAL_4],ax
                mov     ax,[bp+PARAMETER_4]
                or      ax,[bp+PARAMETER_5]
                jz      loc_165
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     es:[bx],si
loc_165::
                mov     ax,[bp+PARAMETER_2]
                or      ax,[bp+PARAMETER_3]
                jz      loc_166
                push    si
                push    word ptr [bp+LOCAL_3]
                push    word ptr [bp+LOCAL_4]
                push    word ptr [bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_2]
                nop
                callf   sub_60
                add     sp,0Ah
loc_166::
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
sub_42          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                sub     sp,0Ah
                push    word ptr [bp+10h]       ; PARAMETER_5
                push    word ptr [bp+0Eh]       ; PARAMETER_4
                push    word ptr [bp+0Ch]       ; PARAMETER_3
                push    word ptr [bp+0Ah]       ; PARAMETER_2
                push    word ptr [bp+8]         ; PARAMETER_1
                call    sub_39
                mov     [bp-2],dx
                mov     [bp-4],ax
                mov     ax,[bp+4]
                or      ax,[bp+6]
                jz      loc_167
                les     bx,dword ptr [bp+4]
                mov     word ptr es:[bx],0
loc_167::
                mov     ax,[bp-4]
                or      ax,[bp-2]
                jnz     loc_168
                mov     ax,1
                mov     sp,bp
                pop     bp
                retn    0Eh
loc_168::
                push    word ptr [bp-2]
                push    word ptr [bp-4]         ; PARAMETER_1
                call    sub_40
                mov     [bp-6],ax
                cmp     word ptr [bp-6],2
                je      loc_169
                mov     ax,1
                mov     sp,bp
                pop     bp
                retn    0Eh
loc_169::
                push    word ptr [bp-2]         ; PARAMETER_2
                push    word ptr [bp-4]         ; PARAMETER_1
                call    sub_41
                mov     [bp-8],dx
                mov     [bp-0Ah],ax
                mov     ax,[bp+4]
                or      ax,[bp+6]
                jz      loc_170
                les     bx,dword ptr [bp-0Ah]
                mov     al,es:[bx]
                mov     ah,0
                mov     dl,es:[bx+1]
                mov     dh,0
                mov     cl,8
                shl     dx,cl
                add     ax,dx
                les     bx,dword ptr [bp+4]
                mov     es:[bx],ax
loc_170::
                xor     ax,ax
                mov     sp,bp
                pop     bp
                retn    0Eh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,8
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_1
                call    sub_39
                mov     [bp+LOCAL_1],dx
                mov     [bp+LOCAL_2],ax
                mov     ax,[bp+PARAMETER_4]
                or      ax,[bp+PARAMETER_5]
                jz      loc_171
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     word ptr es:[bx],0
loc_171::
                mov     ax,[bp+PARAMETER_2]
                or      ax,[bp+PARAMETER_3]
                jz      loc_172
                push    di
                xor     ax,ax
                push    ax
                push    word ptr [bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_2]
                nop
                callf   sub_58
                add     sp,8
loc_172::
                mov     ax,[bp+LOCAL_2]
                or      ax,[bp+LOCAL_1]
                jnz     loc_173
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_173::
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_1
                call    sub_40
                mov     si,ax
                cmp     si,di
                jbe     loc_174
                mov     ax,1
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_174::
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_2
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_1
                call    sub_41
                mov     [bp+LOCAL_3],dx
                mov     [bp+LOCAL_4],ax
                mov     ax,[bp+PARAMETER_4]
                or      ax,[bp+PARAMETER_5]
                jz      loc_175
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     es:[bx],si
loc_175::
                mov     ax,[bp+PARAMETER_2]
                or      ax,[bp+PARAMETER_3]
                jz      loc_176
                push    word ptr [bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_2]
                push    word ptr [bp+LOCAL_3]
                push    word ptr [bp+LOCAL_4]
                push    si
                call    sub_45
loc_176::
                xor     ax,ax
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
sub_43          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near

PARAMETER_1     =       4                       ; bp+4
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,6
                push    si
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     ax,es:[bx+4]
                mov     dx,es:[bx+2]
                mov     [bp+LOCAL_2],ax
                mov     [bp+LOCAL_3],dx
                mov     si,es:[bx]
                mov     ax,es:[bx+8]
                shr     ax,1
                mov     data_64,ax
                mov     bx,10h
                cwd
                idiv    bx
                inc     ax
                mov     data_66,ax
                shl     ax,1
                mov     data_65,ax
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_10
                push    word ptr [bp+LOCAL_3]   ; PARAMETER_9
                push    si                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                mov     ax,3BF8h
                push    ax                      ; PARAMETER_6
                push    ss                      ; PARAMETER_5
                lea     ax,[bp+LOCAL_1]
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2D12h
                push    ax                      ; PARAMETER_2
                mov     ax,6Ah
                push    ax                      ; PARAMETER_1
                call    sub_43
                or      ax,ax
                jnz     loc_179
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_10
                push    word ptr [bp+LOCAL_3]   ; PARAMETER_9
                push    si                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                mov     ax,3BFBh
                push    ax                      ; PARAMETER_6
                push    ss                      ; PARAMETER_5
                lea     ax,[bp+LOCAL_1]
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2DE6h
                push    ax                      ; PARAMETER_2
                mov     ax,6Ah
                push    ax                      ; PARAMETER_1
                call    sub_43
                or      ax,ax
                jnz     loc_179
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_10
                push    word ptr [bp+LOCAL_3]   ; PARAMETER_9
                push    si                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                mov     ax,3BFEh
                push    ax                      ; PARAMETER_6
                push    ss                      ; PARAMETER_5
                lea     ax,[bp+LOCAL_1]
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2D7Ch
                push    ax                      ; PARAMETER_2
                mov     ax,6Ah
                push    ax                      ; PARAMETER_1
                call    sub_43
                or      ax,ax
                jz      loc_177
                mov     data_63,0
                jmp     short loc_178
loc_177::
                mov     data_63,1
loc_178::
                xor     ax,ax
                pop     si
                mov     sp,bp
                pop     bp
                retn    4
loc_179::
                mov     ax,data_56
;*              add     ax,7
                db      5, 7, 0
                pop     si
                mov     sp,bp
                pop     bp
                retn    4
sub_44          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp
                mov     bp,sp
                push    word ptr [bp+PARAMETER_1]
                push    word ptr [bp+PARAMETER_3]
                push    word ptr [bp+PARAMETER_2]
                push    word ptr [bp+PARAMETER_5]
                push    word ptr [bp+PARAMETER_4]
                nop
                callf   sub_60
                add     sp,0Ah
                pop     bp
                retn    0Ah
sub_45          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    word ptr [bp+4]
                push    word ptr [bp+8]
                push    word ptr [bp+6]
                push    word ptr [bp+0Ch]
                push    word ptr [bp+0Ah]
                nop
                callf   sub_60
                add     sp,0Ah
                pop     bp
                retn    0Ah

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,8
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     ax,es:[bx+4]
                mov     dx,es:[bx+2]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                mov     ax,es:[bx]
                mov     [bp+LOCAL_3],ax
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_10
                push    dx                      ; PARAMETER_9
                push    ax                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                mov     ax,3BF8h
                push    ax                      ; PARAMETER_6
                push    ss                      ; PARAMETER_5
                lea     ax,[bp+LOCAL_4]
                push    ax                      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_42
                or      ax,ax
                jnz     loc_180
                xor     ax,ax
                mov     sp,bp
                pop     bp
                retn    0Ah
loc_180::
                mov     ax,ds:data_11e
;*              add     ax,7
                db      5, 7, 0
                mov     sp,bp
                pop     bp
                retn    0Ah
sub_46          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_47          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                push    si
                mov     data_57,0
                mov     [bp+LOCAL_1],ds
                mov     word ptr [bp+LOCAL_2],398Ah
                cmp     word ptr ds:[3988h],0
                je      loc_181
                mov     ax,266h
                push    ax
                xor     ax,ax
                push    ax
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]
                nop
                callf   sub_58
                add     sp,8
                dec     word ptr ds:[3988h]
loc_181::
                mov     ax,[bp+LOCAL_1]
                mov     dx,[bp+LOCAL_2]
                add     dx,134h
                mov     data_72,ax
                mov     data_71,dx
                mov     dx,[bp+LOCAL_2]
                add     dx,260h
                mov     word ptr ds:[3BF6h],ax
                mov     word ptr data_73,dx
                les     bx,dword ptr [bp+PARAMETER_9]
                mov     ax,es:[bx+8]
;*              add     ax,7
                db      5, 7, 0
                mov     cl,3
                shr     ax,cl
                les     bx,dword ptr [bp+LOCAL_2]
                mov     es:data_30e[bx],ax
                mov     ax,[bp+PARAMETER_7]
                or      ax,[bp+PARAMETER_8]
                jnz     loc_182
                cmp     word ptr es:data_29e[bx],0
                je      loc_182
                mov     si,data_56
                add     si,0Bh
                jmp     loc_204
loc_182::
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     word ptr es:[bx+2],0
                mov     word ptr es:[bx],0
                les     bx,dword ptr [bp+LOCAL_2]
                mov     word ptr es:data_34e[bx],0
                mov     word ptr es:data_33e[bx],0
                mov     word ptr es:data_32e[bx],0
                mov     word ptr es:data_31e[bx],0
loc_183::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,es:data_29e[bx]
                cmp     ax,es:data_30e[bx]
                jae     loc_184
                jmp     loc_189
loc_184::
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                les     bx,dword ptr [bp+LOCAL_2]
                xor     ax,ax
                push    ax                      ; PARAMETER_8
                push    word ptr es:data_30e[bx]        ; PARAMETER_7
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_6
                push    bx                      ; PARAMETER_5
                mov     ax,[bp+LOCAL_2]
                add     ax,262h
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_3
                mov     si,ax
                or      si,si
                jz      loc_185
                jmp     loc_204
loc_185::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,word ptr es:[12Ch][bx]
                sub     ax,word ptr es:[12Eh][bx]
                mov     word ptr es:[12Ch][bx],ax
                mov     word ptr [bp+LOCAL_3],0
                mov     word ptr [bp+LOCAL_4],0
                jmp     short loc_187
loc_186::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,[bp+LOCAL_4]
                add     ax,word ptr es:[12Eh][bx]
                add     ax,[bp+LOCAL_2]
                mov     bx,ax
                mov     al,es:[bx]
                mov     bx,[bp+LOCAL_2]
                add     bx,[bp+LOCAL_4]
                mov     es:[bx],al
                add     word ptr [bp+LOCAL_4],1
                adc     word ptr [bp+LOCAL_3],0
loc_187::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,word ptr es:[12Ch][bx]
                xor     dx,dx
                cmp     dx,[bp+LOCAL_3]
                ja      loc_186
                jz      loc_188
                jmp     loc_183
loc_188::
                cmp     ax,[bp+LOCAL_4]
                ja      loc_186
                jmp     loc_183
loc_189::
                les     bx,dword ptr [bp+LOCAL_2]
                cmp     word ptr es:[12Ch][bx],0
                je      loc_190
                jmp     loc_195
loc_190::
                mov     word ptr [bp+LOCAL_5],0
                mov     word ptr [bp+LOCAL_6],0
                jmp     short loc_192
loc_191::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,[bp+LOCAL_5]
                mov     dx,[bp+LOCAL_6]
                add     dx,word ptr es:[12Eh][bx]
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [bp+LOCAL_5],ax
                mov     [bp+LOCAL_6],dx
loc_192::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,word ptr es:[132h][bx]
                mov     dx,word ptr es:[130h][bx]
                add     dx,[bp+LOCAL_6]
                adc     ax,[bp+LOCAL_5]
                cmp     ax,[bp+PARAMETER_8]
                jb      loc_191
                ja      loc_193
                cmp     dx,[bp+PARAMETER_7]
                jbe     loc_191
loc_193::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,[bp+LOCAL_5]
                mov     dx,[bp+LOCAL_6]
                sub     dx,word ptr es:[12Eh][bx]
;*              sbb     ax,0
                db       1Dh, 00h, 00h
                mov     [bp+LOCAL_5],ax
                mov     [bp+LOCAL_6],dx
                mov     ax,[bp+LOCAL_6]
                or      ax,[bp+LOCAL_5]
                jz      loc_195
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                push    word ptr [bp+LOCAL_5]   ; PARAMETER_8
                push    word ptr [bp+LOCAL_6]   ; PARAMETER_7
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,[bp+PARAMETER_5]
                add     ax,word ptr es:[130h][bx]
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    ax                      ; PARAMETER_5
                mov     ax,[bp+LOCAL_2]
                add     ax,262h
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_3
                mov     si,ax
                or      si,si
                jz      loc_194
                jmp     loc_204
loc_194::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,word ptr es:[132h][bx]
                mov     dx,word ptr es:[130h][bx]
                add     dx,[bp+LOCAL_6]
                adc     ax,[bp+LOCAL_5]
                mov     word ptr es:[132h][bx],ax
                mov     word ptr es:[130h][bx],dx
loc_195::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,es:data_32e[bx]
                mov     dx,es:data_31e[bx]
                cmp     ax,[bp+PARAMETER_8]
                jb      loc_199
                jnz     loc_196
                cmp     dx,[bp+PARAMETER_7]
                jb      loc_199
loc_196::
                mov     ax,[bp+PARAMETER_7]
                or      ax,[bp+PARAMETER_8]
                jz      loc_197
                xor     si,si
                jmp     short loc_201
loc_197::
                push    word ptr [bp+PARAMETER_10]      ; PARAMETER_10
                push    word ptr [bp+PARAMETER_9]       ; PARAMETER_9
                push    word ptr [bp+PARAMETER_8]       ; PARAMETER_8
                push    word ptr [bp+PARAMETER_7]       ; PARAMETER_7
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_5
                mov     ax,[bp+LOCAL_2]
                add     ax,262h
                push    word ptr [bp+LOCAL_1]   ; PARAMETER_4
                push    ax                      ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_3
                mov     si,ax
                or      si,si
                jz      loc_198
                jmp     loc_204
loc_198::
                jmp     short loc_201
loc_199::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,word ptr es:[130h][bx]
                add     word ptr es:[130h][bx],1
                adc     word ptr es:[132h][bx],0
                les     bx,dword ptr [bp+PARAMETER_5]
                add     bx,ax
                mov     al,es:[bx]
                les     bx,dword ptr [bp+LOCAL_2]
                mov     dx,es:data_29e[bx]
                inc     word ptr es:data_29e[bx]
                add     bx,dx
                mov     es:[bx],al
                mov     bx,[bp+LOCAL_2]
                mov     ax,es:data_29e[bx]
                cmp     ax,es:data_30e[bx]
                jae     loc_200
                jmp     loc_195
loc_200::
                jmp     loc_183
loc_201::
                or      si,si
                jnz     loc_202
                les     bx,dword ptr [bp+LOCAL_2]
                mov     ax,es:data_34e[bx]
                mov     dx,es:data_33e[bx]
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     es:[bx+2],ax
                mov     es:[bx],dx
loc_202::
                mov     ax,[bp+PARAMETER_7]
                or      ax,[bp+PARAMETER_8]
                jnz     loc_203
                or      si,si
                jnz     loc_203
                mov     ax,266h
                push    ax
                xor     ax,ax
                push    ax
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]
                nop
                callf   sub_58
                add     sp,8
loc_203::
                mov     ax,si
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
loc_204::
                mov     ax,266h
                push    ax
                xor     ax,ax
                push    ax
                push    word ptr [bp+LOCAL_1]
                push    word ptr [bp+LOCAL_2]
                nop
                callf   sub_58
                add     sp,8
                mov     ax,si
                pop     si
                mov     sp,bp
                pop     bp
                retn    14h
sub_47          endp

                db      11 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_48          proc    far
                push    si
                mov     cx,data_69
                mov     bx,data_68
                mov     dx,41C6h
                mov     ax,4E6Dh
                xchg    si,ax
                xchg    dx,ax
                mul     bx
                jcxz    loc_205
                xchg    cx,ax
                mul     si
                add     ax,cx
loc_205::
                xchg    si,ax
                mul     bx
                add     dx,si
                add     ax,3039h
                adc     dx,0
                mov     data_69,dx
                mov     data_68,ax
                push    ds
                mov     dx,seg seg_a
                mov     ds,dx
                push    ax
                mov     bx,8
                call    dword ptr data_53
                pop     bx
                add     ax,bx
                pop     ds
                pop     si
                retf
sub_48          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_49          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
LOCAL_11        =       -16h                    ; bp+0FFEAh
LOCAL_10        =       -14h                    ; bp+0FFECh
LOCAL_9         =       -12h                    ; bp+0FFEEh
LOCAL_8         =       -10h                    ; bp+0FFF0h
LOCAL_7         =       -0Eh                    ; bp+0FFF2h
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,16h
                push    es
                push    ss                      ; PARAMETER_3
                lea     ax,[bp+LOCAL_11]
                push    ax                      ; PARAMETER_2
                mov     ax,4
                push    ax                      ; PARAMETER_1
                call    sub_51
                les     bx,dword ptr data_50
                add     bx,0Ch
                push    bx
                mov     word ptr es:[bx+2],0
                mov     word ptr es:[bx],0
                mov     dx,[bp+PARAMETER_9]
                mov     ax,[bp+PARAMETER_8]
                mov     es:[bx+6],dx
                mov     es:[bx+4],ax
                mov     dx,[bp+LOCAL_10]
                mov     ax,[bp+LOCAL_11]
                mov     es:[bx+0Ah],dx
                mov     es:[bx+8],ax
                sub     bx,0Ch
                mov     word ptr es:[bx+4],0Ch
                mov     es:[bx+2],es
                pop     dx
                mov     es:[bx],dx
                add     bx,6
                mov     word ptr es:[bx+4],400h
                mov     es:[bx+2],es
                mov     es:[bx],dx
                push    ds
                lds     si,dword ptr data_50
                mov     di,bx
                mov     cx,[bp+PARAMETER_10]
                mov     bx,8
                mov     ax,3Bh
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     ds
                or      ax,ax
                jz      loc_206
                jmp     loc_208
loc_206::
                les     bx,dword ptr ds:data_10e
                add     bx,0Ch
                mov     ax,es:[bx]
                mov     dx,es:[bx+2]
                mov     si,2A74h
                add     si,data_9e
                mov     word ptr [si],0
                mov     word ptr [si+2],0
                mov     word ptr [si+4],3Ch
                mov     word ptr [si+6],0
                mov     [si+8],ax
                mov     [si+0Ah],dx
                les     bx,dword ptr [bp+PARAMETER_4]
                mov     ax,es:[bx+12h]
                mov     cx,ax
                and     cx,1
                add     ax,cx
                add     ax,es:[bx+14h]
;*              add     ax,16h
                db       05h, 16h, 00h
                mov     [bp+LOCAL_8],ax
                mov     [si+0Ch],ax
                xor     dx,dx
                mov     [si+0Eh],dx
                mov     word ptr [bp+LOCAL_4],10h
                mov     [bp+LOCAL_6],si
                mov     dx,ds
                mov     [bp+LOCAL_5],dx
                mov     [bp+LOCAL_1],ax
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_5]
                mov     [bp+LOCAL_3],ax
                mov     [bp+LOCAL_2],dx
                mov     ax,2
                push    ax                      ; PARAMETER_11
                push    ss                      ; PARAMETER_10
                lea     ax,[bp+LOCAL_6]
                push    ax                      ; PARAMETER_9
                les     bx,dword ptr [bp+PARAMETER_6]
                add     bx,es:[bx+0Ah]
                add     bx,1Ah
                push    es                      ; PARAMETER_8
                push    bx                      ; PARAMETER_7
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_6
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,2A74h
                push    ax                      ; PARAMETER_3
                push    ss                      ; PARAMETER_2
                lea     ax,[bp+LOCAL_9]
                push    ax                      ; PARAMETER_1
                call    sub_50
                or      ax,ax
                jz      loc_207
                jmp     loc_208
loc_207::
                les     di,dword ptr ds:data_10e
                add     di,0Ch
                add     di,3
                and     di,0FFFCh
                push    di
                mov     word ptr es:[di],0
                mov     word ptr es:[di+2],0
                mov     word ptr es:[di+4],0
                mov     word ptr es:[di+6],0
                mov     cx,[bp+LOCAL_8]
                mov     es:[di+8],cx
                xor     dx,dx
                mov     es:[di+0Ah],dx
                push    ds
                lds     si,dword ptr [bp+PARAMETER_4]
                add     di,0Ch
                cld
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                add     di,3
                and     di,0FFFCh
                mov     cx,[bp+LOCAL_9]
                mov     es:[di],cx
                xor     ax,ax
                mov     es:[di+2],ax
                add     di,4
                mov     si,data_13e
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ax
                sub     di,ax
                push    ds
                lds     si,dword ptr ds:data_10e
                mov     [si+4],di
                mov     [si+2],es
                mov     [si],ax
                add     si,6
                mov     word ptr [si+4],400h
                mov     [si+2],es
                mov     [si],ax
                mov     di,si
                sub     si,6
                mov     cx,[bp+PARAMETER_10]
                mov     bx,8
                mov     ax,3Ch
                push    bp
                mov     bp,VLMID_RSA
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     ds
loc_208::
                pop     es
                mov     sp,bp
                pop     bp
                retf    12h
sub_49          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_50          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh
PARAMETER_7     =       10h                     ; bp+10h
PARAMETER_8     =       12h                     ; bp+12h
PARAMETER_9     =       14h                     ; bp+14h
PARAMETER_10    =       16h                     ; bp+16h
PARAMETER_11    =       18h                     ; bp+18h
LOCAL_13        =       -1Ah                    ; bp+0FFE6h
LOCAL_12        =       -18h                    ; bp+0FFE8h
LOCAL_11        =       -16h                    ; bp+0FFEAh
LOCAL_10        =       -14h                    ; bp+0FFECh
LOCAL_9         =       -12h                    ; bp+0FFEEh
LOCAL_8         =       -10h                    ; bp+0FFF0h
LOCAL_7         =       -0Eh                    ; bp+0FFF2h
LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,1Ah
                les     bx,dword ptr [bp+PARAMETER_7]
                mov     si,data_18e
                mov     ax,es:[bx+8]
                mov     [si],ax
                add     bx,0Ah
                mov     [si+4],es
                mov     [si+2],bx
                mov     byte ptr [si+6],3
                mov     byte ptr [si+7],30h     ; '0'
                mov     word ptr [si+8],1A4h
                mov     word ptr [bp+LOCAL_6],3
                mov     word ptr [bp+LOCAL_13],1A4h
                mov     ax,1A4h
                mov     cl,4
                shr     ax,cl
;*              add     ax,2
                db      5, 2, 0
                mov     [bp+LOCAL_12],ax
                shl     ax,1
                mov     [bp+LOCAL_11],ax
                imul    word ptr [bp+LOCAL_6]
                mov     [bp+LOCAL_10],ax
                cmp     ax,400h
                jbe     loc_209
                mov     ax,0FFFEh
                jmp     loc_231
loc_209::
                les     bx,dword ptr [bp+PARAMETER_5]
                mov     cx,[bp+LOCAL_11]
                cmp     es:[bx+6],cx
                je      loc_210
                mov     ax,0FFFEh
                jmp     loc_231
loc_210::
                mov     di,data_14e
                push    di
                push    cx
                push    ds
                pop     es
                xor     ax,ax
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                pop     cx
                pop     di
                push    ds                      ; PARAMETER_5
                mov     ax,2D08h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                push    di                      ; PARAMETER_2
                push    cx                      ; PARAMETER_1
                call    sub_46
                or      ax,ax
                jz      loc_211
                mov     ax,0FFF8h
                jmp     loc_231
loc_211::
                mov     ax,[bp+LOCAL_13]
;*              add     ax,7
                db      5, 7, 0
                mov     cl,3
                shr     ax,cl
                mov     [bp+LOCAL_9],ax
                inc     ax
                shr     ax,1
                mov     [bp+LOCAL_8],ax
                mov     cl,[bp+LOCAL_13]
                and     cl,0Fh
                mov     ax,0FFFFh
                shl     ax,cl
                not     ax
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jnz     loc_212
                mov     ax,0FFFFh
loc_212::
                mov     [bp+LOCAL_7],ax
                mov     word ptr ds:data_12e,0
                mov     cx,[bp+LOCAL_10]
                mov     di,data_16e
                push    di
                push    ds
                pop     es
                xor     ax,ax
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                pop     si
                mov     word ptr [bp+LOCAL_6],3
                mov     di,[bp+LOCAL_12]
loc_213::
                push    ds                      ; PARAMETER_3
                push    si                      ; PARAMETER_2
                mov     ax,[bp+LOCAL_8]
                shl     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_51
                mov     bx,[bp+LOCAL_8]
                dec     bx
                shl     bx,1
                add     bx,si
                mov     ax,[bp+LOCAL_7]
                and     [bx],ax
                push    ds                      ; PARAMETER_5
                push    si                      ; PARAMETER_4
                mov     ax,2BE0h
                push    ds                      ; PARAMETER_3
                push    ax                      ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_9
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jz      loc_216
                or      ax,ax
                jz      loc_214
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jz      loc_215
                mov     word ptr ds:data_12e,0
                jmp     short loc_213
loc_214::
                push    di                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_25
                add     sp,6
                jmp     short loc_216
loc_215::
                push    di                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,2BE0h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                push    si                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     ax,2C18h
                push    ax                      ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
                push    di                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                mov     ax,2C18h
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,2BE0h
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_28
                add     sp,0Eh
loc_216::
                dec     word ptr [bp+LOCAL_6]
                jz      loc_217
                mov     ax,di
                shl     ax,1
                add     si,ax
                jmp     short loc_213
loc_217::
                les     di,dword ptr [bp+PARAMETER_3]
                add     di,0Ch
                push    di
                mov     cx,[bp+LOCAL_10]
                xor     ax,ax
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                pop     di
                mov     si,2C50h
                mov     word ptr [bp+LOCAL_6],3
loc_218::
                push    ds                      ; PARAMETER_10
                mov     ax,2D08h
                push    ax                      ; PARAMETER_9
                xor     ax,ax
                push    ax                      ; PARAMETER_8
                push    word ptr [bp+LOCAL_9]   ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                push    si                      ; PARAMETER_5
                push    ss                      ; PARAMETER_4
                lea     ax,[bp+LOCAL_3]
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    di                      ; PARAMETER_1
                call    sub_47
                or      ax,ax
                jz      loc_219
                mov     ax,0FFF8h
                jmp     loc_231
loc_219::
                push    ds                      ; PARAMETER_10
                mov     ax,2D08h
                push    ax                      ; PARAMETER_9
                xor     ax,ax
                push    ax                      ; PARAMETER_8
                push    ax                      ; PARAMETER_7
                push    ds                      ; PARAMETER_6
                push    si                      ; PARAMETER_5
                push    ss                      ; PARAMETER_4
                lea     ax,[bp+LOCAL_5]
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                mov     bx,di
                add     bx,[bp+LOCAL_3]
                push    bx                      ; PARAMETER_1
                call    sub_47
                or      ax,ax
                jz      loc_220
                mov     ax,0FFF8h
                jmp     loc_231
loc_220::
                dec     word ptr [bp+LOCAL_6]
                jz      loc_221
                mov     ax,[bp+LOCAL_12]
                shl     ax,1
                add     si,ax
                add     di,ax
                jmp     short loc_218
loc_221::
                mov     di,offset data_58
                push    di
                push    ds
                pop     es
                mov     cx,44h
                xor     ax,ax
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                pop     bx
                les     di,dword ptr [bp+PARAMETER_9]
loc_222::
                push    es
                push    di
                mov     si,es:[di+4]
                les     di,dword ptr es:[di]
loc_223::
                mov     al,es:[di]
                push    ax                      ; PARAMETER_1
                call    sub_52
                add     sp,2
                dec     si
                jz      loc_224
                inc     di
                jmp     short loc_223
loc_224::
                pop     di
                pop     es
                dec     word ptr [bp+PARAMETER_11]
                jz      loc_225
                add     di,6
                jmp     short loc_222
loc_225::
                les     di,dword ptr [bp+PARAMETER_3]
                add     di,0Ch
                mov     si,[bp+LOCAL_10]
loc_226::
                mov     al,es:[di]
                push    ax                      ; PARAMETER_1
                call    sub_52
                add     sp,2
                dec     si
                jz      loc_227
                inc     di
                jmp     short loc_226
loc_227::
                call    sub_53
                mov     si,bx
                mov     di,data_17e
                push    ds
                pop     es
                mov     cx,10h
                cld
                rep     movsb
                les     bx,dword ptr [bp+PARAMETER_5]
                add     bx,8
                mov     [bp+LOCAL_2],es
                mov     [bp+LOCAL_3],bx
                mov     word ptr [bp+LOCAL_1],2
                mov     word ptr [bp+LOCAL_6],0
                mov     si,2C50h
                les     di,dword ptr [bp+PARAMETER_3]
                add     di,0Ch
                add     di,[bp+LOCAL_10]
loc_228::
                push    di
                mov     di,data_15e
                push    di
                push    ds
                pop     es
                mov     cx,[bp+LOCAL_11]
                xor     ax,ax
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                pop     di
                push    word ptr [bp+LOCAL_1]
                push    ds
                mov     ax,[bp+LOCAL_6]
                imul    word ptr [bp+LOCAL_1]
                add     ax,2CF8h
                push    ax
                push    ds
                push    di
                nop
                callf   sub_60
                add     sp,0Ah
                pop     di
                push    ds                      ; PARAMETER_9
                push    di                      ; PARAMETER_8
                push    word ptr [bp+LOCAL_2]   ; PARAMETER_7
                push    word ptr [bp+LOCAL_3]   ; PARAMETER_6
                push    ds                      ; PARAMETER_5
                mov     ax,2C18h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2BE0h
                push    ax                      ; PARAMETER_2
                push    word ptr [bp+LOCAL_12]  ; PARAMETER_1
                call    sub_21
                or      ax,ax
                jz      loc_229
                mov     ax,0FFF8h
                jmp     short loc_231
loc_229::
                push    ds                      ; PARAMETER_9
                push    di                      ; PARAMETER_8
                push    ds                      ; PARAMETER_7
                push    di                      ; PARAMETER_6
                push    ds                      ; PARAMETER_5
                push    si                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                mov     ax,2BE0h
                push    ax                      ; PARAMETER_2
                push    word ptr [bp+LOCAL_12]  ; PARAMETER_1
                call    sub_18
                inc     word ptr [bp+LOCAL_6]
                cmp     word ptr [bp+LOCAL_6],3
                jae     loc_230
                mov     ax,[bp+LOCAL_12]
                shl     ax,1
                add     si,ax
                add     di,ax
                jmp     short loc_228
loc_230::
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     word ptr es:[bx+6],10h
                mov     word ptr es:[bx+8],3
                mov     byte ptr es:[bx],1
                mov     byte ptr es:[bx+1],0
                mov     word ptr es:[bx+2],0
                mov     byte ptr es:[bx+4],8
                mov     byte ptr es:[bx+5],0
                mov     ax,[bp+LOCAL_10]
                mov     es:[bx+0Ah],ax
                shl     ax,1
;*              add     ax,0Ch
                db       05h, 0Ch, 00h
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     es:[bx],ax
                xor     ax,ax
loc_231::
                mov     sp,bp
                pop     bp
                retn    16h
sub_50          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_51          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                push    si
                push    di
                mov     di,[bp+PARAMETER_1]
                or      di,di
                jz      loc_234
                mov     ax,[bp+PARAMETER_3]
                or      ax,[bp+PARAMETER_2]
                jz      loc_234
                mov     si,di
                shr     si,1
                push    si
                mov     di,[bp+PARAMETER_2]
                or      si,si
                jz      loc_233
loc_232::
                nop
                callf   sub_48
                mov     es,[bp+PARAMETER_3]
                mov     es:[di],ax
                add     di,2
                dec     si
                jnz     loc_232
loc_233::
                mov     si,[bp+PARAMETER_1]
                pop     ax
                shl     ax,1
                sub     si,ax
                jz      loc_234
                nop
                callf   sub_48
                mov     es,[bp+PARAMETER_3]
                mov     es:[di],al
loc_234::
                pop     di
                pop     si
                pop     bp
                retn    6
sub_51          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_52          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    si
                push    di
                mov     cx,[bp+PARAMETER_1]
                mov     dx,bx
                mov     si,[bx+40h]
                add     bx,si
                mov     [bx+10h],cl
                mov     ax,cx
                xor     al,[bx]
                mov     [bx+20h],al
                mov     bx,cx
                mov     di,dx
                xor     bl,[di+42h]
                xor     bh,bh
                mov     al,ds:data_23e[bx]
                mov     bx,dx
                add     bx,si
                xor     [bx+30h],al
                mov     al,[bx+30h]
                mov     [di+42h],al
                inc     si
                and     si,0Fh
                mov     [di+40h],si
                or      si,si
                jnz     loc_237
                mov     di,dx
                xor     dx,dx
                mov     cx,12h
loc_235::
                push    di
                mov     si,30h
loc_236::
                mov     bx,dx
                add     bx,si
                and     bx,0FFh
                mov     dl,ds:data_23e[bx]
                xor     [di],dl
                mov     dl,[di]
                inc     di
                dec     si
                jnz     loc_236
                pop     di
                dec     cx
                jnz     loc_235
loc_237::
                mov     bx,di
                pop     di
                pop     si
                pop     bp
                retn
sub_52          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_53          proc    near
                push    bx
                mov     ax,10h
                sub     ax,[bx+40h]
                or      ax,ax
                jz      loc_239
                mov     si,ax
loc_238::
                push    ax                      ; PARAMETER_1
                call    sub_52
                pop     ax
                dec     si
                jnz     loc_238
loc_239::
                mov     si,10h
                mov     di,bx
loc_240::
                mov     al,[di+30h]
                push    ax                      ; PARAMETER_1
                call    sub_52
                add     sp,2
                inc     di
                dec     si
                jnz     loc_240
                pop     bx
                retn
sub_53          endp

                                                ;* No entry point to code
                pop     cx
                push    cs
                push    cx
                xor     cx,cx
                jmp     short loc_241
                                                ;* No entry point to code
                pop     cx
                push    cs
                push    cx
                mov     cx,1
                jmp     short loc_241
                                                ;* No entry point to code
                pop     cx
                push    cs
                push    cx
                mov     cx,2
                jmp     short loc_241

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_54          proc    near
                pop     cx
                push    cs
                push    cx
                mov     cx,3
loc_241::
                push    bp
                push    si
                push    di
                mov     bp,sp
                mov     di,cx
                mov     ax,[bp+0Ah]
                mov     dx,[bp+0Ch]
                mov     bx,[bp+0Eh]
                mov     cx,[bp+10h]
                or      cx,cx
                jnz     loc_242
                or      dx,dx
                jz      loc_250
                or      bx,bx
                jz      loc_250
loc_242::
                test    di,1
                jnz     loc_244
                or      dx,dx
                jns     loc_243
                neg     dx
                neg     ax
                sbb     dx,0
                or      di,0Ch
loc_243::
                or      cx,cx
                jns     loc_244
                neg     cx
                neg     bx
                sbb     cx,0
                xor     di,4
loc_244::
                mov     bp,cx
                mov     cx,20h
                push    di
                xor     di,di
                xor     si,si

locloop_245::
                shl     ax,1
                rcl     dx,1
                rcl     si,1
                rcl     di,1
                cmp     di,bp
                jb      loc_247
                ja      loc_246
                cmp     si,bx
                jb      loc_247
loc_246::
                sub     si,bx
                sbb     di,bp
                inc     ax
loc_247::
                loop    locloop_245

                pop     bx
                test    bx,2
                jz      loc_248
                mov     ax,si
                mov     dx,di
                shr     bx,1
loc_248::
                test    bx,4
                jz      loc_249
                neg     dx
                neg     ax
                sbb     dx,0
loc_249::
                pop     di
                pop     si
                pop     bp
                retf    8
loc_250::
                div     bx
                test    di,2
                jz      loc_251
                xchg    dx,ax
loc_251::
                xor     dx,dx
                jmp     short loc_249
sub_54          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_55          proc    near
                push    si
                xchg    si,ax
                xchg    dx,ax
                test    ax,ax
                jz      loc_252
                mul     bx
loc_252::
                jcxz    loc_253
                xchg    cx,ax
                mul     si
                add     ax,cx
loc_253::
                xchg    si,ax
                mul     bx
                add     dx,si
                pop     si
                retn
sub_55          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_56          proc    near
                push    cx
                mov     ch,al
                mov     cl,4
                shr     ax,cl
                add     dx,ax
                mov     al,ch
                mov     ah,bl
                shr     bx,cl
                pop     cx
                add     cx,bx
                mov     bl,ah
;*              and     ax,0Fh
                db       25h, 0Fh, 00h
                and     bx,0Fh
                cmp     dx,cx
                jne     loc_ret_254
                cmp     ax,bx

loc_ret_254::
                retn
sub_56          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_57          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp
                mov     bp,sp
                push    di
                les     di,dword ptr [bp+PARAMETER_2]
                mov     cx,[bp+PARAMETER_4]
                mov     al,[bp+PARAMETER_5]
                mov     ah,al
                cld
                test    di,1
                jz      loc_255
                jcxz    loc_256
                stosb
                dec     cx
loc_255::
                shr     cx,1
                rep     stosw
                jnc     loc_256
                stosb
loc_256::
                pop     di
                pop     bp
                retf
sub_57          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_58          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp                      ; PARAMETER_5
                mov     bp,sp
                mov     al,[bp+PARAMETER_4]
                push    ax                      ; PARAMETER_4
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_1
                callf   sub_57
                add     sp,8
                mov     dx,[bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_2]
                pop     bp
                retf
sub_58          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_59          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh

                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                mov     cx,[bp+PARAMETER_5]
                mov     bx,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_2]
                call    sub_56
                jnc     loc_257
                std
                mov     ax,1
                jmp     short loc_258
loc_257::
                cld
                xor     ax,ax
loc_258::
                lds     si,dword ptr [bp+PARAMETER_2]
                les     di,dword ptr [bp+PARAMETER_4]
                mov     cx,[bp+PARAMETER_6]
                or      ax,ax
                jz      loc_259
                add     si,cx
                dec     si
                add     di,cx
                dec     di
loc_259::
                test    di,1
                jz      loc_260
                jcxz    loc_261
                movsb
                dec     cx
loc_260::
                sub     si,ax
                sub     di,ax
                shr     cx,1
                rep     movsw
                jnc     loc_261
                add     si,ax
                add     di,ax
                movsb
loc_261::
                cld
                pop     ds
                pop     di
                pop     si
                pop     bp
                retf
sub_59          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_60          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch
PARAMETER_6     =       0Eh                     ; bp+0Eh

                push    bp                      ; PARAMETER_6
                mov     bp,sp
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_5
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_5]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_1
                callf   sub_59
                add     sp,0Ah
                mov     dx,[bp+PARAMETER_3]
                mov     ax,[bp+PARAMETER_2]
                pop     bp
                retf
sub_60          endp

                db      0, 0, 0, 0, 0
data_46         db      2
                db      0
data_47         dw      seg_b
vlm_call_ptr2   dw      0, 0
data_50         dw      8, seg_b
data_51         dw      0                       ; segment storage
data_52         dw      0
data_53         dw      0, 0
                db      12 dup (0)
data_56         dw      0
data_57         dw      0
                db      180 dup (0)
data_58         db      0
                db      1191 dup (0)
data_59         dw      0                       ; Data table (indexed access)
                db      1662 dup (0)
data_60         dw      0                       ; Data table (indexed access)
                db      126 dup (0)
data_61         dw      0                       ; Data table (indexed access)
data_62         dw      0
                db      124 dup (0)
data_63         dw      0
data_64         dw      0
data_65         dw      0
data_66         dw      0
                db      0BDh, 56h,0EAh,0F2h,0A2h,0F1h
                db      0ACh, 2Ah,0B0h, 93h,0D1h, 9Ch
                db       1Bh, 33h,0FDh,0D0h, 30h, 04h
                db      0B6h,0DCh, 7Dh,0DFh, 32h, 4Bh
                db      0F7h,0CBh, 45h, 9Bh, 31h,0BBh
                db       21h, 5Ah, 41h, 9Fh,0E1h,0D9h
                db       4Ah, 4Dh, 9Eh,0DAh,0A0h, 68h
                db       2Ch,0C3h, 27h, 5Fh, 80h, 36h
                db       3Eh,0EEh,0FBh, 95h, 1Ah,0FEh
                db      0CEh,0A8h, 34h,0A9h, 13h,0F0h
                db      0A6h, 3Fh,0D8h, 0Ch, 78h, 24h
                db      0AFh, 23h, 52h,0C1h, 67h, 17h
                db      0F5h, 66h, 90h,0E7h,0E8h, 07h
                db      0B8h, 60h, 48h,0E6h, 1Eh, 53h
                db      0F3h, 92h,0A4h, 72h, 8Ch, 08h
                db       15h, 6Eh, 86h, 00h, 84h,0FAh
                db      0F4h, 7Fh, 8Ah, 42h, 19h,0F6h
                db      0DBh,0CDh, 14h, 8Dh, 50h, 12h
                db      0BAh, 3Ch, 06h, 4Eh,0ECh,0B3h
                db       35h, 11h,0A1h, 88h, 8Eh, 2Bh
                db       94h, 99h,0B7h, 71h, 74h,0D3h
                db      0E4h,0BFh, 3Ah,0DEh, 96h, 0Eh
                db      0BCh, 0Ah,0EDh, 77h,0FCh, 37h
                db       6Bh, 03h, 79h, 89h, 62h,0C6h
                db      0D7h,0C0h,0D2h, 7Ch, 6Ah, 8Bh
                db       22h,0A3h, 5Bh, 05h, 5Dh, 02h
                db       75h,0D5h, 61h,0E3h, 18h, 8Fh
                db       55h, 51h,0ADh, 1Fh, 0Bh, 5Eh
                db       85h,0E5h,0C2h, 57h, 63h,0CAh
                db       3Dh, 6Ch,0B4h,0C5h,0CCh, 70h
                db      0B2h, 91h, 59h, 0Dh, 47h, 20h
                db      0C8h, 4Fh, 58h,0E0h, 01h,0E2h
                db       16h, 38h,0C4h, 6Fh, 3Bh, 0Fh
                db       65h, 46h,0BEh, 7Eh, 2Dh, 7Bh
                db       82h,0F9h, 40h,0B5h, 1Dh, 73h
                db      0F8h,0EBh, 26h,0C7h, 87h, 97h
                db       25h, 54h,0B1h, 28h,0AAh, 98h
                db       9Dh,0A5h, 64h, 6Dh, 7Ah,0D4h
                db       10h, 81h, 44h,0EFh, 49h,0D6h
                db      0AEh, 2Eh,0DDh, 76h, 5Ch, 2Fh
                db      0A7h
loc_262::
                sbb     al,0C9h
                or      [bx+di-66h],bp
                or      di,29h
                cmp     ds:data_75e[bx+di],di
                inc     word ptr [bp+di-55h]
                db      300 dup (0)
data_68         dw      7Bh
data_69         dw      2Dh
                dw      1
                db      614 dup (0)
data_71         dw      0
data_72         dw      0
data_73         dd      00000h
                db       4Eh, 4Eh, 00h, 45h, 4Eh, 00h
                db       4Eh, 49h
                db      16 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

                db      0, 0, 0, 0
vlm_call_ptr    dw      0, 0
                db      0, 0, 0, 0
                db      0
                db      2051 dup (0)
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'
                db      'JWJWJWJWJWJWJWJWJWJWJWJWJWJWJWJW'

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                push    bx
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_82,bx
                mov     word ptr data_82+2,es
                mov     bx,0
                mov     dx,32h
                call    dword ptr data_82
                pop     bx
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                pop     ax
                jz      loc_263
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,227h
                push    cs
                pop     ds
                call    dword ptr cs:data_82
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,22Bh
                push    ax
                push    cs
                mov     ax,227h
                push    ax
                push    cs
                mov     ax,22Bh
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_82
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,227h
                push    ax
                push    cs
                mov     ax,22Bh
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_82
                add     sp,0Ah
                pop     bx
                mov     ax,0FFFFh
                retf
loc_263::
                or      ax,ax
                jz      loc_264
                jmp     loc_272
loc_264::
                mov     ax,seg_c
                mov     ds,ax
                mov     data_84,bx
                push    ds
                push    bx
                push    es
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                je      loc_265
                pop     es
                pop     bx
                pop     ds
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,35h
                mov     si,227h
                push    cs
                pop     ds
                call    dword ptr cs:data_82
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,35h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_82
                add     sp,2
                pop     bx
                mov     ax,0FFFFh
                retf
loc_265::
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,es
                assume  ds:seg_a
                mov     word ptr data_53,di
                mov     word ptr data_53+2,ax
                pop     es
                pop     bx
                pop     ds
                mov     ax,seg_a
                mov     es,ax
                push    bx
                push    es
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     cx,seg seg_b
                mov     es,cx
                mov     word ptr es:vlm_call_ptr,bx
                mov     word ptr es:vlm_call_ptr+2,ax
                pop     es
                mov     word ptr es:vlm_call_ptr2,bx
                mov     word ptr es:vlm_call_ptr2+2,ax
                mov     ds:data_3e,bx
                mov     ds:data_4e,ax
                pop     bx
                mov     ax,ds:data_5e
                or      ax,ax
                jz      loc_266
                mov     es:data_47,bx
loc_266::
                push    bx
                push    ds
                mov     ax,23Ch
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr ds:data_2e
                add     sp,4
                pop     bx
                mov     ax,seg_b
                mov     es,ax
                mov     dx,ds:data_5e
                or      dx,dx
                jz      loc_271
                mov     si,data_6e
                mov     cx,ds:data_6e
                jcxz    loc_268

locloop_267::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_267

loc_268::
                mov     ax,seg_a
                mov     es,ax
                mov     si,data_7e
                mov     cx,ds:data_8e
                jcxz    loc_270

locloop_269::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_269

loc_270::
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
loc_271::
                mov     ax,seg_c
                mov     ds,ax
loc_272::
                mov     ax,seg_c
                mov     ds,ax
                mov     bx,34h
                mov     si,seg_a+4abh
                sub     si,seg_c
                mov     cx,seg seg_c
                sub     cx,seg_b
                mov     dx,seg seg_b
                sub     dx,seg_a
                xor     ax,ax
                retf

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


rsa             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      9 dup (0)
data_82         dw      0, 0
                db      0, 0, 0, 0
data_84         dw      0
                db      'DOSRQSTR.MSG', 0
                db      'RSA', 0
                db      'NDS', 0
                db      'VeRsIoN=1.21', 0
                db      'RSA.VLM      - NetWare RSA authe'
                db      'ntication m'
                db      'odule  v1.21 (960430)', 0Dh, 0Ah
                db       00h, 00h, 00h, 5Ah, 2Ah, 01h
                db       00h

rsa             endp

seg_c           ends



                end     start
