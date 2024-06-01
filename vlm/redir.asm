; The following equates show data references outside the range of the program.

data_1e         equ     0
data_2e         equ     2
data_3e         equ     16h
data_4e         equ     1Fh
data_5e         equ     3Eh
data_6e         equ     3Fh
data_7e         equ     64Ch                    ;*
data_8e         equ     64Eh                    ;*
data_9e         equ     650h                    ;*
data_10e        equ     652h                    ;*
data_11e        equ     654h                    ;*
data_12e        equ     656h                    ;*
data_13e        equ     658h                    ;*
data_14e        equ     65Ah                    ;*
data_15e        equ     65Ch                    ;*
data_16e        equ     65Eh                    ;*
data_17e        equ     660h                    ;*
data_18e        equ     662h                    ;*
data_19e        equ     664h                    ;*
data_20e        equ     666h                    ;*
data_21e        equ     674h                    ;*
data_22e        equ     678h                    ;*
data_23e        equ     67Ah                    ;*
data_24e        equ     67Ch                    ;*
data_25e        equ     67Eh                    ;*
data_26e        equ     684h                    ;*
data_27e        equ     686h                    ;*
data_28e        equ     689h                    ;*
data_29e        equ     690h                    ;*
data_30e        equ     692h                    ;*
data_31e        equ     694h                    ;*
data_32e        equ     696h                    ;*
data_33e        equ     698h                    ;*
data_34e        equ     69Ah                    ;*
data_35e        equ     69Ch                    ;*
data_36e        equ     69Eh                    ;*
data_37e        equ     6A0h                    ;*
data_38e        equ     6AEh                    ;*
data_39e        equ     6B0h                    ;*
data_40e        equ     6B2h                    ;*
data_41e        equ     6B4h                    ;*
data_42e        equ     6B6h                    ;*
data_43e        equ     6B8h                    ;*
data_44e        equ     6BAh                    ;*
data_46e        equ     6BEh                    ;*
data_48e        equ     6C2h                    ;*
data_49e        equ     6C4h                    ;*
data_50e        equ     6C6h                    ;*
data_51e        equ     6CAh                    ;*
data_52e        equ     6CCh                    ;*
data_53e        equ     6D6h                    ;*
data_54e        equ     795h                    ;*
data_55e        equ     7B4h                    ;*
data_56e        equ     7B9h                    ;*
data_57e        equ     7BFh                    ;*
data_58e        equ     7C0h                    ;*
data_59e        equ     7C1h                    ;*
data_60e        equ     7D6h                    ;*
data_61e        equ     0A3Ch                   ;*
data_62e        equ     692h                    ;*
data_63e        equ     6D6h                    ;*
data_64e        equ     7C0h                    ;*
data_65e        equ     7C3h                    ;*
rs232_port_2    equ     2
data_66e        equ     32h                     ;*
data_67e        equ     34h                     ;*
data_68e        equ     6F8h                    ;*
data_69e        equ     0                       ;*
data_70e        equ     65Ch                    ;*
data_71e        equ     684h                    ;*
data_72e        equ     795h                    ;*
data_73e        equ     6F8h                    ;*
data_275e       equ     97E8h                   ;*
data_297e       equ     6F8h
data_298e       equ     77Ah
data_299e       equ     16h
data_300e       equ     3Fh

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_c
                dw      offset loc_26, seg_a
                dw      offset loc_02e1, seg_a
                dw      offset loc_036b, seg_a
                dw      offset loc_038c, seg_a
                dw      offset loc_0479, seg_a
                dw      offset loc_0502, seg_a
                dw      offset loc_00f4, seg_a
                dw      offset loc_0114, seg_a
                dw      offset loc_0556, seg_a
                dw      offset loc_050d, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_REDIR

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                mov     bx,0
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
loc_4::
                mov     bh,2
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                mov     bx,5
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_10          endp

                                                ;* No entry point to code
                xchg    bx,bx

loc_00f4:
                mov     byte ptr ds:[68Ah],0
                mov     ax,seg_a
                mov     es,ax
                add     bx,bx
                jmp     word ptr es:data_188[bx]        ;*
                db      90h
data_77         dw      offset loc_5            ; Data table (indexed access)
data_78         dw      offset loc_12
data_79         dw      offset loc_13
data_80         dw      offset loc_16
data_81         dw      offset loc_17
data_82         dw      offset loc_20
data_83         dw      offset loc_25

loc_0114:
                db       83h,0FBh, 07h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 03h,0DBh, 2Eh
                db      0FFh,0A7h, 06h, 01h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    ds
                push    es
                push    di
                mov     es,cs:data_189
                mov     di,77Ah
                call    sub_31
                push    es
                pop     ds
                pop     di
                pop     es
                mov     si,offset data_250
                lodsw
                cmp     ah,3Ah                  ; ':'
                jne     loc_11
                sub     al,41h                  ; 'A'
                assume  ds:seg_b
                mul     byte ptr data_221
                lds     bx,data_212
                lds     bx,dword ptr [bx]
                add     bx,ax
                cmp     word ptr [bx+4Dh],4E57h
                jne     loc_9
                mov     cx,di
                call    sub_36
                jnz     loc_10
                dec     di
                dec     di
                xor     al,al
                stosb
                add     cx,1FFh
                sub     cx,di
                mov     dx,cx
                sub     dx,41h
                sub     cx,dx
                jcxz    loc_7
                lea     si,[bx+2]
loc_6::
                lodsw
                or      al,al
                jz      loc_7
                stosb
                dec     cx
                jz      loc_7
                mov     al,ah
                or      al,al
                jz      loc_7
                stosb
                dec     cx
                jnz     loc_6
loc_7::
                xor     ax,ax
                stosb
loc_8::
                pop     ds
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf
loc_9::
                mov     ax,12h
                jmp     short loc_8
loc_10::
                cmp     ah,88h
                je      loc_8
                mov     ax,883Ch
                jmp     short loc_8
loc_11::
                push    di
                mov     di,77Ah
                call    sub_37
                pop     di
                jc      loc_9
                mov     bx,4
                call    sub_9
                jnz     loc_9
                xor     ax,ax
                mov     cx,74h
                repne   scasb
                stosb
                jmp     short loc_8

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_12::
                push    ds
                assume  ds:seg_a
                mov     ds,cs:data_189
                mov     ah,al
                shr     ax,1
                and     al,80h
                assume  ds:seg_b
                mov     data_198,al
                xor     ax,ax
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_13::
                push    bx
                push    ds
                assume  ds:seg_a
                mov     ds,cs:data_189
                push    ax
                sub     al,41h                  ; 'A'
                xor     ah,ah
                assume  ds:seg_b
                mul     byte ptr data_221
                lds     bx,data_212
                lds     bx,dword ptr [bx]
                add     bx,ax
                pop     ax
                cmp     word ptr [bx+4Dh],4E57h
                jne     loc_15
                mov     [bx+4Ah],ah
                xor     ax,ax
loc_14::
                pop     ds
                pop     bx
                retf
loc_15::
                mov     ax,883Ch
                jmp     short loc_14

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_16::
                push    ds
                assume  ds:seg_a
                mov     ds,cs:data_189
                assume  ds:seg_b
                mov     data_199,al
                mov     data_200,cl
                pop     ds
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_17::
                dec     ax
                js      loc_18
                jnz     loc_19
                assume  ds:seg_a
                mov     cs:data_186,di
                mov     word ptr cs:data_186+2,es
loc_18::
                les     di,dword ptr cs:data_186
                xor     ax,ax
                retf
loc_19::
                mov     ax,8836h
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_20::
                push    ds
                mov     ds,cs:data_189
                dec     ax
                js      loc_22
                jnz     loc_24
                jcxz    loc_21
                assume  ds:seg_b
                mov     byte ptr data_257,6
                jmp     short loc_23
loc_21::
                mov     byte ptr data_257,0
loc_22::
                xor     cx,cx
                mov     cl,data_257
                jcxz    loc_23
                mov     cl,1
loc_23::
                xor     ax,ax
                pop     ds
                retf
loc_24::
                mov     ax,8836h
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_25::
                assume  ds:seg_a
                mov     es,cs:data_189
                mov     si,60Ch
                mov     cx,20h
                xor     ax,ax
                retf
                db      90h
data_84         dw      offset loc_29           ; Data table (indexed access)
data_85         dw      offset loc_27
data_86         dw      offset loc_27
data_87         dw      offset loc_30
data_88         dw      offset loc_27
data_89         dw      offset loc_30
loc_26::
                cmp     bx,6
                jb      loc_28

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_27::
                mov     ax,8811h
                retf
loc_28::
                add     bx,bx
                jmp     word ptr cs:data_84[bx] ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_30::
                push    ds
                push    bp
                push    cx
                push    es
                mov     ds,cs:data_189
                mov     bp,cx
                xor     cx,cx
                assume  ds:seg_b
                mov     cl,data_252
                les     bx,data_212
                les     bx,dword ptr es:[bx]
loc_31::
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_32
                cmp     es:[bx+4Bh],bp
                jne     loc_32
                push    cx
                mov     cx,bp
                mov     dh,es:[bx]
                mov     dl,es:[bx+4Ah]
                call    sub_17
                xor     ax,ax
                mov     ah,es:[bx+44h]
                add     ax,ax
                rol     ax,1
                push    bx
                mov     bx,7
                call    sub_3
                pop     bx
                pop     cx
loc_32::
                add     bx,data_221
                dec     cx
                jnz     loc_31
                pop     es
                pop     cx
                pop     bp
                pop     ds
                xor     ax,ax
                retf

loc_02e1:
                push    bx
                push    cx
                push    dx
                push    ds
                push    es
                assume  ds:seg_a
                mov     dx,cs:data_189
                mov     ds,dx
                jcxz    loc_34
                mov     al,2Fh                  ; '/'
                call    sub_2
                jnz     loc_33
                mov     al,2Ah                  ; '*'
                call    sub_2
                jz      loc_38
loc_33::
                mov     ax,884Eh
                jmp     short loc_39
loc_34::
                push    ds
                assume  ds:seg_b
                lds     dx,data_208
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                push    ds
                lds     dx,data_207
                mov     ax,252Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                mov     ax,7A20h
                mov     bx,9
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jnz     loc_35
                cmp     bx,1
                je      loc_38
loc_35::
                xor     cx,cx
                mov     cl,data_252
                les     bx,data_212
                les     bx,dword ptr es:[bx]
                mov     ax,data_221
loc_36::
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_37
                push    ax
                mov     al,es:[bx]
                sub     al,41h                  ; 'A'
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     ax
                call    sub_17
loc_37::
                add     bx,ax
                dec     cx
                jnz     loc_36
loc_38::
                xor     ax,ax
loc_39::
                pop     es
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                retf

loc_036b:
                push    cx
                push    si
                push    di
                push    ds
                assume  ds:seg_a
                mov     ds,cs:data_189
                mov     si,offset data_245
                cmp     cx,[si]
                jbe     loc_40
                mov     cx,[si]
loc_40::
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

loc_038c:
                push    dx
                push    ds
                push    si
                push    cx
                mov     ds,cs:data_189
                mov     ax,1
                call    sub_8
                jz      loc_41
                jmp     loc_47
loc_41::
                assume  ds:seg_b
                mov     data_231,cx
                mov     al,data_256
                add     al,1
                mov     data_256,al
                daa
                mov     ah,al
                and     al,0Fh
                mov     cl,4
                shr     ah,cl
                add     ax,3030h
                mov     data_255,ax
                xor     cx,cx
                mov     dx,7A6h
                mov     ax,1681h
                int     2Fh                     ; Begin critical section
                mov     bx,offset data_264
                mov     al,es:[di+16h]
                mov     ah,al
                and     al,3
                xlat
                xchg    ah,al
                shr     al,1
                shr     al,1
                mov     bx,offset data_265
                xlat
                or      al,ah
                mov     data_229,di
                mov     data_230,es
                push    ax
                push    ds
                mov     ax,data_221
                lds     si,data_214
                mul     byte ptr [si+16h]
                pop     ds
                push    ds
                mov     bx,data_221
                lds     si,data_212
                lds     si,dword ptr [si]
                add     si,ax
                test    word ptr [si+43h],8000h
                jnz     loc_45
                push    si
                sub     si,ax
                push    cx
                push    es
                mov     cx,1Ah

locloop_42::
                cmp     word ptr [si+4Dh],4E57h
                jne     loc_43
                cmp     byte ptr [si+1],3Ah     ; ':'
                jne     loc_43
                cmp     byte ptr [si],41h       ; 'A'
                jb      loc_43
                cmp     byte ptr [si],5Ah       ; 'Z'
                ja      loc_43
                dec     dx
                dec     dx
                mov     bx,dx
                mov     cx,[si]
                mov     es,cs:data_189
                mov     es:[bx],cx
                jmp     short loc_44
loc_43::
                add     si,bx
                loop    locloop_42

loc_44::
                pop     es
                pop     cx
                pop     si
loc_45::
                mov     bx,[si+43h]
                or      word ptr [si+43h],8000h
                pop     ds
                pop     ax
                mov     ah,3Dh                  ; '='
                pushf
                call    dword ptr data_210
                push    ds
                push    si
                lds     si,data_212
                mov     ds,[si+2]
                pop     si
                mov     [si+43h],bx
                pop     ds
                jc      loc_48
                mov     bx,ax
                xor     ax,ax
loc_46::
                push    ax
                mov     ax,1682h
                int     2Fh                     ; End critical section
                pop     ax
loc_47::
                pop     cx
                pop     si
                pop     ds
                pop     dx
                retf
loc_48::
                pop     cx
                push    cx
                push    ax
                mov     ax,0FFFFh
                call    sub_8
                pop     ax
                jmp     short loc_46

loc_0479:
                push    dx
                push    ds
                push    si
                push    es
                push    di
                assume  ds:seg_a
                mov     ds,cs:data_189
                call    sub_11
                jnz     loc_49
                mov     dx,ds
                push    es
                pop     ds
                pop     si
                xchg    di,si
                pop     es
                push    es
                push    di
                mov     ax,42h
                cmp     [si+9],dx
                jne     loc_49
                mov     ax,si
                add     si,19h
                movsw
                movsw
                movsw
                xchg    si,ax
                mov     ax,[si+11h]
                stosw
                mov     ax,[si+13h]
                stosw
                mov     al,[si+2]
                stosb
                mov     cx,[si+7]
                xor     ax,ax
loc_49::
                pop     di
                pop     es
                pop     si
                pop     ds
                pop     dx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                push    dx
                push    cx
                assume  ds:seg_b
                les     di,data_214
                mov     es,es:[di+10h]
                mov     cx,es:data_66e
                cmp     cx,bx
                jb      loc_51
                les     di,dword ptr es:data_67e
                add     di,bx
                xor     cx,cx
                mov     cl,es:[di]
                les     di,data_213
loc_50::
                mov     ax,cx
                sub     cx,es:[di+4]
                jc      loc_52
                les     di,dword ptr es:[di]
                cmp     di,0FFFFh
                jne     loc_50
loc_51::
                mov     al,6
                or      ax,ax
                pop     cx
                pop     dx
                retn
loc_52::
                add     di,6
                mul     data_222
                add     di,ax
                xor     ax,ax
                pop     cx
                pop     dx
                retn
sub_11          endp

loc_0502:
                call    sub_38
                mov     ax,0FFFFh
                jc      loc_ret_53
                xor     ax,ax

loc_ret_53::
                retf

loc_050d:
                push    bx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                mov     ax,seg_b
                mov     ds,ax
                mov     al,cl
                cmp     al,41h                  ; 'A'
                jb      loc_56
                cmp     al,5Ah                  ; 'Z'
                ja      loc_56
                sub     al,41h                  ; 'A'
                xor     ah,ah
                mul     byte ptr data_221
                lds     si,data_212
                lds     si,dword ptr [si]
                add     si,ax
                cmp     word ptr [si+4Dh],4E57h
                jne     loc_55
                mov     cl,[si+4Ah]
                push    cx
                mov     cx,43h
                rep     movsb
                pop     cx
                xor     ax,ax
loc_54::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     bx
                retf
loc_55::
                mov     ax,883Ch
                jmp     short loc_54
loc_56::
                mov     ax,8836h
                jmp     short loc_54

loc_0556:
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                cmp     bx,1
                je      loc_57
                cmp     bx,2
                je      loc_58
                cmp     bx,0
                je      loc_59
                mov     ax,8811h
                jmp     short loc_61
loc_57::
                mov     bx,ax
                call    sub_12
                or      ax,ax
                jnz     loc_61
                mov     ax,bx
                mov     bx,6
                jmp     short loc_60
loc_58::
                mov     bx,ax
                call    sub_13
                or      ax,ax
                jnz     loc_61
                mov     ax,bx
                mov     bx,7
                jmp     short loc_60
loc_59::
                call    sub_13
                or      ax,ax
                jnz     loc_61
                call    sub_12
                or      ax,ax
                jnz     loc_61
                mov     bx,0Ah
loc_60::
                call    sub_3
loc_61::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                mov     ax,seg_b
                mov     ds,ax
                mov     al,dh
                sub     al,41h                  ; 'A'
                mul     byte ptr data_221
                les     bx,data_212
                les     bx,dword ptr es:[bx]
                add     bx,ax
                mov     al,dh
                mov     ah,3Ah                  ; ':'
                mov     es:[bx],ax
                mov     word ptr es:[bx+2],5Ch
                lea     di,[bx+43h]
                mov     ax,0C000h
                push    cx
                mov     cl,es:[di+1]
                stosw
                add     di,4
                xchg    cl,al
                mov     ah,dl
                stosw
                pop     cx
                mov     ax,cx
                stosw
                mov     ax,4E57h
                stosw
                mov     ax,2
                stosw
                inc     data_247
                mov     al,dh
                and     al,0DFh
                mov     dh,al
                sub     al,41h                  ; 'A'
                cbw
                mov     di,ax
                mov     byte ptr data_201[di],1
                xor     ax,ax
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                mov     ax,seg_b
                mov     ds,ax
                mov     al,dh
                sub     al,41h                  ; 'A'
                mul     byte ptr data_221
                les     bx,data_212
                les     bx,dword ptr es:[bx]
                add     bx,ax
                call    sub_17
                xor     ax,ax
                pop     es
                pop     es
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                xor     cx,[bp+si]
                dec     si
                pop     es
                sub     cx,[bp+di]
                mov     bp,data_240
                xor     bx,bx
                mov     bl,[bp+6]
                dec     bx
                dec     bx
                cmp     bl,3
                jae     loc_62
                cmp     bl,0
                je      loc_63
                cmp     bl,3
                je      loc_63
                cmp     data_234,4E57h
                jne     loc_65
                jmp     loc_77
loc_62::
                mov     ax,8856h
                retf
loc_63::
                cmp     data_233,0
                jne     loc_64
                mov     ax,0FFFFh
                mov     data_195,ax
                push    ds
                pop     es
                mov     di,offset data_196
                mov     cx,9
                rep     stosw
loc_64::
                cmp     data_195,0FFFFh
                je      loc_65
                jmp     loc_77
loc_65::
                push    bx
                push    ds
                push    dx
                xor     dx,dx
                mov     dl,bl
                cmp     dl,1
                je      loc_69
                xor     cx,cx
                mov     cl,data_252
                les     bx,data_212
                les     bx,dword ptr es:[bx]
                mov     ax,data_221
loc_66::
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_68
                cmp     dl,2
                je      loc_67
                and     word ptr es:[bx+43h],3FFFh
                jmp     short loc_68
loc_67::
                xor     word ptr es:[bx+43h],8000h
loc_68::
                add     bx,ax
                dec     cx
                jnz     loc_66
loc_69::
                pop     dx
                mov     ax,data_232
                mov     bx,[bp+6]
                push    bx
                mov     bx,data_233
                les     di,data_238
                lds     si,data_236
                stc
                pushf
                call    dword ptr cs:data_184
                inc     sp
                inc     sp
                pop     ds
                pushf
                push    bx
                xor     bx,bx
                mov     bl,[bp+6]
                dec     bx
                dec     bx
                cmp     bl,1
                je      loc_73
                push    es
                push    ax
                push    cx
                xor     cx,cx
                mov     cl,ds:data_72e
                les     bx,dword ptr ds:data_70e
                les     bx,dword ptr es:[bx]
                mov     ax,ds:data_71e
loc_70::
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_71
                or      word ptr es:[bx+43h],0C000h
loc_71::
                add     bx,ax
                dec     cx
                jnz     loc_70
                pop     cx
                pop     ax

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_72::
                pop     es
loc_73::
                pop     bx
                popf
                jnc     loc_74
                cmp     al,54h                  ; 'T'
                jb      loc_76
                cmp     al,58h                  ; 'X'
                ja      loc_76
                stc
loc_74::
                mov     word ptr ds:[6B2h],ax
                mov     word ptr ds:[6B6h],cx
                mov     word ptr ds:[6C2h],bp
                mov     word ptr ds:[6B4h],bx
                pop     bx
                jc      loc_ret_75
                xor     ax,ax

loc_ret_75::
                retf
loc_76::
                pop     bx
loc_77::
                add     bx,bx
                call    word ptr cs:[63Eh][bx]  ;*
                retf
sub_13          endp

loc_78::
                mov     ax,8856h
                retn
                                                ;* No entry point to code
                push    ds
                pop     es
                lds     si,dword ptr ds:[6BAh]
                mov     di,data_298e
                call    sub_31
                mov     di,data_73e
                lds     si,dword ptr es:[6BEh]
                call    sub_32
                push    es
                pop     ds
                mov     di,6F8h
                mov     si,di
                lodsw
                cmp     ax,5C5Ch
                jne     loc_78
                stosw
                mov     cx,30h

locloop_79::
                lodsb
                or      al,al
                jz      loc_78
                cmp     al,5Ch                  ; '\'
                je      loc_80
                loop    locloop_79

                jmp     short loc_78
loc_80::
                xchg    si,di
                mov     bp,di
                dec     di
                mov     byte ptr [di],0
                mov     cx,di
                sub     cx,si
                call    sub_6
                jz      loc_82
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,4
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_81
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_82
                or      al,al
                jz      loc_82
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     loc_78
loc_81::
                mov     ax,54h
                retn
                db      0B8h, 57h, 00h,0C3h
loc_82::
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_2e,20h ; ' '
                pop     ds
                jnz     loc_86
                cmp     byte ptr ds:[77Ah],0
                jne     loc_87
                mov     si,bp
                les     di,dword ptr ds:[6BEh]
                xor     ax,ax
                push    cx
                mov     cx,0FFFFh
                repne   scasb
                pop     cx
                push    ds
                mov     ds,cx
                cmp     word ptr ds:data_1e,32h
                jne     loc_83
                mov     word ptr ds:data_1e,31h
loc_83::
                pop     ds
                mov     bx,1
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_85
loc_84::
                xor     ax,ax
                retn
loc_85::
                mov     ax,56h
                retn
loc_86::
                cmp     byte ptr ds:[77Ah],0
                jne     loc_87
                jmp     loc_94
loc_87::
                push    es
                pop     ds
                mov     ax,word ptr ds:[6B4h]
                cmp     al,3
                je      loc_88
                jmp     loc_93
loc_88::
                mov     di,77Ah
                call    sub_37
                jnc     loc_89
                jmp     loc_78
loc_89::
                mov     di,bp
                xor     ax,ax
                push    cx
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bx,5
                xor     dx,dx
                mov     dl,0
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     cx,0FFFFh
                repne   scasb
                not     cx
                push    cx
                xor     bx,bx
                mov     di,bp
                mov     al,5Ch                  ; '\'
                repne   scasb
                jnz     loc_90
                cmp     byte ptr [di],0
                je      loc_90
                mov     bx,3
loc_90::
                pop     ax
                pop     cx
                mov     si,bp
                mov     di,680h
                call    sub_9
                push    ax
                push    bx
                push    cx
                push    dx
                pushf
                mov     bx,5
                xor     dx,dx
                mov     dl,1
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                popf
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                jnz     loc_91
                jmp     loc_84
loc_91::
                mov     ax,3
                retn
loc_92::
                jmp     loc_78
loc_93::
                cmp     al,4
                jne     loc_92

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                mov     al,byte ptr ds:[77Ah]
                mov     dl,al
                sub     al,41h                  ; 'A'
                cmp     al,byte ptr ds:[795h]
                jae     loc_92
                mul     byte ptr ds:[684h]
                les     bx,dword ptr ds:[65Ch]
                les     bx,dword ptr es:[bx]
                add     bx,ax
                test    word ptr es:[bx+43h],800h
                jnz     loc_95
                test    word ptr es:[bx+43h],0B000h
                jz      loc_95
loc_94::
                mov     ax,55h
                retn
loc_95::
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bx,5
                xor     dx,dx
                mov     dl,0
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                and     word ptr es:[bx+43h],77FFh
                push    es
                push    bx
                push    ds
                pop     es
                mov     di,bp
                mov     si,bp
                mov     bp,cx
                xor     cx,cx
                mov     al,5Ch                  ; '\'
                call    sub_38
                jnc     loc_96
                inc     cx
                mov     byte ptr [di],0
loc_96::
                mov     byte ptr [di-1],3Ah     ; ':'
                mov     ax,di
                sub     ax,si
                add     ax,cx
                dec     ax
                mov     word ptr ds:[0A1Eh],si
                mov     word ptr ds:[0A20h],ds
                mov     word ptr ds:[0A22h],ax
;*              cmp     ax,9
                db       3Dh, 09h, 00h
                jz      loc_97
                push    ds
                mov     ds,bp
                test    byte ptr ds:rs232_port_2,20h    ; ' '
                pop     ds
                jnz     loc_98
loc_97::
                mov     di,79Ah
                push    si
                mov     cx,ax
                inc     cx
                repe    cmpsb
                pop     si
                jnz     loc_98
                mov     byte ptr ds:[0A5Eh],1
                jmp     short loc_99
loc_98::
                mov     si,0A3Ch
                mov     [si+5],al
;*              add     ax,4
                db      5, 4, 0
                xchg    ah,al
                mov     [si],ax
                mov     byte ptr [si+2],12h
                mov     byte ptr [si+3],0
                or      dl,80h
                mov     [si+4],dl
                mov     si,0A18h
                mov     word ptr [si+4],6
                mov     di,0A36h
                mov     al,16h
                mov     bx,2
                mov     cx,bp
                mov     dx,1
                call    sub_5
loc_99::
                pop     bx
                pop     es
                jnz     loc_100
                mov     al,byte ptr ds:[77Ah]
                mov     ah,3Ah                  ; ':'
                mov     es:[bx],ax
                mov     word ptr es:[bx+2],5Ch
                lea     di,[bx+43h]
                mov     ax,0C000h
                mov     cl,es:[di+1]
                stosw
                add     di,4
                xchg    cl,al
                mov     ah,byte ptr ds:[0A5Eh]
                mov     dl,ah
                stosw
                mov     cx,bp
                xchg    bp,ax
                stosw
                mov     ax,4E57h
                stosw
                mov     ax,2
                stosw
                inc     word ptr ds:[6F2h]
                mov     al,es:[bx]
                and     al,0DFh
                mov     dh,al
                sub     al,41h                  ; 'A'
                cbw
                mov     di,ax
                mov     byte ptr ds:[60Ch][di],1
                mov     al,es:[bx+44h]
                and     al,40h                  ; '@'
                shr     al,1
                shr     al,1
                les     si,dword ptr ds:[0A1Eh]
                mov     di,word ptr ds:[0A22h]
                mov     bx,6
                call    sub_3
                xor     ax,ax
loc_100::
                push    ax
                push    bx
                push    cx
                push    dx
                pushf
                mov     bx,5
                xor     dx,dx
                mov     dl,1
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                popf
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_14          endp

                                                ;* No entry point to code
                push    ds
                pop     es
                cmp     word ptr ds:[5F0h],0FFFFh
                jne     loc_101
                mov     ax,word ptr ds:[6B4h]
                mov     word ptr ds:[5F0h],ax
loc_101::
                mov     bx,word ptr ds:[6B4h]
                sub     bx,word ptr ds:[5F0h]
                inc     bx
                mov     di,60Ch
                mov     cx,20h
                xor     ax,ax
loc_102::
                repe    scasb
                jz      loc_106
                dec     bx
                jnz     loc_102
                sub     di,60Dh
                xchg    di,ax
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[6BEh]
                lds     bx,dword ptr ds:[65Ch]
                lds     bx,dword ptr [bx]
                add     bx,ax
                mov     cx,di
                call    sub_36
                jnz     loc_105
                dec     di
                dec     di
                xor     al,al
                stosb
                add     cx,7Fh
                sub     cx,di
                mov     dx,cx
                sub     dx,41h
                sub     cx,dx
                jcxz    loc_104
                lea     si,[bx+2]
                cmp     byte ptr [si],5Ch       ; '\'
                jne     loc_103
                inc     si
loc_103::
                lodsw
                or      al,al
                jz      loc_104
                stosb
                dec     cx
                jz      loc_104
                mov     al,ah
                or      al,al
                jz      loc_104
                stosb
                dec     cx
                jnz     loc_103
loc_104::
                xor     ax,ax
                stosb
                mov     ax,[bx]
                mov     ds,cs:data_189
                assume  ds:seg_b
                les     di,data_236
                stosw
                xor     ax,ax
                stosb
                mov     bx,4
                jmp     short loc_109
loc_105::
                mov     ds,cs:data_189
                retn
loc_106::
                mov     di,5F2h
                mov     ax,0FFFFh
                mov     cx,9
                repne   scasw
                jz      loc_108
loc_107::
                mov     ax,12h
                retn
loc_108::
                mov     ax,word ptr ds:[6B4h]
                dec     di
                dec     di
                stosw
                dec     di
                dec     di
                mov     dx,di
                sub     dx,5F2h
                shr     dx,1
                push    es
                push    di
                mov     bx,4
                les     di,dword ptr ds:[6BEh]
                call    sub_9
                pop     di
                pop     es
                jnz     loc_110
                les     di,dword ptr ds:[6BAh]
                mov     ax,504Ch
                stosw
                mov     ah,dl
                add     ah,31h                  ; '1'
                mov     al,54h                  ; 'T'
                stosw
                xor     ax,ax
                stosb
                mov     bx,3
loc_109::
                push    ds
                lds     si,dword ptr ds:[67Ch]
                lds     si,dword ptr [si]
                mov     word ptr [si],0
                mov     [si+2],bx
                mov     word ptr [si+4],4E57h
                pop     ds
                xor     ax,ax
                retn
loc_110::
                cmp     ax,8856h
                je      loc_107
                mov     ax,0FFFEh
                stosw
                jmp     short loc_106

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                push    ds
                pop     es
                lds     si,dword ptr ds:[6BAh]
                mov     di,data_297e
                call    sub_31
                push    es
                pop     ds
                mov     si,6F8h
                lodsw
                cmp     ah,3Ah                  ; ':'
                je      loc_112
                cmp     ax,5C5Ch
                jne     loc_111
                jmp     loc_116
loc_111::
                dec     si
                dec     si
                mov     di,6F8h
                call    sub_37
                jc      loc_113
                mov     bx,0
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,9
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jc      loc_113
                mov     bx,2
                call    sub_9
                xor     ax,ax
                retn
loc_112::
                mov     dl,al
                sub     al,41h                  ; 'A'
                cmp     al,byte ptr ds:[795h]
                jae     loc_113
                mul     byte ptr ds:[684h]
                les     bx,dword ptr ds:[65Ch]
                les     bx,dword ptr es:[bx]
                add     bx,ax
                test    word ptr es:[bx+43h],8000h
                jnz     loc_114
loc_113::
                mov     ax,8856h
                retn
loc_114::
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_113
                mov     al,es:[bx+4Ah]
                cmp     al,1
                je      loc_115
                push    es
                push    bx
                mov     cx,es:[bx+4Bh]
                xchg    bx,ax
                call    sub_16
                pop     bx
                pop     es
loc_115::
                mov     cx,es:[bx+4Bh]
                mov     dh,es:[bx]
                and     dh,0DFh
                mov     dl,es:[bx+4Ah]
                call    sub_17
                xor     ax,ax
                mov     ah,es:[bx+44h]
                add     ax,ax
                rol     ax,1
                mov     bx,7
                call    sub_3
                xor     ax,ax
                retn
loc_116::
                xor     cx,cx
                call    sub_6
                jz      loc_117
                mov     ax,8856h
                retn
loc_117::
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_2e,20h ; ' '
                pop     ds
                jnz     loc_119
loc_118::
                xor     ax,ax
                retn
loc_119::
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_118
                retn
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                push    ds
                pop     es
                mov     di,0A3Ch
                mov     ax,200h
                stosw
                mov     ah,bl
                mov     al,14h
                stosw
                mov     si,0A18h
                mov     word ptr [si+4],4
                mov     al,16h
                mov     bx,1
                xor     dx,dx
                call    sub_5
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                push    ax
                push    cx
                push    di
                push    si
                push    es
                mov     byte ptr es:[bx+3],0
                lea     di,[bx+43h]
                xor     ax,ax
                mov     ah,es:[bx+49h]
                stosw
                add     di,4
                mov     ax,0FFFFh
                stosw
                stosw
                stosw
                mov     ax,2
                stosw
                mov     al,es:[bx]
                sub     al,41h                  ; 'A'
                cbw
                mov     di,ax
                assume  ds:seg_b
                mov     data_201[di],ah
                dec     data_247
                pop     es
                pop     si
                pop     di
                pop     cx
                pop     ax
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                push    ds
                pop     es
                lds     si,dword ptr ds:[678h]
                mov     di,68Ah
                lodsb
                stosb
                movsb
                movsw
                movsw
                push    es
                pop     ds
                les     di,dword ptr ds:[678h]
                cmp     al,8
                jne     loc_120
                test    ah,1
                jz      loc_122
                retn
loc_120::
                cmp     al,7
                jne     loc_121
                test    ah,4
                jz      loc_122
                retn
loc_121::
                cmp     al,9
                jne     loc_122
                test    ah,2
                jz      loc_122
                retn
loc_122::
                pop     ax
                mov     ax,8856h
                retf
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                les     di,dword ptr ds:[6BEh]
                mov     ax,ds
                cmp     es:[di+9],ax
                jne     loc_123
                retn
loc_123::
                pop     ax
                mov     ax,8856h
                retf
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ds,cs:data_189
                xchg    bx,ax
                mov     si,offset data_243
                lodsw
                xchg    cx,ax
                jcxz    loc_126

locloop_124::
                lodsw
;*              cmp     bl,al
                db       3Ah,0D8h
                jc      loc_125
;*              cmp     bl,ah
                db       3Ah,0DCh
                ja      loc_125
                stc
                jmp     short loc_127
loc_125::
                loop    locloop_124

loc_126::
                clc
loc_127::
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                retn
sub_20          endp

                                                ;* No entry point to code
                mov     dx,0Bh
                mov     ah,1
                call    sub_18
                cmp     byte ptr es:[di+3],0
                je      loc_128
                xor     cx,cx
                mov     cl,es:[di+5]
                inc     cx
                mov     al,es:[di+4]
                sub     al,41h                  ; 'A'
                cbw
                mul     byte ptr ds:[684h]
                push    di
                push    ds
                lds     si,dword ptr ds:[65Ch]
                lds     si,dword ptr [si]
                add     si,ax
                add     si,3
                add     di,6
                repe    cmpsb
                pop     ds
                pop     di
                jnz     loc_128
                mov     ax,899Ch
                retf
                                                ;* No entry point to code
                mov     dl,0Ah
                mov     dh,0FFh
                mov     ah,1
                call    sub_18
loc_128::
                mov     cx,es:[di+1]
                xor     ax,ax
                mov     al,es:[di+5]
;*              add     ax,4
                db      5, 4, 0
                xchg    al,ah
                mov     es:[di],ax
                xchg    al,ah
                mov     es:[di+2],dl
                mov     es:[di+4],dh
                mov     si,0A1Eh
;*              add     ax,9
                db      5, 9, 0
                mov     [si+4],ax
                mov     [si],di
                mov     [si+2],es
                mov     al,16h
                mov     bx,1
                xor     dx,dx
                call    sub_5
                retf
                                                ;* No entry point to code
                mov     ah,1
                call    sub_18
                mov     cx,es:[di+1]
                mov     ax,es:[di+3]
                push    ax
                push    bx
                push    ds
                xchg    al,ah
                xor     ah,ah
                sub     al,41h                  ; 'A'
                mul     byte ptr ds:[684h]
                lds     bx,dword ptr ds:[65Ch]
                lds     bx,dword ptr [bx]
                add     bx,ax
                cmp     word ptr [bx+4Dh],4E57h
                pop     ds
                pop     bx
                pop     ax
                jz      loc_130
                test    word ptr es:[di+43h],800h
                jz      loc_129
                and     word ptr es:[di+43h],77FFh
loc_129::
                mov     ax,3
                jmp     loc_139
loc_130::
                mov     bp,ax
                mov     ah,al
                mov     al,3
                mov     es:[di+3],ax
                xor     ax,ax
                mov     al,es:[di+5]
;*              add     ax,3
                db      5, 3, 0
                xchg    al,ah
                mov     es:[di+1],ax
                xchg    al,ah
                inc     ax
                inc     ax
                mov     si,0A1Eh
                mov     [si+4],ax
                lea     ax,[di+1]
                mov     [si],ax
                mov     [si+2],es
                push    es
                push    di
                push    ds
                pop     es
                mov     di,0A36h
                mov     al,16h
                mov     bx,1
                mov     dx,bx
                call    sub_5
                pop     di
                pop     es
                mov     es:[di+1],cx
                mov     es:[di+3],bp
                mov     dx,bp
                jz      loc_131
                jmp     loc_139
loc_131::
                cmp     dl,0
                je      loc_132
                jmp     loc_137
loc_132::
                xor     bx,bx
                mov     ax,1683h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     bx,1
                jne     loc_133
                mov     ax,3
                jmp     loc_139
loc_133::
                mov     ax,word ptr ds:[6BCh]
                push    ax
                mov     ax,word ptr ds:[6BAh]
                push    ax
                mov     byte ptr ds:[77Ah],dh
                mov     byte ptr ds:[7B6h],dh
                mov     word ptr ds:[6BCh],ds
                mov     word ptr ds:[6BAh],7B6h
                push    es
                push    di
                call    sub_15
                push    ds
                pop     es
                pop     si
                pop     ds
                xor     ch,ch
                mov     cl,[si+5]
                inc     cx
                mov     bx,[si+1]
                mov     di,6F8h
                mov     bp,di
                add     si,6

locloop_134::
                lodsb
                cmp     al,3Ah                  ; ':'
                je      loc_135
                stosb
                loop    locloop_134

loc_135::
                dec     cx
                mov     ax,5Ch
                stosw
                push    es
                pop     ds
                pop     ax
                mov     word ptr ds:[6BAh],ax
                pop     ax
                mov     word ptr ds:[6BCh],ax
                mov     cx,bx
                call    sub_14
                jz      loc_136
                jmp     loc_139
loc_136::
                les     di,dword ptr ds:[678h]
                push    ds
                push    es
                pop     ds
                xor     ch,ch
                mov     cl,[di+5]
                add     di,6
                mov     si,di
                mov     al,3Ah                  ; ':'
                repne   scasb
                xchg    si,di
                mov     ax,cx
                rep     movsb
                movsb
                pop     ds
                mov     di,word ptr ds:[678h]
                mov     es:[di+5],al
                mov     al,byte ptr ds:[0A5Eh]
                mov     es:[di+3],al
                mov     al,byte ptr ds:[7B6h]
                mov     es:[di+4],al
                mov     cx,es:[di+1]
                mov     dx,es:[di+3]
                xor     ax,ax
                mov     al,es:[di+5]
loc_137::
                lea     si,[di+6]
                xor     ax,ax
                mov     al,es:[di+5]
                push    di
                xchg    di,ax
                mov     bx,0Ah
                call    sub_3
                pop     di
                push    ds
                push    es
                push    ds
                pop     es
                mov     si,data_68e
                xchg    si,di
                pop     ds
                xor     cx,cx
                mov     cl,[si+5]
                inc     cx
                lea     si,[si+6]
                push    cx
                push    si
                call    sub_34
                pop     si
                pop     cx
                push    cx
                rep     movsb
                pop     cx
                push    ds
                pop     es
                pop     ds
                mov     di,word ptr ds:[678h]
                mov     al,dh
                sub     al,41h                  ; 'A'
                mul     byte ptr ds:[684h]
                mov     bp,word ptr ds:[69Eh]
                push    ds
                lds     si,dword ptr ds:[65Ch]
                lds     si,dword ptr [si]
                add     si,ax
                mov     [bp],si
                mov     [bp+2],ds
                movsw
                movsb
                pop     ds
                mov     si,6F8h
                lodsb
                cmp     al,5Ch                  ; '\'
                je      loc_138
                stosb
                dec     cx
loc_138::
                rep     movsb
                xor     ax,ax
                retf
loc_139::
                push    ax
                les     di,dword ptr ds:[678h]
                mov     al,es:[di+4]
                sub     al,41h                  ; 'A'
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                pop     ax
                test    word ptr es:[di+43h],800h
                jz      loc_ret_140
                and     word ptr es:[di+43h],77FFh

loc_ret_140::
                retf
loc_141::
                cmp     word ptr [si],1
                jne     loc_143
                mov     bx,0FFFFh
                xor     dx,dx
                mov     dl,[si+1Fh]
                push    es
                pop     ds
                cmp     dx,0FCh
                je      loc_142
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,9
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
loc_142::
                xor     ax,ax
                jmp     loc_147
loc_143::
                dec     word ptr [si]
                push    es
                pop     ds
                xor     ax,ax
                retf
                                                ;* No entry point to code
                call    sub_19
                cmp     byte ptr ds:[607h],4Bh  ; 'K'
                jne     loc_144
                call    dword ptr cs:data_186
loc_144::
                push    es
                push    ds
                pop     es
                pop     ds
                mov     si,di
                cmp     byte ptr [si+1Fh],0FFh
                jne     loc_141
                mov     cx,[si+7]
                cmp     word ptr [si],1
                je      loc_145
                mov     bx,[si+19h]
                mov     dx,[si+1Bh]
                mov     si,[si+1Dh]
                push    es
                pop     ds
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     short loc_147
loc_145::
                mov     di,0A3Ch
                xor     bx,bx
                test    byte ptr [si+6],40h     ; '@'
                jz      loc_146
                inc     bx
loc_146::
                push    di
                xor     ax,ax
                stosb
                push    si
                add     si,19h
                movsw
                movsw
                movsw
                pop     si
                add     si,0Dh
                lodsw
                xchg    ah,al
                stosw
                lodsw
                xchg    ah,al
                stosw
                pop     di
                push    es
                pop     ds
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                push    ax
                mov     ax,0FFFFh
                call    sub_8
                pop     ax
loc_147::
                les     di,dword ptr ds:[6BEh]
                dec     word ptr es:[di]
                jnz     loc_ret_148
                mov     word ptr es:[di+9],0

loc_ret_148::
                retf
                                                ;* No entry point to code
                call    sub_19
                mov     cx,es:[di+7]
                mov     bx,es:[di+19h]
                mov     dx,es:[di+1Bh]
                mov     si,es:[di+1Dh]
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retf
                                                ;* No entry point to code
                cmp     byte ptr ds:[689h],4
                jb      loc_149
                cmp     byte ptr ds:[6B4h],0
                je      loc_149
                jmp     loc_155
loc_149::
                call    sub_19
                mov     al,1
                call    sub_21
                push    ds
                lds     si,dword ptr ds:[658h]
                mov     ax,[si-0Ah]
                mov     bp,[si-0Ch]
                pop     ds
                xchg    ah,al
                stosw
                mov     si,0A18h
                mov     word ptr [si+4],11h
loc_150::
                mov     al,1Ah
                mov     bx,1
                xor     dx,dx
                call    sub_5
                jnz     loc_151
                retf
loc_151::
                cmp     al,0FEh
                jne     loc_ret_152
                sub     bp,1
                ja      loc_150

loc_ret_152::
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                mov     bx,es:[di+19h]
                mov     dx,es:[di+1Bh]
                mov     bp,es:[di+1Dh]
                mov     cx,es:[di+7]
                push    ds
                pop     es
                mov     di,0A3Ch
                stosb
                xchg    bx,ax
                stosw
                xchg    dx,ax
                stosw
                xchg    bp,ax
                stosw
                cmp     byte ptr ds:[689h],4
                jb      loc_153
                mov     bp,word ptr ds:[6C2h]
                mov     ax,[bp+2]
                xchg    ah,al
                stosw
                mov     ax,[bp]
                xchg    ah,al
                stosw
                mov     ax,[bp+6]
                xchg    ah,al
                stosw
                mov     ax,[bp+4]
                xchg    ah,al
                stosw
                jmp     short loc_ret_154
loc_153::
                mov     ax,word ptr ds:[6B6h]
                xchg    ah,al
                stosw
                mov     ax,word ptr ds:[6B8h]
                xchg    ah,al
                stosw
                mov     bp,word ptr ds:[6C4h]
                mov     ax,word ptr ds:[6BAh]
                xchg    ah,al
                stosw
                mov     ax,[bp+6]
                xchg    ah,al
                stosw

loc_ret_154::
                retn
sub_21          endp

loc_155::
                call    sub_19
                xor     ax,ax
                call    sub_21
                mov     si,0A18h
                mov     word ptr [si+4],0Fh
                mov     al,1Eh
                mov     bx,1
                xor     dx,dx
                call    sub_5
                retf
                                                ;* No entry point to code
                les     di,dword ptr ds:[6BEh]
                cmp     word ptr es:[di+4Dh],4E57h
                je      loc_156
                mov     ax,8856h
                retf
loc_156::
                push    di
                add     di,3
                xor     ax,ax
                mov     cx,40h
                repne   scasb
                mov     ax,3Fh
                sub     ax,cx
                push    es
                push    ds
                pop     es
                pop     ds
                pop     si
                mov     di,0A3Ch
                mov     bx,ax
;*              add     ax,4
                db      5, 4, 0
                xchg    ah,al
                stosw
                mov     al,13h
                mov     ah,[si+4Ah]
                stosw
                mov     al,0E0h
                mov     ah,bl
                stosw
                mov     cx,[si+4Bh]
                add     si,3
                mov     di,6F8h
                push    di
                call    sub_32
                pop     di
                push    es
                pop     ds
                mov     word ptr ds:[0A1Eh],di
                mov     word ptr ds:[0A20h],ds
                mov     word ptr ds:[0A22h],bx
                mov     si,0A18h
                mov     word ptr [si+4],6
                mov     di,0A36h
                mov     al,16h
                mov     bx,2
                mov     dx,1
                call    sub_5
                jnz     loc_158
                les     di,dword ptr ds:[6BEh]
                mov     bl,byte ptr ds:[0A5Eh]
                xchg    es:[di+4Ah],bl
                push    es
                push    di
                push    bx
                call    sub_22
                pop     bx
                pop     di
                pop     es
                xchg    es:[di+4Ah],bl
                jnz     loc_157
                mov     si,0A5Eh
                lodsw
                xchg    ah,al
                mov     word ptr ds:[6B2h],ax
                lodsw
                xchg    ah,al
                mov     word ptr ds:[6B4h],ax
                lodsw
                xchg    ah,al
                mov     word ptr ds:[6B8h],ax
                mov     word ptr ds:[6B6h],200h
                call    sub_16
                mov     byte ptr ds:[6B3h],0F8h
                xor     ax,ax
                retf
loc_157::
                call    sub_16
loc_158::
                mov     ax,0FFh
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near
                mov     dl,es:[di+4Ah]
                mov     cx,es:[di+4Bh]
                push    ds
                pop     es
                mov     di,0A3Ch
                mov     ax,200h
                stosw
                mov     ah,dl
                mov     al,15h
                stosw
                mov     si,0A18h
                mov     word ptr [si+4],4
                mov     di,0A36h
                mov     al,16h
                mov     bx,1
                mov     dx,bx
                jmp     loc_4
sub_22          endp

                                                ;* No entry point to code
                mov     ah,1
                call    sub_18
                call    sub_23
                mov     cx,es:[di+1]
                inc     di
                inc     di
                mov     al,byte ptr ds:[60Bh]
                cmp     byte ptr ds:[60Ah],0
                jne     loc_159
                mov     al,byte ptr ds:[6B6h]
                or      al,byte ptr ds:[609h]
                and     al,0A7h
loc_159::
                mov     byte ptr ds:[6B6h],al
                mov     bx,di
                stosb
                inc     di
                mov     al,6
                stosb
                xor     ax,ax
                mov     al,es:[di]
;*              add     ax,4
                db      5, 4, 0
                mov     si,0A1Eh
                mov     [si],bx
                mov     di,bx
                mov     [si+2],es
                mov     [si+4],ax
loc_160::
                mov     al,46h                  ; 'F'
                cmp     byte ptr ds:[60Ah],0
                je      loc_161
                test    byte ptr es:[di+2],10h
                jnz     loc_161
                mov     al,4Fh                  ; 'O'
loc_161::
                mov     bx,1
                xor     dx,dx
                call    sub_5
                jz      loc_ret_162
                cmp     ah,88h
                je      loc_ret_162
                xchg    bp,ax
                test    byte ptr es:[di+2],10h
                jnz     loc_ret_162
                or      byte ptr es:[di],10h
                or      byte ptr es:[di+2],10h
                jmp     short loc_160

loc_ret_162::
                retf
loc_163::
                xor     ax,ax
                mov     word ptr ds:[6B4h],ax
                mov     word ptr ds:[6BEh],ax
                mov     ax,2
                retf
                                                ;* No entry point to code
                mov     ah,3
                call    sub_18
                push    ax
                push    di
                push    si
                push    es
                call    sub_24
                pop     es
                pop     si
                pop     di
                pop     ax
                cmp     word ptr ds:[77Ah],20AEh
                jne     loc_164
                mov     word ptr ds:[6B2h],10h
                xor     ax,ax
                retf
loc_164::
                cmp     al,9
                je      loc_163
                mov     byte ptr ds:[798h],6
loc_165::
                call    sub_27
                jz      loc_166
                cmp     ah,88h
                je      loc_ret_167
                test    byte ptr ds:[798h],10h
                jnz     loc_ret_167
                or      byte ptr ds:[798h],10h
                jmp     short loc_165
loc_166::
                mov     si,0A5Eh
                mov     ax,[si+16h]
                xchg    ah,al
                mov     word ptr ds:[6BEh],ax
                mov     ax,[si+14h]
                xchg    ah,al
                mov     word ptr ds:[6B4h],ax
                xor     ax,ax
                inc     si
                cmp     byte ptr ds:[60Ah],1
                sbb     si,0
                mov     al,[si+12h]
                mov     word ptr ds:[6B2h],ax
                xor     ax,ax
                retf

loc_ret_167::
                retf
                                                ;* No entry point to code
                mov     ah,1
                call    sub_18
                call    sub_23
                mov     cx,es:[di+1]
                add     di,3
                mov     bx,di
                inc     di
                mov     al,6
                stosb
                xor     ax,ax
                mov     al,es:[di]
;*              add     ax,3
                db      5, 3, 0
                mov     si,0A1Eh
                mov     [si],bx
                mov     [si+2],es
                mov     [si+4],ax
                mov     di,word ptr ds:[698h]
                cmp     byte ptr es:[di],8
                jne     loc_169
                cmp     es:[di+1],cx
                jne     loc_169
                mov     al,es:[di+3]
                mov     es:[di+4],al
                xor     ax,ax
                mov     al,es:[di+5]
                inc     ax
                inc     ax
                add     di,4
                mov     [si+6],di
                mov     [si+8],es
                mov     [si+0Ah],ax
                mov     al,45h                  ; 'E'
                mov     bx,2
                xor     dx,dx
                call    sub_5
                jz      loc_ret_168
                cmp     ah,88h
                jne     loc_170

loc_ret_168::
                retf
loc_169::
                mov     ax,11h
                retf
loc_170::
                push    ax
                mov     bp,cx
                mov     di,word ptr ds:[678h]
                xor     ax,ax
                mov     al,es:[di+5]
                inc     di
                mov     [si],di
                add     al,5
                mov     [si+4],ax
                add     al,10h
                xchg    ah,al
                stosw
                mov     ah,es:[di]
                mov     al,0Fh
                stosw
                mov     di,word ptr ds:[698h]
                push    es
                push    si
                push    bp
                call    sub_24
                pop     bp
                pop     si
                pop     es
                mov     di,dx
                dec     di
                mov     [si+6],di
                mov     cx,0FFFFh
                xor     ax,ax
                push    di
                repne   scasb
                pop     di
                neg     cx
                mov     [si+0Ah],cx
                dec     cx
                xchg    es:[di],cl
                push    cx
                mov     cx,bp
                mov     al,16h
                mov     bx,2
                xor     dx,dx
                call    sub_5
                pop     cx
                pop     bx
                jz      loc_ret_168
                xchg    es:[di],cl
                mov     ax,bx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                push    es
                push    di
                call    sub_24
                pop     di
                pop     es
                mov     si,dx
loc_171::
                lods    byte ptr es:[si]
                cmp     al,2Eh                  ; '.'
                je      loc_172
                or      al,al
                jnz     loc_171
                retn
loc_172::
                or      byte ptr es:[si-1],80h
                retn
sub_23          endp

                                                ;* No entry point to code
                mov     ah,1
                call    sub_18
                call    sub_23
                mov     bp,word ptr ds:[69Ch]
                mov     al,[bp]
                mov     es:[di+4],al
                mov     al,es:[di+5]
                mov     ah,0
;*              add     ax,3
                db      5, 3, 0
                mov     si,0A1Eh
                mov     [si+4],ax
                lea     ax,[di+3]
                mov     [si],ax
                mov     [si+2],es
                mov     cx,es:[di+1]
                mov     al,44h                  ; 'D'
                mov     bx,1
                xor     dx,dx
                call    sub_5
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                xor     cx,cx
                mov     cl,es:[di+5]
                add     di,6
                add     di,cx
                jcxz    loc_174
                dec     di
                mov     al,5Ch                  ; '\'
                std
                repne   scasb
                jnz     loc_173
                inc     di
loc_173::
                cld
                inc     di

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_25::
loc_174::
                mov     si,di
                mov     dx,di
                push    es
                push    ds
                pop     es
                pop     ds
                mov     di,77Ah
                mov     cx,8
loc_175::
                lodsb
                cmp     al,0AEh
                je      loc_178
                cmp     al,2Eh                  ; '.'
                je      loc_178
                or      al,al
                jz      loc_177
                stosb
                dec     cx
                jnz     loc_175
                mov     cl,3
loc_176::
                lodsb
                cmp     al,0AEh
                je      loc_179
                cmp     al,2Eh                  ; '.'
                je      loc_179
                or      al,al
                jz      loc_180
                jmp     short loc_176
loc_177::
                dec     si
                cmp     cx,8
                jne     loc_178
                mov     ax,20AEh
                stosw
                dec     cx
                dec     cx
loc_178::
                mov     al,20h                  ; ' '
                rep     stosb
                mov     cl,3
loc_179::
                lodsb
                or      al,al
                jz      loc_180
                stosb
                dec     cx
                jnz     loc_179
loc_180::
                mov     al,20h                  ; ' '
                rep     stosb
                push    es
                pop     ds
                retn
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                mov     si,di
                mov     dx,di
                push    es
                push    ds
                pop     es
                pop     ds
                mov     di,77Ah
                mov     cx,8
                test    byte ptr cs:data_192,0FFh
                jz      loc_181
                mov     ax,[si]
                cmp     al,2Eh                  ; '.'
                jne     loc_181
                movsb
                cmp     ah,2Eh                  ; '.'
                jne     loc_181
                movsb
loc_181::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_184
                or      al,al
                jz      loc_183
                stosb
                dec     cx
                jnz     loc_181
                mov     cl,3
loc_182::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_185
                or      al,al
                jz      loc_186
                jmp     short loc_182
loc_183::
                dec     si
loc_184::
                mov     al,20h                  ; ' '
                rep     stosb
                mov     cl,3
loc_185::
                lodsb
                or      al,al
                jz      loc_186
                stosb
                dec     cx
                jnz     loc_185
loc_186::
                mov     al,20h                  ; ' '
                rep     stosb
                push    es
                pop     ds
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                call    sub_23
                mov     al,byte ptr ds:[798h]
                mov     es:[di+4],al
                mov     ah,0
                mov     al,es:[di+5]
                or      al,al
                jz      loc_ret_187
                mov     cx,0FFFFh
                xchg    es:[di+1],cx
;*              add     ax,5
                db      5, 5, 0
                mov     si,0A1Eh
                mov     [si+4],ax
                lea     ax,[di+1]
                mov     [si],ax
                mov     [si+2],es
                push    es
                push    di
                push    ds
                pop     es
                mov     di,0A36h
                mov     al,40h                  ; '@'
                mov     bx,1
                mov     dx,bx
                call    sub_5
                pop     di
                pop     es
                xchg    es:[di+1],cx
                jnz     loc_ret_187
                mov     al,byte ptr ds:[0A70h]
                and     al,10h
                xor     al,10h
                and     al,byte ptr ds:[798h]

loc_ret_187::
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
                les     di,dword ptr ds:[6BEh]
                mov     dl,es:[di+1Fh]
                inc     di
                inc     di
                mov     al,byte ptr ds:[797h]
                stosb
                inc     di
                mov     al,[si+16h]
                stosb
                push    si
                push    ds
                lds     si,dword ptr ds:[678h]
                mov     al,[si+4]
                cmp     al,0
                je      loc_188
                sub     al,41h                  ; 'A'
loc_188::
                pop     ds
                pop     si
                or      al,40h                  ; '@'
                mov     ah,89h
                stosw
                mov     ax,cx
                stosw
                mov     ax,ds
                stosw
                mov     ax,word ptr ds:[6A4h]
                inc     ax
                mov     word ptr ds:[6A4h],ax
                stosw
                mov     ax,[si+22h]
                xchg    ah,al
                stosw
                mov     ax,[si+20h]
                xchg    ah,al
                stosw
                mov     ax,[si+1Ah]
                xchg    ah,al
                stosw
                mov     ax,[si+18h]
                xchg    ah,al
                stosw
                xor     ax,ax
                stosw
                stosw
                push    si
                add     si,0
                movsw
                movsw
                movsw
                pop     si
                dec     al
                stosb
                push    es
                push    di
                push    ds
                pop     es
                lea     di,[si+8]
                call    sub_25
                pop     di
                pop     es
                mov     si,77Ah
                mov     cx,5
                rep     movsw
                movsb
                retn
sub_28          endp

                                                ;* No entry point to code
                mov     bp,word ptr ds:[6A0h]
                mov     bl,[bp-9]
                mov     bh,bl
                mov     cl,4
                shr     bh,cl
                and     bx,103h
                mov     al,[bp+2]
                mov     byte ptr ds:[798h],al
                mov     al,[bp+4]
                mov     byte ptr ds:[797h],al
                jmp     short loc_189
                                                ;* No entry point to code
                mov     bp,word ptr ds:[6C4h]
                mov     al,[bp+6]
                mov     byte ptr ds:[797h],al
                mov     bx,1
                mov     al,byte ptr ds:[6B6h]
                mov     byte ptr ds:[798h],al
                jmp     short loc_189
                db      90h
data_169        dw      offset loc_200          ; Data table (indexed access)
data_170        dw      offset loc_202
data_171        dw      offset loc_209
data_172        dw      offset loc_198
data_173        dw      offset loc_198
data_174        dw      offset loc_203
loc_189::
                mov     ah,3
                call    sub_18
                cmp     al,9
                je      loc_190
                jmp     loc_195
loc_190::
                add     di,6
                call    sub_25
                mov     di,77Ah
                call    sub_37
                cmp     dx,0FDh
                jne     loc_191
                mov     cx,word ptr ds:[6ACh]
                push    ds
                lds     bx,dword ptr ds:[6A8h]
                mov     si,bx
                mov     di,0A5Eh
                pop     es
                push    cx
                mov     cx,12h
                rep     movsw
                pop     cx
                push    es
                pop     ds
                jmp     loc_220
loc_191::
                push    dx
                mov     di,0A66h
                mov     si,77Ah
                mov     cx,4
                rep     movsw
                mov     al,2Eh                  ; '.'
                stosb
                movsw
                movsb
                xor     ax,ax
                stosw
                mov     di,0A76h
                stosw
                stosw
                mov     si,0A5Eh
                call    sub_28
                mov     di,word ptr ds:[6BEh]
                pop     dx
                push    ds
                push    es
                pop     ds
                cmp     dx,0FEh
                jne     loc_192
                mov     bx,2
                mov     al,2
                push    di
                call    sub_4
                mov     bx,di
                pop     di
                jnz     loc_ret_194
                push    bx
                mov     bx,2
                mov     al,0
                call    sub_4
                pop     bx
                mov     [di+19h],ax
                mov     [di+1Bh],dx
                mov     [di+1Dh],bx
                mov     [di+7],cx
                mov     dl,0FFh
                push    dx
                mov     ax,1
                call    sub_8
                pop     dx
loc_192::
                cmp     dl,0FFh
                je      loc_193
                mov     byte ptr [di+5],0C0h
                mov     word ptr [di+7],7C4h
loc_193::
                mov     [di+1Fh],dl
                pop     ds
                xor     ax,ax

loc_ret_194::
                retf
loc_195::
                xor     cx,cx
                mov     cl,es:[di+5]
                mov     al,0AAh
loc_196::
                push    di
                push    cx
                add     di,6
                repne   scasb
                pop     cx
                pop     di
                jnz     loc_197
                mov     ax,899Ch
                jmp     loc_ret_201
loc_197::
                cmp     al,0BFh
                mov     al,0BFh
                jnz     loc_196
                push    bx
                call    sub_24
                pop     bx
                les     di,dword ptr ds:[6BEh]
                inc     di
                inc     di
                mov     al,byte ptr ds:[797h]
                stosb
                inc     di
                inc     di
                mov     bp,word ptr ds:[694h]
                mov     al,[bp]
                or      al,40h                  ; '@'
                mov     ah,88h
                stosw
                add     di,19h
                mov     si,77Ah
                push    es
                push    ds
                pop     es
                push    di
                mov     di,78Ah
                mov     cl,5
                push    si
                rep     movsw
                movsb
                pop     si
                pop     di
                pop     es
                push    si
                mov     cx,0Bh
                call    sub_34
                pop     si
                mov     cl,5
                rep     movsw
                movsb
                les     di,dword ptr ds:[678h]
                add     bl,bl
                or      bl,bh
                xor     bh,bh
                mov     ax,899Eh
                cmp     bx,5
                ja      loc_ret_201
                push    bx
                mov     ax,1
                mov     cx,es:[di+1]
                call    sub_8
                pop     bx
                add     bx,bx
                mov     ax,89FFh
                jmp     word ptr cs:data_169[bx]        ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_198::
                push    bx
                call    sub_27
                pop     bx
                jnz     loc_199
                mov     ax,8985h
                test    bl,0Ch
                jz      loc_200
                test    bl,8
                jnz     loc_203
                jmp     loc_209
loc_199::
                cmp     al,0FFh
                jne     loc_200
                test    bl,2
                jnz     loc_202

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_200::
                push    ax
                mov     ax,0FFFFh
                call    sub_8
                pop     ax

loc_ret_201::
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_202::
                mov     dl,4Dh                  ; 'M'
                mov     word ptr ds:[6B6h],2
                jmp     short loc_204

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_203::
                mov     dl,43h                  ; 'C'
                mov     word ptr ds:[6B6h],3
loc_204::
                mov     cx,es:[di+1]
                mov     al,byte ptr ds:[798h]
                and     al,0F7h
                test    al,10h
                jnz     loc_207
                or      al,byte ptr ds:[609h]
                and     al,0A7h
                xchg    es:[di+4],al
                mov     byte ptr ds:[62Ch],al
                mov     si,0A1Eh
                lea     ax,[di+3]
                mov     [si],ax
                mov     [si+2],es
                xor     ax,ax
                mov     al,es:[di+5]
;*              add     ax,3
                db      5, 3, 0
                mov     [si+4],ax
                push    ds
                pop     es
                mov     di,0A36h
                mov     al,dl
                mov     bx,1
                mov     dx,bx
                call    sub_5
                pushf
                push    es
                push    di
                les     di,dword ptr ds:[678h]
                push    ax
                mov     al,byte ptr ds:[62Ch]
                mov     es:[di+4],al
                pop     ax
                pop     di
                pop     es
                popf
                jz      loc_208
                cmp     ah,88h
                je      loc_200
                cmp     word ptr ds:[6B6h],2
                jne     loc_200
                cmp     al,85h
                je      loc_206
                cmp     al,84h
                je      loc_206
loc_205::
                jmp     loc_200
loc_206::
                les     di,dword ptr ds:[678h]
                mov     byte ptr ds:[798h],6
                call    sub_27
                mov     ax,89E9h
                jz      loc_205
loc_207::
                mov     ax,8984h
                jmp     loc_200
loc_208::
                jmp     loc_220

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_209::
                mov     si,0A3Ch
                mov     al,es:[di+3]
                mov     [si],al
                mov     al,6
                cmp     byte ptr ds:[607h],4Bh  ; 'K'
                jne     loc_210
                or      al,48h                  ; 'H'
loc_210::
                mov     [si+1],al
                mov     bx,7EEh
                mov     al,byte ptr ds:[797h]
                mov     ah,al
                and     al,3
                xlat
                xchg    ah,al
                mov     bx,7F2h
                mov     cl,4
                shr     al,cl
                and     al,7
                xlat
                or      al,ah
                mov     [si+2],al
                lea     ax,[di+5]
                push    ds
                lds     si,dword ptr ds:[658h]
                mov     bp,[si-0Ch]
                mov     cx,[si-0Ah]
                pop     ds
                mov     word ptr ds:[6ECh],cx
                mov     si,0A18h
                mov     word ptr [si+4],3
                mov     [si+6],ax
                mov     [si+8],es
                mov     al,es:[di+5]
                mov     ah,0
                inc     ax
                mov     [si+0Ah],ax
                mov     cx,es:[di+1]
                mov     di,0A36h
                push    ds
                pop     es
loc_211::
                mov     al,4Ch                  ; 'L'
                mov     bx,2
                mov     dx,1
                call    sub_5
                jz      loc_217
                cmp     al,0FFh
                je      loc_216
                cmp     al,80h
                jne     loc_215
                sub     bp,1
                jns     loc_212
                jmp     short loc_215
loc_212::
                push    si
                push    cx
                mov     si,word ptr ds:[6ECh]
loc_213::
                mov     cx,0FFFFh

locloop_214::
                loop    locloop_214

                sub     si,1
                jns     loc_213
                pop     cx
                pop     si
                jmp     short loc_211
loc_215::
                jmp     loc_200
loc_216::
                push    ax
                mov     ax,0FFFFh
                call    sub_8
                pop     ax
                call    sub_29
                jz      loc_217
                jmp     loc_ret_201
loc_217::
                mov     si,0A5Eh
                test    byte ptr [si+16h],1
                jz      loc_218
                test    byte ptr ds:[797h],3
                jz      loc_218
                and     byte ptr ds:[797h],0FCh
                cmp     byte ptr ds:[7B5h],0
                je      loc_224
loc_218::
                cmp     byte ptr ds:[607h],4Bh  ; 'K'
                jne     loc_219
                mov     dl,byte ptr ds:[0A75h]
                and     dl,7
                mov     byte ptr ds:[608h],dl
loc_219::
                mov     word ptr ds:[6B6h],1
loc_220::
                mov     al,byte ptr ds:[797h]
                mov     si,0A5Eh
                test    word ptr [si+16h],0D080h
                jz      loc_221
                and     al,0Fh
                or      al,40h                  ; '@'
                mov     byte ptr ds:[797h],al
loc_221::
                mov     si,0A5Eh
                call    sub_28
                xor     ah,ah
                mov     al,byte ptr ds:[797h]
                push    ds
                lds     di,dword ptr ds:[6BEh]
                mov     cx,[di+7]
                mov     bx,[di+19h]
                mov     dx,[di+1Bh]
                mov     si,[di+1Dh]
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                test    word ptr [di+2],8000h
                pop     ds
                jnz     loc_225
loc_222::
                cmp     byte ptr ds:[6B2h],2Eh  ; '.'
                jne     loc_223
                mov     ax,word ptr ds:[6B6h]
                push    ds
                lds     si,dword ptr ds:[67Ch]
                lds     si,dword ptr [si]
                mov     [si+4],ax
                pop     ds
loc_223::
                xor     ax,ax
                retf
loc_224::
                mov     di,0A3Ch
                xor     ax,ax
                stosb
                movsw
                movsw
                movsw
                mov     si,0A18h
                mov     word ptr [si+4],7
                mov     al,42h                  ; 'B'
                mov     bx,1
                xor     dx,dx
                call    sub_5
                mov     ax,8994h
                retf
loc_225::
                push    ds
                mov     ds,word ptr ds:[6BCh]
                mov     ax,120Ch
                int     2Fh                     ; DOS Internal services
                                                ;*  undocumented function
                pop     ds
                jmp     short loc_222
                                                ;* No entry point to code
                mov     bp,word ptr ds:[6C4h]
                mov     ax,[bp+6]
                mov     byte ptr ds:[798h],al
                mov     byte ptr ds:[797h],2
                mov     bh,1
                and     ah,1
                add     ah,ah
                xor     ah,2
                mov     bl,ah
                jmp     loc_189
data_175        dw      offset loc_236
data_176        dw      offset loc_227
data_177        dw      offset loc_236
data_178        dw      offset loc_226
data_179        dw      offset loc_236
data_180        dw      offset loc_229
data_181        dw      offset loc_236
data_182        dw      offset loc_228

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                mov     bx,4
                mov     dh,0
                call    sub_4
                mov     bx,offset data_175
                xor     dh,dh
                add     dx,dx
                add     bx,dx
                jmp     word ptr cs:[bx]        ;*8 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_226::
                mov     al,byte ptr ds:[797h]
                and     al,0Fh
                jnz     loc_236

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_227::
                cmp     word ptr ds:[604h],0
                je      loc_229
                jmp     short loc_236

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_228::
                mov     al,byte ptr ds:[797h]
                and     al,0Fh
                jnz     loc_236

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_229::
                cld
                xor     di,di
                mov     es,word ptr ds:[6B0h]
                xor     ax,ax
loc_230::
                mov     si,7BAh
                mov     cx,5
                repe    cmpsb
                jz      loc_231
                dec     di
                mov     cx,80h
                repne   scasb
                scasb
                jz      loc_236
                dec     di
                jmp     short loc_230
loc_231::
                mov     word ptr ds:[66Ch],di
                mov     word ptr ds:[66Eh],es
loc_232::
                les     di,dword ptr ds:[66Ch]
loc_233::
                mov     al,0
                scasb
                jz      loc_236
                mov     ax,2E3Ah
                scasw
                jz      loc_237
loc_234::
                dec     di
                dec     di
loc_235::
                mov     al,0
                scasb
                jz      loc_236
                dec     di
                mov     al,3Bh                  ; ';'
                scasb
                jnz     loc_235
                jmp     short loc_233

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_236::
                mov     ax,89FFh
                or      ax,ax
                retn
loc_237::
                cmp     byte ptr es:[di],0
                mov     al,es:[di-3]
                jz      loc_238
                mov     al,3Bh                  ; ';'
                scasb
                mov     al,es:[di-4]
                jnz     loc_234
loc_238::
                mov     word ptr ds:[66Ch],di
                mov     word ptr ds:[66Eh],es
                and     al,0DFh
                sub     al,41h                  ; 'A'
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                cmp     word ptr es:[di+4Dh],4E57h
                jne     loc_232
                mov     si,0A3Ch
                mov     al,es:[di+4Ah]
                mov     [si],al
                mov     al,es:[di]
                push    ds
                push    es
                mov     si,di
                les     di,dword ptr ds:[678h]
                mov     es:[di+4],al
                pop     ds
                mov     cx,[si+4Bh]
                lea     si,[si+3]
                add     di,6
                push    cx
                push    si
                call    sub_32
                pop     bx
                pop     cx
                dec     di
                mov     al,5Ch                  ; '\'
                inc     bx
                cmp     bx,si
                je      loc_239
                stosb
loc_239::
                pop     ds
                mov     si,78Ah
                push    cx
                mov     cx,8

locloop_240::
                lodsb
                cmp     al,20h                  ; ' '
                je      loc_241
                or      al,al
                jz      loc_243
                stosb
                loop    locloop_240

                inc     cx
loc_241::
                mov     al,0AEh
                stosb
                dec     cx
                add     si,cx
                mov     cl,3

locloop_242::
                lodsb
                or      al,al
                jz      loc_243
                cmp     al,20h                  ; ' '
                je      loc_243
                stosb
                loop    locloop_242

loc_243::
                pop     cx
                xchg    di,ax
                mov     si,word ptr ds:[678h]
                sub     ax,si
                sub     al,6
                mov     es:[si+5],al
                push    cx
                push    ds
                lds     si,dword ptr ds:[658h]
                mov     bp,[si-0Ch]
                mov     cx,[si-0Ah]
                pop     ds
                mov     word ptr ds:[6ECh],cx
                pop     cx
                mov     si,0A18h
                inc     ax
                mov     [si+0Ah],ax
                mov     di,0A36h
                push    ds
                pop     es
loc_244::
                mov     al,4Ch                  ; 'L'
                mov     bx,2
                mov     dx,1
                call    sub_5
                jz      loc_249
                cmp     al,80h
                je      loc_245
                jmp     loc_232
loc_245::
                sub     bp,1
                jns     loc_246
                jmp     short loc_250
                db      90h
loc_246::
                push    si
                push    cx
                mov     si,word ptr ds:[6ECh]
loc_247::
                mov     cx,0FFFFh

locloop_248::
                loop    locloop_248

                sub     si,1
                jns     loc_247
                pop     cx
                pop     si
                jmp     short loc_244
loc_249::
                push    ax
                mov     ax,1
                call    sub_8
                pop     ax
loc_250::
                or      ax,ax
                retn
sub_29          endp

                                                ;* No entry point to code
                mov     ah,5
                call    sub_18
                xor     bx,bx
                mov     bl,es:[di+5]
                lea     si,[bx+di+6]
                cmp     word ptr es:[si-2],5C3Ah
                jne     loc_251
                xchg    si,di
                mov     ax,2E2Ah
                stosw
                mov     ah,0
                stosw
                add     byte ptr es:[si+5],3
loc_251::
                mov     byte ptr cs:data_192,0
                mov     ah,5
                call    sub_18
                mov     cx,es:[di+1]
                push    cx
                push    es
                push    di
                call    sub_24
                pop     di
                pop     es
                mov     word ptr ds:[7ECh],0FFFFh
                cmp     byte ptr es:[di],7
                jne     loc_252
                and     word ptr ds:[7ECh],0FF00h
loc_252::
                pop     cx
                push    ds
                mov     ds,cx
                mov     cx,ds:data_69e
                mov     cs:data_193,cx
                pop     ds
                mov     bp,word ptr ds:[69Ch]
                xor     bh,bh
                and     byte ptr [bp],9Eh
                mov     bl,[bp]
                test    bl,10h
                jz      loc_255
                mov     ax,word ptr ds:[678h]
;*              add     ax,6
                db      5, 6, 0
                cmp     dx,ax
                je      loc_254
                push    bx
                mov     bx,dx
                mov     al,es:[bx-1]
                cmp     al,3Ah                  ; ':'
                je      loc_253
                cmp     al,5Ch                  ; '\'
                jne     loc_253
                cmp     byte ptr es:[bx-2],3Ah  ; ':'
loc_253::
                pop     bx
                jz      loc_254
                call    sub_30
                cmp     cs:data_193,33h
                jne     loc_254
                mov     al,byte ptr ds:[7B4h]
                mov     cs:data_192,al
loc_254::
                cmp     cs:data_193,33h
                je      loc_256
                or      bh,1
loc_255::
                and     bl,0EFh
loc_256::
                mov     bp,word ptr ds:[690h]
                les     di,dword ptr [bp]
                mov     al,0EEh
                stosb
                mov     si,77Ah
                mov     cx,0Bh
                push    si
                call    sub_34
                pop     si
                mov     cl,5
                rep     movsw
                movsb
                mov     bp,word ptr ds:[69Ch]
                cmp     byte ptr [bp],8
                jne     loc_259
                mov     al,bl
                stosb
                mov     bp,word ptr ds:[69Eh]
                les     di,dword ptr [bp]
                cmp     di,0FFFFh
                je      loc_257
                call    sub_22
                jz      loc_258
                jmp     loc_262
loc_257::
                les     di,dword ptr ds:[678h]
                add     di,6
                mov     si,di
                mov     al,3Ah                  ; ':'
                mov     cx,41h
                repne   scasb
                mov     dx,di
                sub     dx,si
                push    es
                push    ds
                pop     es
                pop     ds
                mov     di,0A68h
                mov     cx,10h
                xchg    dx,cx
                sub     dx,cx
                rep     movsb
                mov     cx,dx
                xor     ax,ax
                rep     stosb
                push    es
                pop     ds
loc_258::
                mov     di,0A5Eh
                lea     si,[di+0Ah]
                xor     ax,ax
                stosw
                stosw
                mov     cx,4
                rep     movsw
                mov     al,2Eh                  ; '.'
                stosb
                movsw
                movsb
                xor     ax,ax
                stosw
                mov     al,8
                stosb
                mov     cx,7
                xor     ax,ax
                rep     stosw
                jmp     loc_277
loc_259::
                mov     al,6
                mov     al,bl
                stosb
                mov     di,word ptr ds:[678h]
                mov     cx,es:[di+1]
                mov     al,es:[di+3]
                mov     es:[di+4],al
                mov     si,0A1Eh
                lea     ax,[di+4]
                mov     [si],ax
                mov     [si+2],es
                lea     ax,[di+6]
                cmp     ax,dx
                sbb     dx,0
                sub     dx,ax
                mov     es:[di+5],dl
                inc     dx
                inc     dx
                mov     [si+4],dx
                push    ds
                pop     es
                mov     di,0A36h
                push    bx
                mov     al,3Eh                  ; '>'
                mov     bx,1
                mov     dx,bx
                call    sub_5
                pop     bx
                jnz     loc_ret_263
                and     word ptr ds:[7ECh],0FFh
                mov     si,0A5Eh
                mov     al,[si+5]
                test    al,40h                  ; '@'
                jnz     loc_261
                cmp     cs:data_193,33h
                je      loc_261
                cmp     bh,1
                je      loc_260
                jmp     loc_275
loc_260::
                xor     bx,bx
                mov     bl,10h
loc_261::
                mov     bp,word ptr ds:[690h]
                les     di,dword ptr [bp]
                add     di,0Ch
                mov     al,bl
                stosb
                mov     ax,[si+3]
                stosw
                mov     al,bh
                stosb
                mov     al,[si]
                stosb
                mov     ax,cx
                stosw
                mov     ax,[si+1]
                stosw
                jmp     short loc_265
loc_262::
                mov     ax,89FFh

loc_ret_263::
                retf
loc_264::
                push    es
                pop     ds
                mov     ax,8856h
                retf
loc_265::
                push    ds
                pop     es
                mov     di,0A3Ch
                mov     bp,word ptr ds:[690h]
                lds     si,dword ptr [bp]
                cmp     byte ptr [si],0EEh
                jne     loc_264
                mov     al,[si+0Fh]
                test    byte ptr cs:data_192,0FFh
                jz      loc_266
                cmp     al,0
                je      loc_267
                mov     cs:data_192,al
                jmp     short loc_267
loc_266::
                test    al,6
                jz      loc_267
                jmp     loc_281
loc_267::
                mov     al,[si+10h]
                stosb
                mov     ax,[si+13h]
                stosw
                mov     ax,[si+0Dh]
                stosw
                xor     ax,ax
                xchg    [si+0Ch],al
                cmp     al,8
                jne     loc_268
                test    byte ptr [si+0Fh],1
                jnz     loc_268
                push    es
                pop     ds
                jmp     loc_275
loc_268::
                and     al,0BFh
                test    byte ptr cs:data_192,0FFh
                jz      loc_269
                or      al,40h                  ; '@'
loc_269::
                stosb
                inc     di
                mov     bx,di
                push    ds
                push    si
                add     si,1
                push    ax
                push    di
                mov     di,77Ah
                call    sub_32
                pop     di
                mov     si,77Ah
                push    es
                pop     ds
                mov     cx,8

locloop_270::
                lodsb
                cmp     al,20h                  ; ' '
                je      loc_271
                or      al,al
                jz      loc_273
                stosb
                loop    locloop_270

                inc     cx
loc_271::
                mov     al,0AEh
                stosb
                dec     cx
                add     si,cx
                mov     cl,3

locloop_272::
                lodsb
                or      al,al
                jz      loc_273
                cmp     al,20h                  ; ' '
                je      loc_273
                stosb
                loop    locloop_272

loc_273::
                pop     ax
                pop     si
                pop     ds
                xchg    [si+0Ch],al
                mov     cx,[si+11h]
                neg     bx
                lea     ax,[bx+di]
                neg     bx
                lea     di,[bx-1]
                stosb
;*              add     ax,7
                db      5, 7, 0
                push    es
                pop     ds
                mov     si,0A18h
                mov     [si+4],ax
                mov     di,0A36h
                mov     al,3Fh                  ; '?'
                mov     bx,1
                mov     dx,bx
                call    sub_5
                jz      loc_277
                cmp     ah,88h
                jne     loc_274
                jmp     loc_ret_263
loc_274::
                mov     bp,word ptr ds:[690h]
                les     di,dword ptr [bp]
                test    byte ptr es:[di+0Fh],1
                jz      loc_275
                mov     al,es:[di+0Ch]
                test    al,10h
                jnz     loc_275
                or      byte ptr es:[di+0Ch],10h
                mov     word ptr es:[di+0Dh],0FFFFh
                jmp     loc_265
loc_275::
                test    word ptr ds:[7ECh],0FFFFh
                jz      loc_276
                mov     ax,89FFh
                retf
loc_276::
                xor     ax,ax
                retf
loc_277::
                mov     bx,0A5Eh
                lea     di,[bx+4]
                push    ds
                pop     es
                push    bx
                call    sub_26
                pop     bx
loc_278::
                mov     bp,word ptr ds:[690h]
                les     di,dword ptr [bp]
                mov     ax,[bx]
                mov     es:[di+0Dh],ax
                add     di,15h
                mov     si,77Ah
                mov     cx,0Bh
                rep     movsb
                mov     al,[bx+12h]
                stosb
                add     di,0Ah
                test    al,10h
                jnz     loc_279
                mov     ax,[bx+1Eh]
                xchg    ah,al
                stosw
                mov     ax,[bx+1Ch]
                xchg    ah,al
                stosw
                inc     di
                inc     di
                mov     ax,[bx+16h]
                xchg    ah,al
                stosw
                mov     ax,[bx+14h]
                xchg    ah,al
                stosw
                jmp     short loc_280
loc_279::
                mov     ax,[bx+16h]
                xchg    ah,al
                stosw
                mov     ax,[bx+14h]
                xchg    ah,al
                stosw
                inc     di
                inc     di
                xor     ax,ax
                stosw
                stosw
loc_280::
                xor     ax,ax
                retf
loc_281::
                mov     bx,202Eh
                test    al,2
                jnz     loc_282
                mov     bh,2Eh                  ; '.'
                and     al,0FBh
loc_282::
                and     al,0FDh
                mov     [si+0Fh],al
                push    es
                pop     ds
                mov     di,77Ah
                mov     ax,bx
                stosw
                mov     ax,2020h
                mov     cx,5
                rep     stosw
                mov     di,0A5Eh
                mov     ax,0FFFFh
                stosw
                inc     ax
                mov     cx,8
                rep     stosw
                mov     al,10h
                stosb
                xor     ax,ax
                mov     cx,7
                rep     stosw
                mov     bx,0A5Eh
                jmp     loc_278

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                mov     bh,byte ptr ds:[7B4h]
                mov     si,77Ah
                mov     cx,0Bh

locloop_283::
                lodsb
                cmp     al,0AAh
                je      loc_284
                cmp     al,2Eh                  ; '.'
                je      loc_284
                cmp     al,20h                  ; ' '
                je      loc_284
                cmp     al,0BFh
                jne     loc_286
loc_284::
                loop    locloop_283

                mov     si,77Ah
                lodsw
                cmp     al,0AAh
                je      loc_ret_285
                cmp     ax,0BFBFh
                je      loc_ret_285
                and     bh,0FBh

loc_ret_285::
                retn
loc_286::
                and     bh,0F9h
                retn
sub_30          endp

                                                ;* No entry point to code
                push    es
                push    ds
                pop     es
                push    di
                mov     di,77Ah
                mov     cx,8
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NETX
                push    bp
                mov     bp,3
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                cmp     al,0
                jne     loc_287
                mov     al,es:[di+7]
                mov     byte ptr ds:[7C3h],al
loc_287::
                pop     di
                pop     es
                mov     bp,word ptr ds:[692h]
                mov     es,[bp]
                cmp     byte ptr ds:[7C3h],0
                je      loc_289
                cmp     byte ptr es:data_5e,0CEh
                jne     loc_289
                mov     bx,6
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     cx,bx
                or      cx,cx
                jz      loc_289
                mov     ax,0FF18h
                xor     bx,bx
                xor     dx,dx
                cmp     cx,0FFFFh
                jne     loc_288
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     short loc_289
loc_288::
                call    sub_5
loc_289::
                push    ds
                pop     es
                mov     si,6B2h
                mov     di,6D6h
                mov     cx,0Bh
                rep     movsw
                mov     bp,word ptr ds:[692h]
                mov     cx,[bp]
                push    ds
                mov     ds,cx
                mov     al,ds:data_6e
                mov     ds,ds:data_3e
                mov     bx,ds
                cmp     cx,bx
                je      loc_290
                cmp     al,ds:data_300e
                jne     loc_290
                pop     ds
                jmp     loc_294
loc_290::
                pop     ds
                mov     ax,1
                mov     bx,1
                call    sub_3
                mov     di,6B2h
                mov     si,data_63e
                mov     cx,0Bh
                rep     movsw
                mov     bp,ds:data_62e
                mov     cx,[bp]
                mov     es,cx
                mov     ax,es:data_3e
                mov     es,ax
                cmp     es:data_299e,ax
                jne     loc_294
                xchg    [bp],ax
                push    ax
                mov     bx,6
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     cx,bx
                or      cx,cx
                jz      loc_293
                cmp     byte ptr ds:data_65e,0
                je      loc_292
                mov     ax,0FF18h
                xor     bx,bx
                xor     dx,dx
                cmp     cx,0FFFFh
                jne     loc_291
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     short loc_292
loc_291::
                call    sub_5
loc_292::
                xor     ax,ax
                mov     bx,7
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
loc_293::
                pop     ax
                mov     [bp],ax
loc_294::
                cmp     byte ptr ds:data_64e,1
                jbe     loc_295
                dec     byte ptr ds:data_64e
                mov     ax,1682h
                int     2Fh                     ; End critical section
loc_295::
                mov     ax,8856h
                retf
                                                ;* No entry point to code
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retf
loc_296::
                xor     ax,ax
                mov     word ptr ds:[6B8h],ax
                mov     word ptr ds:[6B2h],ax
                retf
                                                ;* No entry point to code
                call    sub_19
                cmp     byte ptr es:[di+1Fh],0FFh
                jne     loc_296
                mov     si,di
                mov     cx,es:[si+7]
                mov     bx,es:[si+19h]
                mov     dx,es:[si+1Bh]
                mov     bp,es:[si+1Dh]
                push    es
                push    si
                push    ds
                pop     es
                mov     di,0A3Ch
                xor     ax,ax
                stosb
                xchg    bx,ax
                stosw
                xchg    dx,ax
                stosw
                xchg    bp,ax
                stosw
                mov     si,0A18h
                mov     word ptr [si+4],7
                mov     di,0A36h
                mov     al,47h                  ; 'G'
                mov     bx,1
                mov     dx,bx
                call    sub_5
                pop     di
                pop     es
                jnz     loc_ret_297
                mov     ax,word ptr ds:[0A60h]
                xchg    ah,al
                mov     dx,word ptr ds:[6B8h]
                add     ax,dx
                mov     es:[di+15h],ax
                mov     word ptr ds:[6B2h],ax
                mov     ax,word ptr ds:[0A5Eh]
                xchg    ah,al
                adc     ax,word ptr ds:[6B6h]
                mov     es:[di+17h],ax
                mov     word ptr ds:[6B8h],ax
                xor     ax,ax

loc_ret_297::
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                mov     cx,40h
loc_298::
                lodsw
                mov     bx,ax
                and     al,0DFh
                sub     al,41h                  ; 'A'
                cmp     al,1Ah
                jae     loc_301
                add     al,41h                  ; 'A'
loc_299::
                and     ah,0DFh
                sub     ah,41h                  ; 'A'
                cmp     ah,1Ah
                jae     loc_303
                add     ah,41h                  ; 'A'
loc_300::
                stosw
                dec     cx
                jnz     loc_298
                jmp     short loc_302
loc_301::
                mov     al,bl
                or      al,al
                jnz     loc_299
loc_302::
                xor     ax,ax
                stosb
                retn
loc_303::
                mov     ah,bh
                or      ah,ah
                jnz     loc_300
                stosw
                retn
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near
                push    bx
                push    cx
                mov     cx,80h
                xor     bx,bx
                mov     dx,di
                xor     bp,bp
                mov     ax,[si]
                or      al,al
                jz      loc_306
                cmp     ax,5C5Ch
                je      loc_304
                cmp     ax,2F2Fh
                jne     loc_305
loc_304::
                lodsw
                mov     ax,5C5Ch
                stosw
                mov     dx,di
                dec     cx
                dec     cx
loc_305::
                lodsw
                dec     si
                mov     bh,bl
                mov     bl,al
                and     al,0DFh
                sub     al,41h                  ; 'A'
                cmp     al,1Ah
                jae     loc_313
                add     al,41h                  ; 'A'
                stosb
                dec     cx
                jz      loc_315
                inc     si
                mov     al,ah
                mov     bh,bl
                mov     bl,al
                and     al,0DFh
                sub     al,41h                  ; 'A'
                cmp     al,1Ah
                jae     loc_313
                add     al,41h                  ; 'A'
                stosb
                dec     cx
                jz      loc_315
                jmp     short loc_305
loc_306::
                inc     si
                jmp     short loc_316
loc_307::
                mov     al,5Ch                  ; '\'
                mov     bl,al
loc_308::
;*              cmp     bh,bl
                db       3Ah,0FBh
                jz      loc_305
                stosb
                mov     dx,di
                dec     cx
                jz      loc_315
                jmp     short loc_305
loc_309::
                call    sub_20
                jnc     loc_311
                call    sub_33
                stosb
                dec     cx
                jz      loc_315
                lodsb
loc_310::
                call    sub_33
                stosb
                dec     cx
                jz      loc_315
                jmp     short loc_305
loc_311::
                push    ds
                mov     ds,cs:data_189
                assume  ds:seg_b
                call    dword ptr data_218
                pop     ds
                jmp     short loc_310
loc_312::
                mov     bp,di
                stosb
                dec     cx
                jz      loc_315
                jmp     short loc_305
loc_313::
                mov     al,bl
                or      al,al
                js      loc_309
                jz      loc_315
                cmp     al,2Fh                  ; '/'
                je      loc_307
                cmp     al,5Ch                  ; '\'
                je      loc_308
                cmp     al,3Ah                  ; ':'
                je      loc_312
                cmp     al,1Fh
                ja      loc_314
                stc
                jmp     short loc_317
loc_314::
                cmp     al,3Fh                  ; '?'
                je      loc_318
                cmp     al,2Ah                  ; '*'
                je      loc_318
                stosb
                dec     cx
                jz      loc_315
                jmp     loc_305
loc_315::
                dec     di
                std
                mov     al,20h                  ; ' '
                mov     cx,0FFFFh
                repe    scasb
                inc     di
                mov     al,9
                repe    scasb
                cld
                inc     di
                inc     di
loc_316::
                xor     ax,ax
                stosb
loc_317::
                pop     cx
                pop     bx
                retn
loc_318::
                or      al,80h
                stosb
                dec     cx
                jz      loc_315
                jmp     loc_305
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near
                mov     ah,10h
                cmp     al,0BFh
                je      loc_319
                inc     ah
                cmp     al,0AEh
                je      loc_319
                inc     ah
                cmp     al,0AAh
                je      loc_319
                inc     ah
                cmp     al,5Ch                  ; '\'
                je      loc_319
                retn
loc_319::
                mov     al,ah
                retn
sub_33          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near
                jcxz    loc_321

locloop_320::
                lodsb
                cmp     al,0BFh
                je      loc_322
                cmp     al,0AEh
                je      loc_322
                cmp     al,0AAh
                je      loc_322
                sub     al,13h
                jbe     loc_323
                loop    locloop_320

                retn
loc_321::
                push    ax
                push    di
                push    es
                push    ds
                pop     es
                mov     di,si
                xor     ax,ax
                mov     cx,0FFFFh
                repne   scasb
                not     cx
                pop     es
                pop     di
                pop     ax
                jmp     short locloop_320
loc_322::
                and     al,7Fh
                mov     [si-1],al
                loop    locloop_320

                retn
loc_323::
                mov     ah,5Ch                  ; '\'
                jz      loc_324
                mov     ah,0AAh
                inc     al
                jz      loc_324
                mov     ah,0AEh
                inc     al
                jz      loc_324
                mov     ah,0BFh
                inc     al
                jz      loc_324
                loop    locloop_320

                retn
loc_324::
                mov     [si-1],ah
                loop    locloop_320

                retn
sub_34          endp

                                                ;* No entry point to code
                cmp     byte ptr ds:[607h],4Bh  ; 'K'
                jne     loc_325
                mov     dl,byte ptr ds:[608h]
                mov     dh,1
                mov     bx,4
                call    sub_4
loc_325::
                push    ds
                pop     es
                mov     di,6F8h
                lds     si,dword ptr ds:[6BAh]
                pushf
                mov     ax,1600h
                call    dword ptr cs:data_184
                cmp     al,0
                je      loc_326
                cmp     byte ptr [si],27h       ; '''
                jne     loc_326
                mov     ax,8856h
                stc
                push    es
                pop     ds
                retf
loc_326::
                cmp     byte ptr [si+1],3Ah     ; ':'
                jne     loc_328
                lodsw
                cmp     byte ptr [si],3Dh       ; '='
                je      loc_327
                and     al,0DFh
                sub     al,41h                  ; 'A'
                mov     byte ptr es:[7C2h],1
                jmp     short loc_329
loc_327::
                push    es
                pop     ds
                mov     ax,8856h
                retf
loc_328::
                mov     bp,word ptr es:[694h]
                mov     al,[bp]
                mov     byte ptr es:[7C2h],0
loc_329::
                mov     byte ptr es:[796h],al
                push    di
                call    sub_32
                pop     si
                push    es
                pop     ds
                jnc     loc_330
                jmp     loc_346
loc_330::
                sub     di,6F8h
                mov     word ptr ds:[6A2h],di
                mov     di,dx
                sub     dx,si
                mov     word ptr ds:[604h],dx
                mov     si,di
                mov     dx,di
                push    es
                push    ds
                pop     es
                pop     ds
                mov     di,77Ah
                mov     cx,8
loc_331::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_334
                cmp     al,3Ah                  ; ':'
                je      loc_334
                or      al,al
                jz      loc_333
                stosb
                dec     cx
                jnz     loc_331
                mov     cl,3
loc_332::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_335
                or      al,al
                jz      loc_336
                jmp     short loc_332
loc_333::
                dec     si
loc_334::
                mov     al,20h                  ; ' '
                rep     stosb
                mov     cl,3
loc_335::
                lodsb
                or      al,al
                jz      loc_336
                stosb
                dec     cx
                jnz     loc_335
loc_336::
                mov     al,20h                  ; ' '
                rep     stosb
                push    es
                pop     ds
                mov     di,77Ah
                call    sub_37
                jnc     loc_337
                jmp     loc_343
loc_337::
                mov     bx,4
                cmp     dx,0FCh
                jne     loc_338
                mov     al,byte ptr ds:[796h]
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                cmp     word ptr es:[di+4Dh],4E57h
                je      loc_339
                jmp     loc_363
loc_338::
                cmp     dx,0FDh
                je      loc_341
                cmp     dx,0FEh
                jne     loc_340
                mov     bx,2
                mov     al,2
                call    sub_4
                jnz     loc_346
                or      cx,cx
                jnz     loc_341
                jmp     short loc_346
loc_339::
                push    bp
                push    si
                call    sub_35
                pop     si
                pop     bp
                cmp     ah,4Eh                  ; 'N'
                jne     loc_341
                mov     dh,7
                jmp     short loc_348
loc_340::
                les     di,dword ptr ds:[6BEh]
                call    sub_9
                jnz     loc_346
loc_341::
                les     di,dword ptr ds:[6BEh]
                call    sub_35
                cmp     ah,60h                  ; '`'
                jne     loc_342
                xor     ax,ax
                retf
loc_342::
                mov     di,word ptr ds:[6BEh]
                mov     al,9
                stosb
                xor     ax,ax
                stosw
                stosw
                stosb
                mov     si,6F8h
                add     si,word ptr ds:[604h]
                mov     cx,6
                rep     movsw
                movsb
                xor     ax,ax
                retf
loc_343::
                les     bx,dword ptr ds:[658h]
                add     bx,22h
loc_344::
                test    byte ptr es:[bx+5],80h
                jz      loc_345
                mov     si,77Ah
                lea     di,[bx+0Ah]
                mov     cx,8
                repe    cmpsb
                jz      loc_346
loc_345::
                les     bx,dword ptr es:[bx]
                inc     bx
                jz      loc_347
                dec     bx
                jmp     short loc_344
loc_346::
                mov     ax,8856h
                retf
loc_347::
                mov     dh,8
loc_348::
                push    ds
                pop     es
                mov     si,6F8h
                or      bp,bp
                jz      loc_351
                mov     cx,word ptr ds:[6A2h]
                mov     bx,cx
                mov     cx,bp
                sub     cx,si
                mov     al,5Ch                  ; '\'
                mov     ds:[bp],al
                mov     di,si
                repne   scasb
                jnz     loc_349
                mov     cx,di
                sub     cx,si
                sub     bx,cx
                jmp     short loc_356
loc_349::
                cmp     byte ptr es:[7C2h],1
                je      loc_350
                push    bx
                mov     bx,1
                call    sub_4
                pop     bx
                jmp     short loc_357
loc_350::
                mov     al,byte ptr ds:[796h]
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                mov     cx,es:[di+4Bh]
                jmp     short loc_357
loc_351::
                lodsw
                cmp     ax,5C5Ch
                je      loc_353
loc_352::
                jmp     loc_368
loc_353::
                mov     di,si
                xor     cx,cx
                call    sub_38
                jnc     loc_355
                test    byte ptr ds:[7C2h],0FFh
                jnz     loc_352
loc_354::
                jmp     loc_363
loc_355::
                mov     bx,cx
loc_356::
                dec     di
                xor     ax,ax
                stosb
                dec     di
                mov     cx,di
                sub     cx,si
                call    sub_6
                jnz     loc_354
                mov     al,5Ch                  ; '\'
                stosb
                mov     si,di
                xor     bp,bp
loc_357::
                push    cx
                push    dx
                push    si
                push    bp
                call    sub_35
                pop     bp
                pop     si
                pop     dx
                pop     cx
                cmp     ah,60h                  ; '`'
                je      loc_364
                cmp     ah,3Bh                  ; ';'
                jne     loc_359
                mov     al,byte ptr ds:[796h]
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                cmp     word ptr es:[di+4Dh],4E57h
                je      loc_358
                or      word ptr es:[di+43h],0C800h
loc_358::
                mov     bp,word ptr ds:[69Eh]
                mov     [bp],di
                mov     [bp+2],es
loc_359::
                les     di,dword ptr ds:[6BEh]
                xchg    dh,al
                stosb
                xchg    cx,ax
                stosw
                mov     al,0
                stosb
                mov     al,byte ptr ds:[796h]
                add     al,41h                  ; 'A'
                stosb
                mov     cx,bx
                mov     bx,di
                inc     di
loc_360::
                lodsb
                stosb
                dec     cx
                cmp     al,5Ch                  ; '\'
                je      loc_361
                or      al,al
                jnz     loc_360
                dec     si
                inc     cx
loc_361::
                dec     di
                mov     ax,5C3Ah
                stosw
loc_362::
                lodsb
                dec     cx
                cmp     al,5Ch                  ; '\'
                je      loc_362
                dec     si
                xor     dx,dx
                jmp     loc_375
loc_363::
                mov     ax,8856h
                retf
loc_364::
                les     di,dword ptr ds:[6BEh]
                mov     ax,5C5Ch
                stosw
                or      bp,bp
                jnz     loc_367
loc_365::
                mov     bp,word ptr ds:[69Eh]
                mov     word ptr [bp],0FFFFh
                mov     cx,word ptr ds:[6A2h]
                mov     si,6F8h
                call    sub_34
                mov     cx,word ptr ds:[6A2h]
                mov     si,6F8h
                lodsw
                cmp     ax,5C5Ch
                je      loc_366
                stosw
loc_366::
                rep     movsb
                dec     di
                dec     di
                std
                mov     cx,0FFFFh
                mov     al,20h                  ; ' '
                repe    scasb
                inc     di
                mov     al,9
                repe    scasb
                inc     di
                mov     al,2Eh                  ; '.'
                repe    scasb
                cld
                inc     di
                inc     di
                xor     ax,ax
                stosb
                retf
loc_367::
                call    sub_7
                jnz     loc_363
                add     di,bx
                mov     al,5Ch                  ; '\'
                stosb
                jmp     short loc_365
loc_368::
                mov     al,byte ptr ds:[796h]
                mov     dl,al
                mul     byte ptr ds:[684h]
                les     di,dword ptr ds:[65Ch]
                les     di,dword ptr es:[di]
                add     di,ax
                cmp     word ptr es:[di+4Dh],4E57h
                jne     loc_363
                push    ax
                call    sub_35
                xchg    cx,ax
                pop     ax
                jnc     loc_370
                cmp     ch,4Bh                  ; 'K'
                jne     loc_369
                xor     byte ptr ds:[606h],1
                jz      loc_369
                jmp     loc_363
loc_369::
                mov     byte ptr ds:[606h],0
loc_370::
                mov     byte ptr ds:[607h],ch
                mov     bp,word ptr ds:[69Eh]
                les     di,dword ptr ds:[6BEh]
                lds     bx,dword ptr ds:[65Ch]
                lds     bx,dword ptr [bx]
                add     bx,ax
                cmp     ch,60h                  ; '`'
                jne     loc_372
                mov     word ptr [bp],0FFFFh
                call    sub_36
                jnz     loc_ret_371
                dec     di
                jmp     short loc_373

loc_ret_371::
                retf
loc_372::
                mov     [bp],bx
                mov     [bp+2],ds
                mov     al,dh
                stosb
                mov     ax,[bx+4Bh]
                stosw
                mov     al,[bx+4Ah]
                mov     ah,dl
                add     ah,41h                  ; 'A'
                stosw
                inc     di
loc_373::
                lea     si,[bx+3]
                push    di
                push    si
                call    sub_32
                pop     bx
                pop     dx
                dec     di
                mov     al,5Ch                  ; '\'
                inc     bx
                cmp     bx,si
                je      loc_374
                stosb
loc_374::
                neg     dx
                add     dx,di
                assume  ds:seg_a
                mov     ds,cs:data_189
                mov     si,offset data_248
                xor     ch,ch
loc_375::
                lodsb
                cmp     al,5Ch                  ; '\'
                je      loc_376
                cmp     al,2Eh                  ; '.'
                je      loc_377
                stosb
                inc     dx
                or      al,al
                jnz     loc_379
                jmp     loc_390
loc_376::
                sub     di,dx
                sub     dx,dx
                jmp     short loc_375
loc_377::
                lodsb
                cmp     al,5Ch                  ; '\'
                je      loc_375
                dec     si
                or      al,al
                jz      loc_375
                cmp     al,2Eh                  ; '.'
                jne     loc_387
                mov     cx,dx
                sub     cx,1
                jbe     loc_387
                dec     di
                dec     di
                std
                mov     al,5Ch                  ; '\'
                repne   scasb
                jnz     loc_378
                inc     di
                inc     cx
loc_378::
                cld
                inc     di
                mov     dx,cx
                jmp     short loc_375
loc_379::
                mov     cl,8

locloop_380::
                lodsb
                cmp     al,20h                  ; ' '
                je      locloop_380
                stosb
                inc     dx
                cmp     al,5Ch                  ; '\'
                je      loc_375
                cmp     al,2Eh                  ; '.'
                je      loc_383
                cmp     al,0AAh
                je      loc_388
                or      al,al
                jz      loc_390
loc_381::
                loop    locloop_380

                dec     di
loc_382::
                lodsb
                or      al,al
                jz      loc_389
                cmp     al,2Eh                  ; '.'
                jne     loc_382
                stosb
                inc     dx
loc_383::
                mov     cl,3
                dec     di
                dec     dx
                lodsb
                cmp     al,5Ch                  ; '\'
                je      loc_385
                or      al,al
                jz      loc_385
                inc     di
                inc     dx
                dec     si

locloop_384::
                lodsb
                cmp     al,2Eh                  ; '.'
                je      loc_387
loc_385::
                stosb
                inc     dx
                cmp     al,5Ch                  ; '\'
                je      loc_375
                or      al,al
                jz      loc_390
                loop    locloop_384

loc_386::
                lodsb
                or      al,al
                jz      loc_389
                cmp     al,2Eh                  ; '.'
                je      loc_387
                cmp     al,5Ch                  ; '\'
                jne     loc_386
                stosb
                inc     dx
                jmp     loc_375
loc_387::
                mov     ds,cs:data_189
                mov     ax,3
                retf
loc_388::
                cmp     byte ptr [si],0
                jne     loc_381
                mov     ax,0AA2Eh
                stosw
                xor     ax,ax
                stosb
                jmp     short loc_390
loc_389::
                xor     ax,ax
                stosb
loc_390::
                cmp     byte ptr es:[di-2],5Ch  ; '\'
                jne     loc_391
                xor     ax,ax
                dec     di
                dec     di
                stosb
loc_391::
                xchg    di,ax
                mov     si,word ptr ds:[6BEh]
                cmp     word ptr es:[si],5C5Ch
                je      loc_392
                sub     ax,si
                sub     al,7
                adc     al,0
                mov     es:[si+5],al
                xor     ax,ax
                retf
loc_392::
                xor     cx,cx
                push    ds
                push    es
                pop     ds
                call    sub_34
                pop     ds
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near
                mov     bp,word ptr ds:[696h]
                mov     ax,[bp]
                or      ax,ax
                clc
                jnz     loc_ret_393
                push    ds
                lds     si,dword ptr ds:[67Ch]
                lds     si,dword ptr [si]
                mov     ax,[si]
                pop     ds
                stc

loc_ret_393::
                retn
sub_35          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    near
                push    cx
                push    dx
                push    si
                push    bp
                mov     byte ptr es:[di+7Fh],0
                mov     bp,di
                mov     cx,[bx+4Bh]
                mov     ax,5C5Ch
                stosw
                push    bx
                call    sub_7
                lea     di,[bx+di]
                pop     bx
                mov     al,5Ch                  ; '\'
                stosb
                mov     dl,[bx+4Ah]
                push    ds
                push    bx
                push    es
                push    di
                mov     ds,cs:data_189
                mov     si,offset data_273
                mov     [si],di
                mov     [si+2],es
                add     bp,7Fh
                sub     bp,di
                mov     [si+4],bp
                mov     di,offset data_274
                push    ds
                pop     es
                mov     ax,200h
                stosw
                mov     al,1
                mov     ah,dl
                stosw
                mov     si,offset data_270
                mov     word ptr [si+4],4
                mov     di,0A2Ah
                mov     al,16h
                mov     bx,1
                mov     dx,3
                call    sub_5
                pop     di
                pop     es
                jnz     loc_399
                xor     cx,cx
                assume  ds:seg_b
                mov     cl,data_254
                cmp     cl,80h
                jb      loc_394
                mov     cl,80h
loc_394::
                push    ds
                push    es
                pop     ds
                mov     si,di
                pop     ds
                mov     al,3Ah                  ; ':'
                repne   scasb
                dec     di
                mov     al,5Ch                  ; '\'
                stosb
                jcxz    loc_397
loc_395::
                push    ax
                mov     al,2Fh                  ; '/'
                repne   scasb
                pop     ax
                jcxz    loc_396
                dec     di
                stosb
                jmp     short loc_395
loc_396::
                stosb
loc_397::
                xor     ax,ax
                stosb
loc_398::
                pop     bx
                pop     ds
                pop     bp
                pop     si
                pop     dx
                pop     cx
                retn
loc_399::
                jmp     short loc_398
sub_36          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near
                cmp     byte ptr [di+4],0
                je      loc_400
                cmp     byte ptr [di+5],0
                je      loc_400
                cmp     word ptr [di+4],2020h
                je      loc_400
                push    es
                push    ds
                pop     es
                push    si
                push    cx
                mov     si,7A6h
                mov     cx,4
                repe    cmpsw
                pop     cx
                pop     si
                pop     es
                jnz     loc_405
                mov     dx,0FDh
                clc
                retn
loc_400::
                xor     dx,dx
                cmp     word ptr [di],5250h
                jne     loc_401
                cmp     word ptr [di+2],204Eh
                jne     loc_405
                jmp     short loc_402
loc_401::
                cmp     word ptr [di],504Ch
                jne     loc_403
                cmp     byte ptr [di+2],54h     ; 'T'
                jne     loc_403
                mov     dl,[di+3]
                sub     dl,31h                  ; '1'
                cmp     dl,9
                ja      loc_405
loc_402::
                clc
                retn
loc_403::
                mov     dx,0FCh
                cmp     word ptr [di],554Eh
                jne     loc_404
                cmp     word ptr [di+2],204Ch
                je      loc_402
loc_404::
                mov     dx,0FEh
                cmp     word ptr [di],454Eh
                jne     loc_405
                cmp     word ptr [di+2],5154h
                je      loc_402
loc_405::
                stc
                retn
sub_37          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near
                cld
                mov     ah,al
                push    bx
                mov     bx,di
                jcxz    loc_410
loc_406::
                inc     bx
loc_407::
                dec     cx
                js      loc_411
                mov     al,80h
                scasb
                jbe     loc_409
loc_408::
                dec     di
                mov     al,ah
                scasb
                jnz     loc_407
                clc
                pop     bx
                retn
loc_409::
                mov     al,es:[di-1]
                call    sub_20
                jnc     loc_408
                inc     di
                dec     cx
                jmp     short loc_407
loc_410::
                push    ax
                xor     al,al
                dec     cx
                repne   scasb
                not     cx
                pop     ax
                mov     di,bx
                jmp     short loc_406
loc_411::
                inc     cx
                stc
                pop     bx
                retn
sub_38          endp

                                                ;* No entry point to code
                inc     di
                daa
                mov     bx,6F27h
                daa
                db       6Fh, 27h, 1Eh, 07h,0BFh,0F2h
                db       05h,0A1h,0B4h, 06h,0B9h, 09h
                db       00h,0F2h,0AFh, 75h, 65h, 53h
                db      0BBh,0F4h, 05h,0F7h,0D3h, 43h
                db       8Dh, 11h, 5Bh,0D1h,0EAh,0BFh
                db       7Ah, 07h,0B8h, 2Dh, 00h,0BBh
                db       01h, 00h,0B9h, 04h, 00h, 52h
                db       55h,0BDh, 40h, 00h, 55h,0BDh
                db       42h, 00h, 55h,0BDh, 04h, 00h
                db       55h, 2Eh,0FFh, 1Eh,0C8h, 29h
                db       5Dh, 5Ah, 75h, 36h, 8Bh, 2Eh
                db      0C4h, 06h, 8Bh, 5Eh, 06h, 81h
                db      0EBh, 02h, 5Eh, 03h,0DBh, 2Eh
                db      0FFh,0A7h,0EFh
                db      26h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_412::
                les     di,dword ptr [di]
                mov     cx,word ptr ds:[6B6h]
                cmp     cx,es:[di]
                jb      loc_413
                mov     cx,es:[di]
loc_413::
                inc     di
                inc     di
                mov     ax,cx
                stosw
                push    ds
                lds     si,dword ptr ds:[6BAh]
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
loc_414::
                xor     ax,ax
                retf
loc_415::
                mov     ax,8856h
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_416::
                push    bx
                mov     ax,1
                mov     bx,1
                mov     cx,1
                push    dx
                call    sub_10
                pop     dx
                pop     bx
                jnz     loc_415
                xor     ax,ax
                mov     al,es:[di]
                cmp     bx,4
                je      loc_417
                and     al,40h                  ; '@'
                mov     cl,6
                shr     al,cl
                not     al
                mov     word ptr ds:[6B8h],ax
                jmp     short loc_414
loc_417::
                mov     bx,word ptr ds:[6B8h]
                and     bx,1
                mov     cl,6
                shl     bl,cl
                not     bl
                and     al,bl
                push    di
                pop     si
                mov     [si],al
                mov     ax,1
                mov     bx,0
                mov     cx,1
                call    sub_10
                jz      loc_414
                jmp     short loc_415

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_418::
                push    ds
                lds     si,dword ptr [di]
                lodsw
                lodsw
;*              cmp     ax,40h
                db       3Dh, 40h, 00h
                jc      loc_419
                mov     ax,40h
loc_419::
                mov     cx,ax
                pop     es
                push    es
                les     di,dword ptr es:[6BEh]
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                mov     word ptr ds:[6B6h],ax
                jmp     short loc_414
                                                ;* No entry point to code
                mov     ax,8856h
                retf
                                                ;* No entry point to code
                mov     ax,8856h
                retf
                                                ;* No entry point to code
                push    ds
                pop     es
                mov     si,6B2h
                mov     di,6D6h
                mov     cx,0Bh
                rep     movsw
                mov     bp,word ptr ds:[692h]
                mov     cx,[bp]
                mov     ax,0
                mov     bx,1
                call    sub_3
                mov     di,6B2h
                mov     si,6D6h
                mov     cx,0Bh
                rep     movsw
                mov     ax,8856h
                retf
                                                ;* No entry point to code
                mov     ax,0Bh
                cmp     word ptr ds:[6B4h],4E57h
                jne     loc_ret_421
                mov     bx,word ptr ds:[6BEh]
                call    sub_11
                jnz     loc_ret_421
                mov     ax,ds
                cmp     es:[di+9],ax
                jne     loc_420
                mov     cx,es:[di+7]
                mov     word ptr ds:[670h],di
                mov     word ptr ds:[672h],es
                mov     bx,word ptr ds:[6BAh]
                call    sub_11
                jnz     loc_ret_421
                mov     ax,ds
                cmp     es:[di+9],ax
                jne     loc_420
                cmp     es:[di+7],cx
                je      loc_422
loc_420::
                mov     ax,11h

loc_ret_421::
                retf
loc_422::
                mov     word ptr ds:[66Ch],di
                mov     word ptr ds:[66Eh],es
                mov     si,di
                mov     di,0A3Ch
                push    es
                push    ds
                pop     es
                pop     ds
                xor     ax,ax
                stosb
                push    si
                add     si,19h
                movsw
                movsw
                movsw
                pop     si
                push    di
                add     di,6
                mov     ax,[si+17h]
                xchg    ah,al
                stosw
                mov     ax,[si+15h]
                xchg    ah,al
                stosw
                pop     di
                lds     si,dword ptr es:[670h]
                push    si
                add     si,19h
                movsw
                movsw
                movsw
                pop     si
                add     di,4
                mov     ax,[si+17h]
                xchg    ah,al
                stosw
                mov     ax,[si+15h]
                xchg    ah,al
                stosw
                push    es
                pop     ds
                mov     ax,word ptr ds:[6B8h]
                xchg    ah,al
                stosw
                mov     ax,word ptr ds:[6B6h]
                xchg    ah,al
                stosw
                mov     di,0A3Ch
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,0Ah
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_427
                les     di,dword ptr ds:[66Ch]
                mov     ax,es:[di+15h]
                mov     cx,es:[di+17h]
                add     ax,bx
                adc     cx,dx
                mov     es:[di+15h],ax
                mov     es:[di+17h],cx
                cmp     es:[di+13h],cx
                jb      loc_423
                ja      loc_424
                cmp     es:[di+11h],ax
                ja      loc_424
loc_423::
                mov     es:[di+11h],ax
                mov     es:[di+13h],cx
loc_424::
                les     di,dword ptr ds:[670h]
                mov     ax,es:[di+15h]
                mov     cx,es:[di+17h]
                add     ax,bx
                adc     cx,dx
                mov     es:[di+15h],ax
                mov     es:[di+17h],cx
                cmp     es:[di+13h],cx
                jb      loc_425
                ja      loc_426
                cmp     es:[di+11h],ax
                ja      loc_426
loc_425::
                mov     es:[di+11h],ax
                mov     es:[di+13h],cx
loc_426::
                mov     cx,bx
                xor     ax,ax
                retf
loc_427::
                mov     ax,5
                retf
                                                ;* No entry point to code
                mov     bp,word ptr ds:[6A0h]
                mov     ax,word ptr ds:[6B4h]
;*              cmp     ax,4
                db       3Dh, 04h, 00h
                ja      loc_428
                xor     cx,cx
                mov     word ptr [bp-2],2
                jmp     short loc_429
loc_428::
                mov     cx,2
                mov     word ptr [bp-4],0
                mov     word ptr [bp-2],0
loc_429::
                push    ds
                lds     si,dword ptr ds:[67Ch]
                lds     si,dword ptr [si]
                mov     [si+4],cx
                pop     ds
                mov     ax,cx
                retf
                db      0, 0, 0, 0, 0, 0
data_184        dw      0, 0
data_186        dw      77h, seg_b
data_188        dw      27E3h                   ; Data table (indexed access)
                db      0CFh, 0Ch,0CFh
                db      0Ch, 0Ah, 0Dh, 0Ah, 0Dh, 'H', 0Dh
                db      'E'
                db       0Fh,0D9h, 0Fh,0E3h, 27h,0E3h
                db       27h, 00h, 10h,0A5h, 10h,0C0h
                db       10h,0E3h, 27h,0A2h, 11h, 23h
                db       12h,0E3h, 27h, 8Dh, 12h,0E3h
                db       27h, 6Dh, 13h,0E3h, 27h,0E3h
                db       27h, 48h, 15h,0C8h, 18h,0C8h
                db       18h, 62h, 1Ah, 2Fh, 1Ch, 86h
                db       1Ah, 2Fh, 1Ch,0FBh, 1Dh, 44h
                db       06h,0F7h, 26h, 4Fh, 1Fh, 6Ch
                db       1Fh,0E7h, 27h, 51h, 21h,0E3h
                db       27h,0DFh, 27h,0E3h, 27h, 13h
                db       28h,0E3h, 27h,0E3h, 27h,0E3h
                db       27h,0E3h, 27h,0E3h, 27h, 2Ah
                db       29h, 29h, 15h
data_189        dw      seg_b
vlm_call_ptr2   dw      0, 0
                db      0
data_192        db      0
data_193        dw      0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

                                                ;* No entry point to code
                mov     cs:data_262,bx
                mov     word ptr cs:data_262+2,es
                retf
                                                ;* No entry point to code
                push    bx
                push    ds
                lds     bx,dword ptr cs:data_262
                mov     word ptr [bx+3],90FFh
                pop     ds
                pop     bx
                retf
loc_430::
                mov     ax,ss
                cmp     ax,word ptr data_214+2
                jne     loc_431
                push    bp
                mov     bp,data_226
                mov     al,[bp+1]
                pop     bp
                cmp     al,15h
                je      loc_432
                cmp     al,14h
                je      loc_432
                cmp     al,10h
                je      loc_432
                cmp     al,28h                  ; '('
                je      loc_432
                cmp     al,22h                  ; '"'
                je      loc_432
                cmp     al,27h                  ; '''
                je      loc_432
                cmp     al,21h                  ; '!'
                je      loc_432
loc_431::
                mov     ax,1100h
                push    bp
                mov     bp,sp
                cmp     word ptr [bp+0Ch],0DADAh
                pop     bp
                jz      loc_437
                mov     ax,4EFFh
                pop     ds
                popf
                clc
                retf    2
loc_432::
                pop     data_250
                pop     ax
                pop     ax
                pop     data_251
                pop     ax
                pop     ax
                push    data_251
                push    ax
                mov     ds,data_250
                mov     ax,1100h
                clc
                retf
loc_433::
                mov     byte ptr data_259,0
                jmp     short loc_437
loc_434::
                mov     byte ptr data_259,1
                pop     ds
                call    dword ptr cs:data_208
                mov     ax,es
                push    cs
                pop     es
                mov     es:data_203,bx
                mov     es:data_204,ax
                mov     bx,630h
                iret
loc_435::
                jmp     loc_430
loc_436::
                cmp     ax,1605h
                je      loc_434
                cmp     ax,4B05h
                je      loc_434
                cmp     ax,1606h
                je      loc_433
                cmp     ax,4B04h
                je      loc_433
                cmp     ax,0D8h
                je      loc_438
loc_437::
                pop     ds
                popf
                jmp     dword ptr cs:data_208
loc_438::
                jmp     loc_451
                                                ;* No entry point to code
                xchg    bx,bx
                nop
                pushf
                push    ds
                mov     ds,cs:data_228
                cmp     ah,11h
                jne     loc_436
                cmp     al,2Eh                  ; '.'
                ja      loc_437
                cmp     byte ptr ds:data_56e,50h        ; 'P'
                je      loc_437
                or      al,al
                jz      loc_435
                inc     byte ptr ds:data_59e
                cmp     byte ptr ds:data_59e,1
                jbe     loc_441
                cmp     ax,1125h
                jne     loc_440
                dec     byte ptr ds:data_59e
                push    ax
                mov     ax,0D801h
                int     2Ah                     ; ??INT Non-standard interrupt
                cmp     byte ptr cs:data_259,0
                je      loc_439
                dec     cs:data_260
                mov     ax,1682h
                int     2Fh                     ; End critical section
loc_439::
                pop     ax
                jmp     short loc_441
loc_440::
                push    es
                push    si
                push    di
                push    cx
                push    ds
                pop     es
                mov     si,data_40e
                mov     di,data_53e
                mov     cx,0Bh
                rep     movsw
                pop     cx
                pop     di
                pop     si
                pop     es
loc_441::
                push    ax
                mov     ax,0D800h
                int     2Ah                     ; ??INT Non-standard interrupt
                cmp     byte ptr ds:data_57e,0
                je      loc_442
                mov     ax,1681h
                int     2Fh                     ; Begin critical section
                inc     byte ptr ds:data_58e
loc_442::
                pop     ax
                sti
                mov     ds:data_40e,ax
                mov     ds:data_41e,bx
                pop     bx
                mov     word ptr ds:data_44e+2,bx
                mov     ds:data_42e,cx
                mov     ds:data_43e,dx
                mov     ds:data_44e,si
                mov     ds:data_46e,di
                mov     ds:data_48e,bp
                mov     word ptr ds:data_46e+2,es
                cld
                cbw
                xchg    bx,ax
                pop     ax
                and     al,0FEh
                mov     ds:data_50e,ax
                mov     ds:data_49e,sp
                mov     bp,sp
                or      byte ptr [bp+4],1
loc_443::
                mov     ax,1A4h
                push    ax
                cmp     bl,8
                jne     loc_445
                jmp     loc_478
loc_444::
                pop     bp
                xor     ax,ax
                push    ax
                mov     ax,VLMID_REDIR
                push    ax
                mov     ax,7
                push    ax
                push    cs
                push    bp
                jmp     dword ptr vlm_call_ptr
loc_445::
                cmp     bl,9
                jne     loc_444
                jmp     loc_487
loc_446::
                push    ax
                mov     ax,word ptr data_208+2
                push    ax
                mov     ax,word ptr data_208
                push    ax
                xor     ax,ax
                nop
                jnz     loc_450
                cli
loc_447::
                mov     ax,data_241
                push    ax
                mov     bp,data_239
                mov     dx,data_235
                mov     cx,data_234
                mov     bx,data_233
                mov     ax,data_232
                les     di,data_238
                lds     si,data_236
                push    ax
                cmp     byte ptr cs:data_259,0
                je      loc_448
                dec     cs:data_260
                mov     ax,1682h
                int     2Fh                     ; End critical section
loc_448::
                mov     ax,0D801h
                int     2Ah                     ; ??INT Non-standard interrupt
                pop     ax
                dec     cs:data_261
                cmp     byte ptr cs:data_261,1
                jb      loc_449
                push    ds
                push    es
                push    si
                push    di
                push    cx
                push    cs
                push    cs
                pop     ds
                pop     es
                mov     di,offset data_232
                mov     si,offset data_244
                mov     cx,0Bh
                rep     movsw
                pop     cx
                pop     di
                pop     si
                pop     es
                pop     ds
loc_449::
                popf
                retf    2
loc_450::
                cmp     ax,8856h
                je      loc_446
                call    sub_40
                jnc     loc_447
                jmp     loc_443
loc_451::
                jmp     loc_437

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near
                push    bx
                mov     bx,2
                push    bp
                mov     bp,0
                push    bp
                mov     bp,VLMID_NETX
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pop     bx
                retn
sub_39          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near
                mov     byte ptr data_202,0
                push    ds
                pop     es
                push    cx
                cmp     ah,89h
                je      loc_455
                mov     si,0A08h
                cmp     ax,8801h
                jne     loc_452
                mov     si,offset data_269
                push    ax
                xor     ah,ah
                mov     al,[si+4]
                call    sub_39
                pop     ax
loc_452::
                cmp     ah,88h
                je      loc_453
                or      ah,ah
                jnz     loc_454
                mov     si,offset data_268
                mov     [si+2],al
                mov     [si+4],al
loc_453::
                jmp     loc_464
loc_454::
                jmp     loc_463
loc_455::
                push    ax
                xor     dx,dx
                call    sub_39
                test    dl,80h
                jnz     loc_456
                cmp     dl,1
                je      loc_456
                xor     ax,ax
                call    sub_39
loc_456::
                and     dl,7Fh
                pop     ax
                mov     data_202,dl
                mov     bp,data_226
                mov     ah,[bp+1]
                or      ah,ah
                jnz     loc_457
                push    ds
                lds     si,dword ptr data_220
                lds     si,dword ptr [si]
                mov     ah,[si+1]
                pop     ds
loc_457::
                mov     si,offset data_266
                mov     di,data_4e
                mov     cl,3Fh                  ; '?'
                mov     bx,di
                add     bx,bx
                add     bx,bx
                add     bx,bx
                add     si,bx
                shr     di,1
loc_458::
                mov     bx,di
                add     bx,bx
                add     bx,bx
                add     bx,bx
                shr     di,1
                adc     di,0
                cmp     al,[si]
                je      loc_461
                ja      loc_459
                sub     si,bx
                shr     cl,1
                jnz     loc_458
                jmp     short loc_463
loc_459::
                add     si,bx
                shr     cl,1
                jnz     loc_458
                jmp     short loc_463
loc_460::
                sub     si,8
loc_461::
                cmp     si,offset data_266
                je      loc_462
                cmp     al,[si-8]
                je      loc_460
loc_462::
                cmp     [si+1],ah
                je      loc_464
                cmp     byte ptr [si+1],0FFh
                je      loc_464
                add     si,8
                jmp     short loc_462
loc_463::
                mov     si,offset data_267
loc_464::
                pop     cx
                les     di,data_214
                mov     byte ptr es:[di+3],3
                xor     dx,dx
                mov     dl,[si+4]
                mov     es:[di+4],dx
                mov     data_242,dx
                mov     dx,[si+2]
                cmp     ah,37h                  ; '7'
                ja      loc_465
                mov     data_242,dx
loc_465::
                mov     dl,[si+5]
                mov     es:[di+6],dl
                mov     dl,[si+6]
                mov     es:[di+7],dl
                xor     dx,dx
                or      dl,[si+7]
                jz      loc_470
                cmp     byte ptr data_202,0
                jne     loc_470
                mov     di,dx
                sub     di,13h
                cmp     al,9Bh
                je      loc_471
                cmp     dl,20h                  ; ' '
                jne     loc_466
                test    byte ptr data_253,70h   ; 'p'
                jnz     loc_470
loc_466::
                mov     ah,98h
loc_467::
                push    cs
                pop     ds
                push    cs
                pop     es
                inc     data_246
                mov     bp,ds
                mov     si,data_60e
                push    si
                push    ds
                lds     si,dword ptr data_219
                lodsb
                cmp     al,8
                jne     loc_468
                dec     si
                mov     al,[si+4]
                sub     al,41h                  ; 'A'
loc_468::
                pop     ds
                pop     si
                push    ds
                push    ax
                mov     ds,word ptr data_236+2
                mov     ax,0D800h
                int     2Ah                     ; ??INT Non-standard interrupt
                mov     ax,1206h
                int     2Fh                     ; DOS Internal services
                                                ;*  undocumented function
                push    ax
                mov     ax,0D801h
                int     2Ah                     ; ??INT Non-standard interrupt
                pop     ax
                pop     bx
                pop     ds
                cmp     al,1
                jne     loc_470
                mov     si,offset data_225
                lodsb
                or      al,al
                jz      loc_469
                les     di,dword ptr data_219
                stosb
                movsb
                movsw
                movsw
loc_469::
                mov     bx,data_232
                xor     bh,bh
                stc
                retn
loc_470::
                mov     ax,data_242
                mov     data_232,ax
                or      byte ptr data_241,1
                clc
                retn
loc_471::
                mov     si,offset data_225
                cmp     byte ptr [si],0
                je      loc_470
                cmp     byte ptr [si+3],0
                je      loc_470
                mov     al,[si+4]
                sub     al,41h                  ; 'A'
                cbw
                mul     byte ptr data_221
                les     bx,data_212
                les     bx,dword ptr es:[bx]
                add     bx,ax
                cmp     word ptr es:[bx+4Dh],4E57h
                jne     loc_470
                mov     dh,es:[bx]
                mov     dl,es:[bx+4Ah]
                mov     byte ptr es:[bx+3],0
                push    di
                lea     di,[bx+43h]
                xor     ax,ax
                mov     ah,es:[bx+49h]
                stosw
                add     di,4
                mov     ax,0FFFFh
                stosw
                stosw
                stosw
                mov     ax,2
                stosw
                mov     al,es:[bx]
                sub     al,41h                  ; 'A'
                cbw
                mov     di,ax
                mov     data_201[di],ah
                dec     data_247
                xor     ax,ax
                mov     ah,es:[bx+44h]
                add     ax,ax
                rol     ax,1
                mov     bx,7
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     ah,80h
                pop     di
                jmp     loc_467
sub_40          endp

                                                ;* No entry point to code
                xchg    bx,bx
                nop
                pushf
                call    dword ptr cs:data_207
                cmp     ah,0D8h
                je      loc_472
                iret
loc_472::
                cmp     al,51h                  ; 'Q'
                je      loc_473
                cmp     al,50h                  ; 'P'
                jne     loc_ret_474
loc_473::
                mov     cs:data_258,al

loc_ret_474::
                iret
loc_475::
                mov     ax,8856h
loc_476::
                or      ax,ax
                retn
loc_477::
                xor     ax,ax
                mov     data_234,ax
                retn
                db       87h,0DBh, 90h
loc_478::
                les     si,data_238
                mov     ax,ds
                cmp     es:[si+9],ax
                jne     loc_475
                mov     al,es:[si+1Fh]
                cmp     al,0FFh
                jne     loc_477
                xor     ax,ax
                mov     cx,data_234
                jcxz    loc_476
                push    ds
                push    es
                pop     ds
                pop     es
                mov     di,offset data_274
                push    si
                add     si,19h
                movsw
                movsw
                movsw
                pop     si
                mov     ax,[si+15h]
                stosw
                mov     ax,[si+17h]
                stosw
                mov     bx,cx
                mov     cx,[si+7]
                lds     si,es:data_214
                lds     ax,dword ptr [si+0Ch]
                mov     dx,ds
                push    es
                pop     ds
                stosw
                xchg    dx,ax
                stosw
                mov     di,0A3Ch
                push    ds
                lds     si,data_211
                mov     dx,[si-0Ch]
                mov     si,[si-0Ah]
                pop     ds
loc_479::
                push    dx
                push    si
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pop     si
                pop     dx
                cmp     al,0A2h
                jne     loc_482
                dec     dx
                jbe     loc_482
                push    cx
                push    si
loc_480::
                mov     cx,0FFFFh

locloop_481::
                loop    locloop_481

                sub     si,1
                ja      loc_480
                pop     si
                pop     cx
                mov     bx,data_234
                jmp     short loc_479
loc_482::
                or      ax,ax
                jnz     loc_483
                les     si,data_238
                mov     data_234,bx
                mov     dx,[di+8]
                mov     ax,[di+6]
                mov     es:[si+15h],ax
                mov     es:[si+17h],dx
                xor     ax,ax
loc_483::
                or      ax,ax
                retn
loc_484::
                mov     ax,8856h
                or      ax,ax
                retn
loc_485::
                mov     ah,0
                xchg    dx,ax
                xor     cx,cx
                cmp     dl,0FCh
                je      loc_486
                mov     cx,data_234
                les     di,data_214
                les     di,dword ptr es:[di+0Ch]
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_483
                mov     data_234,cx
loc_486::
                xor     ax,ax
                retn
                db       87h,0DBh, 90h
loc_487::
                les     si,data_238
                mov     ax,ds
                cmp     es:[si+9],ax
                jne     loc_484
                mov     al,es:[si+1Fh]
                cmp     al,0FFh
                jne     loc_485
                push    ds
                push    es
                pop     ds
                pop     es
                mov     di,offset data_274
                xor     ax,ax
                push    si
                add     si,19h
                movsw
                movsw
                movsw
                pop     si
                mov     ax,[si+15h]
                stosw
                mov     ax,[si+17h]
                stosw
                mov     cx,[si+7]
                lds     si,es:data_214
                mov     ax,[si+0Ch]
                stosw
                mov     ax,[si+0Eh]
                stosw
                push    es
                pop     ds
                mov     bx,data_234
                mov     di,0A3Ch
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jz      loc_488
                xor     bx,bx
                cmp     al,1
                je      loc_488
                jmp     loc_483
loc_488::
                push    ax
                les     si,data_238
                and     byte ptr es:[si+5],0BFh
                xchg    data_234,bx
                mov     dx,[di+8]
                mov     ax,[di+6]
                or      bx,bx
                jz      loc_492
                mov     es:[si+15h],ax
                mov     es:[si+17h],dx
                cmp     es:[si+13h],dx
                jb      loc_489
                ja      loc_490
                cmp     es:[si+11h],ax
                ja      loc_490
loc_489::
                mov     es:[si+13h],dx
                mov     es:[si+11h],ax
loc_490::
                pop     ax
                cmp     al,1
                je      loc_491
                xor     ax,ax
loc_491::
                or      ax,ax
                retn
loc_492::
                mov     es:[si+11h],ax
                mov     es:[si+13h],dx
                jmp     short loc_490
                db      7 dup (0)
data_195        dw      0FFFFh
data_196        db      0
                db      22 dup (0)
data_198        db      0
data_199        db      0
data_200        db      0
data_201        db      0                       ; Data table (indexed access)
                db      32 dup (0)
data_202        db      0
                db      0, 0, 3, 0
data_203        dw      0
data_204        dw      0
                db      8 dup (0)
                db       42h, 06h
                dw      seg_b
                db      0F0h, 05h
                dw      seg_b
                db       1Ch, 00h
                db      0, 0, 0, 0
data_207        dd      00000h
data_208        dd      00000h
data_210        dw      0, 0
data_211        dd      00000h
data_212        dd      00000h
data_213        dd      00000h
data_214        dd      00000h
vlm_call_ptr    dw      0, 0
                db      8 dup (0)
data_218        dw      0, 0
data_219        dw      92h, 0
data_220        dw      250h, 0
                db      0, 0, 0, 0
data_221        dw      0
data_222        dw      35h
data_224        dw      0
data_225        db      0
                db       00h, 00h, 00h, 00h, 00h, 0Ch
                db       00h, 10h, 00h, 16h, 00h
data_226        dw      18h
                db       12h, 01h,0C7h, 01h, 3Ah, 02h
                db       6Ch, 02h,0DDh, 02h, 00h
                db      0, 0, 0
data_228        dw      0
data_229        dw      0
data_230        dw      0                       ; segment storage
data_231        dw      0
                db      0, 0, 0, 0
data_232        dw      0
data_233        dw      0
data_234        dw      0
data_235        dw      0
data_236        dd      00000h
data_238        dd      00000h
data_239        dw      0
data_240        dw      0
data_241        dw      0
data_242        dw      0
data_243        db      0
                db      11 dup (0)
data_244        db      0
                db      23 dup (0)
data_245        db      0Ah
                db      0
data_246        dw      0
data_247        dw      0
                db      0C4h, 07h
                dw      seg_b
data_248        db      0
                db      129 dup (0)
data_250        dw      0
data_251        dw      0
                db      23 dup (0)
data_252        db      0
                db      0
data_253        db      0
                db      0
data_254        db      0
                db      'SYS:LOGIN'
                db      0, 0, 0
                db      'P$'
                db      'I$'
                db      'P$'
                db      'E$'
                db      '.0'
data_255        dw      3030h
                db      0
data_256        db      0
data_257        db      0
                db       00h, 41h, 3Ah, 00h
data_258        db      51h
                db       50h, 41h, 54h, 48h, 3Dh
data_259        db      0
data_260        db      0
data_261        db      0
                db       00h, 01h,0FFh,0FFh,0FFh,0FFh
                db       80h, 80h, 00h, 00h, 0Bh, 00h
                db      'NETWORK '
                db      0FFh,0FFh,0FFh,0FFh, 00h, 80h
                db       00h, 00h, 0Bh, 00h
                db      'NETWORK '
data_262        dw      0, 0
                db       00h, 00h, 01h, 02h, 03h, 01h
                db       10h, 0Ch, 08h, 04h, 00h
data_264        db      2
                db      0, 1, 2
data_265        db      10h
                db       30h, 20h, 10h, 00h
data_266        db      1
                db       15h, 01h, 00h, 27h, 07h, 01h
                db       00h, 01h, 22h, 01h, 00h, 27h
                db       07h, 01h, 00h, 01h, 28h, 01h
                db       00h, 27h, 07h, 01h, 00h, 01h
                db      0FFh, 05h, 00h, 27h, 07h, 01h
                db       27h, 80h,0FFh, 05h, 00h, 20h
                db       02h, 0Ah, 20h, 81h,0FFh, 02h
                db       00h, 04h, 02h, 01h, 1Fh, 82h
                db      0FFh, 02h, 00h, 05h, 03h, 03h
                db       00h, 83h,0FFh, 05h, 00h, 17h
                db       04h, 0Bh, 17h, 84h, 5Ah, 05h
                db       00h, 41h, 03h, 03h, 00h, 84h
                db      0FFh, 05h, 00h, 05h, 03h, 03h
                db       00h, 85h, 5Ah, 05h, 00h, 41h
                db       03h, 03h, 00h, 85h,0FFh, 05h
                db       00h, 05h, 03h, 0Ch, 00h, 86h
                db      0FFh, 05h, 00h, 05h, 03h, 0Ch
                db       00h, 87h,0FFh, 03h, 00h, 03h
                db       03h, 09h, 00h, 88h,0FFh, 06h
                db       00h, 06h, 04h, 07h, 00h, 89h
                db      0FFh, 12h, 00h, 05h, 03h, 03h
                db       00h, 8Ah,0FFh, 05h, 00h, 05h
                db       03h, 03h, 00h, 8Bh,0FFh, 02h
                db       00h, 05h, 03h, 03h, 00h, 8Ch
                db      0FFh, 05h, 00h, 05h, 03h, 03h
                db       00h, 8Dh,0FFh, 02h, 00h, 20h
                db       06h, 03h, 00h, 8Eh, 13h, 05h
                db       00h, 20h, 06h, 03h, 00h, 8Eh
                db       17h, 05h, 00h, 20h, 02h, 0Ah
                db       21h, 8Eh, 56h, 05h, 00h, 20h
                db       02h, 0Ah, 21h, 8Eh,0FFh, 02h
                db       00h, 20h, 06h, 03h, 00h, 8Fh
                db      0FFh, 05h, 00h, 05h, 06h, 03h
                db       00h, 90h,0FFh, 05h, 00h, 05h
                db       06h, 03h, 00h, 91h,0FFh, 05h
                db       00h, 05h, 06h, 0Ch, 00h, 92h
                db       56h, 05h, 00h, 05h, 06h, 0Ch
                db       00h, 92h,0FFh, 02h, 00h, 05h
                db       06h, 0Ch, 00h, 93h,0FFh, 05h
                db       00h, 05h, 03h, 03h, 00h, 94h
                db      0FFh, 05h, 00h, 05h, 03h, 03h
                db       00h, 95h,0FFh, 05h, 00h, 37h
                db       04h, 07h, 00h, 96h,0FFh, 08h
                db       00h, 1Fh, 04h, 01h, 1Fh, 97h
                db      0FFh,0FFh, 00h, 3Eh, 06h, 01h
                db       00h, 98h,0FFh, 03h, 00h, 03h
                db       03h, 08h, 00h, 99h,0FFh, 05h
                db       00h, 08h, 04h, 01h, 00h, 9Ah
                db      0FFh, 11h, 00h, 11h, 03h, 07h
                db       00h, 9Bh, 56h, 11h, 00h, 47h
                db       04h, 04h, 1Fh, 9Bh,0FFh, 0Fh
                db       00h, 47h, 04h, 04h, 1Fh, 9Ch
                db      0FFh, 03h, 00h, 03h, 03h, 09h
                db       00h, 9Dh,0FFh, 0Fh, 00h, 37h
                db       04h, 01h, 1Fh, 9Eh,0FFh, 05h
                db       00h, 0Bh, 03h, 07h, 00h, 9Fh
                db      0FFh, 05h, 00h, 10h, 06h, 07h
                db       00h,0A0h,0FFh, 05h, 00h, 05h
                db       06h, 07h, 00h,0A1h,0FFh, 05h
                db       00h, 1Fh, 04h, 0Bh, 1Fh,0A2h
                db      0FFh, 05h, 00h, 21h, 02h, 0Ah
                db       00h,0E9h,0FFh, 05h, 00h, 50h
                db       03h, 0Ch, 00h,0FBh,0FFh, 05h
                db       00h, 1Fh, 04h, 05h, 1Fh,0FDh
                db       5Ch, 05h, 00h, 21h, 02h, 02h
                db       00h,0FDh,0FFh, 05h, 00h, 01h
                db       02h, 02h, 00h,0FEh, 5Ch, 05h
                db       00h, 21h, 02h, 02h, 00h,0FEh
                db      0FFh, 05h, 00h, 21h, 02h, 02h
                db       00h,0FFh, 11h, 12h, 00h, 12h
                db       03h, 08h, 00h,0FFh, 12h, 12h
                db       00h, 12h, 03h, 08h, 00h,0FFh
                db       4Eh, 12h, 00h, 12h, 03h, 08h
                db       00h,0FFh, 4Fh, 12h, 00h, 12h
                db       03h, 08h, 00h,0FFh, 3Ch, 05h
                db       00h, 05h, 02h, 02h, 00h,0FFh
                db       5Ah, 05h, 00h, 05h, 02h, 02h
                db       00h,0FFh, 5Bh, 05h, 00h, 05h
                db       02h, 02h, 00h,0FFh, 39h, 05h
                db       00h, 05h, 02h, 02h, 00h,0FFh
                db       00h, 12h, 00h, 12h, 03h, 08h
                db       00h,0FFh, 5Ch, 21h, 00h, 21h
                db       02h, 02h, 00h,0FFh,0FFh, 02h
                db       00h, 02h, 03h, 08h, 00h
data_267        db      0
                db      0FFh, 01h, 00h, 01h, 06h, 04h
                db       00h
data_268        db      0
                db      0FFh, 00h, 00h, 00h, 06h, 04h
                db       00h, 00h,0FFh, 05h, 00h, 05h
                db       02h, 02h, 00h
data_269        db      0
                db      0FFh, 06h, 00h, 58h, 02h, 02h
                db       00h
data_270        db      3Ch
                db      0Ah
                dw      seg_b
                db      14 dup (0)
                db       99h, 07h
                dw      seg_b
                db      1
                db      0
data_273        db      0
                db       00h, 00h, 00h, 00h, 00h, 5Eh
                db       0Ah
                dw      seg_b
                db       28h, 00h
data_274        dw      42 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_283,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_281,bx
                mov     word ptr data_281+2,es
                pop     bp
                or      bp,bp
                jnz     loc_495
                jmp     loc_498
loc_493::
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,41Bh
                push    cs
                pop     ds
                call    dword ptr cs:data_281
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                push    bx
                push    cs
                mov     ax,41Bh
                push    ax
                push    cs
                push    bx
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_281
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,41Bh
                push    ax
                push    cs
                push    bx
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_281
                add     sp,0Ah
                pop     bx
loc_494::
                mov     ax,0FFFFh
                xor     cx,cx
                xor     dx,dx
                retf
loc_495::
                mov     bx,0
                mov     dx,43h
                call    dword ptr data_281
                or      ax,ax
                jz      loc_496
                mov     bx,421h
                jmp     short loc_493
loc_496::
                mov     bx,0
                mov     dx,41h
                call    dword ptr data_281
                or      ax,ax
                jz      loc_497
                mov     bx,429h
                jmp     loc_493
loc_497::
                call    sub_41
                call    sub_44
                jmp     loc_507
loc_498::
                push    bx
                push    ds
                mov     ax,43Ah
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_281
                add     sp,4
                pop     bx
                call    sub_41
                mov     ax,seg_a
                mov     es,ax
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
                mov     vlm_call_ptr3,bx
                mov     word ptr vlm_call_ptr3+2,ax
                mov     ax,data_283
                or      ax,ax
                jz      loc_499
                mov     es:data_189,ax
                push    es
                mov     cx,seg seg_b
                mov     es,cx
                mov     es:data_228,ax
                pop     es
loc_499::
                mov     ax,7A20h
                mov     bx,2
                push    es
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     data_277,bx
                mov     data_278,ax
                mov     ax,3000h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                xchg    ah,al
                mov     data_284,ax
                mov     bx,seg seg_b
                mov     es,bx
                mov     es:data_224,ax
                mov     dx,data_283
                or      dx,dx
                jz      loc_502
                mov     si,offset data_290
                mov     cx,data_291
                jcxz    loc_501

locloop_500::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_500

loc_501::
                mov     es,dx
                mov     ax,seg_b
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,seg_c
                sub     ax,seg_b
                mov     cl,3
                shl     ax,cl
                mov     cx,ax
                rep     movsw
loc_502::
                push    es
                pop     ds
                mov     ax,seg_c
                mov     es,ax
                cmp     byte ptr es:data_295,0
                je      loc_503
                mov     byte ptr ds:data_55e,6
loc_503::
                mov     ah,52h
                int     21h                     ; DOS Services  ah=function 52h
                                                ;  get DOS data table ptr es:bx
                                                ;*  undocumented function
                mov     ds:data_13e,bx
                mov     ds:data_14e,es
                mov     ax,es:[bx+4]
                mov     ds:data_17e,ax
                mov     ax,es:[bx+6]
                mov     ds:data_18e,ax
                mov     al,es:[bx+21h]
                mov     ds:data_54e,al
                lea     di,[bx+16h]
                mov     ds:data_15e,di
                mov     ds:data_16e,es
                les     di,dword ptr es:[bx+16h]
                mov     si,di
                add     di,2
                mov     al,3Ah                  ; ':'
                mov     cx,60h
loc_504::
                repne   scasb
                jz      loc_505
                jmp     loc_494
loc_505::
                cmp     byte ptr es:[di],5Ch    ; '\'
                jne     loc_504
                lea     cx,[di-2]
                sub     cx,si
                mov     ds:data_26e,cx
                push    ds
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     ax,ds
                pop     ds
                mov     ds:data_19e,si
                mov     ds:data_20e,ax
                mov     ds:data_23e,ax
                mov     ds:data_25e,ax
                mov     ax,352Ah
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds:data_7e,bx
                mov     ds:data_8e,es
                mov     ax,252Ah
;*              mov     dx,offset loc_2         ;*
                db      0BAh, 34h, 04h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,3521h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds:data_11e,bx
                mov     ds:data_12e,es
                mov     ax,352Fh
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds:data_9e,bx
                mov     ds:data_10e,es
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     word ptr data_184,bx
                mov     word ptr data_184+2,es
                pop     ax
                mov     word ptr data_186+2,ax
                mov     ds,ax
                mov     ax,252Fh
;*              mov     dx,offset loc_1         ;*
                db      0BAh,0C4h, 00h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,ds:data_19e
                cmp     byte ptr cs:data_284+1,3
                je      loc_506
                mov     word ptr ds:data_32e,1Ah
                mov     word ptr ds:data_22e,9Eh
                mov     word ptr ds:data_24e,264h
                mov     word ptr ds:data_33e,11Eh
                mov     word ptr ds:data_34e,1D3h
                mov     word ptr ds:data_35e,24Dh
                mov     word ptr ds:data_36e,282h
                add     ds:data_37e,ax
                mov     word ptr ds:data_27e,3Bh
loc_506::
                add     ds:data_29e,ax
                add     ds:data_30e,ax
                add     ds:data_31e,ax
                add     ds:data_32e,ax
                add     ds:data_33e,ax
                add     ds:data_35e,ax
                add     ds:data_36e,ax
                add     ds:data_24e,ax
                add     ds:data_22e,ax
                mov     ax,ds:data_22e
                mov     cl,4
                shr     ax,cl
                add     ax,ds:data_23e
                mov     ds:data_38e,ax
                mov     bx,0
                push    bp
                mov     bp,VLMID_REDIR
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr3
                pop     bp
                mov     ds:data_39e,dx
                push    ds
                pop     es
                call    sub_42
                call    sub_43
loc_507::
                mov     ax,seg_c
                mov     ds,ax
                mov     bx,40h
                mov     si,seg_a+399h
                sub     si,seg_c
                mov     cx,seg seg_c
                sub     cx,seg_b
                mov     dx,seg seg_b
                sub     dx,seg_a
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    near
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
                assume  ds:seg_c
                mov     data_293,bx
                mov     word ptr data_293+2,es
                mov     cx,5
                mov     si,506h
                mov     di,405h
                push    ds
                pop     es
                call    dword ptr data_293
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
sub_41          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near
                mov     ax,seg_c
                mov     es,ax
                cmp     byte ptr ds:data_28e,4
                jb      loc_508
                mov     di,offset data_286
                mov     cx,0Bh
                mov     dx,0FFFFh
                mov     bx,dx
                mov     ax,6507h
                int     21h                     ; DOS Services  ah=function 65h
                                                ;  get DBCS vector, bx=code page
                                                ;   cx=size, dx=ID, es:di=ptr
                jc      loc_508
                mov     ax,ds
                lds     si,es:data_287
                mov     es,ax
                jmp     short loc_509
loc_508::
                push    ds
                mov     ax,6300h
                int     21h                     ; DOS Services  ah=function 63h
                                                ;  get lead byte table ptr ds:si
                                                ;   bx,cx,dx,bp,di,es destroyed
                pop     es
                jc      loc_512
loc_509::
                mov     di,data_52e
                mov     cx,5
                xor     dx,dx
                lodsw

locloop_510::
                lodsw
                stosw
                or      ax,ax
                jz      loc_511
                inc     dx
                loop    locloop_510

loc_511::
                mov     es:data_51e,dx
loc_512::
                push    es
                pop     ds
                retn
sub_42          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near
                mov     bx,data_61e
                mov     word ptr [bx+12h],0C95h
                mov     word ptr [bx+14h],seg_a
                mov     dx,bx
                mov     ax,3800h
                int     21h                     ; DOS Services  ah=function 38h
                                                ;  get/set country code info
                                                ;   ds:dx=ptr for returned info
                                                ;   dx=-1 to set bx country code
                push    ds
                pop     es
                mov     di,data_21e
                xchg    bx,dx
                mov     ax,[bx+12h]
                stosw
                mov     ax,[bx+14h]
                stosw
                cmp     dx,51h
                je      loc_513
                retn
loc_513::
                push    cs
                pop     ds
                mov     si,487h
                jmp     short loc_509
sub_43          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near
                cmp     byte ptr data_296,0
                je      loc_ret_514
                mov     bx,5
                call    dword ptr data_281

loc_ret_514::
                retn
sub_44          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


redir           proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      8 dup (0)
data_277        dw      0
data_278        dw      0
vlm_call_ptr3   dw      0, 0
data_281        dw      0, 0
data_283        dw      0
data_284        dw      0
data_286        db      0
data_287        dd      00000h
                db      'NETWARE DOS REQUESTER', 0
                db      'REDIR', 0
                db      'GENERAL', 0
                db      'FIO', 0
                db      'VeRsIoN=1.21', 0
                db      'REDIR.VLM    - NetWare '
                db      'DOS redire'
                db      'ctor module  v1.21 (960514)', 0Dh
                db      0Ah
                db      0
data_290        db      1Ah
                db       0Ah, 2Ch, 0Ah, 38h, 0Ah, 40h
                db       06h, 44h, 06h,0F6h, 06h
data_291        dw      6
                db       02h, 00h, 81h, 9Fh,0E0h,0FCh
                db      0, 0
data_293        dw      0, 0
data_295        db      0
data_296        db      0
                db      'SHOW DOTS'
                db       00h, 93h, 04h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh
                db      'READ ONLY COMPATIBILITY'
                db       00h,0B5h, 07h
                dw      seg_b
                db       00h, 00h,0FFh,0FFh
                db      'LOAD LOW REDIR'
                db       00h, 94h, 04h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh, 45h, 4Fh
                db       4Ah, 00h,0C3h, 07h
                dw      seg_b
                db      1, 0, 1, 0
                db      'FIRST NETWORK DRIVE'
                db       00h,0CCh, 29h
                dw      seg_a
                db       01h, 00h, 01h, 00h, 95h, 04h
                db       0Ah, 01h, 04h, 00h, 9Fh, 04h
                db      0A7h, 04h, 18h, 01h, 04h, 00h
                db      0BFh, 04h,0C7h, 04h, 0Fh, 00h
                db       04h, 00h,0D6h, 04h,0DEh, 04h
                db       04h, 01h, 04h, 00h,0E2h, 04h
                db      0EAh, 04h, 14h, 00h, 06h, 00h
                db      0FEh, 04h

redir           endp

seg_c           ends



                end     start
