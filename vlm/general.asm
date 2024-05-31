; The following equates show data references outside the range of the program.

data_1e         equ     3
data_2e         equ     3Fh
data_3e         equ     0BAh
data_4e         equ     694h                    ;*
data_5e         equ     696h                    ;*
data_6e         equ     6AAh                    ;*
data_7e         equ     3BDh                    ;*
data_8e         equ     3                       ;*
data_9e         equ     2Ch                     ;*
data_10e        equ     100h                    ;*
data_11e        equ     1                       ;*
data_140e       equ     0
data_141e       equ     1
data_142e       equ     3
data_143e       equ     10h
data_144e       equ     26h
data_145e       equ     3Ch
data_146e       equ     3

include common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                                                ;* No entry point to code
                dw      0h, seg_c
                dw      offset loc_004c, seg_a
                dw      offset loc_0253, seg_a
                dw      offset loc_029d, seg_a
                dw      offset sub_3, seg_a
                dw      offset sub_4, seg_a
                dw      offset loc_03e4, seg_a
                dw      offset loc_05ba, seg_a
                dw      offset loc_05dd, seg_a
                dw      offset loc_064a, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_GENERAL

data_12         dw      offset loc_1            ; Data table (indexed access)
data_13         dw      offset loc_2
data_14         dw      offset loc_5
data_15         dw      offset loc_6
data_16         dw      offset loc_5
data_17         dw      offset loc_7
data_18         dw      offset loc_10
data_19         dw      offset loc_11
data_20         dw      offset loc_5
data_21         dw      offset loc_5
data_22         dw      offset loc_5
data_23         dw      offset loc_5
data_24         dw      offset loc_14

loc_004c:
                db       83h,0FBh, 0Dh, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 55h, 8Bh,0ECh
                db      'PQRSTUVW'
                db       1Eh, 06h,0B8h
                dw      seg_a
                db       8Eh,0D8h, 8Eh, 06h,0AAh, 06h
                db       03h,0DBh, 2Eh,0FFh,0A7h, 32h
                db       00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     word ptr [bp-8],1
                mov     word ptr [bp-4],15h
                xor     ax,ax
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
                push    cx
                push    es
                mov     es,cx
                mov     cx,20h
                mov     al,es:data_2e
                mov     di,offset data_122
                pop     es
                repne   scasb
                jnz     loc_3
                dec     di
                xor     ax,ax
                stosb
                sub     di,3DEh
                add     di,offset data_121
                stosb
loc_3::
                pop     cx
loc_4::
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

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                mov     ax,STATUS_NONEXISTANT_FUNC_CALLED
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                xor     ax,ax
                cmp     cx,data_61
                jne     loc_4
                mov     data_61,ax
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_7::
                mov     al,es:data_117
                or      al,al
                jnz     loc_4
                mov     bx,0
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jz      loc_8
                mov     cx,data_61
                or      cx,cx
                jnz     loc_8
                xor     dx,dx
                mov     bx,2
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jnz     loc_9
loc_8::
                mov     es,data_56
                mov     data_62,cx
                push    bp
                call    sub_1
                pop     bp
loc_9::
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_10::
                inc     es:data_117
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_11::
                mov     al,es:data_117
                or      al,al
                jz      loc_13
                dec     es:data_117
                les     di,dword ptr data_45
                cmp     dh,es:[di]
                je      loc_12
                push    dx
                add     dh,20h                  ; ' '
                cmp     dh,es:[di]
                pop     dx
                jnz     loc_13
loc_12::
                callf   sub_4
loc_13::
                jmp     loc_4
                jmp     loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_14::
                mov     byte ptr es:data_123,0
                jmp     loc_4
data_25         dw      offset loc_17           ; Data table (indexed access)
data_26         dw      offset loc_22
data_27         dw      offset loc_23
data_28         dw      offset loc_21

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                mov     al,es:data_103
                mov     bl,al
                add     bl,41h                  ; 'A'
                cmp     al,0FFh
                xchg    al,bl
                jnz     loc_20
                les     si,data_49
                mov     al,es:[si+16h]
                cbw
                push    ax
                call    sub_2
                xor     bx,bx
                pop     bp
                test    word ptr es:[si+43h],4000h
                jnz     loc_15
                or      bl,2
loc_15::
                mov     al,data_75
                or      al,al
                jz      loc_16
                or      bl,1
loc_16::
                add     bx,bx
                jmp     word ptr data_25[bx]    ;*4 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_17::
                les     di,data_51
                mov     bx,data_63
                mov     cl,data_74
loc_18::
                test    word ptr es:[di+43h],0F000h
                jz      loc_19
                add     di,bx
                dec     cl
                jnz     loc_18
                jmp     loc_26
loc_19::
                mov     al,data_74
                sub     al,cl
                add     al,41h                  ; 'A'
                mov     data_76,al
loc_20::
                jmp     short loc_24

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_21::
                cmp     byte ptr data_79,0
                je      loc_23
                les     si,data_49
                mov     al,data_75
                or      al,al
                jz      loc_23
                sub     al,41h                  ; 'A'
                mov     es:[si+16h],al

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22::
                mov     al,data_75
                jmp     short loc_24

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_23::
                mov     ax,bp
                add     al,41h                  ; 'A'
                cmp     al,data_75
                jae     loc_24
                mov     al,data_75
                les     si,data_49
                push    ax
                sub     al,41h                  ; 'A'
                mov     es:[si+16h],al
                pop     ax
loc_24::
                mov     ds,data_56
                mov     cx,cs:data_62
                mov     si,316h
                assume  ds:seg_b
                mov     data_100,al
                push    ds
                pop     es
                mov     di,offset data_101
                mov     ax,5C5Ch
                stosw
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jnz     loc_26
                push    cx
                lea     di,[bx+di]
                mov     si,offset data_102      ; ('\SYS\LOGIN')
                mov     cx,0Ch
                rep     movsb
                mov     si,316h
                mov     di,319h
                mov     cx,4E57h
                mov     bx,4
                mov     ax,5F03h
                push    ax
                mov     ax,111Eh
                int     2Fh                     ; ??INT Non-standard interrupt
                pop     cx
                pop     cx
                jc      loc_26
                xor     ax,ax

loc_ret_25::
                retn
loc_26::
                xor     cx,cx
                jmp     short loc_ret_25
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                assume  ds:seg_a
                les     si,data_51
                mov     bx,data_63
                mul     bl
                add     si,ax
                retn
sub_2           endp

loc_0253:
                push    bx
                push    cx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     al,21h                  ; '!'
                mov     bx,0
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                mov     ax,0
                jz      loc_27
                mov     ax,884Eh
loc_27::
                or      cx,cx
                jnz     loc_28
                lds     dx,cs:data_54
                mov     ax,2521h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                callf   sub_4
                xor     ax,ax
loc_28::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                retf

loc_029d:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_53
                cmp     cx,[si]
                jbe     loc_29
                mov     cx,[si]
loc_29::
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

sub_3           proc    far
                dec     ax
                jnz     loc_30
                mov     ax,8847h
                mov     cx,cs:data_61
                jcxz    loc_33
                jmp     short loc_32
loc_30::
                dec     ax
                mov     ax,8836h
                jnz     loc_33
                jcxz    loc_31
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jnz     loc_33
loc_31::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     data_61,cx
                mov     bx,1
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                pop     ds
loc_32::
                xor     ax,ax
loc_33::
                or      ax,ax
                retf
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    far
                cld
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
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,data_56
                mov     bx,word ptr data_45+2
                cmp     ax,bx
                jne     loc_34
                cmp     byte ptr data_78,1
                je      loc_34
                jmp     loc_40
loc_34::
                mov     dx,data_59
                push    dx
                dec     dx
                mov     es,dx
                mov     dx,es:data_146e
                mov     cl,4
                shl     dx,cl
                pop     es
                xor     di,di
                xor     al,al
loc_35::
                cmp     es:[di],al
                jne     loc_36
                jmp     short loc_40
loc_36::
                mov     cx,8
                mov     si,offset data_70       ; ('COMSPEC=')
                repe    cmpsb
                jz      loc_37
                mov     cx,100h
                repne   scasb
                jmp     short loc_35
loc_37::
                push    di
                mov     bx,di
                xor     al,al
                mov     cx,100h
                repne   scasb
                dec     di
                push    di
                sub     bx,di
                neg     bx
                inc     bx
                mov     cx,dx
                xor     al,al

locloop_38::
                repne   scasb
                cmp     es:[di],al
                je      loc_39
                loop    locloop_38

loc_39::
                push    di
                sub     dx,di
                push    es
                mov     al,data_69
                cbw
                mov     bp,ax
                mov     di,ax
                add     dx,bx
                cmp     dx,di
                pop     es
                pop     cx
                pop     si
                pop     di
                jc      loc_40
                sub     cx,si
                sub     di,8
                dec     cx
                push    ds
                push    es
                pop     ds
                inc     si
                rep     movsb
                pop     ds
                mov     si,offset data_70       ; ('COMSPEC=')
                mov     cx,8
                rep     movsb
                xor     ch,ch
                mov     cl,data_69
                push    ds
                push    cx
                mov     ds,data_56
                mov     si,offset data_124
                push    si
                mov     cx,bp
                rep     movsb
                xor     al,al
                stosb
                pop     si
                pop     cx
                les     di,dword ptr cs:data_45
                rep     movsb
                pop     ds
loc_40::
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
                retf
sub_4           endp

data_30         dw      offset loc_41           ; Data table (indexed access)
data_31         dw      offset loc_42
data_32         dw      offset loc_45
data_33         dw      offset loc_48
data_34         dw      offset loc_60
data_35         dw      offset loc_65

loc_03e4:
                db       83h,0FBh, 06h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 53h, 1Eh, 50h
                db      0B8h
                dw      seg_a
                db       8Eh,0D8h, 58h, 03h,0DBh, 2Eh
                db      0FFh,0A7h,0D8h, 03h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_41::
                mov     dx,data_59
                les     di,dword ptr data_45
                xor     ax,ax
                jmp     loc_54

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_42::
                push    bx
                push    dx
                push    si
                push    es
                mov     dx,cx
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,50h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jz      loc_44
                les     si,data_49
                mov     al,es:[si+16h]
                call    sub_2
                cmp     word ptr es:[si+4Dh],4E57h
                jne     loc_43
                mov     cx,es:[si+4Bh]
                xor     ax,ax
                jmp     short loc_44
loc_43::
                mov     ax,1
                callf   sub_3
                jz      loc_44
                mov     cx,dx
loc_44::
                pop     es
                pop     si
                pop     dx
                pop     bx
                jmp     short loc_54

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_45::
                cbw
                dec     ax
                jz      loc_47
                js      loc_46
                mov     di,data_65
                mov     dx,data_66
                mov     cx,data_64
                xor     ax,ax
                jmp     short loc_54
loc_46::
                xor     ax,ax
                mov     data_65,ax
                mov     data_66,ax
                mov     data_64,ax
                jmp     short loc_54
loc_47::
                mov     data_65,di
                mov     data_66,dx
                mov     data_64,cx
                jmp     short loc_54
data_36         dw      offset loc_50           ; Data table (indexed access)
data_37         dw      offset loc_51
data_38         dw      offset loc_55
data_39         dw      offset loc_56
data_40         dw      offset loc_57
data_41         dw      offset loc_58

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_48::
                push    cx
                push    di
                mov     bx,ax
;*              cmp     ax,0Ah
                db       3Dh, 0Ah, 00h
                ja      loc_49
                ror     ax,1
                jc      loc_49
                mov     ax,seg_a
                mov     ds,ax
                jmp     word ptr data_36[bx]    ;*6 entries
loc_49::
                mov     ax,8836h
                jmp     short loc_53

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_50::
                mov     si,3B0h
                mov     es,data_56
                jmp     short loc_52

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_51::
                mov     si,3A9h
                mov     es,data_56
loc_52::
                xor     ax,ax
loc_53::
                pop     di
                pop     cx
loc_54::
                pop     ds
                pop     bx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_55::
                push    es
                pop     ds
                mov     di,offset data_118
                push    es
                mov     es,cs:data_56
                mov     cx,4
                push    si
                rep     movsb
                pop     si
                pop     es
                jmp     short loc_52

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_56::
                mov     di,3A9h
                jmp     short loc_59

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_57::
                mov     si,3B5h
                mov     es,cs:data_56
                jmp     short loc_52

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_58::
                mov     di,offset data_119
loc_59::
                push    es
                pop     ds
                push    es
                mov     es,cs:data_56
                mov     cx,6
                push    si
                rep     movsb
                pop     si
                pop     es
                jmp     short loc_52

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_60::
                push    cx
                push    di
                push    si
                push    es
                mov     bx,0
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                mov     si,8851h
                mov     es,cs:data_56
                mov     cx,20h
                mov     di,offset data_122
                cmp     dh,0
                je      loc_63
                push    di
                push    cx
                mov     al,bl
                repne   scasb
                pop     cx
                pop     di
                jz      loc_62
                xor     ax,ax
                repne   scasb
                xchg    si,ax
                jnz     loc_62
                xchg    bx,ax
                dec     di
                stosb
                sub     di,3DEh
                add     di,offset data_121
                xchg    dx,ax
                stosb
loc_61::
                xor     ax,ax
loc_62::
                pop     es
                pop     si
                pop     di
                pop     cx
                jmp     loc_54
loc_63::
                xchg    bx,ax
                repne   scasb
                jnz     loc_64
                sub     di,3DEh
                add     di,data_7e
                mov     dl,es:[di]
                or      dl,dl
                jnz     loc_61
loc_64::
                mov     dl,data_77
                jmp     short loc_61

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_65::
                push    bx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     data_61,cx
                or      cx,cx
                jnz     loc_67
                xor     dx,dx
                mov     bx,2
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_43
                pop     bp
                jz      loc_66
                cmp     ax,8855h
                jne     loc_68
loc_66::
                mov     data_61,cx
loc_67::
                mov     data_62,cx
                push    bp
                mov     es,data_56
                call    sub_1
                pop     bp
                mov     cx,cs:data_62
loc_68::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     bx
                jmp     loc_54

loc_05ba:
                db      0CBh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                cld
                mov     es,data_59
                xor     di,di
                xor     ax,ax
loc_69::
                mov     si,offset data_71
                mov     cx,5
                repe    cmpsb
                jz      loc_ret_71
                dec     di
                mov     cx,100h
                repne   scasb
                scasb
                jz      loc_70
                dec     di
                jmp     short loc_69
loc_70::
                or      al,1

loc_ret_71::
                retn
sub_5           endp

loc_05dd:
                cld
                push    ax
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                pop     ax
                mov     data_57,ax
                xor     ax,ax
                mov     dx,ax
                call    sub_5
                jnz     loc_79
                push    es
                pop     ds
                push    di
                pop     si
                mov     dx,cs:data_57
                add     dl,41h                  ; 'A'
                mov     dh,3Ah                  ; ':'
loc_72::
                cmp     dx,[si]
                je      loc_74
loc_73::
                lodsb
                or      al,al
                jz      loc_79
                cmp     al,3Bh                  ; ';'
                dec     si
                jz      loc_73
                inc     si
                jmp     short loc_72
loc_74::
                push    si
                pop     di
loc_75::
                mov     al,[si]
                or      al,al
                jz      loc_76
                inc     si
                cmp     al,3Bh                  ; ';'
                je      loc_77
                jmp     short loc_75
loc_76::
                dec     di
                mov     al,[di]
                cmp     al,3Bh                  ; ';'
                je      loc_77
                inc     di
loc_77::
                push    si
                mov     cx,1
loc_78::
                inc     cx
                lodsb
                or      al,al
                jnz     loc_78
                mov     al,[si]
                or      al,al
                jnz     loc_78
                pop     si
                cld
                rep     movsb
loc_79::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     ax
                retf

loc_064a:
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,8836h
                or      bx,bx
                jz      loc_81
                dec     bx
                jz      loc_80
                dec     bx
                jnz     loc_83
                mov     es,data_56
                mov     si,3A8h
                jmp     short loc_82
loc_80::
                les     si,data_51
                mov     cx,data_63
                mov     ch,data_74
                jmp     short loc_82
loc_81::
                mov     ax,seg_a
                mov     ds,ax
                mov     bl,data_75
                or      bl,bl
                jnz     loc_82
                mov     bl,data_76
loc_82::
                xor     ax,ax
loc_83::
                pop     ds
                retf
                db      7 dup (0)
data_43         dw      0, 0
data_45         dw      408h, seg_b
data_47         db      0, 0
data_48         dw      0                       ; segment storage
data_49         dd      00000h
data_51         dd      00000h
data_53         db      6
                db      0
data_54         dd      00000h
data_56         dw      seg_b
data_57         dw      0
data_58         db       00h, 00h               ; segment storage
data_59         dw      0
data_60         dw      0
data_61         dw      0
data_62         dw      0
data_63         dw      0
data_64         dw      0
data_65         dw      0
data_66         dw      0
data_67         dw      3
data_68         dw      1
data_69         db      0
data_70         db      'COMSPEC='
data_71         db      50h
                db       41h, 54h, 48h, 3Dh
data_72         dw      0
data_74         db      0
data_75         db      0
                db      0
data_76         db      0
data_77         db      1
data_78         db      0
data_79         db      0
                db      0, 0, 0, 0, 0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                mov     bx,1
                push    bp
                mov     bp,0
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_91
                pop     bp
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_91
                pop     bp
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_91
                pop     bp
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_91
                pop     bp
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    ax
                push    bx
                push    bx
                mov     bx,1
                call    sub_7
                pop     bx
                mov     ax,1
                call    sub_6
                pop     bx
                pop     ax
                pushf
                call    dword ptr cs:data_95
                pushf
                push    ax
                push    bx
                xor     ax,ax
                call    sub_6
                push    bx
                mov     bx,2
                call    sub_7
                pop     bx
                pop     bx
                pop     ax
                popf
                retn
sub_10          endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_84::
                xchg    bx,dx
                cmp     byte ptr [bx],0FFh
                je      loc_89
loc_85::
                xchg    bx,dx
                jmp     short loc_90

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_86::
                cmp     al,1
                jne     loc_90

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_87::
                test    cl,80h
                jz      loc_90
                pop     di
                popf
                push    cx
                and     cl,7Fh
                call    sub_10
                pop     cx
loc_88::
                pushf
                push    ax
                push    bp
                mov     bp,sp
                mov     al,[bp+0Bh]
                and     al,2
                or      [bp+5],al
                pop     bp
                pop     ax
                popf
                retf    2
loc_89::
                test    byte ptr [bx+6],80h
                jz      loc_85
                pop     di
                popf
                and     byte ptr [bx+6],7Fh
                xchg    bx,dx
                call    sub_10
                xchg    bx,dx
                or      byte ptr [bx+6],80h
                xchg    bx,dx
                jmp     short loc_88

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_21h_entry   proc    far
                pushf
                cld
                push    di
                push    ax
                push    cx
                push    es
                mov     al,ah
                mov     di,offset data_80
                mov     cx,9
                push    cs
                pop     es
                repne   scasb
                pop     es
                pop     cx
                pop     ax
                jnz     loc_90
                sub     di,2D2h
                add     di,di
                jmp     word ptr cs:data_81[di] ;*9 entries
loc_90::
                pop     di
                popf
                jmp     dword ptr cs:data_95

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_91::
                cmp     byte ptr cs:data_123,0
                jne     loc_90
                cmp     byte ptr cs:data_117,0
                jne     loc_90
                push    si
                mov     si,dx
                cmp     byte ptr [si+1],3Ah     ; ':'
                pop     si
                jnz     loc_90
                push    ax
                push    si
                push    ds
                push    es
                mov     si,dx
                lodsb
                push    cs
                pop     es
                mov     di,offset data_101
                mov     si,di
                stosb
                mov     ax,2A3Ah
                stosw
                mov     ax,2A2Eh
                stosw
                xor     al,al
                stosb
                push    si
                lds     si,cs:data_93
                les     di,dword ptr [si+0Ch]
                pop     si
                push    cs
                pop     ds
                mov     ax,2904h
                pushf
                call    dword ptr cs:data_95
                cmp     al,0FFh
                pop     es
                pop     ds
                pop     si
                pop     ax
                jnz     loc_90
                pop     di
                popf
                pushf
                push    di
                push    ax
                push    bx
                push    cx
                xchg    dx,bx
                mov     al,[bx]
                and     al,0DFh
                xchg    dx,bx
                sub     al,41h                  ; 'A'
                cbw
                jmp     short loc_95

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_92::
                cmp     byte ptr cs:data_123,0
                jne     loc_90
                cmp     byte ptr cs:data_117,0
                jne     loc_90
                pop     di
                popf
                pushf
                call    dword ptr cs:data_95
                pushf
                cmp     al,0FFh
                je      loc_93
                popf
                iret
int_21h_entry   endp

loc_93::
                push    di
                push    ax
                push    bx
                push    cx
                mov     bx,di
                cmp     byte ptr [bx],0FFh
                jne     loc_94
                add     di,6
loc_94::
                mov     al,es:[di]
                dec     ax
loc_95::
                mov     cs:data_103,al
                xor     cx,cx
                mov     bx,5
                xor     ax,ax
                push    ax
                mov     ax,VLMID_GENERAL
                push    ax
                mov     ax,6
                push    ax
                call    dword ptr cs:data_91
                mov     byte ptr cs:data_103,0FFh
                pop     cx
                pop     bx
                pop     ax
                jmp     loc_90

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_96::
                xchg    bx,dx
                cmp     byte ptr [bx],0
                jne     loc_97
                push    ax
                mov     ax,5C2Eh
                mov     [bx],ax
                mov     byte ptr [bx+2],0
                pop     ax
loc_97::
                xchg    bx,dx
                jmp     loc_87

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_98::
                push    ax
                push    bx
                push    cx
                push    dx
                push    ds
                push    si
                push    es
                cmp     bx,0
                je      loc_99
                xchg    bx,ax
                cbw
                jmp     short loc_100
loc_99::
                les     si,cs:data_93
                mov     al,es:[si+16h]
                cbw
loc_100::
                call    sub_12
                cmp     word ptr es:[si+4Dh],4E57h
                je      loc_101
                pop     es
                pop     si
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                jmp     loc_90
loc_101::
                cmp     bl,1
                jne     loc_103
                pop     es
                pop     si
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
loc_102::
                pop     di
                popf
                stc
                mov     ax,5
                retf    2
loc_103::
                mov     cx,es:[si+4Bh]
                mov     dl,es:[si+4Ah]
                push    cs
                pop     ds
                mov     data_116,cx
                mov     di,368h
                mov     si,offset data_106
                mov     ax,si
                mov     data_107,ax
                mov     data_108,ds
                mov     data_110,di
                mov     data_111,ds
                mov     word ptr [si],200h
                mov     byte ptr [si+2],15h
                mov     [si+3],dl
                mov     data_109,4
                mov     data_112,1Ch
                mov     ax,1
                mov     bx,ax
                mov     dx,ax
                mov     al,16h
                mov     si,388h
                mov     di,offset data_110
                push    cs
                pop     es
                call    sub_9
                or      al,al
                pop     es
                pop     si
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                jnz     loc_102
                push    ax
                push    bx
                push    cx
                push    dx
                push    ds
                push    si
                push    es
                push    ds
                pop     es
                push    dx
                pop     di
                xor     ax,ax
                stosw
                push    cs
                pop     ds
                mov     si,offset data_105
                push    si
                mov     cx,9
                call    sub_11
                stosw
                push    es
                push    di
                mov     dh,0
                mov     dl,0Ah
                mov     bh,11h
                push    cs
                pop     es
                mov     cx,data_116
                mov     di,offset data_114
                call    sub_8
                mov     si,offset data_114
                pop     di
                pop     es
                mov     cx,5
                call    sub_11
                stosw
                mov     cl,0Bh
                pop     si

locloop_104::
                lodsb
                or      al,al
                jz      loc_105
                stosb
                loop    locloop_104

loc_105::
                mov     al,20h                  ; ' '
                rep     stosb
                mov     si,offset data_113      ; ('FAT16   ')
                mov     cl,4
                rep     movsw
                pop     es
                pop     si
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                pop     di
                popf
                mov     ax,1
                clc
                retf    2

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                xor     ax,ax

locloop_106::
                rol     ax,1
                add     ax,[si]
                inc     si
                inc     si
                loop    locloop_106

                retn
sub_11          endp

data_80         db      43h
                db       3Ch, 5Bh, 0Fh, 16h
                db       5Ah, 29h, 4Eh, 69h
data_81         dw      offset loc_86           ; Data table (indexed access)
data_82         dw      offset loc_87
data_83         dw      offset loc_87
data_84         dw      offset loc_84
data_85         dw      offset loc_84
data_86         dw      offset loc_96
data_87         dw      offset loc_92
data_88         dw      offset loc_91
data_89         dw      offset loc_98

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                push    bx
                les     si,cs:data_97
                mov     bx,cs:data_99
                mul     bl
                add     si,ax
                pop     bx
                retn
sub_12          endp

                db      7 dup (0)
data_91         dw      0, 0
data_93         dd      00000h
data_95         dw      0, 0
data_97         dd      00000h
data_99         dw      0
data_100        db      30h
                db       3Ah, 00h
data_101        dw      30 dup (0)
                db      0
data_102        db      '\SYS\LOGIN', 0
                db       00h, 00h, 00h, 5Ch, 3Ah, 2Fh
data_103        db      0FFh
                db      10 dup (0)
data_105        db      0
                db      17 dup (0)
data_106        db      0
                db      0, 0, 0
data_107        dw      0
data_108        dw      0                       ; segment storage
data_109        dw      0
data_110        dw      0
data_111        dw      0                       ; segment storage
data_112        dw      0
data_113        db      'FAT16   '
data_114        db      0
                db      9 dup (0)
data_116        dw      0
data_117        db      0
                db      "IBM_PC",0
data_118        db      "IBM",0,0
data_119        db      "MSDOS",0,0,0
data_121        db      0
                db      31 dup (0)
data_122        db      0
                db      32 dup (0)
                db       01h, 02h, 04h, 08h, 03h, 09h
                db       0Ah, 0Bh
                db      0Ch
data_123        db      0FFh
data_124        dw      36 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_131,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_127,bx
                mov     word ptr data_127+2,es
                mov     bx,0
                mov     dx,30h
                call    dword ptr data_127
                or      ax,ax
                jz      loc_107
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,offset data_133      ; ('GENERAL')
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
                mov     ax,4B5h
                push    ax
                push    cs
                mov     ax,4A0h
                push    ax
                push    cs
                mov     ax,4B5h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_127
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,4A0h
                push    ax
                push    cs
                mov     ax,4B5h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_127
                add     sp,0Ah
                pop     bx
                pop     ax
                mov     ax,0FFFFh
                retf
loc_107::
                pop     ax
                or      ax,ax
                jz      loc_108
                jmp     loc_115
loc_108::
                mov     ax,seg_a
                mov     es,ax
                push    es
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     cx,seg seg_b
                mov     es,cx
                mov     word ptr es:data_91,bx
                mov     word ptr es:data_91+2,ax
                pop     es
                mov     word ptr es:data_43,bx
                mov     word ptr es:data_43+2,ax
                mov     data_129,bx
                mov     data_130,ax
                push    bx
                push    ds
                mov     ax,4C6h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_127
                add     sp,4
                pop     bx
                call    sub_13
                mov     dx,data_131
                mov     es:data_56,dx
                mov     ax,seg_b
                mov     es,ax
                mov     si,offset data_135
                mov     cx,data_135
                jcxz    loc_110

locloop_109::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_109

loc_110::
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
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     bx,ds
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     word ptr data_49,si
                mov     word ptr data_49+2,bx
                mov     es,data_56
                mov     word ptr data_45+2,es
                mov     word ptr es:data_93,si
                mov     word ptr es:data_93+2,bx
                mov     ah,52h
                int     21h                     ; DOS Services  ah=function 52h
                                                ;  get DOS data table ptr es:bx
                                                ;*  undocumented function
                mov     word ptr data_47,bx
                mov     data_48,es
                mov     dl,es:[bx+21h]
                mov     data_74,dl
                les     di,dword ptr es:[bx+16h]
                mov     word ptr data_51,di
                mov     word ptr data_51+2,es
                push    ds
                mov     ds,data_56
                assume  ds:seg_b
                mov     word ptr data_97,di
                mov     word ptr data_97+2,es
                pop     ds
                mov     si,di
                mov     al,42h                  ; 'B'
                mov     cx,200h
loc_111::
                repne   scasb
                jnz     loc_112
                cmp     byte ptr es:[di],3Ah    ; ':'
                jne     loc_111
                neg     cx
                add     cx,1FFh
                assume  ds:seg_a
                mov     data_63,cx
                push    ds
                mov     ds,data_56
                assume  ds:seg_b
                mov     data_99,cx
                pop     ds
loc_112::
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                mov     bx,ax
                xchg    bl,bh
                assume  ds:seg_a
                mov     data_72,bx
                call    sub_15
                call    sub_14
                mov     ax,3521h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     dx,es
                mov     ax,seg_a
                mov     es,ax
                mov     word ptr es:data_54,bx
                mov     word ptr es:data_54+2,dx
                mov     ds,es:data_56
                assume  ds:seg_b
                mov     word ptr data_95,bx
                mov     word ptr data_95+2,dx
                mov     dx,offset int_21h_entry
                mov     ax,2521h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,4452h
                int     21h                     ; ??INT Non-standard interrupt
                jc      loc_113
                push    ds
                pop     es
                mov     ax,5244h
                mov     di,offset data_119
                stosw
loc_113::
                mov     ax,seg_a
                mov     ds,ax
                xor     al,al
                assume  ds:seg_a
                xchg    data_75,al
                cmp     al,41h                  ; 'A'
                jb      loc_114
                cmp     al,5Ah                  ; 'Z'
                ja      loc_114
                xchg    data_75,al
loc_114::
                mov     ax,440Bh
                mov     cx,data_68
                mov     dx,data_67
                int     21h                     ; DOS Services  ah=function 44h
                                                ;  IOctl-B set retry dx,cx=delay
loc_115::
                mov     bx,43h
                mov     si,seg_a+116h
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

sub_13          proc    near
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
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                assume  ds:seg_c
                mov     data_137,bx
                mov     word ptr data_137+2,es
                mov     cx,8
                mov     si,5D5h
                mov     di,48Ah                 ; ('NETWARE DOS REQUESTER')
                push    ds
                pop     es
                call    dword ptr data_137
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
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    ax
                push    cx
                push    di
                push    si
                push    ds
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                cmp     byte ptr es:data_72+1,5
                jae     loc_117
                mov     es,word ptr es:data_58
                mov     ax,es
                dec     ax
                mov     es,ax
                mov     ax,es:data_8e
                xchg    di,ax
                mov     ax,es
                inc     ax
                mov     es,ax
                xchg    di,ax
                mov     cl,4
                shl     ax,cl
                xchg    cx,ax
                xor     di,di
loc_116::
                mov     al,3Ah                  ; ':'
                repne   scasb
                jcxz    loc_117
                mov     al,2Fh                  ; '/'
                cmp     es:[di],al
                jne     loc_116
                inc     di
                mov     ax,di
                dec     ax
                push    cx
                mov     si,offset data_139
                mov     cx,0Dh
                repe    cmpsb
                pop     cx
                jnz     loc_116
                xchg    di,ax
                mov     al,2Eh                  ; '.'
                stosb
                add     di,0Fh
                stosb
loc_117::
                pop     ds
                pop     si
                pop     di
                pop     cx
                pop     ax
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                assume  ds:seg_a
                les     bx,dword ptr data_47
                dec     bx
                dec     bx
                mov     dx,es:[bx]
                mov     es,dx
                jmp     short loc_119
loc_118::
                add     dx,es:data_1e
                mov     es,dx
loc_119::
                inc     dx
                cmp     byte ptr es:data_140e,4Dh       ; 'M'
                je      loc_120
                cmp     byte ptr cs:data_136,0FFh
                je      loc_122
                cmp     byte ptr es:data_140e,5Ah       ; 'Z'
                dec     cs:data_136
loc_120::
                cmp     word ptr es:data_143e,20CDh
                jne     loc_118
                cmp     dx,es:data_144e
                jne     loc_118
                cmp     dx,es:data_141e
                jne     loc_118
                push    dx
                push    es
                mov     bx,es:data_142e
                mov     data_60,bx
                mov     bx,es:data_145e
                test    bx,bx
                jz      loc_121
                cmp     data_72,31Eh
                jae     loc_123
loc_121::
                add     dx,es:data_142e
                inc     dx
                mov     bx,es
                inc     bx
                mov     es,bx
                jmp     short loc_124
loc_122::
                xor     ax,ax
                mov     es,ax
                mov     dx,es:data_3e
loc_123::
                mov     es,dx
                mov     dx,es:data_9e
                mov     ax,dx
                dec     ax
                mov     es,ax
                mov     es,es:data_11e
loc_124::
                mov     data_59,dx
                mov     word ptr data_58,es
                pop     es
                pop     dx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                push    ds
                mov     ax,seg_c
                mov     ds,ax
                assume  ds:seg_c
                mov     data_127,bx
                mov     word ptr data_127+2,es
                pop     ds
                mov     bx,4
                call    dword ptr cs:data_127
                mov     es,ax
                xor     di,di
                xor     al,al
loc_125::
                cmp     es:[di],al
                jne     loc_126
                jmp     loc_ret_133
loc_126::
                mov     cx,8
                mov     si,offset data_70       ; ('COMSPEC=')
                repe    cmpsb
                jz      loc_127
                dec     di
                mov     cx,0FFF0h
                repne   scasb
                jmp     short loc_125
loc_127::
                mov     bp,es
                mov     dx,di
                xor     al,al
                mov     cx,0FFF0h
                repne   scasb
                push    di
                dec     di
                dec     di
                std
                mov     al,20h                  ; ' '
                mov     cx,di
                sub     cx,dx
                repe    scasb
                cld
                inc     di
                inc     di
                cmp     es:[di],al
                jne     loc_128
                pop     cx
                push    di
loc_128::
                pop     di
                sub     di,dx
                assume  ds:seg_a
                mov     es,word ptr data_58
                mov     ax,data_60
;*              sub     ax,10h
                db       2Dh, 10h, 00h
                mov     cl,4
                shl     ax,cl
                mov     cx,ax
                push    ds
                mov     ds,bp
                mov     bp,di
                mov     di,data_10e
                mov     si,dx
                lodsb
loc_129::
                repne   scasb
                jz      loc_130
                pop     es
                mov     es:data_78,1
                mov     si,dx
                mov     ax,es:data_56
                mov     es,ax
                jmp     short loc_131
loc_130::
                dec     di
                push    cx
                mov     cx,bp
                mov     si,dx
                repe    cmpsb
                mov     bx,cx
                pop     cx
                pushf
                sub     bx,bp
                not     bx
                sub     cx,bx
                popf
                jnz     loc_129
                pop     ds
                sub     di,bp
                mov     ds:data_4e,di
                mov     ds:data_5e,es
                push    es
                mov     es,ds:data_6e
                pop     ds
                push    di
                pop     si
loc_131::
                mov     di,408h
                xor     bp,bp
                cmp     byte ptr [si+1],3Ah     ; ':'
                je      loc_132
                mov     ah,19h
                int     21h                     ; DOS Services  ah=function 19h
                                                ;  get default drive al  (0=a:)
                add     al,41h                  ; 'A'
                stosb
                mov     al,3Ah                  ; ':'
                stosb
                inc     bp
                inc     bp
loc_132::
                lodsb
                stosb
                inc     bp
                or      al,al
                jnz     loc_132
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,bp
                mov     data_69,al

loc_ret_133::
                retn
sub_15          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


general         proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
                db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.  All Rights Res'
                db      'erved.'
                db      7 dup (0)
data_127        dw      0, 0
data_129        dw      0
data_130        dw      0
data_131        dw      0
                db      'NETWARE DOS REQUESTER', 0
data_133        db      'GENERAL', 0
                db      'DOSRQSTR.MSG'
                db       00h, 4Eh, 57h, 50h, 00h
                db      'VeRsIoN=1.21'
                db      0
                db      'GENERAL.VLM  - NetWare general p'
                db      'urpose function module v1.21 (96'
                db      '0514)', 0Dh, 0Ah
                db      0
data_135        dw      0
data_136        db      0
data_137        dw      0, 0
                db      'FIRST NETWORK DRIVE'
                db       00h,0D5h, 06h
                dw      seg_a
                db      1, 0, 1, 0
                db      'SEARCH MODE'
                db       00h,0D8h, 06h
                dw      seg_a
                db      0, 0, 7, 0
                db      'LONG MACHINE TYPE'
                db       00h,0A9h, 03h
                dw      seg_b
                db      1, 0, 6, 0
                db      'SHORT MACHINE TYPE'
                db       00h,0B0h, 03h
                dw      seg_b
                db      1, 0, 4, 0
                db      'DOS NAME'
                db       00h,0B5h, 03h
                dw      seg_b
                db      1, 0, 5, 0
                db      'FORCE FIRST NETWORK DRIVE'
                db       00h,0DAh, 06h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'LOCK RETRIES'
                db       00h,0C0h, 06h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'LOCK DELAY'
                db       00h,0C2h, 06h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh, 15h, 05h
                db       14h, 00h, 06h, 00h, 29h, 05h
                db       31h, 05h, 0Ch, 01h, 00h, 00h
                db       3Dh, 05h, 5Fh, 05h, 13h, 01h
                db       06h, 00h, 72h, 05h, 45h, 05h
                db       12h, 01h, 06h, 00h, 57h, 05h
                db       7Ah, 05h, 09h, 01h, 06h, 00h
                db       83h, 05h, 8Bh, 05h, 1Ah, 00h
                db       04h, 00h,0A5h, 05h,0ADh, 05h
                db       0Dh, 01h, 02h, 00h,0BAh, 05h
                db      0C2h, 05h, 0Bh, 01h, 02h, 00h
                db      0CDh, 05h
data_139        db      0
                db      '_______.___'
                db      0

general         endp

seg_c           ends



                end     start
