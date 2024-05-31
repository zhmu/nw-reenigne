

; The following equates show data references outside the range of the program.

data_1e         equ     8
data_2e         equ     3Fh
data_3e         equ     5Eh
data_4e         equ     408h
data_5e         equ     411h
data_6e         equ     662h                    ;*
data_7e         equ     6DDh                    ;*
data_8e         equ     6DEh                    ;*
data_9e         equ     6F0h                    ;*
data_10e        equ     6F7h                    ;*
data_11e        equ     6FBh                    ;*
data_143e       equ     0DE8h                   ;*
data_144e       equ     0E45h                   ;*
data_145e       equ     96C8h                   ;*
data_169e       equ     0DE8h                   ;*
data_170e       equ     658h                    ;*
data_171e       equ     65Ah                    ;*
data_172e       equ     65Ch                    ;*
data_173e       equ     65Eh                    ;*

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                                                ;* No entry point to code
                dw      0h, seg_c
                dw      offset loc_00d6, seg_a
                dw      offset loc_0cb0, seg_a
                dw      offset loc_0165, seg_a
                dw      offset loc_0765, seg_a
                dw      offset sub_15, seg_a
                dw      offset loc_0818, seg_a
                dw      offset loc_07fe, seg_a
                dw      offset sub_8, seg_a
                dw      offset sub_7, seg_a
                dw      offset sub_9, seg_a
                dw      offset sub_11, seg_a
                dw      offset loc_0ab3, seg_a
                dw      offset loc_0c85, seg_a
                dw      offset loc_031a, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_PRINT

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                mov     ax,17h
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    ax
                mov     al,bl
                mov     bl,48h                  ; 'H'
                mul     bl
                mov     bx,8A7h
                add     bx,ax
                pop     ax
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    ax
                mov     ax,cs:data_43
                or      ax,word ptr cs:data_43+2
                pop     ax
                jz      loc_2
                pushf
                call    dword ptr cs:data_43
                retn
loc_2::
                int     21h                     ; DOS Services  ah=function 3Ch
                                                ;  create/truncate file @ ds:dx
                retn
sub_6           endp

data_12         dw      offset loc_4            ; Data table (indexed access)
data_13         dw      offset loc_5
data_14         dw      offset loc_3
data_15         dw      offset loc_8
data_16         dw      offset loc_3
data_17         dw      offset loc_3
data_18         dw      offset loc_3
data_19         dw      offset loc_3
data_20         dw      offset loc_3
data_21         dw      offset loc_3
data_22         dw      offset loc_3
data_23         dw      offset loc_8

loc_00d6:
                db       83h,0FBh, 0Ch, 72h, 04h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_3::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                add     bx,bx
                jmp     word ptr cs:data_12[bx] ;*12 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                push    ds
                push    dx
                push    cx
                mov     ds,cx
                mov     dl,ds:data_2e
                mov     cx,9
                xor     bx,bx

locloop_6::
                cmp     dl,cs:data_61[bx]
                jne     loc_7
                push    bx
                push    dx
                mov     dx,bx
                mov     bx,0FFFFh
                callf   sub_7
                pop     dx
                pop     bx
loc_7::
                inc     bx
                loop    locloop_6

                pop     cx
                pop     dx
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_8::
                push    bx
                push    cx
                push    dx
                push    si
                push    ds
                push    es
                mov     ds,cs:data_42
                mov     ax,seg_a
                mov     es,ax
                mov     si,cx
                assume  ds:seg_b
                mov     cx,data_104

locloop_9::
                mov     dx,cx
                dec     dx
                mov     bx,1
                callf   sub_8
                or      ax,ax
                jnz     loc_10
                mov     bx,dx
                push    ds
                push    es
                pop     ds
                call    sub_14
                pop     ds
                cmp     si,es:[bx+4]
                jne     loc_10
                push    bx
                mov     bx,2
                callf   sub_8
                pop     bx
                mov     word ptr es:[bx+4],0
loc_10::
                loop    locloop_9

                xor     ax,ax
                pop     es
                pop     ds
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf

loc_0165:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_38
                cmp     cx,[si]
                jbe     loc_11
                mov     cx,[si]
loc_11::
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

sub_7           proc    far
                mov     byte ptr cs:data_73,0
                mov     ax,bp
                mov     bp,sp
                cmp     [bp+4],ax
                jne     loc_13
                cmp     byte ptr [bp+10h],9
                jne     loc_13
                cmp     byte ptr [bp+12h],42h   ; 'B'
                jne     loc_13
                cmp     byte ptr [bp+14h],0
                je      loc_12
                cmp     byte ptr [bp+14h],50h   ; 'P'
                jne     loc_13
loc_12::
                mov     byte ptr cs:data_73,1
loc_13::
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
                push    bx
                mov     bx,1
                call    sub_4
                pop     bx
                mov     ds,cs:data_42
                xchg    dx,bx
                cmp     bx,data_104
                jb      loc_14
                mov     ax,8856h
                jmp     short loc_16
loc_14::
                mov     byte ptr cs:data_61[bx],0
                call    sub_5
                test    dx,0FFFFh
                jz      loc_18
                test    byte ptr [bx+18h],0FFh
                jz      loc_17
loc_15::
                xor     ax,ax
loc_16::
                mov     [bp-2],ax
                mov     bx,2
                call    sub_4
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
loc_17::
                test    byte ptr [bx+2Bh],0FFh
                jz      loc_18
                test    byte ptr [bx+36h],0FFh
                jz      loc_15
loc_18::
                test    byte ptr [bx+38h],0FFh
                jz      loc_15
                push    ds
                push    bx
                mov     bl,[bx+15h]
                mov     ax,seg_a
                mov     ds,ax
                call    sub_14
                mov     cx,[bx+4]
                pop     bx
                pop     ds
                mov     dx,[bp-6]
                xchg    dh,dl
                call    dword ptr cs:data_49
                or      ax,ax
                jnz     loc_16
                les     di,dword ptr [bx+31h]
                inc     di
                inc     di
                test    word ptr [di],0FFFFh
                jz      loc_19
                push    cx
                mov     cx,[di]
                inc     di
                inc     di
                callf   sub_11
                pop     cx
                or      ax,ax
                jz      loc_19
                jmp     short loc_16
loc_19::
                push    ds
                pop     es
                test    byte ptr [bx+2Bh],0FFh
                jz      loc_22
                xor     ah,ah
                mov     al,[bx+15h]
                shl     al,1
                mov     si,data_8e
                add     si,ax
                mov     ax,[bx+39h]
                mov     [si],ax
                xor     ax,ax
                mov     [bx+36h],al
                mov     [bx+38h],al
                mov     [bx+2Bh],al
                mov     [bx+2Ah],al
                mov     bx,[bp-6]
                call    sub_14
                test    byte ptr cs:data_73,0FFh
                jz      loc_20
                call    dword ptr cs:data_51
                mov     byte ptr cs:data_73,0
                jmp     short loc_21
loc_20::
                mov     byte ptr ds:data_9e,0FFh
loc_21::
                mov     si,seg seg_a
                mov     ds,si
                jmp     short loc_26
loc_22::
                mov     di,data_11e
                test    byte ptr [bx+47h],2
                jz      loc_23
                xor     ax,ax
                mov     ax,9
                xchg    ah,al
                mov     word ptr ds:[6F4h],ax
                mov     byte ptr ds:[6F6h],7Fh
                mov     word ptr ds:[703h],0Bh
                mov     ax,[bx+3Dh]
                stosw
                mov     ax,[bx+41h]
                stosw
                jmp     short loc_24
loc_23::
                mov     word ptr ds:[6F4h],7
                mov     byte ptr ds:[6F6h],69h  ; 'i'
                mov     word ptr ds:[703h],9
                mov     ax,[bx+3Dh]
                stosw
loc_24::
                mov     di,data_10e
                mov     ax,[bx+39h]
                stosw
                mov     ax,[bx+3Bh]
                stosw
                push    bx
                mov     bx,1
                xor     dx,dx
                mov     si,6FFh
                call    sub_1
                pop     bx
                jz      loc_25
                jmp     loc_16
loc_25::
                mov     [bx+2Ch],ah
                mov     [bx+36h],ah
                mov     [bx+38h],ah
                mov     bl,[bx+15h]
                mov     si,seg seg_a
                mov     ds,si
                call    sub_14
loc_26::
                xor     ax,ax
                mov     [bx+79h],ax
                mov     [bx+77h],ax
                jmp     loc_16
sub_7           endp

loc_031a:
                push    cx
                push    di
                push    es
                mov     cx,0FACEh
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,1
                push    bp
                mov     bp,3
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:data_45
                pop     bp
                push    bx
                mov     bx,1
                call    sub_4
                pop     bx
                cmp     word ptr es:[di+2Ah],1
                pushf
                push    bx
                mov     bx,2
                call    sub_4
                pop     bx
                popf
                jbe     loc_27
                mov     ax,8846h
                jmp     short loc_28
loc_27::
                callf   sub_7
loc_28::
                pop     es
                pop     di
                pop     cx
                retf
                db      90h
data_24         dw      offset loc_35           ; Data table (indexed access)
data_25         dw      offset loc_51
data_26         dw      offset loc_55
data_27         dw      offset loc_66
data_28         dw      offset loc_51

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    far
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
                mov     ds,cs:data_42
                cmp     dx,0FEh
                jne     loc_32
                mov     al,2
                mov     bx,2
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                jz      loc_29
                jmp     loc_50
loc_29::
                or      cx,cx
                jnz     loc_31
loc_30::
                mov     ax,884Ch
                jmp     loc_50
loc_31::
                jmp     loc_64
loc_32::
                assume  ds:seg_b
                cmp     dx,data_104
                jb      loc_33
                mov     ax,8856h
                jmp     loc_50
loc_33::
                xchg    dx,bx
                call    sub_5
                cmp     dx,5
                jb      loc_34
                mov     ax,8836h
                jmp     loc_50
loc_34::
                mov     si,dx
                add     si,si
                jmp     word ptr cs:data_24[si] ;*5 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_35::
                test    cs:data_70,0FFFFh
                jnz     loc_36
                push    cx
                push    es
                push    di
                push    ds
                pop     es
                mov     cx,0Ah
                mov     di,340h
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,3
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                mov     cx,es:[di+6]
                mov     cs:data_70,cx
                mov     cx,es:[di+8]
                mov     cs:data_71,cx
                pop     di
                pop     es
                pop     cx
loc_36::
                test    byte ptr [bx+38h],0FFh
                jz      loc_37
                mov     dx,[bp-6]
                push    bx
                xor     bx,bx
                callf   sub_7
                pop     bx
loc_37::
                push    bx
                mov     bh,3
                call    sub_2
                pop     bx
                jz      loc_38
                jmp     loc_50
loc_38::
                or      dl,dl
                jnz     loc_39
                mov     ax,8801h
                jmp     loc_50
loc_39::
                mov     si,bx
                mov     bx,[bp-6]
                push    cs
                pop     ds
                or      bx,bx
                jnz     loc_41
                push    es
                push    di
                assume  ds:seg_a
                les     di,data_65
                mov     ax,es
                or      ax,di
                jz      loc_40
                test    data_68,0FFFFh
                jnz     loc_40
                mov     ax,es:[di+7]
                mov     data_67,ax
                mov     ax,es:[di+9]
                mov     data_68,ax
                mov     al,es:[di+6]
                mov     data_69,al
                mov     byte ptr es:[di+6],80h
                mov     ax,data_70
                mov     es:[di+7],ax
                mov     ax,data_71
                mov     es:[di+9],ax
loc_40::
                pop     di
                pop     es
loc_41::
                call    sub_14
                mov     [bx+4],cx
                test    byte ptr data_72,0FFh
                jz      loc_42
                mov     bx,si
                mov     ds,data_42
                jmp     loc_68
loc_42::
                test    word ptr [bp-2],0FFFFh
                jnz     loc_44
loc_43::
                mov     ds,cs:data_42
                mov     si,es:[di]
                mov     ax,es:[di+2]
                mov     bx,[bp-6]
                call    sub_5
                jmp     short loc_47
loc_44::
                push    cx
                push    di
                push    ds
                push    es
                mov     cx,[bp-2]
                cmp     cx,41h
                jbe     loc_45
                mov     cx,41h
loc_45::
                mov     ax,si
                lea     di,[bx+6]
                mov     bx,ax
                push    ds
                pop     es
                mov     ds,[bp-12h]
                mov     si,[bp-0Eh]
                rep     movsb
                pop     es
                pop     ds
                pop     di
                pop     cx
                mov     ax,es:[di]
                or      ax,es:[di+2]
                jnz     loc_43
                push    es
                mov     es,[bp-12h]
                mov     di,[bp-0Eh]
                push    bx
                push    dx
                mov     ax,300h
                mov     dx,[bp-2]
                mov     bx,3
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                jz      loc_46
                pop     dx
                pop     bx
                pop     es
                jmp     short loc_50
loc_46::
                xchg    bx,ax
                mov     si,dx
                pop     dx
                pop     bx
                pop     es
                mov     ds,ds:data_143e
loc_47::
                mov     dx,ax
                and     dx,si
                cmp     dx,0FFFFh
                je      loc_48
                mov     [bx+39h],si
                mov     [bx+3Bh],ax
loc_48::
                mov     byte ptr [bx+2Ah],0FFh
                mov     byte ptr [bx+37h],0FFh
                mov     byte ptr [bx+2Bh],0
loc_49::
                mov     dx,[bp-6]
                mov     bx,8
                call    sub_3
loc_50::
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

loc_51::
                test    byte ptr [bx+2Ah],0FFh
                jnz     loc_52
                jmp     loc_30
loc_52::
                cmp     dx,4
                je      loc_53
                jmp     loc_64
loc_53::
                mov     ax,seg_a
                mov     ds,ax
                mov     bx,[bp-6]
                call    sub_14
                mov     ax,5C5Ch
                stosw
                mov     cx,[bx+4]
                push    bx
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                mov     cx,bx
                pop     bx
                jnz     loc_50
                add     di,cx
                push    ds
                push    bx
                mov     ds,data_42
                mov     bx,[bp-6]
                call    sub_5
                test    byte ptr [bx+2Bh],0FFh
                pop     bx
                pop     ds
                jnz     loc_54
                mov     al,5Ch                  ; '\'
                stosb
                lea     si,[bx+6]
                mov     cx,41h
                rep     movsb
loc_54::
                jmp     loc_64

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_55::
                push    ds
                pop     es
                test    byte ptr [bx+38h],0FFh
                jz      loc_59
                mov     di,6FBh
                test    byte ptr [bx+2Bh],0FFh
                jz      loc_56
                push    bx
                push    dx
                xor     dx,dx
                mov     dl,[bx+15h]
                mov     bx,0
                callf   sub_7
                pop     dx
                pop     bx
                jmp     short loc_60
loc_56::
                test    byte ptr [bx+47h],2
                jz      loc_57
                assume  ds:seg_b
                mov     data_114,9
                mov     byte ptr data_115,80h
                mov     data_117,0Bh
                mov     ax,[bx+3Dh]
                stosw
                mov     ax,[bx+41h]
                stosw
                jmp     short loc_58
loc_57::
                mov     data_114,7
                mov     byte ptr data_115,6Ah   ; 'j'
                mov     data_117,9
                mov     ax,[bx+3Dh]
                stosw
loc_58::
                mov     di,offset data_116
                mov     ax,[bx+39h]
                stosw
                mov     ax,[bx+3Bh]
                stosw
                push    bx
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     bx,[bp-6]
                call    sub_14
                mov     cx,[bx+4]
                mov     bx,1
                xor     dx,dx
                pop     ds
                mov     si,6FFh
                call    sub_1
                pop     bx
                jz      loc_59
                jmp     loc_50
loc_59::
                test    byte ptr [bx+2Ah],0FFh
                jnz     loc_60
                mov     ax,884Ch
                jmp     loc_65
loc_60::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                cmp     byte ptr data_59,0
                pop     ds
                jnz     loc_61
                jmp     short loc_62
loc_61::
                xor     ax,ax
                mov     cx,2Dh
                mov     di,bx
                rep     stosb
                lea     di,[bx+35h]
                mov     cx,0Eh
                rep     stosb
                push    es
                les     di,dword ptr [bx+2Dh]
                mov     es:[di+2],ax
                les     di,dword ptr [bx+31h]
                mov     es:[di+2],ax
                pop     es
                mov     [bx+45h],ax
                mov     byte ptr [bx+1],80h
                mov     byte ptr [bx+2],8
                mov     byte ptr [bx+4],1
                mov     ax,[bp-6]
                mov     [bx+15h],al
                mov     byte ptr [bx+35h],1
                mov     byte ptr [bx+47h],80h
                mov     word ptr [bx+19h],4200h
                mov     word ptr [bx+1Bh],8400h
                lea     di,[bx+7]
                mov     ax,534Ch
                stosw
                mov     ax,3A54h
                stosw
loc_62::
                mov     ax,seg_a
                mov     ds,ax
                les     di,data_65
                test    data_68,0FFFFh
                jz      loc_63
                mov     ax,data_68
                mov     es:[di+9],ax
                mov     ax,data_67
                mov     es:[di+7],ax
                mov     al,data_69
                mov     es:[di+6],al
                xor     ax,ax
                mov     data_68,ax
                mov     data_67,ax
                mov     data_69,al
loc_63::
                mov     bx,[bp-6]
                call    sub_14
                push    ds
                pop     es
                mov     cx,[bx+4]
                push    cx
                xor     al,al
                mov     cx,7Bh
                mov     di,bx
                rep     stosb
                mov     ax,0FFFFh
                mov     [bx+47h],ax
                mov     [bx+49h],ax
                mov     [bx+4Bh],ax
                mov     [bx+4Dh],ax
                mov     [bx+4Fh],ax
                mov     word ptr [bx+51h],10h
                mov     si,offset data_76       ; ('LPT  Catch')
                lea     di,[bx+60h]
                mov     cx,0Dh
                rep     movsb
                pop     cx
                mov     bx,9
                call    sub_3
loc_64::
                xor     ax,ax
loc_65::
                jmp     loc_50

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_66::
                test    byte ptr [bx+38h],0FFh
                jz      loc_67
                mov     dx,[bp-6]
                push    bx
                xor     bx,bx
                callf   sub_7
                pop     bx
loc_67::
                mov     es,[bp-14h]
                mov     dx,di
                callf   sub_15
                or      ax,ax
                jnz     loc_65
loc_68::
                mov     ax,cs:data_74
                mov     [bx+39h],ax
                mov     byte ptr cs:data_72,0
                mov     bl,[bx+15h]
                call    sub_14
                mov     ax,seg_a
                mov     ds,ax
                push    ds
                pop     es
                lea     di,[bx+71h]
                mov     si,offset data_75
                movsw
                movsw
                movsw
                mov     [bx+4],cx
                mov     ds,cs:data_42
                mov     bx,[bp-6]
                call    sub_5
                mov     byte ptr [bx+2Ah],0FFh
                mov     byte ptr [bx+2Bh],0FFh
                mov     byte ptr [bx+38h],0FFh
                jmp     loc_49
sub_8           endp

loc_0765:
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
                mov     ax,seg_a
                mov     ds,ax
                cmp     bx,3
                jbe     loc_71
loc_69::
                mov     ax,8836h
loc_70::
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
loc_71::
                cmp     dx,cs:data_54
                jb      loc_72
                mov     ax,8856h
                jmp     short loc_70
loc_72::
                cmp     bx,1
                xchg    bx,dx
                jbe     loc_73
                call    sub_14
                jmp     short loc_74
loc_73::
                mov     ds,data_42
                call    sub_5
loc_74::
                mov     di,bx
                mov     bx,dx
                add     bx,bx
                cmp     word ptr [bp-10h],4E57h
                jne     loc_75
                add     di,[bp-2]
                jmp     short loc_76
loc_75::
                mov     ax,cs:data_60[bx]
                cmp     ax,[bp-2]
                jbe     loc_69
                mov     bx,[bp-2]
                add     di,bx
                add     bx,cx
                cmp     bx,ax
                jbe     loc_76
                push    ax
                sub     ax,[bp-2]
                mov     cx,ax
                pop     ax
loc_76::
                shr     dx,1
                jc      loc_77
                push    ds
                pop     es
                mov     ds,[bp-12h]
                jmp     short loc_78
loc_77::
                push    di
                pop     si
                mov     es,[bp-14h]
                mov     di,[bp-10h]
loc_78::
                mov     dx,ax
                push    cx
                rep     movsb
                pop     cx
                mov     [bp-6],dx
                mov     [bp-4],cx
                xor     ax,ax
                jmp     short loc_70

loc_07fe:
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                test    bx,0FFFFh
                jnz     loc_79
                mov     bx,data_41
                jmp     short loc_80
loc_79::
                mov     bx,data_54
loc_80::
                xor     ax,ax
                pop     ds
                retf

loc_0818:
                call    sub_18
                jz      loc_82
                push    cx
                push    di
                jcxz    loc_81
                call    sub_19
loc_81::
                pop     di
                pop     cx
                xor     ax,ax
                retf
loc_82::
                push    bx
                push    dx
                push    ds
                push    es
                mov     ds,cs:data_42
                assume  ds:seg_b
                cmp     dx,data_104
                jae     loc_88
                mov     bx,dx
                call    sub_5
                test    byte ptr [bx+36h],0FFh
                jnz     loc_83
                callf   sub_9
                or      ax,ax
                jnz     loc_87
loc_83::
                xchg    dl,dh
                cmp     cx,data_106
                jae     loc_85
                push    cx
                call    dword ptr cs:data_48
                pop     cx
                cmp     cx,ax
                jb      loc_84
                call    dword ptr cs:data_49
                jnz     loc_87
loc_84::
                call    dword ptr cs:data_47
                jmp     short loc_87
loc_85::
                push    cx
                call    dword ptr cs:data_48
                jcxz    loc_86
                call    dword ptr cs:data_49
                jz      loc_86
                pop     cx
                jmp     short loc_87
loc_86::
                pop     cx
                callf   sub_11
loc_87::
                pop     es
                pop     ds
                pop     dx
                pop     bx
                retf
loc_88::
                mov     ax,8856h
                jmp     short loc_87

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    far
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
                mov     ds,cs:data_42
                push    ds
                pop     es
                push    bx
                push    cx
                mov     cl,[bx+15h]
                xor     ch,ch
                mov     bx,0
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                xchg    bx,cx
                mov     cs:data_61[bx],cl
                pop     cx
                pop     bx
                test    byte ptr [bx+2Bh],0FFh
                jz      loc_89
                jmp     loc_98
loc_89::
                mov     data_117,7
                mov     di,offset data_135
                inc     di
                mov     al,[bx+2]
                stosb
                mov     ax,[bx+3]
                stosw
                mov     al,[bx+1]
                inc     di
                stosb
                and     al,4
                shl     al,1
                mov     dl,al
                mov     ax,[bx+19h]
                stosw
                mov     ax,[bx+1Bh]
                stosw
                lea     si,[bx+1Dh]
                mov     cx,0Dh
                rep     movsb
                mov     di,offset data_137
                lea     si,[bx+7]
                mov     cx,6
                rep     movsw
                mov     di,offset data_124
                xor     ax,ax
                mov     cx,80h
                shr     cx,1
                rep     stosw
                adc     cx,cx
                rep     stosb
                mov     ah,[bx+5]
                mov     si,ax
                mov     di,bx
                mov     bl,[bx+15h]
                mov     ax,seg_a
                mov     ds,ax
                call    sub_14
                call    sub_10
                mov     cx,[bx+4]
                xor     dh,dh
                or      dx,[bx+51h]
                push    es
                push    ds
                pop     es
                pop     ds
                push    bx
                call    sub_13
                jc      loc_90
                or      byte ptr [di+47h],2
                mov     ax,80h
                mov     data_118,ax
                mov     ax,11Dh
                xchg    al,ah
                mov     data_114,ax
                mov     byte ptr data_115,79h   ; 'y'
                mov     al,[di+15h]
                mov     di,offset data_130
                mov     [di],dx
                mov     di,offset data_129
                mov     [di],si
                mov     di,offset data_133      ; ('LPT  Catch')
                mov     dx,7A5h
                jmp     short loc_92
loc_90::
                or      ax,ax
                jz      loc_91
                pop     bx
                jmp     short loc_94
loc_91::
                and     byte ptr [di+47h],0FDh
                mov     ax,68h
                mov     data_118,ax
                mov     data_114,501h
                mov     byte ptr data_115,68h   ; 'h'
                mov     al,[di+15h]
                mov     di,offset data_127
                mov     [di],dl
                mov     di,offset data_126
                mov     [di],si
                mov     di,offset data_132
                mov     dx,795h
loc_92::
                pop     bx
                push    es
                push    ds
                pop     es
                pop     ds
                lea     si,[bx+47h]
                push    di
                mov     di,dx
                movsw
                movsw
                movsw
                movsw
                movsw
                pop     di
                lea     si,[bx+60h]
                cmp     word ptr [si],504Ch
                jne     loc_93
                add     al,31h                  ; '1'
                mov     [si+3],al
loc_93::
                push    cx
                mov     cx,6
                rep     movsw
                movsb
                pop     cx
                push    es
                pop     ds
                push    bx
                mov     bx,[bp-8]
                mov     di,offset data_116
                lea     si,[bx+39h]
                lodsw
                stosw
                lodsw
                stosw
                mov     bx,3
                mov     dx,1
                mov     si,6FFh
                mov     di,711h
                call    sub_1
                pop     bx
                jz      loc_96
loc_94::
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
loc_95::
                xor     ax,ax
                jmp     short loc_94
loc_96::
                mov     ax,es:[di]
                mov     si,ax
                push    bx
                mov     bx,[bp-8]
                mov     ax,seg_a
                mov     es,ax
                test    byte ptr [bx+47h],2
                jz      loc_97
                mov     ax,[si+26h]
                mov     [bx+3Dh],ax
                mov     ax,[si+28h]
                mov     [bx+41h],ax
                add     si,3Eh
                pop     bx
                lea     di,[bx+71h]
                xor     ax,ax
                stosw
                movsw
                movsw
                jmp     short loc_98
loc_97::
                mov     ax,[si+16h]
                mov     [bx+3Dh],ax
                pop     bx
                add     si,2Ah
                lea     di,[bx+71h]
                movsw
                movsw
                movsw
loc_98::
                mov     bx,[bp-8]
                les     di,dword ptr [bx+2Dh]
                inc     di
                inc     di
                test    word ptr [di],0FFFFh
                jz      loc_99
                push    cx
                mov     cx,[di]
                inc     di
                inc     di
                callf   sub_11
                pop     cx
                or      ax,ax
                jz      loc_99
                jmp     short loc_94
loc_99::
                mov     byte ptr [bx+36h],0FFh
                mov     byte ptr [bx+38h],0FFh
                test    word ptr [bx+16h],0FFFFh
                jz      loc_95
                mov     ax,[bx+16h]
                mov     [bx+45h],ax
                mov     ax,12h
                push    bx
                mov     bx,0
                mov     si,67Bh
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,data_1e
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                pop     bx
                jz      loc_100
                jmp     loc_94
loc_100::
                mov     byte ptr [bx+2Ch],0FFh
                jmp     loc_95
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    cx
                push    di
                push    si
                lea     si,[bx+53h]
                cmp     byte ptr [si],0
                jne     loc_101
                mov     si,offset data_53
                cmp     byte ptr [si],0
                je      loc_102
loc_101::
                mov     di,offset data_135
                add     di,20h
                mov     cx,0Dh
                rep     movsb
loc_102::
                pop     si
                pop     di
                pop     cx
                retn
sub_10          endp

loc_0ab3:
                push    bx
                push    si
                push    di
                push    ds
                push    es
                dec     bl
                js      loc_104
                jz      loc_105
                mov     ax,8836h
loc_103::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     bx
                retf
loc_104::
                mov     ax,seg_a
                mov     es,ax
                mov     di,offset data_53
                jmp     short loc_106
loc_105::
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_53
loc_106::
                push    cx
                mov     cx,0Ch
                rep     movsb
                pop     cx
                xor     ax,ax
                jmp     short loc_103

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    far

LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
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
                mov     es,cs:data_42
                mov     word ptr [bp+LOCAL_1],0
                mov     dx,cx
                mov     si,di
                mov     es,[bp-16h]
                push    bx
                call    sub_12
                pop     bx
                jz      loc_107
                push    ax
                mov     byte ptr [bx+38h],0
                xor     dh,dh
                mov     dl,[bx+15h]
                mov     bx,2
                callf   sub_8
                pop     ax
loc_107::
                mov     [bp-4],ax
                mov     cx,[bp+LOCAL_1]
                mov     [bp-6],cx
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
                add     sp,2
                pop     bp
                retf
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                push    ds
                push    es
                push    ds
                pop     es
                inc     byte ptr ds:data_7e
                pop     ax
                mov     di,data_6e
                mov     [di+0Ah],si
                mov     [di+0Ch],ax
                mov     bl,[bx+15h]
                mov     ax,seg_a
                mov     ds,ax
                call    sub_14
                lea     si,[bx+71h]
                push    di
                movsw
                movsw
                movsw
                movsw
                movsw
                pop     di
                push    cx
                mov     cx,[bx+4]
                push    bx
                xchg    bx,dx
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,41h
                push    bp
                mov     bp,7
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:data_45
                pop     bp
                xchg    bx,dx
                pop     bx
                pop     cx
                jnz     loc_108
                add     [bp-2],dx
                mov     ax,[bx+77h]
                add     ax,dx
                mov     [bx+77h],ax
                mov     ax,[bx+79h]
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [bx+79h],ax
                mov     bx,[bp-0Ah]
                push    es
                pop     ds
                mov     ax,[bx+16h]
                mov     [bx+45h],ax
                xor     ax,ax
loc_108::
                pop     ds
                dec     byte ptr es:data_7e
                or      ax,ax
                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                push    dx
                push    bx
                mov     bh,1
                call    sub_2
                cmp     dx,33h
                jne     loc_109
                clc
                jmp     short loc_110
loc_109::
                mov     bh,8
                call    sub_2
                xchg    dl,dh
                cmp     dx,30Bh
loc_110::
                pop     bx
                pop     dx
                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    ax
                mov     al,7Bh                  ; '{'
                mul     bl
                mov     bx,ax
                lea     bx,cs:[0E58h][bx]
                pop     ax
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    far
                push    bx
                push    di
                push    si
                push    ds
                push    es
                mov     ax,cs:data_42
                mov     ds,ax
                assume  ds:seg_b
                test    byte ptr data_111,0FFh
                jz      loc_111
                pushf
                call    dword ptr cs:data_50
loc_111::
                mov     ax,seg_a
                mov     ds,ax
                call    sub_16
                push    ds
                push    es
                pop     ds
                xor     cx,cx
                mov     ah,3Ch                  ; '<'
                call    sub_6
                pop     ds
                jnc     loc_112
                cmp     al,4
                mov     ax,8858h
                jnz     loc_114
                mov     ax,884Dh
                jmp     short loc_114
loc_112::
                assume  ds:seg_a
                mov     byte ptr data_72,0FFh
                mov     data_74,ax
                push    es
                mov     bx,ax
                mov     es,cs:data_42
                mov     di,340h
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,40h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_45
                pop     bp
                pop     bx
                jz      loc_113
                push    ax
                mov     byte ptr data_72,0
                mov     ah,3Eh                  ; '>'
                call    sub_6
                push    ds
                push    bx
                pop     ds
                mov     ah,41h                  ; 'A'
                call    sub_6
                pop     ds
                pop     ax
                jmp     short loc_114
loc_113::
                mov     si,data_144e
                xchg    di,si
                push    es
                push    ds
                pop     es
                pop     ds
                movsw
                movsw
                movsw
                push    es
                pop     ds
                xor     ax,ax
loc_114::
                call    sub_17
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     bx
                retf
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                pushf
                push    ax
                push    bx
                mov     ah,51h                  ; 'Q'
                call    sub_6
                mov     data_64,bx
                mov     bx,data_63
loc_115::
                mov     ah,50h                  ; 'P'
                call    sub_6
                pop     bx
                pop     ax
                popf
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                pushf
                push    ax
                push    bx
                mov     bx,data_64
                jmp     short loc_115
sub_17          endp

loc_0c85:
                push    di
                push    es
                mov     ax,seg_a
                mov     es,ax
                mov     di,offset data_43
                mov     ax,bx
                stosw
                mov     ax,dx
                stosw
                mov     es,cs:data_42
                mov     di,offset data_96
                mov     ax,bx
                stosw
                mov     ax,dx
                stosw
                pop     es
                pop     di
                xor     ax,ax
                retf
                db      8 dup (0)

loc_0cb0:
                db       1Eh, 06h, 53h, 51h, 52h, 2Eh
                db       8Eh, 1Eh,0E8h, 0Dh,0E3h, 5Bh
                db      0B0h, 17h,0BBh, 00h, 00h, 55h
                db      0BDh, 42h, 00h, 55h,0BDh, 01h
                db       00h, 55h,0BDh, 04h, 00h, 55h
                db       2Eh,0FFh, 1Eh,0EEh, 0Dh, 5Dh
                db       75h, 3Ch,0B0h, 2Ah,0BBh, 00h
                db       00h, 55h,0BDh, 42h, 00h, 55h
                db      0BDh, 01h, 00h, 55h,0BDh, 04h
                db       00h, 55h, 2Eh,0FFh, 1Eh,0EEh
                db       0Dh, 5Dh, 75h, 22h,0B0h, 28h
                db      0BBh, 00h, 00h, 55h,0BDh, 42h
                db       00h, 55h,0BDh, 01h, 00h, 55h
                db      0BDh, 04h, 00h, 55h, 2Eh,0FFh
                db       1Eh,0EEh
                db       0Dh, 5Dh, 75h, 08h
loc_116::
                xor     ax,ax
loc_117::
                pop     dx
                pop     cx
                pop     bx
                pop     es
                pop     ds
                retf
                                                ;* No entry point to code
                mov     ax,884Eh
                jmp     short loc_117
                                                ;* No entry point to code
                mov     ax,7A20h
                mov     bx,9
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jnz     loc_118
                cmp     bx,1
                jne     loc_118
                jmp     short loc_121
loc_118::
                xor     ax,ax
                mov     es,ax
                mov     bx,data_4e
                mov     cx,3

locloop_119::
                cmp     word ptr es:[bx],4E57h
                jne     loc_120
                mov     word ptr es:[bx],0
loc_120::
                inc     bx
                inc     bx
                loop    locloop_119

                mov     bx,data_5e
                push    es
                mov     ax,seg_a
                mov     es,ax
                mov     dx,es:data_41
                mov     cl,6
                shl     dl,cl
                or      dl,3Fh                  ; '?'
                pop     es
                and     es:[bx],dl
                mov     bx,1
                mov     dx,0
                nop
                callf   sub_8
                or      ax,ax
                jnz     loc_121
                les     di,cs:data_65
                test    cs:data_68,0FFFFh
                jz      loc_121
                mov     ax,cs:data_68
                mov     es:[di+9],ax
                mov     ax,cs:data_67
                mov     es:[di+7],ax
                mov     al,cs:data_69
                mov     es:[di+6],al
loc_121::
                push    ds
                lds     dx,dword ptr ds:[654h]
                mov     ax,2517h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                push    ds
                lds     dx,dword ptr ds:[658h]
                mov     ax,252Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                lds     dx,dword ptr ds:[65Ch]
                mov     ax,2528h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                jmp     loc_116

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                push    ax
                push    es
                xor     ax,ax
                mov     es,ax
                mov     ax,cs:data_42
                cmp     ax,es:data_3e
                pop     es
                pop     ax
                retn
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near

locloop_122::
                xor     ah,ah
                mov     al,es:[di]
                int     17h                     ; Printer  dx=prn1, ah=func 00h
                                                ;  print char al, get status ah
                inc     di
                loop    locloop_122

                retn
sub_19          endp

                db      15 dup (0)
data_38         db      8
                db      0
data_39         dw      0
data_40         dw      0                       ; segment storage
data_41         dw      0
data_42         dw      seg_b
data_43         dw      0, 0
data_45         dw      0, 0
data_47         dw      offset sub_22, seg sub_22
data_48         dw      offset sub_24, seg sub_24
data_49         dw      offset sub_25, seg sub_25
data_50         dw      offset sub_27, seg sub_27
data_51         dw      offset sub_28, seg sub_28
                db      0
data_53         db      0
                db      12 dup (0)
data_54         dw      3
data_55         dw      3
data_56         dw      40h
data_57         dw      40h
data_58         dw      10h
data_59         db      1
data_60         dw      36h                     ; Data table (indexed access)
                db       43h, 00h, 71h, 00h, 71h, 00h
data_61         db      0                       ; Data table (indexed access)
                db      8 dup (0)
data_63         dw      0
data_64         dw      0
data_65         dd      00000h
data_67         dw      0
data_68         dw      0
data_69         db      0
data_70         dw      0
data_71         dw      0
data_72         db      0
data_73         db      0
data_74         dw      0
data_75         db      0
                db      0, 0, 0, 0, 0
data_76         db      'LPT  Catch'
                db      0, 0, 0
data_78         db      0
                db      70 dup (0)
                db      10 dup (0FFh)
                db       10h, 00h
                db      13 dup (0)
                db      'LPT  Catch'
                db      30 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_94
                pop     bp
                retn
sub_20          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                push    ax
                mov     ax,cs:data_96
                or      ax,word ptr cs:data_96+2
                pop     ax
                jz      loc_123
                pushf
                call    dword ptr cs:data_96
                retn
loc_123::
                int     21h                     ; DOS Services  ah=function 51h
                                                ;  get active PSP segment in bx
                                                ;*  undocumented function
                retn
sub_21          endp

loc_124::
                pop     bx
                pop     dx
                cmp     dx,cs:data_105
                jae     loc_125
                jmp     dword ptr cs:data_98
loc_125::
                mov     ah,1
                iret
loc_126::
                mov     ah,90h
                jmp     loc_136
loc_127::
                push    dx
                push    bx
                cmp     dx,cs:data_104
                jae     loc_124
                xchg    dl,dh
                call    sub_23
                test    byte ptr cs:[bx+2Ah],0FFh
                jz      loc_124
                pop     bx
                pop     dx
                push    bx
                mov     bx,1
                call    sub_20
                pop     bx
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
                xchg    dl,dh
                call    sub_23
                xchg    dl,dh
                push    cs
                pop     ds
                mov     dh,al
                or      ah,ah
                jnz     loc_126
                cli
                inc     data_88
                cmp     byte ptr data_88,1
                ja      loc_128
                mov     data_86,sp
                mov     data_87,ss
                mov     ax,ds
                mov     ss,ax
                mov     sp,640h
loc_128::
                test    byte ptr [bx+36h],0FFh
                jnz     loc_129
                push    bp
                mov     bp,0
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_94
                pop     bp
                jnz     loc_134
loc_129::
                xchg    dh,dl
                push    ds
                pop     es
                test    data_106,0FFFFh
                jz      loc_131
                callf   sub_24
                or      ax,ax
                jnz     loc_130
                callf   sub_25
                jnz     loc_132
loc_130::
                mov     di,[bx+43h]
                add     di,[bx+3Fh]
                mov     [di],dl
                inc     word ptr [bx+3Fh]
                jmp     short loc_133
loc_131::
                mov     data_107,dl
                mov     di,6ABh
                call    sub_26
                jz      loc_133
loc_132::
                mov     ah,11h
                jmp     short loc_134
loc_133::
                mov     al,dl
                mov     ah,90h
loc_134::
                cli
                cmp     byte ptr data_88,1
                je      loc_135
                dec     data_88
                jmp     short loc_136
loc_135::
                mov     ss,data_87
                mov     sp,data_86
                dec     data_88
loc_136::
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
                push    bx
                mov     bx,2
                call    sub_20
                pop     bx
                iret
                                                ;* No entry point to code
                cmp     ah,0D8h
                jne     loc_137
                cmp     al,50h                  ; 'P'
                jb      loc_137
                cmp     al,51h                  ; 'Q'
                ja      loc_137
                mov     cs:data_90,al
loc_137::
                cmp     ah,80h
                jne     loc_138
                inc     cs:data_91
                jmp     short loc_140
loc_138::
                cmp     ah,81h
                jne     loc_139
                dec     cs:data_91
                jmp     short loc_140
loc_139::
                cmp     ah,82h
                jne     loc_140
                mov     byte ptr cs:data_91,0
loc_140::
                jmp     dword ptr cs:data_100

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    far
                push    bx
                push    cx
                push    di
                push    si
                mov     ax,cx
                add     ax,[bx+3Fh]
                cmp     ax,word ptr ds:[6A9h]
                ja      loc_142
                xchg    si,di
                mov     di,[bx+43h]
                add     di,[bx+3Fh]
                push    es
                push    ds
                pop     es
                pop     ds
                push    cx
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     cx
                push    ds
                push    es
                pop     ds
                pop     es
                add     [bx+3Fh],cx
                xor     ax,ax
loc_141::
                pop     si
                pop     di
                pop     cx
                pop     bx
                retf
loc_142::
                mov     ax,8836h
                jmp     short loc_141
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                push    ax
                mov     al,48h                  ; 'H'
                mul     dh
                mov     bx,8A7h
                add     bx,ax
                pop     ax
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    far
                mov     cx,[bx+3Fh]
                mov     ax,data_106
                sub     ax,[bx+3Fh]
                retf
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    far
                push    bx
                push    cx
                push    di
                push    ds
                push    es
                push    ds
                pop     es
                call    sub_23
                mov     cx,[bx+3Fh]
                mov     di,[bx+43h]
                call    sub_26
                jnz     loc_143
                mov     word ptr [bx+3Fh],0
loc_143::
                pop     es
                pop     ds
                pop     di
                pop     cx
                pop     bx
                or      ax,ax
                retf
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                push    bx
                call    sub_23
                push    bp
                mov     bp,0
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:data_94
                pop     bp
                pop     bx
                retn
sub_26          endp

                                                ;* No entry point to code
                push    es
                push    cs
                push    cs
                pop     ds
                pop     es
                push    bx
                mov     bx,1
                call    sub_20
                pop     bx
                inc     data_88
                cmp     byte ptr data_88,1
                ja      loc_144
                cli
                mov     data_86,sp
                mov     data_87,ss
                mov     ax,ds
                mov     ss,ax
                mov     sp,640h
                sti
loc_144::
                test    byte ptr data_109,0FFh
                jz      loc_145
                mov     ax,1
                jmp     short loc_151
loc_145::
                mov     byte ptr data_89,0
                mov     cx,data_104
                mov     si,offset data_139

locloop_146::
                test    byte ptr [si+2Ch],0FFh
                jz      loc_150
                dec     word ptr [si+45h]
                jz      loc_147
                inc     data_89
                jmp     short loc_150
loc_147::
                test    byte ptr cs:data_91,0FFh
                jz      loc_148
                inc     word ptr [si+45h]
                inc     data_89
                jmp     short loc_150
loc_148::
                cmp     byte ptr data_90,50h    ; 'P'
                jne     loc_149
                inc     word ptr [si+45h]
                inc     data_89
                jmp     short loc_150
loc_149::
                push    dx
                xor     dh,dh
                mov     dl,[si+15h]
                mov     di,offset data_122
                mov     [di+22h],dl
                mov     word ptr [di+1Ah],0
                push    cx
                push    si
                xor     ax,ax
                call    dword ptr data_92
                pop     si
                pop     cx
                pop     dx
loc_150::
                add     si,48h
                loop    locloop_146

                mov     ax,12h
                test    byte ptr data_89,0FFh
                jz      loc_152
loc_151::
                mov     di,offset data_120
                mov     [di+30h],ds
                mov     word ptr [di+26h],67Bh
                mov     [di+16h],ax
                mov     word ptr [di+1Ah],0
                xor     ax,ax
                call    dword ptr data_92
loc_152::
                cli
                cmp     byte ptr data_88,1
                je      loc_153
                dec     data_88
                jmp     short loc_154
loc_153::
                mov     ss,data_87
                mov     sp,data_86
                dec     data_88
loc_154::
                push    bx
                mov     bx,2
                call    sub_20
                pop     bx
                pop     es
                retf
                                                ;* No entry point to code
                test    byte ptr cs:data_91,0FFh
                jnz     loc_155
                test    byte ptr cs:data_112,0FFh
                jnz     loc_155
                test    byte ptr cs:data_111,0FFh
                jnz     loc_156
loc_155::
                jmp     dword ptr cs:data_101

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    far
loc_156::
                push    ax
                push    bx
                push    si
                push    ds
                push    es
                mov     bx,1
                call    sub_20
                push    cs
                push    cs
                pop     es
                pop     ds
                inc     data_112
                callf   sub_28
                dec     data_112
                mov     bx,2
                call    sub_20
                pop     es
                pop     ds
                pop     si
                pop     bx
                pop     ax
                iret
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    far
                push    bx
                push    cx
                push    si
                mov     ah,51h                  ; 'Q'
                call    sub_21
                push    bx
                mov     bx,data_113
                mov     ah,50h                  ; 'P'
                call    sub_21
                mov     cx,9
                mov     si,offset data_110

locloop_157::
                cmp     word ptr [si],0FFFFh
                je      loc_158
                mov     ah,3Eh                  ; '>'
                mov     bx,[si]
                mov     word ptr [si],0FFFFh
                call    sub_21
loc_158::
                inc     si
                inc     si
                loop    locloop_157

                mov     byte ptr data_111,0
                pop     bx
                mov     ah,50h                  ; 'P'
                call    sub_21
                pop     si
                pop     cx
                pop     bx
                retf
sub_28          endp

                db      262 dup (0)
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
                db      'SPSPSPSPSPSPSPSPSPSPSPSPSPSPSPSP'
data_86         dw      0
data_87         dw      0                       ; segment storage
data_88         db      0
data_89         db      0
data_90         db      0
data_91         db      0
data_92         dw      0, 0
data_94         dw      0, 0
data_96         dw      0, 0
data_98         dw      0, 0
data_100        dw      0, 0
data_101        dw      0, 0
                db      31 dup (0)
                db      0E0h, 01h
                dw      seg_b
                db      0, 0
                db      32 dup (0)
data_104        dw      3
data_105        dw      3
data_106        dw      40h
data_107        db      0
                db      49 dup (0)
data_109        db      0
data_110        dw      9 dup (0FFFFh)
data_111        db      0
data_112        db      0
data_113        dw      0
data_114        dw      0
data_115        db      0
data_116        dw      4 dup (0)
                db      0F4h, 06h
                dw      seg_b
data_117        dw      0
                db       8Fh, 07h
                dw      seg_b
data_118        dw      0
                db       0Fh, 08h
                dw      seg_b
                db       98h, 00h, 40h, 03h
                dw      seg_b
                db       56h, 00h
                dw      seg_b
                db      0, 0, 0, 0
                dw      seg_b
                db      0, 0
                db      0, 0
data_120        db      0
                db      9 dup (0)
                db       20h, 00h, 08h, 00h
                db      40 dup (0)
data_122        db      0
                db      9 dup (0)
                db       42h, 00h, 0Eh, 00h, 00h
                db      39 dup (0)
data_124        db      0
                db      21 dup (0)
                db      0FFh,0FFh
data_126        db      0FFh
                db      0FFh,0FFh
data_127        db      0FFh
                db      0FFh,0FFh,0FFh,0FFh
                db      10 dup (0)
data_129        db      0
                db      0, 0, 0
data_130        db      10h
                db      0
                db      0, 0, 0, 0, 0, 0
data_132        db      0
                db      23 dup (0)
data_133        db      'LPT  Catch'
                db      40 dup (0)
data_135        db      0
                db       08h, 00h, 01h, 00h, 80h, 00h
                db       42h, 00h, 84h, 00h, 00h
                db      33 dup (0)
data_137        db      4Ch
                db       53h, 54h, 3Ah, 00h
                db      102 dup (0)
data_139        db      0
                db       80h, 08h, 00h, 01h, 00h, 00h
                db       4Ch, 53h, 54h, 3Ah, 00h
                db      14 dup (0)
                db       42h, 00h, 84h, 00h, 00h
                db      22 dup (0)
                db      1, 0
                db      16 dup (0)
                db       80h, 00h

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                xchg    cx,ax
                mov     ax,seg_c
                mov     ds,ax
                push    bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_153,bx
                mov     word ptr data_153+2,es
                mov     bx,0
                mov     dx,41h
                call    dword ptr data_153
                pop     bx
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                xchg    cx,ax
                jz      loc_160
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,38Ch
                push    cs
                pop     ds
                call    dword ptr cs:data_153
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,39Fh
                push    ax
                push    cs
                mov     ax,38Ch
                push    ax
                push    cs
                mov     ax,39Fh
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_153
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,38Ch
                push    ax
                push    cs
                mov     ax,39Fh
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_153
                add     sp,0Ah
                pop     bx
loc_159::
                mov     ax,0FFFFh
                retf
loc_160::
                or      ax,ax
                jz      loc_161
                jmp     loc_166
loc_161::
                mov     data_147,0
                push    bx
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_b
                mov     es,ax
                mov     word ptr es:data_94,bx
                mov     word ptr es:data_94+2,cx
                mov     ax,seg_a
                mov     es,ax
                push    bx
                mov     ah,51h
                int     21h                     ; DOS Services  ah=function 51h
                                                ;  get active PSP segment in bx
                                                ;*  undocumented function
                mov     es:data_63,bx
                push    es
                mov     ax,seg_b
                mov     es,ax
                mov     es:data_113,bx
                pop     es
                pop     bx
                mov     word ptr es:data_45,bx
                mov     word ptr es:data_45+2,cx
                mov     data_155,bx
                mov     data_156,cx
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,3000h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                xchg    ah,al
                mov     dx,35h
                cmp     ax,400h
                jb      loc_162
                mov     dx,3Bh
loc_162::
                mov     ah,52h
                int     21h                     ; DOS Services  ah=function 52h
                                                ;  get DOS data table ptr es:bx
                                                ;*  undocumented function
                les     bx,dword ptr es:[bx+4]
                mov     cx,es:[bx+4]
                add     bx,6

locloop_163::
                cmp     word ptr es:[bx+20h],5250h
                jne     loc_164
                cmp     word ptr es:[bx+22h],204Eh
                jne     loc_164
                assume  ds:seg_a
                mov     word ptr data_65,bx
                mov     word ptr data_65+2,es
                jmp     short loc_165
loc_164::
                add     bx,dx
                loop    locloop_163

loc_165::
                pop     ds
                mov     ax,7A20h
                mov     bx,1
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_b
                mov     es,ax
                mov     word ptr es:data_92,bx
                mov     word ptr es:data_92+2,cx
                mov     ax,seg_a
                mov     es,ax
                pop     bx
                assume  ds:seg_c
                mov     data_157,bx
                push    bx
                push    ds
                mov     ax,49Dh
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_153
                add     sp,4
                pop     bx
                mov     ax,seg_c
                mov     ds,ax
                call    sub_30
loc_166::
                mov     ax,seg_c
                mov     ds,ax
                call    sub_29
                mov     ax,seg_a
                mov     es,ax
                test    es:data_54,0FFFFh
                jnz     loc_167
                jmp     loc_159
loc_167::
                mov     ax,4
                add     es:data_57,ax
                add     es:data_58,ax
                mov     dx,es:data_57
                add     dx,es:data_58
                add     dx,es:data_56
                mov     ax,dx
                mov     dx,es:data_54
                mul     dx
                mov     cx,ax
                mov     ax,48h
                mov     dx,es:data_54
                dec     dx
                mul     dx
                add     ax,cx
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
                mov     cl,4
                shr     ax,cl
                mov     cx,seg seg_c
                sub     cx,seg_b
                add     cx,ax
                mov     data_148,cx
                mov     ax,7Bh
                mov     dx,es:data_54
                dec     dx
                mul     dx
                push    cx
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
                mov     cl,4
                shr     ax,cl
                pop     cx
                mov     dx,seg seg_b
                sub     dx,seg_a
                add     dx,ax
                mov     data_149,dx
                mov     si,seg_a+1e0h
                sub     si,seg_c
                mov     data_150,si
                push    cx
                push    dx
                push    si
                cmp     data_147,0
                je      loc_168
                xor     ax,ax
                mov     bx,42h
                pop     si
                pop     dx
                pop     cx
                retf
loc_168::
                mov     bx,data_157
                mov     es:data_169e,bx
                mov     ax,seg_b
                mov     es,ax
                mov     dx,bx
                mov     si,offset data_162
                mov     cx,data_163
                jcxz    loc_170

locloop_169::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_169

loc_170::
                mov     ax,seg_a
                mov     es,ax
                mov     si,offset data_164
                mov     cx,data_165
                jcxz    loc_172

locloop_171::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_171

loc_172::
                mov     es,dx
                mov     bx,data_149
                add     bx,data_148
                mov     cx,seg seg_d
                sub     cx,seg_a
                cmp     bx,cx
                jb      loc_173
                sub     bx,cx
                mov     cx,seg_a+1e0h
                sub     cx,seg_d
                push    es
                mov     ax,seg_d
                mov     es,ax
                add     word ptr cs:data_151+2,bx
                push    es
                pop     ds
                mov     ax,es
                add     ax,bx
                mov     es,ax
                mov     ax,cx
                mov     cl,4
                shl     ax,cl
                mov     si,ax
                dec     si
                dec     si
                mov     di,si
                shr     ax,1
                mov     cx,ax
                std
                rep     movsw
                cld
                pop     es
loc_173::
                jmp     dword ptr cs:data_151

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
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
                mov     data_160,bx
                mov     word ptr data_160+2,es
                mov     cx,6
                mov     si,435h
                mov     di,376h
                push    ds
                pop     es
                call    dword ptr data_160
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
sub_29          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


print           proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      0, 0, 0

print           endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                push    ax
                push    bx
                push    cx
                push    di
                push    ds
                push    es
                xor     ax,ax
                mov     es,ax
                mov     ax,seg_a
                mov     ds,ax
                mov     al,es:data_5e
                rol     al,1
                rol     al,1
                and     al,3
                xor     ah,ah
                assume  ds:seg_a
                mov     data_55,ax
                mov     data_41,ax
                or      byte ptr es:data_5e,0C0h
                mov     di,data_4e
                mov     cx,3

locloop_174::
                test    word ptr es:[di],0FFFFh
                jnz     loc_175
                mov     word ptr es:[di],4E57h
loc_175::
                inc     di
                inc     di
                loop    locloop_174

                pop     es
                pop     ds
                pop     di
                pop     cx
                pop     bx
                pop     ax
                retn
sub_30          endp

                db      12 dup (0)
data_147        dw      0FFFFh
data_148        dw      0
data_149        dw      0
data_150        dw      0
data_151        dw      0, seg_d
data_153        dw      0, 0
data_155        dw      0
data_156        dw      0
data_157        dw      0
                db      'NETWARE DO'
                db      'S REQUESTER', 0
                db      'PRINT', 0
                db      'DOSRQSTR.MSG', 0
                db      'FIO'
                db      0
data_160        dw      0, 0
                db      'PRINT HEADER'
                db       00h, 1Ah, 0Eh
                dw      seg_a
                db      0, 0, 0, 4
                db      'PRINT TAIL'
                db       00h, 1Ch, 0Eh
                dw      seg_a
                db      0, 0, 0, 4
                db      'PRINT BUFFER SIZE'
                db       00h, 18h, 0Eh
                dw      seg_a
                db      0, 0, 0, 1
                db      'NETWORK PRINTERS'
                db       00h, 14h, 0Eh
                dw      seg_a
                db      0, 0, 9, 0
                db      'LOCAL PRINTERS'
                db       00h, 16h, 0Eh
                dw      seg_a
                db      0, 0, 9, 0
                db      'RESET PRINTER FLAGS'
                db       00h, 1Eh, 0Eh
                dw      seg_a
                db       00h, 00h,0FFh,0FFh,0A7h, 03h
                db       0Dh, 01h, 02h, 00h,0B4h, 03h
                db      0BCh, 03h, 0Bh, 01h, 02h, 00h
                db      0C7h, 03h,0CFh, 03h, 12h, 00h
                db       02h, 00h,0E1h, 03h,0E9h, 03h
                db       11h, 00h, 02h, 00h,0FAh, 03h
                db       02h, 04h, 0Fh, 01h, 02h, 00h
                db       11h, 04h, 19h, 04h, 14h, 00h
                db       04h, 00h, 2Dh, 04h
data_162        db      1
                db       07h, 07h, 07h, 0Dh, 07h, 13h
                db       07h, 81h, 06h
data_163        dw      5
data_164        db      0F4h
                db       0Dh,0F8h, 0Dh,0FCh, 0Dh, 00h
                db       0Eh, 04h, 0Eh
data_165        dw      5
                db      19 dup (0)
                db      'VeRsIoN=1.21', 0
                db      'PRINT.VLM    - NetWare printer r'
                db      'edirection module  v1.21 (960514'
                db      ')', 0Dh, 0Ah
                db      16 dup (0)

seg_c           ends



;------------------------------------------------------------  seg_d   ----

seg_d           segment byte public
                assume cs:seg_d  , ds:seg_d

                                                ;* No entry point to code
                mov     cx,seg seg_b
                mov     ds,cx
                mov     si,seg seg_c
                sub     si,seg_b
                mov     ax,si
                mov     cl,4
                shl     si,cl
                dec     si
                dec     si
                mov     di,si
                mov     cl,3
                shl     ax,cl
                mov     cx,ax
                std
                rep     movsw
                cld
                push    es
                pop     ds
                mov     ax,3528h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds:data_172e,bx
                mov     ds:data_173e,es
                mov     ax,2528h
;*              mov     dx,offset loc_177       ;*
                db      0BAh,0BBh, 02h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,352Ah
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds:data_170e,bx
                mov     ds:data_171e,es
                mov     ax,252Ah
                mov     dx,offset int_2Ah_entry
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     es,data_42
                mov     ax,data_54
                mov     es:data_104,ax
                mov     ax,data_56
                mov     es:data_106,ax
                mov     ax,data_55
                mov     es:data_105,ax
                push    ds
                pop     es
                mov     si,offset data_78
                mov     di,si
                mov     ax,7Bh
                add     di,ax
                mov     cx,data_54
                dec     cx
                mul     cl
                mov     cx,ax
                rep     movsb
                mov     es,data_42
                push    es
                pop     ds
                mov     si,offset data_139
                mov     di,si
                mov     ax,48h
                add     di,ax
                assume  ds:seg_b
                mov     cx,data_104
                dec     cx
                mul     cl
                mov     cx,ax
                rep     movsb
                mov     ax,48h
                mov     bx,offset data_139
                mov     cx,data_104
                push    ax
                mul     cx
                pop     dx
                mov     di,bx
                add     di,ax
                mov     si,cx
                mov     ax,seg_a
                mov     es,ax

locloop_176::
                push    si
                xchg    si,cx
                sub     cx,si
                mov     [bx+15h],cl
                xchg    si,cx
                pop     si
                mov     [bx+43h],di
                add     di,es:data_56
                mov     [bx+2Dh],di
                mov     [bx+2Fh],ds
                mov     ax,es:data_57
;*              sub     ax,4
                db       2Dh, 04h, 00h
                mov     [di],ax
                mov     word ptr [di+2],0
                add     di,es:data_57
                mov     [bx+31h],di
                mov     [bx+33h],ds
                mov     ax,es:data_58
;*              sub     ax,4
                db       2Dh, 04h, 00h
                mov     [di],ax
                mov     word ptr [di+2],0
                add     di,es:data_58
                add     bx,dx
                loop    locloop_176

                call    sub_31
                xor     ax,ax
                mov     bx,42h
                pop     si
                pop     dx
                pop     cx
                retf
                db      0, 0, 0, 0, 0, 0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                mov     ax,3517h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     word ptr data_98,bx
                mov     word ptr data_98+2,es
                push    ds
sub_31          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_2Ah_entry   proc    far
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     data_39,bx
                mov     data_40,es
                pop     ds
                mov     ax,2517h
                mov     dx,offset loc_127
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                retn
int_2Ah_entry   endp


seg_d           ends



                end     start
