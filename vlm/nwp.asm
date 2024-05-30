; The following equates show data references outside the range of the program.

data_1e         equ     0Eh
data_2e         equ     24h
data_3e         equ     26h
data_4e         equ     40h
data_5e         equ     42h
data_6e         equ     58h
data_7e         equ     5Ah
data_8e         equ     3BCh
data_9e         equ     3BEh
keybd_q_head_   equ     41Ah
keybd_q_tail_   equ     41Ch
data_10e        equ     0B00h                   ;*
prn_scrn_stat   equ     0
data_11e        equ     0BCh                    ;*
data_12e        equ     0BEh                    ;*
data_33e        equ     0AE0h                   ;*
data_34e        equ     0AE2h                   ;*
data_35e        equ     0AE3h                   ;*
data_36e        equ     0AE4h                   ;*
data_37e        equ     0AE5h                   ;*
data_38e        equ     0AE6h                   ;*
data_39e        equ     0AF6h                   ;*
data_40e        equ     0AF8h                   ;*
data_42e        equ     0AFCh                   ;*
data_43e        equ     0AFEh                   ;*
data_44e        equ     0B00h                   ;*
data_45e        equ     0B08h                   ;*
data_46e        equ     0B0Eh                   ;*
data_47e        equ     0B10h                   ;*
data_48e        equ     0B12h                   ;*
data_49e        equ     0B14h                   ;*
data_50e        equ     0B20h                   ;*
data_51e        equ     0B21h                   ;*
data_52e        equ     0B22h                   ;*
data_53e        equ     0B23h                   ;*
data_54e        equ     0B24h                   ;*
data_55e        equ     0B25h                   ;*
data_56e        equ     0B26h                   ;*
data_57e        equ     0B28h                   ;*
data_58e        equ     0B2Ah                   ;*
data_59e        equ     0B2Ch                   ;*
data_60e        equ     0B2Eh                   ;*
data_61e        equ     0B30h                   ;*
data_62e        equ     0B32h                   ;*
data_63e        equ     0B34h                   ;*
data_64e        equ     0B36h                   ;*
data_65e        equ     0B3Bh                   ;*
data_66e        equ     55CBh                   ;*

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                                                ;* No entry point to code
                dw      0, seg_d
                db      0DCh, 00h
                dw      seg_a
                db      0B1h, 08h
                dw      seg_a
                db      0F5h, 00h
                dw      seg_a
                db       4Ch, 01h
                dw      seg_a
                db       4Ch, 01h
                dw      seg_a
                db       4Ch, 01h
                dw      seg_a
                db       3Ah, 06h
                dw      seg_a
                db       4Ch, 01h
                dw      seg_a
                db      0E9h, 05h
                dw      seg_a
                db      0FEh, 02h
                dw      seg_a
                db       6Bh, 08h
                dw      seg_a
                db       7Fh, 08h
                dw      seg_a
                db       93h, 08h
                dw      seg_a
                db       49h, 05h
                dw      seg_a
                db       4Ch, 01h
                dw      seg_a
                db      0EAh, 07h
                dw      seg_a
                db       00h, 00h, 00h, 00h, 4Eh, 56h
                db       6Ch, 6Dh, 30h, 00h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retn
sub_7           endp

data_13         dw      offset loc_5            ; Data table (indexed access)
                db       83h,0FBh, 01h, 72h, 04h,0B8h
                db       11h, 88h,0CBh,0D1h,0E3h, 2Eh
                db      0FFh,0A7h,0DAh, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf
                                                ;* No entry point to code
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,data_33e
                cmp     cx,[si]
                jbe     loc_6
                mov     cx,[si]
loc_6::
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                pop     di
                pop     si
                pop     cx
                mov     ax,0
                retf
loc_7::
                push    ax
                push    ds
                mov     ax,seg_b
                mov     ds,ax
                assume  ds:seg_b
                mov     byte ptr data_70,1
                push    bx
                push    di
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     es,ds:data_39e
                xor     bx,bx
                mov     di,3CEh
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                pop     es
                pop     di
                pop     bx
                pop     ds
                pop     ax
                cmp     byte ptr cs:data_49e,0
                je      loc_7
                push    bp
                mov     bp,sp
                sub     sp,12h
                push    ax
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                pop     word ptr [bp-0Ch]
                pop     ax
                mov     [bp-4],ax
                mov     [bp-6],bx
                mov     [bp-0Ah],dx
                mov     bx,[bp]
                mov     ax,ss:[bx+6]
                mov     [bp-2],ax
;*              cmp     ax,0Fh
                db       3Dh, 0Fh, 00h
                jz      loc_8
                mov     bh,1
                call    sub_1
                jz      loc_8
                mov     bx,[bp-6]
                mov     ds,[bp-0Ch]
                jmp     short loc_11
loc_8::
                or      dx,dx
                jnz     loc_9
                jmp     short loc_16
loc_9::
                mov     ax,30h
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:data_40e
                jz      loc_10
                cmp     ax,8855h
                jne     loc_11
                mov     ax,8847h
                jmp     short loc_11
loc_10::
                cmp     word ptr [bp-2],8
                jne     loc_11
                push    bx
                mov     bx,4
                call    sub_6
                pop     bx
loc_11::
                add     sp,12h
                pop     bp
                retf
loc_12::
                add     sp,4
                jmp     short loc_10
loc_13::
                cmp     word ptr [bp-2],0Fh
                jne     loc_14
                cmp     word ptr [bp-6],2
                jne     loc_14
                mov     word ptr [bp-0Eh],0
                jmp     short loc_21
loc_14::
                mov     ax,[bp-0Eh]
loc_15::
                mov     bx,[bp-10h]
                mov     dx,[bp-12h]
                mov     ds,[bp-0Ch]
                jmp     short loc_11
loc_16::
                mov     bx,data_44e
                mov     dx,[bx]
loc_17::
                cmp     word ptr [bp-2],0Fh
                je      loc_19
                push    bx
                mov     bh,1
                call    sub_5
                pop     bx
                jnz     loc_15
loc_19::
                or      dx,dx
                jz      loc_13
                push    bx
                push    ds
                mov     ax,30h
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:data_40e
                or      al,al
                jnz     loc_20
                jmp     short loc_12
loc_20::
                pop     ds
                mov     [bp-0Eh],ax
                mov     [bp-10h],bx
                mov     [bp-12h],dx
                pop     bx
                cmp     ax,8855h
                je      loc_21
                inc     bx
                inc     bx
                mov     dx,[bx]
                jmp     short loc_17
loc_21::
                xor     cx,cx
                mov     bx,100h
                mov     dx,[bp-0Ah]
                or      dx,dx
                jnz     loc_22
                mov     bl,40h                  ; '@'
loc_22::
                call    sub_2
                jnz     loc_24
loc_23::
                mov     [bp-8],cx
                jmp     short loc_14
loc_24::
                push    ax
                mov     bx,0
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,31h
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jz      loc_25
                mov     bx,0
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,32h
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jz      loc_25
                pop     ax
                jmp     loc_15
loc_25::
                pop     ax
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jz      loc_26
                jmp     loc_15
loc_26::
                mov     bx,data_10e
                mov     dx,[bx]
loc_27::
                cmp     dx,33h
                je      loc_28
                push    bx
                mov     bh,1
                call    sub_5
                pop     bx
                mov     dl,6
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jz      loc_23
loc_28::
                inc     bx
                inc     bx
                mov     dx,[bx]
                or      dx,dx
                jnz     loc_27
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                mov     ax,8847h
                jmp     loc_15
data_14         dw      offset loc_30           ; Data table (indexed access)
data_15         dw      offset loc_30
data_16         dw      offset loc_33
data_17         dw      offset loc_44
data_18         dw      offset loc_46
data_19         dw      offset loc_49
data_20         dw      203h
data_21         dw      offset loc_29
                db       83h,0FBh, 06h, 72h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                add     al,0B8h
                adc     ds:data_66e[bx+si],cx
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
                add     bx,bx
                assume  ds:seg_a
                jmp     word ptr cs:data_14[bx] ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_30::
                mov     ax,8811h
loc_31::
                mov     [bp-2],ax
loc_32::
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

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_33::
                cmp     dl,5
                je      loc_37
                jbe     loc_34
                jmp     loc_41
loc_34::
                cmp     dl,4
                je      loc_36
                mov     ax,seg_a
                mov     ds,ax
                mov     es,ds:data_39e
                mov     es:data_92,dl
                mov     al,dl
                mov     bx,offset data_20
                xlat
                push    es
                pop     ds
                assume  ds:seg_c
                mov     data_108,al
                mov     si,48Ch
                mov     bx,1
                xor     dx,dx
                mov     ax,0FF15h
                jcxz    loc_35
                call    sub_3
                jz      loc_36
                jmp     short loc_31
loc_35::
                callf   sub_8
                or      ax,ax
                jz      loc_36
                jmp     short loc_31
loc_36::
                mov     es,cs:data_39e
                mov     dl,es:data_92
                mov     [bp-6],dl
                jmp     short loc_40
loc_37::
                mov     ds,cs:data_39e
                mov     ax,cx
                or      ax,si
                jz      loc_38
                mov     ax,data_85
                or      ax,word ptr data_85+2
                jnz     loc_39
                mov     ax,352Fh
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     data_85,bx
                mov     word ptr data_85+2,es
                mov     dx,offset int_2Fh_entry
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                jmp     short loc_39
loc_38::
                mov     es,ax
                cmp     word ptr es:data_11e,154h
                jne     loc_39
                mov     bx,ds
                cmp     es:data_12e,bx
                jne     loc_39
                push    ds
                lds     dx,dword ptr data_85
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                xor     ax,ax
                mov     data_85,ax
                mov     word ptr data_85+2,ax
loc_39::
                mov     data_87,si
                mov     word ptr data_87+2,cx
loc_40::
                xor     ax,ax
                jmp     loc_31
loc_41::
                cmp     dl,7
                ja      loc_36
                jz      loc_42
                mov     cx,cs:data_47e
                jmp     short loc_43
loc_42::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                xchg    ds:data_47e,cx
                pop     ds
loc_43::
                mov     [bp-4],cx
                jmp     short loc_40

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_44::
                mov     ds,cs:data_39e
                push    dx
                mov     bh,1
                call    sub_1
                pop     dx
                mov     ax,[bp-2]
                mov     data_115,ax
                mov     data_116,dl
                mov     data_119,es
                mov     data_118,di
                mov     data_120,dx
                add     dx,4
                xchg    dl,dh
                mov     data_114,dx
                mov     si,4DCh
                mov     di,4E8h
                push    ds
                pop     es
                mov     bx,2
                mov     dx,1
                mov     ax,17h
                call    sub_3
                jnz     loc_45
                mov     dx,data_111
                mov     bx,data_112
                mov     [bp-8],bx
                mov     [bp-6],dx
loc_45::
                jmp     loc_31

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                mov     ds,cs:data_39e
                mov     data_121,dx
                mov     data_122,si
                mov     si,4F5h
                mov     di,4FBh
                push    ds
                pop     es
                mov     bx,1
                mov     dx,bx
                mov     al,17h
                call    sub_3
                jnz     loc_48

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_47::
                lds     si,dword ptr [di]
                add     si,6
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                push    cx
                mov     cx,18h
                rep     movsw
                pop     cx
                xor     ax,ax
loc_48::
                jmp     loc_31

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_49::
                mov     ax,seg_a
                mov     ds,ax
                call    sub_11
                jz      loc_50
                jmp     loc_54
loc_50::
                cmp     cx,0FFFFh
                jne     loc_51
                mov     es,ds:data_39e
                mov     di,450h
                mov     bx,1
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jmp     short loc_52
loc_51::
                push    ds
                mov     es,ds:data_39e
                mov     byte ptr es:data_108,1
                push    es
                pop     ds
                mov     si,48Ch
                mov     di,492h
                mov     bx,1
                mov     dx,bx
                mov     al,15h
                call    sub_3
                pop     ds
                jnz     loc_53
loc_52::
                test    byte ptr es:data_109,0FFh
                jz      loc_53
                cmp     byte ptr es:data_92,2
                je      loc_53
                mov     byte ptr ds:data_51e,70h        ; 'p'
                call    sub_14
                push    dx
                call    sub_12
                xor     dx,dx
                call    sub_14
                mov     si,data_64e
                call    sub_15
                push    ds
                mov     ds,ds:data_39e
                mov     si,451h
                mov     bl,data_109
                xor     bh,bh
                mov     byte ptr [bx+si],0
                call    sub_15
                pop     ds
                mov     si,data_65e
                mov     byte ptr ds:data_54e,0
                call    sub_15
                mov     byte ptr ds:data_54e,0FFh
                call    sub_17
                mov     cx,0FFFFh
                mov     dx,1C0Ah
                call    sub_20
                call    sub_13
                mov     byte ptr ds:data_54e,0FFh
                pop     dx
                call    sub_14
                call    sub_21
loc_53::
                mov     word ptr [bp-4],0
loc_54::
                jmp     loc_32

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    far

LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                or      bx,bx
                jz      loc_55
                push    word ptr [si+4]
loc_55::
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],bx
                mov     [bp+LOCAL_3],dx
                mov     word ptr [bp+LOCAL_4],0
                mov     byte ptr [bp+LOCAL_5],1
                mov     word ptr [bp+LOCAL_6],0
loc_56::
                mov     dx,[bp+LOCAL_4]
                add     dl,[bp+LOCAL_5]
                mov     [bp+LOCAL_4],dx
                xor     cx,cx
                mov     bx,0E00h
                call    sub_2
                jnz     loc_57
                mov     ax,[bp+LOCAL_1]
                mov     bx,[bp+LOCAL_2]
                mov     dx,[bp+LOCAL_3]
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jnz     loc_59
                jmp     short loc_56
loc_57::
                cmp     word ptr [bp+LOCAL_2],0
                je      loc_58
                pop     word ptr [si+4]
loc_58::
                mov     ax,[bp+LOCAL_6]
                add     sp,0Ch
                pop     bp
                retf
loc_59::
                cmp     ax,8809h
                je      loc_56
                cmp     ax,89FBh
                je      loc_56
                cmp     byte ptr [bp+LOCAL_5],0FFh
                je      loc_56
                mov     [bp+LOCAL_6],ax
                mov     ax,[bp+LOCAL_1]
                cmp     ah,0FFh
                je      loc_60
                xchg    ah,al
                mov     [bp+LOCAL_1],ax
                mov     byte ptr [bp+LOCAL_2],1
                mov     word ptr [si+4],1
                push    si
                push    ds
                lds     si,dword ptr [si]
                mov     byte ptr [si],1
                pop     ds
                pop     si
                mov     byte ptr [bp+LOCAL_5],0FFh
loc_60::
                jmp     short loc_56
sub_8           endp

                                                ;* No entry point to code
                push    bx
                push    dx
                mov     bx,0Bh
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,42h
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                mov     al,19h
                xor     dx,dx
                mov     bx,dx
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jnz     loc_61
                mov     bh,3
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                mov     bx,5
                call    sub_6
loc_61::
                pop     dx
                pop     bx
                retf
loc_62::
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    ds
                push    es
                mov     bh,7
                call    sub_5
                jz      loc_63
                jmp     loc_76
loc_63::
                xor     bx,bx
                call    sub_4
                mov     ds,cs:data_39e
                push    ds
                pop     es
                push    dx
                push    bx
                xchg    bh,bl
                mov     data_101,bx
                mov     bh,14h
                call    sub_1
                and     dl,0Fh
                or      dl,cs:data_36e
                mov     bp,2
loc_64::
                mov     bx,3
                call    sub_4
                or      bl,bl
                jnz     loc_65
                and     dl,0FEh
loc_65::
                cmp     byte ptr cs:data_34e,0
                jne     loc_66
                or      dl,80h
loc_66::
                mov     data_102,dl
                mov     si,offset data_106
                mov     di,offset data_107
                mov     word ptr [si+4],3
                mov     word ptr [di+4],5
                mov     al,61h                  ; 'a'
                mov     bx,1
                mov     dx,bx
                call    sub_3
                jz      loc_68
                jmp     loc_73
loc_67::
                jmp     loc_74
loc_68::
                cmp     data_103,ax
                je      loc_67
                pop     bx
                pop     dx
                push    dx
                push    bx
                mov     ax,data_103
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                push    ds
                mov     ds,cx
                mov     ds:data_1e,ax
                pop     ds
                mov     dl,data_102
                mov     dh,dl
                not     dl
                and     dl,data_105
                jz      loc_70
                and     dl,cs:data_35e
                jz      loc_70
                test    byte ptr data_102,1
                jz      loc_69
                test    byte ptr data_105,1
                jz      loc_69
                push    dx
                mov     bh,14h
                mov     dl,1
                call    sub_5
                pop     dx
loc_69::
                or      dl,dh
                dec     bp
                jz      loc_74
                jmp     loc_64
loc_70::
                mov     bh,14h
                call    sub_1
                mov     dh,dl
                and     dh,0F0h
                mov     bh,14h
                mov     dl,data_105
                and     dl,cs:data_35e
                or      dl,dh
                call    sub_5
                mov     dx,data_104
                mov     bh,13h
                call    sub_5
                or      dx,dx
                jz      loc_74
                cmp     byte ptr cs:data_34e,0
                je      loc_74
                test    byte ptr data_105,80h
                jnz     loc_74
                mov     bx,1
                call    sub_4
                jnz     loc_74
                mov     bh,17h
                call    sub_5
                call    sub_9
                pop     ax
                pop     dx
                push    ds
                mov     ds,cx
                mov     bx,ds:data_1e
                pop     ds
                mov     ax,es:data_103
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                xchg    dx,ax
                cmp     dx,bx
                jb      loc_72
                mov     dx,bx
loc_72::
                mov     bh,0Bh
                call    sub_5
                jmp     short loc_76
loc_73::
                xor     dx,dx
                mov     bh,13h
                call    sub_5
loc_74::
                pop     bx
                pop     dx
                mov     ax,data_101
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                xchg    ah,al
                mov     data_101,ax
                mov     bx,1
                mov     dx,bx
                mov     si,offset data_106
                mov     di,offset data_107
                mov     word ptr [si+4],2
                mov     word ptr [di+4],2
                mov     al,21h                  ; '!'
                call    sub_3
                jnz     loc_76
                mov     ax,data_103
                xchg    ah,al
                mov     bx,data_101
                xchg    bh,bl
                cmp     ax,bx
                jb      loc_75
                mov     ax,bx
loc_75::
                mov     bh,0Bh
                xchg    dx,ax
                call    sub_5
                call    sub_9
                sub     ax,ax
loc_76::
                pop     es
                pop     ds
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    cx
                mov     bx,2
                call    sub_4
                pop     cx
                jnz     loc_ret_77
                xchg    dx,ax
                mov     bx,22Bh
                div     bx
                xchg    dx,ax
                cmp     dx,1
                adc     dx,0
                mov     bh,0Ah
                call    sub_5

loc_ret_77::
                retn
sub_9           endp

data_29         dw      offset loc_83           ; Data table (indexed access)
                db      0FEh, 07h, 16h
                db      8, '1', 8, '8', 8, 'V', 8, 'g', 8
                db      '<'
                db       07h, 72h, 04h,0B8h, 11h, 88h
                db      0CBh, 53h, 33h,0DBh, 8Ah,0D8h
                db       03h,0DBh, 2Eh,0FFh,0A7h,0DCh
                db       07h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_78::
                pop     bx
                mov     bl,cs:data_36e
                mov     bh,cs:data_35e
                mov     ch,cs:data_38e
                mov     cl,cs:data_37e
loc_79::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_80::
                push    dx
                mov     bh,14h
                call    sub_1
                jz      loc_82
                pop     dx
loc_81::
                pop     bx
                retf
loc_82::
                test    dl,2
                pop     dx
                jz      loc_83
                mov     al,0
                call    sub_7
                jnz     loc_81

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_83::
                pop     bx
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_84::
                mov     al,1
                call    sub_7
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_85::
                push    ds
                mov     bx,seg seg_a
                mov     ds,bx
                or      cl,ds:data_38e
                mov     ds:data_37e,cl
                pop     ax
                pop     bx
                or      bl,cl
                and     bl,ds:data_35e
                mov     ds:data_36e,bl
                mov     ds,ax
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_86::
                push    dx
                mov     bh,14h
                call    sub_1
                jnz     loc_87
                pop     ax
                mov     bl,dl
                xchg    dx,ax
                jmp     short loc_79
loc_87::
                pop     dx
                pop     bx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_88::
                pop     bx
                jmp     loc_62
                                                ;* No entry point to code
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,31h
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retf
                                                ;* No entry point to code
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,32h
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retf
                                                ;* No entry point to code
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,33h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                retf
                db      0CBh
                db      8 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                retn
sub_10          endp

                                                ;* No entry point to code
                mov     ax,seg_a
                mov     ds,ax
                mov     ds,ds:data_39e
                jcxz    loc_90
                mov     al,28h                  ; '('
                mov     bx,0
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jnz     loc_89
                mov     al,10h
                mov     bx,0
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_40e
                pop     bp
                jz      loc_91
loc_89::
                mov     ax,884Eh
                retf
loc_90::
                call    sub_10
                push    ds
                lds     dx,dword ptr ds:[3BCh]
                mov     ax,2528h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                push    ds
                lds     dx,dword ptr ds:[3C0h]
                mov     ax,2510h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
loc_91::
                mov     ax,0
                retf
                db      90h
data_31         db      0
                db       01h, 02h, 03h, 07h, 0Ah, 0Bh
                db       19h
                db      '#$'
                db      '234DEMNOVWZ'
                db       82h, 83h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                call    sub_18
                push    es
                push    di
                push    cx
                mov     ax,seg_a
                mov     es,ax
                mov     di,offset data_31
                mov     cx,0Bh
                xor     ah,ah
                mov     al,cs:data_52e
                repne   scasb
                pop     cx
                pop     di
                pop     es
                jz      loc_92
                dec     ah
loc_92::
                or      ah,ah
                retn
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                cld
                push    ds
                pop     es
                mov     di,0B4Fh
                mov     cx,50h
                mov     bh,cs:data_50e
                xor     dx,dx
                mov     ah,2
                int     10h                     ; Video display   ah=functn 02h
                                                ;  set cursor location in dx

locloop_93::
                mov     ah,8
                int     10h                     ; Video display   ah=functn 08h
                                                ;  get char al & attrib ah @curs
                stosw
                inc     dl
                cmp     byte ptr cs:data_52e,1
                ja      loc_94
                cmp     dl,28h                  ; '('
                jb      loc_94
                xor     dl,dl
                inc     dh
loc_94::
                mov     ah,2
                int     10h                     ; Video display   ah=functn 02h
                                                ;  set cursor location in dx
                loop    locloop_93

                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                cld
                mov     si,0B4Fh
                mov     cx,50h
                xor     dx,dx
                call    sub_14
                mov     byte ptr cs:data_54e,0

locloop_95::
                lodsw
                mov     cs:data_51e,ah
                call    sub_16
                loop    locloop_95

                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                mov     ah,3
                mov     bh,cs:data_50e
                int     10h                     ; Video display   ah=functn 03h
                                                ;  get cursor loc in dx, mode cx
                pop     ax
                push    dx
                mov     dx,ax
                mov     ah,2
                int     10h                     ; Video display   ah=functn 02h
                                                ;  set cursor location in dx
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                cld
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bh,cs:data_50e
                mov     bl,cs:data_51e
loc_96::
                lodsb
                cmp     al,cs:data_55e
                je      loc_98
                cmp     al,7
                je      loc_97
                cmp     al,0Ah
                je      loc_97
                cmp     al,0Dh
                je      loc_97
                call    sub_19
                jmp     short loc_96
loc_97::
                mov     ah,0Eh
                int     10h                     ; Video display   ah=functn 0Eh
                                                ;  write char al, teletype mode
                jmp     short loc_96
loc_98::
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bh,cs:data_50e
                mov     bl,cs:data_51e
                call    sub_19
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                push    ax
                mov     ah,0Eh
                mov     al,7
                int     10h                     ; Video display   ah=functn 0Eh
                                                ;  write char al, teletype mode
                pop     ax
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                push    ax
                push    bx
                mov     ah,0Fh
                int     10h                     ; Video display   ah=functn 0Fh
                                                ;  get state, al=mode, bh=page
                                                ;   ah=columns on screen
                mov     cs:data_53e,ah
                mov     cs:data_52e,al
                mov     cs:data_50e,bh
                pop     bx
                pop     ax
                retn
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                mov     ah,9
                mov     cx,1
                int     10h                     ; Video display   ah=functn 09h
                                                ;  set char al & attrib bl @curs
                                                ;   cx=# of chars to replicate
                mov     ah,3
                int     10h                     ; Video display   ah=functn 03h
                                                ;  get cursor loc in dx, mode cx
                inc     dl
                cmp     dl,cs:data_53e
                jb      loc_99
                cmp     byte ptr cs:data_54e,0
                je      loc_ret_100
                mov     ax,0E0Ah
                int     10h                     ; Video display   ah=functn 0Eh
                                                ;  write char al, teletype mode
                mov     ax,0E0Dh
                int     10h                     ; Video display   ah=functn 0Eh
                                                ;  write char al, teletype mode
                jmp     short loc_ret_100
loc_99::
                mov     ah,2
                int     10h                     ; Video display   ah=functn 02h
                                                ;  set cursor location in dx

loc_ret_100::
                retn
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                call    sub_22
                mov     ax,word ptr es:[46Ch]
                add     ax,ds:data_47e
                mov     ds:data_48e,ax
loc_101::
                cmp     word ptr ds:data_47e,0
                je      loc_102
                mov     ax,ds:data_48e
                sub     ax,word ptr es:[46Ch]
                js      loc_ret_104
loc_102::
                mov     ah,1
                int     16h                     ; Keyboard i/o  ah=function 01h
                                                ;  get status, if zf=0  al=char
                jnz     loc_103
                mov     ah,84h
                int     2Ah                     ; ??INT Non-standard interrupt
                jmp     short loc_101
loc_103::
                mov     ah,0
                int     16h                     ; Keyboard i/o  ah=function 00h
                                                ;  get keybd char in al, ah=scan
                and     ax,cx
                cmp     ax,dx
                jne     loc_101

loc_ret_104::
                retn
sub_20          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                xor     cx,cx
                mov     es,cx
                mov     al,5

locloop_105::
                loop    locloop_105

                dec     al
                jnz     locloop_105
                cli
                mov     si,data_56e
                mov     di,data_2e
                movsw
                movsw
                mov     si,data_60e
                mov     di,data_6e
                movsw
                movsw
                sti
                retn
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near
                xor     ax,ax
                mov     es,ax
                cli
                mov     ax,es:keybd_q_tail_
                mov     es:keybd_q_head_,ax
                mov     ax,ds:data_58e
                xchg    es:data_2e,ax
                mov     ds:data_56e,ax
                mov     ax,ds:data_59e
                xchg    es:data_3e,ax
                mov     ds:data_57e,ax
                mov     ax,ds:data_62e
                xchg    es:data_6e,ax
                mov     ds:data_60e,ax
                mov     ax,ds:data_63e
                xchg    es:data_7e,ax
                mov     ds:data_61e,ax
                sti
                retn
sub_22          endp

                db      0, 0, 0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

                db      7, 0, 1, 3, 0
                db      17 dup (0)
                dw      seg_c
                db      8 dup (0)
                db       31h, 00h, 32h, 00h, 33h
                db      9 dup (0)
                db      3, 0
                db      0, 0, 0, 0
data_70         db      0
                db      12 dup (0)
                db       07h, 07h, 50h,0FFh, 00h
                db      16 dup (0)
                db       3Eh, 3Eh, 20h, 00h, 00h
                db      ' (Press CTRL-ENTER)'
                db      0
                db      161 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    ds
                push    cs
                pop     ds
                mov     data_80,ss
                mov     data_79,sp
                push    ds
                pop     ss
                mov     sp,3B8h
                sti
                mov     cx,data_91
                jcxz    loc_107
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr data_74
                pop     bp
loc_106::
                jmp     short loc_111
loc_107::
                cmp     byte ptr data_92,3
                jae     loc_106
                mov     cx,data_90
                cmp     cx,0FFFFh
                je      loc_108
                mov     bh,12h
                xor     ax,ax
                push    ax
                mov     ax,10h
                push    ax
                mov     ax,7
                push    ax
                call    dword ptr data_74
                jnz     loc_110
                or      dl,dl
                jz      loc_110
loc_108::
                mov     ax,7A21h
                int     2Fh                     ; ??INT Non-standard interrupt
                jcxz    loc_109
                mov     bx,5
                xor     ax,ax
                push    ax
                mov     ax,30h
                push    ax
                mov     ax,0Ah
                push    ax
                call    dword ptr data_74
                or      cx,cx
                jnz     loc_111
loc_109::
                mov     cx,data_90
                mov     bh,12h
                xor     ax,ax
                push    ax
                mov     ax,10h
                push    ax
                mov     ax,9
                push    ax
                call    dword ptr data_74
loc_110::
                xor     cx,cx
                mov     data_90,cx
                mov     bx,1200h
                mov     dl,1
                xor     ax,ax
                push    ax
                mov     ax,10h
                push    ax
                mov     ax,0Ah
                push    ax
                call    dword ptr data_74
                jnz     loc_111
                mov     data_90,cx
loc_111::
                cli
                mov     ss,data_80
                mov     sp,data_79
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     byte ptr cs:data_84,0
                retn
sub_23          endp

                                                ;* No entry point to code
                mov     es:data_98,12h
                mov     es:data_99,0
                test    es:data_90,0FFFFh
                jnz     loc_112
                test    es:data_91,0FFFFh
                jnz     loc_112
                retf
loc_112::
                mov     es:data_98,9
                lds     bx,es:data_94
                cmp     word ptr [bx],0
                jne     loc_113
                test    byte ptr cs:data_100,0FFh
                jnz     loc_113
                call    sub_24
                jz      loc_113
                mov     al,1
                xchg    es:data_84,al
                or      al,al
                jnz     loc_113
                call    sub_23
loc_113::
                push    es
                pop     ds
                mov     di,offset data_96
                mov     [di+30h],ds
                mov     word ptr [di+26h],3D4h
                jmp     dword ptr data_76
                                                ;* No entry point to code
                test    cs:data_90,0FFFFh
                jnz     loc_115
                test    cs:data_91,0FFFFh
                jnz     loc_115
loc_114::
                jmp     dword ptr cs:data_81
loc_115::
                push    es
                push    bx
                push    cs
                pop     es
                les     bx,es:data_94
                test    byte ptr es:[bx],0FFh
                pop     bx
                pop     es
                jnz     loc_114
                push    ax
                mov     al,1
                xchg    cs:data_84,al
                or      al,al
                pop     ax
                jnz     loc_114
                call    sub_23
                jmp     short loc_114

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_2Fh_entry   proc    far
                cmp     ax,7A21h
                je      loc_117
loc_116::
                jmp     dword ptr cs:data_85
loc_117::
                cmp     word ptr cs:data_87+2,0
                je      loc_116
                call    dword ptr cs:data_87
                iret
int_2Fh_entry   endp

                db       00h, 00h, 00h, 00h, 2Eh,0FEh
                db       06h, 38h, 04h, 9Ch, 2Eh,0FFh
                db       1Eh,0C0h, 03h, 2Eh,0FEh, 0Eh
                db       38h, 04h,0CFh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                mov     al,0Bh
                out     20h,al                  ; port 20h, 8259-1 int command
                                                ;  al = 0Bh, read InServiceReg
                jmp     short $+2
                in      al,20h                  ; port 20h, 8259-1 int IRR/ISR
                mov     ah,al
                mov     al,0Ah
                jmp     short $+2
                out     20h,al                  ; port 20h, 8259-1 int command
                                                ;  al = 0Ah, read IntRequestReg
                test    ah,0FFh
                jnz     loc_118
                push    es
                mov     ax,50h
                mov     es,ax
                cmp     byte ptr es:prn_scrn_stat,1
                pop     es
                jz      loc_118
                or      al,1
                retn
loc_118::
                xor     ax,ax
                retn
sub_24          endp

                db      0, 0, 0, 0, 0
data_74         dw      0, 0
data_76         dw      0, 0
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
data_79         dw      0
data_80         dw      0                       ; segment storage
data_81         dw      0, 0
data_82         dw      0, 0
data_84         db      0
data_85         dw      0, 0
data_87         dw      0, 0
                db      0
data_90         dw      0
data_91         dw      0
data_92         db      0
                db       00h, 00h, 00h, 00h, 00h,0BCh
                db       00h
                dw      seg_c
                db      34 dup (0)
data_94         dd      00000h
data_96         db      0
                db      9 dup (0)
                db       20h, 00h, 08h, 00h
                db      8 dup (0)
data_98         dw      0
                db      0, 0
data_99         dw      0
                db      26 dup (0)
data_100        db      0
data_101        dw      0
data_102        db      0
data_103        dw      0
data_104        dw      0
data_105        db      0
data_106        db      39h
                db      4
                dw      seg_c
                db      0, 0
data_107        db      3Ch
                db      4
                dw      seg_c
                db      0, 0, 0, 1
data_108        db      1
data_109        db      0
                db      59 dup (0)
                db       4Dh, 04h
                dw      seg_c
                db       03h, 00h, 50h, 04h
                dw      seg_c
                db       3Ch, 00h
data_111        dw      0
data_112        dw      0
                db      58 dup (0)
data_114        dw      0
                db      35h
data_115        dw      0
data_116        db      0
                db      0D6h, 04h
                dw      seg_c
                db      6
                db      0
data_118        dw      0
data_119        dw      0                       ; segment storage
data_120        dw      0
                db       98h, 04h
                dw      seg_c
                db       3Eh, 00h, 05h, 00h, 36h
data_121        dw      0
data_122        dw      0
                db      0EEh, 04h
                dw      seg_c
                db       07h, 00h, 98h, 04h
                dw      seg_c
                db      36h
                db      11 dup (0)
                db      2, 0, 1, 0, 0, 0
                db      0, 2, 0, 0
                db      62h
                db      519 dup (0)
                db      1, 5
                dw      seg_c
                db       1Ch, 00h, 1Dh, 05h
                dw      seg_c
                db       00h, 00h, 98h, 04h
                dw      seg_c
                db       14h, 00h, 00h

seg_c           ends



;------------------------------------------------------------  seg_d   ----

seg_d           segment byte public
                assume cs:seg_d  , ds:seg_d

                                                ;* No entry point to code
                push    ax
                push    bx
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_127,bx
                mov     dx,es
                mov     word ptr data_127+2,dx
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_43e,dx
                mov     es:data_42e,bx
                pop     bx
                pop     ax
                or      ax,ax
                jz      loc_119
                jmp     loc_125
loc_119::
                mov     byte ptr data_132,0
                push    bx
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_c
                mov     es,ax
                mov     word ptr es:data_74,bx
                mov     word ptr es:data_74+2,cx
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_40e,bx
                mov     word ptr es:data_40e+2,cx
                mov     data_129,bx
                mov     word ptr data_129+2,cx
                push    es
                mov     ax,7A20h
                mov     bx,1
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_c
                mov     es,ax
                mov     word ptr es:data_76,bx
                mov     word ptr es:data_76+2,cx
                pop     es
                pop     bx
                mov     data_131,bx
                or      bx,bx
                jz      loc_120
                mov     es:data_39e,bx
loc_120::
                push    bx
                push    ds
                mov     ax,49Dh
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_127
                add     sp,4
                pop     bx
                call    sub_28
                test    byte ptr es:data_35e,2
                jz      loc_121
                mov     bx,0
                mov     dx,61h
                call    dword ptr data_127
                or      ax,ax
                jz      loc_121
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,1
                mov     bx,6
                mov     cx,3Bh
                mov     si,3C1h
                push    cs
                pop     ds
                call    dword ptr cs:data_127
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,3Bh
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr data_127
                add     sp,2
                pop     bx
                and     byte ptr es:data_35e,0FDh
loc_121::
                mov     ax,seg_c
                mov     es,ax
                mov     bx,data_131
                or      bx,bx
                jz      loc_124
                mov     dx,bx
                mov     si,offset data_139
                mov     cx,data_140
                jcxz    loc_123

locloop_122::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_122

loc_123::
                mov     es,dx
                mov     ax,seg_c
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,seg_d
                sub     ax,seg_c
                mov     cl,4
                shl     ax,cl
                mov     cx,ax
                shr     cx,1
                rep     movsw
                adc     cl,0
                rep     movsb
loc_124::
                push    es
                mov     ah,35h                  ; '5'
                mov     al,28h                  ; '('
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                pop     ds
                mov     ds:data_8e,bx
                mov     ds:data_9e,es
                mov     ax,2528h
;*              mov     dx,offset loc_2         ;*
                db      0BAh, 1Ah, 01h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,seg_d
                mov     ds,ax
                call    sub_31
                mov     ax,seg_a
                mov     es,ax
                mov     es,es:data_39e
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     word ptr es:data_94,si
                mov     word ptr es:data_94+2,ds
                mov     ax,21Ch
                mov     si,3D4h
                xor     bx,bx
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_129
                pop     bp
                mov     ax,seg_d
                mov     ds,ax
loc_125::
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                call    sub_26
                mov     ax,0FFFFh
                cmp     word ptr es:data_46e,1
                jae     loc_126
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,7
                mov     si,3C1h
                push    cs
                pop     ds
                call    dword ptr cs:data_127
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,3D2h
                push    ax
                push    cs
                mov     ax,3C1h
                push    ax
                mov     ax,7
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_127
                add     sp,0Ah
                pop     bx
                mov     ax,0FFFFh
                mov     bx,30h
                retf
loc_126::
                xor     ax,ax
                call    sub_25
                mov     bx,30h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                mov     si,seg_a+181h
                sub     si,seg_d
                mov     cx,seg seg_d
                sub     cx,seg_c
                mov     dx,seg seg_c
                sub     dx,seg_a
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                push    word ptr es:data_46e
                mov     word ptr es:data_46e,0
                mov     di,0B00h
                xor     bp,bp
loc_127::
                mov     bx,0
                mov     dx,es:data_44e[bp]
                call    dword ptr data_127
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jnz     loc_128
                inc     di
                inc     di
                inc     word ptr es:data_46e
                call    sub_27
loc_128::
                inc     bp
                inc     bp
                cmp     word ptr es:data_44e[bp],0
                jne     loc_127
                pop     ax
                mov     word ptr es:[di],0
                cmp     ax,es:data_46e
                mov     ax,0
                jc      loc_ret_129
                retn

loc_ret_129::
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                push    di
                mov     bx,data_45e
                mov     di,data_44e
                mov     ax,es:[bp+di]
                cmp     word ptr es:data_46e,1
                je      loc_133
                mov     cx,es:data_46e
                dec     cx

locloop_130::
                cmp     si,es:[bx]
                jb      loc_131
                jmp     short loc_132
loc_131::
                xchg    es:[bx],si
                xchg    es:[di],ax
loc_132::
                inc     di
                inc     di
                inc     bx
                inc     bx
                loop    locloop_130

loc_133::
                mov     es:[bx],si
                mov     es:[di],ax
                pop     di
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
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
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_136,bx
                mov     word ptr data_136+2,es
                mov     cx,4
                mov     si,453h
                mov     di,3ABh
                push    ds
                pop     es
                call    dword ptr data_136
                mov     bx,data_138
                mov     ax,seg_a
                mov     ds,ax
                mov     al,1
                call    sub_29
                mov     bl,bh
                mov     al,2
                call    sub_29
                mov     al,ds:data_37e
                mov     ds:data_38e,al
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
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                mov     ah,al
                not     ah
                mov     cl,0
                mov     di,data_35e
                call    sub_30
                inc     di
                call    sub_30
                inc     di
                call    sub_30
                retn
sub_29          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                inc     cl
;*              cmp     bl,cl
                db       3Ah,0D9h
                jc      loc_134
                or      [di],al
                retn
loc_134::
                and     [di],ah
                retn
sub_30          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


nwp             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      9 dup (0)

nwp             endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                push    ds
                push    es
                xor     ax,ax
                mov     es,ax
                mov     ax,seg_a
                mov     ds,ax
                cli
                mov     ax,es:data_2e
                mov     ds:data_58e,ax
                mov     ax,es:data_3e
                mov     ds:data_59e,ax
                mov     ax,es:data_6e
                mov     ds:data_62e,ax
                mov     ax,es:data_7e
                mov     ds:data_63e,ax
                mov     ds,ds:data_39e
                mov     ax,170h
                xchg    es:data_4e,ax
                assume  ds:seg_c
                mov     word ptr data_82,ax
                mov     ax,ds
                xchg    es:data_5e,ax
                mov     word ptr data_82+2,ax
                sti
                pop     es
                pop     ds
                retn
sub_31          endp

                db      11 dup (0)
data_127        dw      0, 0
data_129        dw      0, 0
data_131        dw      0
data_132        db      0FFh
                db      'NETWA'
                db      'RE DOS REQ'
                db      'UESTER', 0
                db      'NWP', 0
                db      'DOSRQSTR.MSG', 0
                db      'NDS.VLM, BIND.VLM, PNW.VLM'
                db      0
data_136        dw      0, 0
data_138        dw      101h
                db      'CHECKSUM'
                db       00h,0F1h, 03h
                dw      seg_d
                db      0, 0, 3, 0
                db      'LARGE INTERNET PACKETS'
                db       00h,0E2h, 0Ah
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'SIGNATURE LEVEL'
                db       00h,0F2h, 03h
                dw      seg_d
                db      0, 0, 3, 0
                db      'MESSAGE TIMEOUT'
                db       00h, 10h, 0Bh
                dw      seg_a
                db       00h, 00h, 10h, 27h,0F3h, 03h
                db       09h, 01h, 00h, 00h,0FCh, 03h
                db       04h, 04h, 17h, 00h, 04h, 00h
                db       1Bh, 04h, 23h, 04h, 10h, 01h
                db       00h, 00h, 33h, 04h, 3Bh, 04h
                db       10h, 01h, 02h, 00h, 4Bh, 04h
data_139        db      8Eh
                db       04h, 94h, 04h,0DEh, 04h,0EAh
                db       04h,0F7h, 04h,0FDh, 04h, 43h
                db       04h, 49h, 04h,0DAh, 03h
data_140        dw      9
                db      9 dup (0)
                db      'VeRsIoN=1.21', 0
                db      'NWP.VLM    - NetWare DOS Request'
                db      'or NetWare protocol module  v1.2'
                db      '1 (960514)', 0Dh, 0Ah
                db      0

seg_d           ends



                end     start
