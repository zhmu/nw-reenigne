; The following equates show data references outside the range of the program.

data_1e         equ     3
data_2e         equ     9
data_3e         equ     0Ah
data_4e         equ     0Eh
data_5e         equ     1Ah
data_6e         equ     2Eh
data_7e         equ     3                       ;*
data_8e         equ     0Ch                     ;*
data_9e         equ     2Eh                     ;*
data_10e        equ     2                       ;*
data_11e        equ     3                       ;*
data_12e        equ     0Eh                     ;*
data_13e        equ     0                       ;*
data_14e        equ     3                       ;*
data_15e        equ     0Ch                     ;*
data_16e        equ     26h                     ;*
data_17e        equ     2                       ;*
data_18e        equ     3                       ;*
data_19e        equ     0Eh                     ;*
data_170e       equ     8020h                   ;*
data_296e       equ     954Bh                   ;*
data_324e       equ     3
data_325e       equ     0Eh

include common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0h, seg_c
                dw      offset loc_006a, seg_a
                dw      offset loc_00c3, seg_a
                dw      offset loc_00da, seg_a
                dw      offset loc_00fb, seg_a
                dw      offset loc_0136, seg_a
                dw      offset sub_4,    seg_a
                dw      offset loc_0290, seg_a
                dw      offset loc_02ee, seg_a
                dw      offset loc_031f, seg_a
                dw      offset loc_035f, seg_a
                dw      0, 0

                db      'NVlm'
                dw      VLMID_FIO

                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                retn
sub_3           endp

data_45         dw      offset loc_2            ; Data table (indexed access)
data_46         dw      offset loc_1
data_47         dw      offset loc_4
data_48         dw      offset loc_6
data_49         dw      offset loc_1
data_50         dw      offset loc_7

loc_006a:
                db       83h,0FBh, 06h, 72h, 04h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                add     bx,bx
                jmp     word ptr cs:data_45[bx] ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
                mov     bx,1
                mov     cx,15h
loc_3::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
                cmp     cs:data_150,0
                je      loc_5
                call    sub_23
loc_5::
                jmp     short loc_3

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                cmp     cs:data_150,0
                je      loc_7
                call    sub_27

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_7::
                push    di
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     bx,cx
                mov     cx,data_148
                jcxz    loc_10
                mov     di,data_160

locloop_8::
                cmp     [di+0Eh],bx
                jne     loc_9
                call    sub_10
loc_9::
                add     di,12h
                loop    locloop_8

loc_10::
                mov     cx,bx
                pop     es
                pop     ds
                pop     di
                jmp     short loc_3

loc_00c3:
                cmp     cs:data_150,0
                je      loc_11
                call    sub_28
loc_11::
                mov     ds,cs:data_151
                jcxz    loc_12
                jmp     short loc_12
loc_12::
                xor     ax,ax
                retf

loc_00da:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_134
                cmp     cx,[si]
                jbe     loc_13
                mov     cx,[si]
loc_13::
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

loc_00fb:
                call    sub_12
                cmp     byte ptr cs:data_146,0
                jne     loc_14
                and     ah,1
loc_14::
                or      ah,ah
                jz      loc_16
                push    ds
                push    di
                push    cx
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                call    sub_13
                pop     ax
                pop     cx
                or      di,di
                jz      loc_15
                inc     data_140
                mov     [di],ah
                mov     [di+2],bx
                mov     [di+4],dx
                mov     [di+6],si
                mov     [di+0Eh],cx
loc_15::
                pop     di
                pop     ds
loc_16::
                xor     ax,ax
                retf

loc_0136:
                push    bx
                push    dx
                push    si
                push    ds
                push    cx
                push    di
                push    es
                mov     ax,seg_a
                mov     ds,ax
                inc     di
                call    sub_6
                or      di,di
                jz      loc_18
                mov     es,data_151
                test    byte ptr [di],4
                jz      loc_17
                push    bx
                call    sub_8
                pop     bx
                cmp     ax,8901h
                je      loc_21
loc_17::
                call    sub_10
loc_18::
                mov     ds,cs:data_151
                mov     si,offset data_174
                pop     word ptr [si+2]
                pop     word ptr [si]
                pop     cx
                or      bx,bx
                jz      loc_19
                mov     word ptr [si+4],0Bh
                mov     al,4Bh                  ; 'K'
                mov     bx,1
                xor     dx,dx
;*              call    sub_2                   ;*
                db      0E8h,0B5h,0FEh
                cmp     ah,88h
                je      loc_20
loc_19::
                mov     word ptr [si+4],7
                mov     al,42h                  ; 'B'
                mov     bx,1
                xor     dx,dx
;*              call    sub_2                   ;*
                db      0E8h,0A1h,0FEh
loc_20::
                pop     ds
                pop     si
                pop     dx
                pop     bx
                retf
loc_21::
                pop     es
                pop     di
                pop     cx
                jmp     short loc_20

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    far
                push    bx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     es,data_151
                cmp     byte ptr data_146,0
                je      loc_22
                mov     di,offset data_193
                mov     es:[di],bx
                mov     es:[di+2],dx
                mov     es:[di+4],si
                call    sub_6
                or      di,di
                jz      loc_22
                test    byte ptr [di],4
                jz      loc_22
                push    cx
                call    sub_8
                pop     cx
                cmp     ax,8901h
                je      loc_25
loc_22::
                cmp     byte ptr data_147,0
                je      loc_24
                push    ds
                mov     ds,cx
                mov     dx,ds:data_3e
                pop     ds
                xchg    dh,dl
                mov     al,3Bh                  ; ';'
                cmp     dx,301h
                jae     loc_23
                mov     al,3Dh                  ; '='
loc_23::
                push    es
                pop     ds
                mov     si,offset data_174
                mov     word ptr [si],2Eh
                mov     [si+2],ds
                mov     word ptr [si+4],7
                mov     bx,1
                xor     dx,dx
;*              call    sub_2                   ;*
                db      0E8h, 29h,0FEh
                jmp     short loc_25
loc_24::
                xor     ax,ax
loc_25::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     bx
                retf
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    di
                push    es
                mov     ds,cs:data_151
                assume  ds:seg_b
                mov     data_186,cx
                mov     si,2fh
                xchg    si,di
                push    ds
                push    es
                pop     ds
                pop     es
                movsw
                movsw
                movsw
                lodsw
                mov     es:data_199,ax
                xchg    ah,al
                xchg    cx,ax
                lodsw
                mov     es:data_200,ax
                xchg    ah,al
                stosw
                xchg    cx,ax
                stosw
                mov     di,offset data_178
                movsw
                movsw
                push    es
                pop     ds
                mov     data_201,bx
                mov     data_203,bx
                mov     cx,data_186
                push    ds
                mov     ds,cx
                mov     dh,20h                  ; ' '
                mov     dl,ds:data_1e
                and     dl,dh
                sub     dh,dl
                sub     dh,1
                mov     dx,0
                adc     dl,0
                pop     ds
                mov     data_188,dl
                push    ds
                mov     ds,cx
                mov     dx,ds:data_4e
                xor     ax,ax
                pop     ds
                mov     data_187,dx
                mov     data_189,ax
                mov     data_190,ax
                mov     data_202,ax
                mov     bx,seg seg_a
                mov     ds,bx
                pop     es
                pop     di
                or      ax,ax
                retn
sub_5           endp

loc_0290:
                push    cx
                push    si
                push    ds
                push    di
                push    es
                call    sub_5
                jnz     loc_29
                assume  ds:seg_a
                inc     data_137
                call    sub_6
                mov     es,data_151
                or      di,di
                jz      loc_28
                cmp     byte ptr data_146,0
                je      loc_27
                test    byte ptr [di],2
                jz      loc_27
                cmp     es:data_201,0
                je      loc_26
                call    sub_14
                jmp     short loc_29
loc_26::
                call    sub_7
                jmp     short loc_28
loc_27::
                call    sub_11
                or      ax,ax
                jnz     loc_28
                mov     word ptr [di+0Ch],0
loc_28::
                call    sub_15
loc_29::
                pop     es
                pop     di
                mov     ds,cs:data_151
                assume  ds:seg_b
                mov     bx,data_189
                add     es:[di+6],bx
                adc     word ptr es:[di+8],0
                pop     ds
                pop     si
                pop     cx
                retf

loc_02ee:
                push    cx
                push    si
                push    ds
                push    di
                push    es
                call    sub_5
                jnz     loc_32
                assume  ds:seg_a
                inc     data_136
                call    sub_6
                mov     es,data_151
                or      di,di
                jz      loc_31
                call    sub_7
                jnz     loc_30
                test    byte ptr [di],1
                jz      loc_31
                call    sub_16
loc_30::
                jmp     short loc_29
loc_31::
                mov     es,data_151
                call    sub_17
loc_32::
                jmp     short loc_29

loc_031f:
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
                mov     es,data_151
                cmp     byte ptr data_146,0
                je      loc_35
                mov     cx,data_148
                jcxz    loc_35
                mov     di,data_160

locloop_33::
                test    byte ptr [di],4
                jz      loc_34
                push    cx
                call    sub_8
                pop     cx
loc_34::
                add     di,12h
                loop    locloop_33

loc_35::
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
                xor     ax,ax
                retf

loc_035f:
                push    si
                push    ds
                mov     ds,cs:data_151
                mov     bx,es:[di+1]
                mov     dx,es:[di+3]
                mov     si,es:[di+5]
                callf   sub_4
                jnz     loc_36
                mov     bx,es:[di+7]
                mov     dx,es:[di+9]
                mov     si,es:[di+0Bh]
                callf   sub_4
                jnz     loc_36
                mov     si,offset data_174
                mov     [si],di
                mov     [si+2],es
                mov     word ptr [si+4],19h
                push    di
                push    es
                push    ds
                pop     es
                mov     di,offset data_175
                mov     word ptr [di],1Ch
                mov     [di+2],ds
                mov     word ptr [di+4],4
                mov     al,4Ah                  ; 'J'
                mov     bx,1
                mov     dx,bx
;*              call    sub_2                   ;*
                db      0E8h, 82h,0FCh
                pop     es
                pop     di
                assume  ds:seg_b
                mov     bx,data_185
                xchg    bh,bl
                mov     dx,data_184
                xchg    dh,dl
loc_36::
                pop     ds
                pop     si
                retf
                                                ;* No entry point to code
                cmp     bh,1
                jbe     loc_37
                mov     ax,8811h
                retf
loc_37::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                jz      loc_40
                cmp     bl,1
                ja      loc_39
                xor     bh,bh
                assume  ds:seg_a
                mov     bl,data_146[bx]
loc_38::
                xor     ax,ax
                pop     ds
                retf
loc_39::
                mov     ax,8836h
                pop     ds
                retf
loc_40::
                cmp     bl,1
                ja      loc_39
                xor     bh,bh
                xchg    data_146[bx],bl
                jmp     short loc_38

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    bp
                mov     bp,cx
                mov     cx,data_148
                jcxz    loc_43
                mov     ax,es:[di]
                mov     bx,es:[di+2]
                mov     dx,es:[di+4]
                mov     di,data_160
loc_41::
                cmp     [di+2],ax
                je      loc_44
loc_42::
                add     di,12h
                dec     cx
                jnz     loc_41
loc_43::
                xor     di,di
                jmp     short loc_45
loc_44::
                cmp     [di+4],bx
                jne     loc_42
                cmp     [di+6],dx
                jne     loc_42
                cmp     [di+0Eh],bp
                jne     loc_42
loc_45::
                pop     bp
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                test    byte ptr [di],4
                jnz     loc_46
                xor     ax,ax
                retn
loc_46::
                push    ds
                push    es
                pop     ds
                assume  ds:seg_b
                push    data_196
                push    data_197
                push    word ptr data_178
                push    word ptr data_178+2
                push    data_201
                push    data_189
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                call    sub_9
                pop     ds
                pop     data_189
                pop     data_201
                pop     word ptr data_178+2
                pop     word ptr data_178
                pop     data_197
                pop     data_196
                pop     ds
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                mov     ax,seg_a
                mov     ds,ax
                mov     cx,[di+0Eh]
                mov     es:data_186,cx
                push    ds
                mov     ds,cx
                mov     dh,20h                  ; ' '
                mov     dl,ds:data_324e
                and     dl,dh
                sub     dh,dl
                sub     dh,1
                mov     dx,0
                adc     dl,0
                mov     es:data_188,dl
                mov     dx,ds:data_325e
                pop     ds
                mov     es:data_187,dx

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_9::
                push    di
                mov     si,2fh
                xchg    si,di
                lodsw
                mov     cx,3
                rep     movsw
                lodsw
                xchg    ah,al
                xchg    cx,ax
                lodsw
                xchg    ah,al
                stosw
                xchg    cx,ax
                stosw
                lodsw
                mov     es:data_201,ax
                lodsw
                lodsw
                mov     word ptr es:data_178,ax
                mov     word ptr es:data_178+2,es
                xor     ax,ax
                mov     es:data_189,ax
                mov     es:data_202,ax
                call    sub_15
                pop     di
                or      ax,ax
                jnz     loc_ret_47
                and     byte ptr [di],0FBh
                or      ax,ax

loc_ret_47::
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    cx
                push    di
                push    es
                push    ds
                pop     es
                xor     ax,ax
                mov     cx,7
                rep     stosw
                pop     es
                pop     di
                pop     cx
                retn
sub_10          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                mov     ax,es:data_199
                mov     bx,es:data_200
                mov     cx,[di+0Ch]
                jcxz    loc_49
                push    dx
                mov     si,[di+8]
                mov     dx,[di+0Ah]
                add     si,cx
                adc     dx,0
                sub     si,ax
                sbb     dx,bx
                pop     dx
                js      loc_48
                jnz     loc_48
                sub     cx,si
                jc      loc_48
                xchg    cx,si
                add     si,[di+10h]
                xor     ax,ax
                retn
loc_48::
                mov     ax,1
                retn
loc_49::
                mov     [di+8],ax
                mov     [di+0Ah],bx
                and     byte ptr [di],0F7h
                xor     ax,ax
                mov     cx,ax
                mov     si,[di+10h]
                retn
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                push    bx
                push    cx
                push    ds
                mov     bx,seg seg_a
                mov     ds,bx
                mov     bx,offset data_159
                mov     cl,4
                shr     al,cl
                and     al,7
                xlat
                assume  ds:seg_a
                cmp     byte ptr data_146,0
                jne     loc_50
                and     al,1
loc_50::
                mov     ah,al
                pop     ds
                pop     cx
                pop     bx
                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                mov     cx,data_148
                jcxz    loc_53
                mov     di,data_160

locloop_51::
                cmp     [di],ch
                jne     loc_52
                call    sub_10
                jmp     short loc_ret_54
loc_52::
                add     di,12h
                loop    locloop_51

                inc     data_141
loc_53::
                xor     di,di

loc_ret_54::
                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                test    byte ptr [di],4
                jnz     loc_56
loc_55::
                xor     cx,cx
                mov     si,[di+10h]
                jmp     loc_60
loc_56::
                call    sub_11
                or      ax,ax
                jz      loc_57
                call    sub_7
                mov     word ptr [di+0Ch],0
                jmp     short loc_55
loc_57::
                mov     cx,si
                sub     cx,[di+10h]
                mov     ax,cx
                mov     bx,es:data_201
                add     ax,bx
                jc      loc_59
                cmp     data_149,ax
                jb      loc_59
                mov     cx,bx
                cmp     byte ptr es:data_188,0
                jne     loc_58
                mov     bx,ax
                add     ax,[di+8]
                dec     ax
                and     ax,0FFFh
                inc     ax
                cmp     ax,bx
                jae     loc_58
                sub     cx,ax
                push    ax
                push    di
                push    ds
                mov     si,[di+10h]
                add     si,[di+0Ch]
                add     [di+0Ch],cx
                add     es:data_189,cx
                sub     es:data_201,cx
                sub     es:data_203,cx
                lds     di,es:data_178
                xchg    si,di
                rep     movsb
                assume  ds:seg_b
                mov     word ptr es:data_178,si
                pop     ds
                pop     di
                call    sub_7
                xor     ax,ax
                mov     cx,[di+0Ch]
                add     [di+8],cx
                adc     [di+0Ah],ax
                mov     [di+0Ch],ax
                mov     si,[di+10h]
                pop     cx
loc_58::
                jmp     loc_68
loc_59::
                mov     si,[di+10h]
                mov     es:data_175,si
                mov     es:data_176,es
                mov     ax,[di+0Ah]
                xchg    ah,al
                mov     es:data_196,ax
                mov     ax,[di+8]
                xchg    ah,al
                mov     es:data_197,ax
loc_60::
                push    es
                pop     ds
                mov     data_202,cx
                mov     data_204,cx
                mov     bx,0FFFh
                cmp     byte ptr data_188,0
                je      loc_61
                mov     bx,0FFFFh
loc_61::
                add     cx,data_201
                mov     ax,data_197
                xchg    ah,al
                add     ax,cx
                dec     ax
                and     ax,bx
                inc     ax
                dec     cx
                and     cx,bx
                inc     cx
                cmp     ax,cx
                jb      loc_62
                mov     ax,cx
loc_62::
                xor     dx,dx
                div     data_187
                or      dx,dx
                jnz     loc_63
                cmp     byte ptr data_188,0
                je      loc_64
                mov     dx,cs:data_149
                jmp     short loc_64
loc_63::
                cmp     dx,cs:data_149
                jbe     loc_64
                xor     dx,dx
loc_64::
                mov     ax,data_201
                cmp     ax,dx
                ja      loc_65
                mov     dx,ax
loc_65::
                sub     ax,dx
                mov     data_201,ax
                or      ax,data_202
                jnz     loc_66
                mov     cx,dx
                or      dx,dx
                jnz     loc_67
loc_66::
                push    dx
                push    di
                push    word ptr data_178
                push    word ptr data_178+2
                push    data_201
                push    ds
                mov     di,seg seg_a
                mov     ds,di
                call    sub_15
                pop     ds
                pop     data_201
                pop     word ptr data_178+2
                pop     word ptr data_178
                pop     di
                pop     cx
                or      ax,ax
                jnz     loc_71
loc_67::
                mov     ax,data_204
                sub     data_189,ax
                mov     ax,data_189
                xor     dx,dx
                cmp     data_201,ax
                jne     loc_71
                add     word ptr data_178,ax
                add     ax,data_199
                adc     dx,data_200
                mov     si,seg seg_a
                mov     ds,si
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     si,[di+10h]
                mov     word ptr [di+0Ch],0
loc_68::
                jcxz    loc_69
                assume  ds:seg_a
                inc     data_139
                add     es:data_189,cx
                push    di
                push    ds
                lds     di,es:data_178
                xchg    si,di
                shr     cx,1
                rep     movsw
                adc     cx,0
                rep     movsb
                pop     ds
                pop     ax
                xchg    di,ax
                sub     ax,[di+10h]
                cmp     ax,[di+0Ch]
                jb      loc_69
                mov     [di+0Ch],ax
loc_69::
                and     byte ptr [di],0F3h
                cmp     word ptr [di+0Ch],0
                je      loc_70
                or      byte ptr [di],4
loc_70::
                xor     ax,ax
loc_71::
                mov     bx,seg seg_a
                mov     ds,bx
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                mov     ax,es:data_201
                xor     dx,dx
                add     ax,es:data_202
                adc     dx,0
                mov     es:data_192,dx
                mov     es:data_191,ax
                cmp     data_150,0
                je      loc_73
                or      dx,dx
                jnz     loc_72
                cmp     es:data_187,ax
                jae     loc_73
loc_72::
                mov     cx,es:data_186
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_1e,1
                pop     ds
                jz      loc_73
                inc     data_145
                call    sub_34
                retn
loc_73::
                inc     data_143
                call    sub_20
                retn
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                call    sub_11
                or      ax,ax
                jz      loc_74
                inc     byte ptr [di+1]
                cmp     byte ptr [di+1],4
                jb      loc_79
                and     byte ptr [di],0FEh
                jmp     short loc_79
loc_74::
                test    byte ptr [di],8
                jnz     loc_75
                jcxz    loc_77
loc_75::
                inc     data_138
                shr     byte ptr [di+1],1
                push    di
                push    ds
                push    es
                push    es
                pop     ds
                assume  ds:seg_b
                les     di,data_178
                mov     ax,data_201
                cmp     cx,ax
                jb      loc_76
                mov     cx,ax
loc_76::
                push    cx
                shr     cx,1
                rep     movsw
                adc     cx,0
                rep     movsb
                pop     cx
                pop     es
                mov     data_189,cx
                add     word ptr data_178,cx
                adc     word ptr data_178+2,0
                mov     dx,data_196
                xchg    dh,dl
                mov     ax,data_197
                xchg    ah,al
                add     ax,cx
                adc     dx,0
                xchg    dh,dl
                xchg    ah,al
                mov     data_196,dx
                mov     data_197,ax
                pop     ds
                pop     di
loc_77::
                test    byte ptr [di],8
                jnz     loc_78
                sub     es:data_201,cx
                ja      loc_79
loc_78::
                mov     ax,seg_a
                mov     ds,ax
                xor     ax,ax
                retn
loc_79::
                mov     word ptr [di+0Ch],0
                and     byte ptr [di],0F7h
                mov     bx,[di+10h]
                push    es
                pop     ds
                mov     data_181,bx
                mov     data_182,ds
                mov     cx,data_201
                mov     ax,cx
                mov     bx,data_187
                xor     dx,dx
                div     bx
                sub     bx,dx
                mov     ax,data_197
                xchg    ah,al
                add     ax,cx
                mov     dx,0FFFh
                cmp     byte ptr data_188,0
                je      loc_80
                mov     dx,0FFFFh
loc_80::
                dec     ax
                and     ax,dx
                inc     ax
                inc     dx
                sub     dx,ax
                xchg    dx,ax
                cmp     ax,bx
                jb      loc_81
                xchg    bx,ax
loc_81::
                mov     bx,cs:data_149
                cmp     data_187,bx
                jae     loc_82
                cmp     ax,bx
                jae     loc_83
                xchg    bx,ax
                jmp     short loc_83
loc_82::
                cmp     ax,bx
                jb      loc_83
                xchg    bx,ax
loc_83::
                mov     data_202,ax
                mov     data_204,ax
                push    di
                push    ds
                mov     di,seg seg_a
                mov     ds,di
                call    sub_17
                pop     ds
                pop     di
                or      ax,ax
                jnz     loc_86
                mov     ax,data_189
                mov     dx,data_190
                mov     cx,data_203
                sub     ax,cx
                sbb     dx,0
                jc      loc_85
                sub     data_189,ax
                cmp     data_204,ax
                mov     bx,seg seg_a
                mov     ds,bx
                jz      loc_84
                or      byte ptr [di],8
loc_84::
                mov     [di+0Ch],ax
                mov     ax,es:data_199
                mov     dx,es:data_200
                add     ax,cx
                adc     dx,0
                mov     [di+8],ax
                mov     [di+0Ah],dx
loc_85::
                xor     ax,ax
loc_86::
                mov     bx,seg seg_a
                mov     ds,bx
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                mov     ax,es:data_201
                xor     dx,dx
                add     ax,es:data_202
                adc     dx,0
                mov     es:data_192,dx
                mov     es:data_191,ax
                mov     bx,ax
                or      bx,dx
                jnz     loc_87
                retn
loc_87::
                assume  ds:seg_a
                cmp     data_150,0
                je      loc_89
                or      dx,dx
                jnz     loc_88
                cmp     es:data_187,ax
                jae     loc_89
loc_88::
                mov     cx,es:data_186
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_1e,1
                pop     ds
                jz      loc_89
                inc     data_144
                call    sub_30
                retn
loc_89::
                inc     data_142
                call    sub_19
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                mov     ax,41h
                push    ax
                push    ds:[20h]
                call    dword ptr cs:data_154
                pop     ax
                add     sp,2
                or      ax,ax
                jz      loc_90
                or      byte ptr cs:data_156,1
                xor     ax,ax
                retn
loc_90::
                mov     ax,8801h
                or      ax,ax
                retn
sub_18          endp

                db      0, 0, 0
data_113        db      0
                db      0
data_114        dw      0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                mov     byte ptr data_156,0
                push    ds
                push    es
                pop     ds
                mov     di,offset data_174
                mov     si,di
                mov     ax,2Eh
                stosw
                mov     ax,ds
                stosw
                mov     ax,0Dh
                stosw
                mov     ax,1Ch
                stosw
                mov     ax,ds
                stosw
loc_91::
                mov     ax,ds:[37h]
                xchg    ah,al
                push    ax
                mov     dx,ds:[22h]
                shr     ax,1
                mov     ax,0
                pushf
                adc     al,2
                mov     di,offset data_177
                stosw
                popf
                sbb     dx,0
                pop     ax
                mov     bx,0FFFFh
                test    bl,byte ptr ds:[24h]
                jnz     loc_92
                and     ax,0FFFh
                neg     ax
                add     ax,1000h
                xchg    bx,ax
loc_92::
                xchg    bx,ax
                mov     bx,ds:[2Ah]
                cmp     ds:[2Ch],0
                je      loc_93
                mov     bx,0FFFFh
loc_93::
                cmp     bx,ax
                ja      loc_94
                xchg    bx,ax
loc_94::
                cmp     dx,ax
                ja      loc_95
                xchg    dx,ax
loc_95::
                mov     dx,ax
                mov     cx,ds:[3Fh]
                sub     ax,cx
                jnc     loc_96
                add     cx,ax
loc_96::
                mov     ax,dx
                sub     ax,cx
                sub     ds:[3Fh],cx
                mov     ds:[14h],cx
                sub     ds:[41h],ax
                mov     ds:[1Ah],ax
                xchg    dh,dl
                mov     ds:[39h],dx
                mov     cx,ds:[20h]
                push    ds
                mov     ds,cx
                mov     dx,ds:data_13e
                pop     ds
                cmp     dx,33h
                jne     loc_97
                mov     ax,ds:[2Ah]
                mov     ds:[33h],ax
loc_97::
                mov     al,48h                  ; 'H'
                mov     bx,301h
                mov     dx,3
                mov     di,0Ah
;*              call    sub_2                   ;*
                db      0E8h, 57h,0F6h
                jnz     loc_101
                mov     cx,ds:[1Ch]
                xchg    ch,cl
                add     ds:[26h],cx
                adc     ds:[28h],0
                mov     ax,ds:[14h]
                sub     ax,cx
                jnc     loc_98
                neg     ax
                sub     ds:[1Ah],ax
                add     ds:[16h],ax
                xor     ax,ax
loc_98::
                mov     ds:[14h],ax
                add     ds:[10h],cx
                mov     ax,ds:[37h]
                xchg    ah,al
                mov     bx,ds:[35h]
                xchg    bh,bl
                add     ax,cx
                adc     bx,0
                xchg    bh,bl
                mov     ds:[35h],bx
                xchg    ah,al
                mov     ds:[37h],ax
                xchg    ch,cl
                cmp     ds:[39h],cx
                xchg    ch,cl
                jnz     loc_99
                sub     ds:[2Ah],cx
                sbb     ds:[2Ch],0
                mov     ax,ds:[2Ah]
                or      ax,ds:[2Ch]
                jz      loc_99
                jmp     loc_91
loc_99::
                xor     ax,ax
loc_100::
                pop     ds
                retn
loc_101::
                push    ax
                mov     ax,ds:[14h]
                add     ds:[3Fh],ax
                mov     ax,ds:[1Ah]
                add     ds:[41h],ax
                pop     ax
                cmp     ah,89h
                je      loc_100
                cmp     al,54h                  ; 'T'
                je      loc_102
                cmp     al,5
                jne     loc_104
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_17e,2
                pop     ds
                jnz     loc_104
                test    byte ptr ds:[24h],0FFh
                jz      loc_104
                push    ds
                mov     ds,cx
                or      byte ptr ds:data_18e,8
                pop     ds
                mov     bx,1
                call    sub_3
                jnz     loc_104
                jmp     short loc_103
loc_102::
                push    ds
                mov     ds,cx
                mov     dx,ds:data_19e
                pop     ds
loc_103::
                mov     ds:[22h],dx
                jmp     loc_91
loc_104::
                cmp     al,16h
                jne     loc_105
                test    byte ptr cs:data_156,0FFh
                jnz     loc_105
                mov     ax,8806h
                jmp     short loc_100
loc_105::
                call    sub_18
                jnz     loc_100
                or      byte ptr cs:data_156,1
                jmp     loc_91
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                mov     byte ptr data_156,0
                push    ds
                push    es
                pop     ds
                mov     di,offset data_174
                mov     si,di
                mov     ax,2Eh
                stosw
                mov     ax,ds
                stosw
                mov     ax,0Dh
                stosw
loc_106::
                mov     ax,ds:[37h]
                xchg    ah,al
                mov     dx,ds:[22h]
                mov     bx,0FFFFh
                test    bl,byte ptr ds:[24h]
                jnz     loc_107
                and     ax,0FFFh
                neg     ax
                add     ax,1000h
                xchg    bx,ax
loc_107::
                xchg    bx,ax
                mov     bx,ds:[2Ah]
                cmp     ds:[2Ch],0
                je      loc_108
                mov     bx,0FFFFh
loc_108::
                cmp     bx,ax
                ja      loc_109
                xchg    bx,ax
loc_109::
                cmp     dx,ax
                ja      loc_110
                xchg    dx,ax
loc_110::
                mov     dx,ax
                mov     cx,ds:[41h]
                sub     ax,cx
                jnc     loc_111
                add     cx,ax
loc_111::
                mov     ax,dx
                sub     ax,cx
                sub     ds:[41h],cx
                mov     ds:[0Eh],cx
                sub     ds:[3Fh],ax
                mov     ds:[14h],ax
                xchg    dh,dl
                mov     ds:[39h],dx
                mov     cx,ds:[20h]
                push    ds
                mov     ds,cx
                mov     dx,ds:data_13e
                pop     ds
                cmp     dx,33h
                jne     loc_112
                mov     ax,ds:[2Ah]
                mov     ds:[33h],ax
loc_112::
                mov     al,49h                  ; 'I'
                mov     bx,303h
                xor     dx,dx
;*              call    sub_2                   ;*
                db      0E8h,0ECh,0F4h
                jnz     loc_116
                mov     cx,ds:[39h]
                xchg    ch,cl
                add     ds:[26h],cx
                adc     ds:[28h],0
                mov     ax,ds:[0Eh]
                sub     ax,cx
                jnc     loc_113
                neg     ax
                sub     ds:[14h],ax
                add     ds:[10h],ax
                xor     ax,ax
loc_113::
                mov     ds:[0Eh],ax
                add     word ptr ds:[0Ah],cx
                mov     ax,ds:[37h]
                xchg    ah,al
                mov     bx,ds:[35h]
                xchg    bh,bl
                add     ax,cx
                adc     bx,0
                xchg    bh,bl
                mov     ds:[35h],bx
                xchg    ah,al
                mov     ds:[37h],ax
                sub     ds:[2Ah],cx
                sbb     ds:[2Ch],0
                mov     ax,ds:[2Ah]
                or      ax,ds:[2Ch]
                jz      loc_114
                jmp     loc_106
loc_114::
                xor     ax,ax
loc_115::
                pop     ds
                retn
loc_116::
                push    ax
                mov     ax,ds:[0Eh]
                add     ds:[41h],ax
                mov     ax,ds:[14h]
                add     ds:[3Fh],ax
                pop     ax
                cmp     ah,89h
                je      loc_115
                cmp     al,54h                  ; 'T'
                je      loc_117
                cmp     al,5
                jne     loc_119
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_10e,2
                pop     ds
                jnz     loc_119
                test    byte ptr ds:[24h],0FFh
                jz      loc_119
                push    ds
                mov     ds,cx
                or      byte ptr ds:data_11e,8
                pop     ds
                mov     bx,1
                call    sub_3
                jnz     loc_119
                jmp     short loc_118
loc_117::
                push    ds
                mov     ds,cx
                mov     dx,ds:data_12e
                pop     ds
loc_118::
                mov     ds:[22h],dx
                jmp     loc_106
loc_119::
                cmp     al,16h
                jne     loc_120
                test    byte ptr cs:data_156,0FFh
                jnz     loc_120
                mov     ax,8806h
                jmp     short loc_115
loc_120::
                call    sub_18
                jnz     loc_115
                or      byte ptr cs:data_156,1
                jmp     loc_106
sub_20          endp

                db      7 dup (0)
data_134        db      1Eh
                db      0
data_136        dw      0
data_137        dw      0
data_138        dw      0
data_139        dw      0
data_140        dw      0
data_141        dw      0
data_142        dw      0
data_143        dw      0
data_144        dw      0
data_145        dw      0
data_146        db      1                       ; Data table (indexed access)
data_147        db      0
data_148        dw      5
data_149        dw      200h
data_150        dw      3
data_151        dw      seg_b
data_152        dw      0, 0
data_154        dw      0, 0
data_156        db      0
data_157        db      0
data_158        dw      0
data_159        db      3
                db      3, 1, 0, 0, 0
data_160        dw      0
data_161        dw      19B0h
                db      0
                db      9 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                mov     si,68Ch
                inc     word ptr [si-2]
                mov     word ptr [bx+si],0BE0h
                mov     [bx+si+2],ds
                mov     word ptr [bx+si+4],8
                mov     bh,bl
                mov     bl,42h                  ; 'B'
                mov     cx,ds:[20h]
                mov     al,2
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                retn
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                or      ax,ax
                retn
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    ds
                push    es
                mov     bp,cx
                mov     ds,cs:data_151
                mov     bh,4
                call    sub_22
                jnz     loc_121
                assume  ds:seg_b
                cmp     byte ptr data_282,0
                jne     loc_122
loc_121::
                jmp     loc_134
loc_122::
                mov     bx,1Ah
                call    dword ptr data_211
                mov     di,offset data_237
                mov     bx,ax
                xor     bx,bp
                mov     [di+4],ax
                mov     [di+6],bx
                mov     data_220,ax
                mov     data_221,bx
                mov     cx,bp
                push    ds
                mov     ds,cx
                mov     dx,ds:data_4e
                pop     ds
                or      dx,dx
                jnz     loc_123
                mov     dx,222h
loc_123::
                add     dx,40h
                push    dx
                xchg    dh,dl
                mov     data_223,dx
                push    ds
                pop     es
                mov     si,5E2h
                mov     di,5E8h
                mov     bx,101h
                mov     dx,1
                mov     al,65h                  ; 'e'
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                pop     di
                jz      loc_124
                jmp     loc_134
loc_124::
                mov     si,offset data_237
                push    dx
                cmp     data_228,0
                jne     loc_125
                mov     ax,data_229
                xchg    ah,al
                cmp     ax,di
                ja      loc_125
                mov     di,ax
loc_125::
                sub     di,42h
                and     di,0FFFCh
                cmp     di,5555h
                jbe     loc_126
                mov     di,5555h
loc_126::
                mov     ax,data_217
                mul     di
                jnc     loc_127
                mov     ax,0FFFFh
loc_127::
                mov     bx,ax
                mov     ax,data_216
                mul     di
                jnc     loc_128
                mov     ax,0FFFFh
loc_128::
                mov     cx,ax
                pop     ax
;*              cmp     ax,10h
                db       3Dh, 10h, 00h
                jc      loc_130
                mov     ax,data_231
                mov     dx,data_230
                xchg    ah,al
                xchg    dh,dl
                or      dx,dx
                jnz     loc_129
                cmp     ax,cx
                jae     loc_129
                mov     cx,ax
loc_129::
                mov     ax,data_233
                mov     dx,data_232
                xchg    ah,al
                xchg    dh,dl
                or      dx,dx
                jnz     loc_130
                cmp     ax,bx
                jae     loc_130
                mov     bx,ax
loc_130::
                mov     [si+20h],cx
                mov     [si+2Ch],bx
                mov     [si+0Eh],di
                mov     ax,data_225
                mov     [si],ax
                mov     ax,data_227
                mov     [si+2],ax
                mov     cx,bp
                push    ds
                mov     ds,cx
                mov     dx,ds:data_8e
                pop     ds
                mov     bx,dx
                call    sub_24
                call    sub_25
                mov     si,626h
                sub     ax,ax
                lea     bx,[si+1Ah]
                call    sub_26
                lea     bx,[si+26h]
                call    sub_26
                mov     [si+31h],al
                dec     ax
                mov     [si+0Ch],ax
                mov     [si+0Ah],ax
                mov     [si+8],ax
                push    cs
                pop     es
                mov     di,data_246
                mov     cx,data_245

locloop_131::
                test    byte ptr es:[di+31h],1
                jz      loc_132
                add     di,32h
                loop    locloop_131

                jmp     short loc_134
loc_132::
                or      byte ptr [si+31h],1
                mov     data_215,di
                mov     cx,19h
                rep     movsw
                mov     cx,bp
                mov     si,offset data_215
                mov     es,cx
                cld
                mov     di,data_9e
                movsw
                or      byte ptr es:data_7e,1
                and     byte ptr es:data_7e,0F7h
                clc
loc_133::
                pop     es
                pop     ds
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                retn
loc_134::
                stc
                jmp     short loc_133
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                mov     si,offset data_237
                add     bx,bx
                add     bx,bx
                add     bx,0Ah
                shr     bx,1
                mov     [si+10h],bx
                mov     cl,4
                shl     bx,cl
                mov     [si+14h],bx
                sub     ax,ax
                mov     [si+12h],ax
                mov     [si+16h],ax
                retn
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                mov     ax,data_247
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jnz     loc_139
                xor     ax,ax
                mov     byte ptr cs:data_166,3
                mov     cs:data_167,al
                mov     cs:data_168,ax
                mov     cs:data_169,ax
loc_135::
                dec     cs:data_166
                js      loc_138
                mov     cx,bp
                mov     bx,offset data_174
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                or      ax,ax
                jnz     loc_135
                cmp     dx,2710h
                jb      loc_136
                mov     dx,2710h
loc_136::
                mov     cx,dx
                shr     cx,1
                shr     cx,1
                add     dx,cx
                cmp     dx,32h
                jae     loc_137
                mov     dl,32h                  ; '2'
loc_137::
                inc     cs:data_167
                add     cs:data_168,dx
                adc     cs:data_169,0
                jmp     short loc_135
loc_138::
                mov     ax,64h
                sub     cx,cx
                mov     cl,cs:data_167
                jcxz    loc_139
                mov     ax,cs:data_168
                mov     dx,cs:data_169
                div     cx
loc_139::
                mov     data_243,ax
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                mov     [bx+4],ax
                mov     [bx+8],al
                mov     [bx+9],al
                mov     cx,data_243
                mov     [bx+2],cx
                shr     cx,1
                mov     [bx],cx
                mov     byte ptr [bx+8],1
                mov     byte ptr [bx+9],1
                mov     [bx+0Ah],al
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                push    dx
                push    di
                push    es
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_1e,1
                pop     ds
                jz      loc_140
                assume  ds:seg_a
                mov     es,cs:data_151
                mov     di,offset data_215
                push    ds
                push    si
                mov     ds,cx
                cld
                mov     si,data_6e
                movsw
                pop     si
                pop     ds
                mov     bx,es:data_215
                and     byte ptr cs:[bx+31h],0FEh
loc_140::
                pop     es
                pop     di
                pop     dx
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
                or      cx,cx
                jnz     loc_142
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    ds
                push    es
                mov     ds,cs:data_151
                assume  ds:seg_b
                mov     dx,data_224
                or      dx,dx
                jz      loc_141
                mov     bx,offset data_172
                call    dword ptr data_209
loc_141::
                pop     es
                pop     ds
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
loc_142::
                sub     ax,ax
                retn
sub_28          endp

loc_143::
                call    sub_27
                call    sub_23
                jmp     short loc_144
                db      90h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                push    bx
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_1e,8
                pop     ds
                jnz     loc_143
loc_144::
                push    ds
                mov     ds,cx
                mov     dl,ds:data_2e
                pop     ds
                mov     es:data_287,dl
                mov     bx,1
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:data_152
                mov     di,offset data_234
                push    ds
                push    cx
                mov     ds,cx
                cld
                mov     si,data_5e
                mov     cx,0Bh
                rep     movsw
                pop     cx
                pop     ds
                mov     si,es:data_236
                mov     di,offset data_237
                mov     cx,19h
                rep     movsw
                mov     ax,es
                mov     ds,ax
                mov     si,offset data_235
                mov     di,offset data_251
                movsw
                movsw
                movsw
                pop     bx
                assume  ds:seg_b
                mov     ax,data_194
                mov     [bx+46h],ax
                mov     ax,data_195
                mov     [bx+48h],ax
                mov     ax,data_196
                mov     [bx+4Ah],ax
                mov     [bx+52h],ax
                mov     ax,data_197
                mov     [bx+4Ch],ax
                mov     [bx+54h],ax
                and     ah,3
                mov     data_244,ah
                mov     ax,data_191
                mov     dx,data_192
                xchg    ah,al
                xchg    dh,dl
                mov     [bx+4Eh],dx
                mov     [bx+50h],ax
                mov     ax,data_239
                mov     [bx+22h],ax
                mov     ax,data_240
                mov     [bx+24h],ax
                mov     ax,data_237
                mov     [bx+26h],ax
                mov     ax,data_238
                mov     [bx+28h],ax
                lea     di,[bx+6]
                mov     si,offset data_234
                mov     cx,6
                rep     movsw
                retn
sub_29          endp

loc_145::
                mov     cx,cs
                mov     es,cx
                mov     di,word ptr ds:[624h]
                mov     si,626h
                mov     cx,19h
                rep     movsw
                test    byte ptr ds:[657h],8
                jnz     loc_147
loc_146::
                mov     bx,2
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:data_152
                mov     cx,ds
                mov     es,cx
                mov     cx,cs
                mov     ds,cx
                retn
loc_147::
                push    ax
                mov     cx,ds:[20h]
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_152
                call    sub_27
                call    sub_23
                pop     ax
                jmp     short loc_146
                db      90h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                mov     bx,6A4h
                call    sub_29
loc_148::
                mov     byte ptr ds:[6C4h],10h
                mov     word ptr ds:[68Ch],6A4h
                mov     word ptr ds:[690h],5Ah
                mov     word ptr ds:[68Ah],1
                mov     cx,word ptr ds:[658h]
                add     cx,8
                mov     ds:[0Eh],cx
                mov     ax,word ptr ds:[646h]
                sub     ax,cx
                cmp     ds:[2Ch],0
                jne     loc_149
                cmp     ax,ds:[2Ah]
                jb      loc_149
                mov     ax,ds:[2Ah]
loc_149::
                add     cx,ax
                mov     word ptr ds:[65Ah],ax
                xchg    ah,al
                mov     word ptr ds:[6FCh],ax
                mov     dx,word ptr ds:[638h]
                add     dx,dx
                add     dx,word ptr ds:[636h]
                add     dx,dx
                cmp     dx,4
                ja      loc_150
                mov     dx,4
loc_150::
                cmp     dx,168h
                jb      loc_151
                mov     dx,168h
loc_151::
                mov     word ptr ds:[664h],dx
                mov     data_114,4
                mov     word ptr ds:[930h],0
                mov     word ptr ds:[932h],cx
                test    byte ptr ds:[0BFCh],20h ; ' '
                jnz     loc_155
loc_152::
                call    sub_31
                or      ax,ax
                jnz     loc_154
                mov     bx,word ptr ds:[704h]
                xchg    bh,bl
                add     ds:[26h],bx
                adc     ds:[28h],ax
                sub     ds:[2Ah],bx
                sbb     ds:[2Ch],ax
                jnz     loc_156
                cmp     ds:[2Ah],ax
                jne     loc_156
loc_153::
                sub     ax,ax
loc_154::
                jmp     loc_145
                db       87h,0DBh, 90h
loc_155::
                mov     di,5Ah
                mov     dx,1800h
                mov     bx,6
                call    sub_21
                jmp     short loc_152
loc_156::
                cmp     word ptr ds:[65Ah],bx
                ja      loc_153
                mov     cx,word ptr ds:[6F8h]
                mov     dx,word ptr ds:[6F6h]
                add     ch,bl
                adc     cl,bh
                adc     dh,al
                adc     dl,al
                mov     word ptr ds:[6F8h],cx
                mov     word ptr ds:[6F6h],dx
                add     ds:[10h],bx
                jc      loc_159
loc_157::
                sub     ds:[3Fh],bx
                jnc     loc_158
                mov     bx,ds:[3Fh]
                neg     bx
                mov     ds:[3Fh],ax
                add     ds:[16h],bx
                sub     ds:[41h],bx
loc_158::
                and     ch,3
                mov     byte ptr ds:[658h],ch
                jmp     loc_148
loc_159::
                add     ds:[12h],1000h
                jmp     short loc_157
sub_30          endp

                db      90h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                mov     cs:data_156,0
                mov     cs:data_157,0FFh
                mov     di,word ptr ds:[68Ch]
                mov     ax,word ptr ds:[632h]
                add     ah,1
                adc     al,0
                mov     word ptr ds:[632h],ax
                mov     [di+32h],ax
                mov     [di+34h],ax
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
                and     byte ptr ds:[0BF4h],0C6h
                or      byte ptr ds:[0BF4h],2
                and     byte ptr ds:[0BF5h],0DFh
loc_160::
                inc     cs:data_157
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                mov     word ptr ds:[662h],ax
                mov     ax,word ptr ds:[630h]
                mov     dx,word ptr ds:[62Eh]
                add     ah,1
                adc     al,0
                adc     dh,0
                adc     dl,0
                mov     word ptr ds:[630h],ax
                mov     word ptr ds:[62Eh],dx
                mov     si,668h
                mov     bx,[si+24h]
                mov     [bx+2Ch],ax
                mov     [bx+2Ah],dx
                mov     ax,word ptr ds:[640h]
                xchg    ah,al
                mov     [bx+30h],ax
                mov     ax,ds
                mov     es,ax
                mov     bx,data_170e
                test    byte ptr ds:[0BFCh],1
                jnz     loc_161
                mov     bl,3
loc_161::
                call    dword ptr ds:[5D0h]
loc_162::
                cmp     byte ptr ds:[670h],0
                jne     loc_162
                cmp     byte ptr ds:[671h],0
                je      loc_163
                call    sub_38
                jc      loc_167
loc_163::
                cmp     data_114,0
                je      loc_167
                cmp     word ptr ds:[930h],0
                je      loc_164
                mov     ax,word ptr ds:[6FEh]
                or      ax,word ptr ds:[700h]
                jnz     loc_167
loc_164::
                test    byte ptr ds:[0BF4h],10h
                jz      loc_166
loc_165::
                cmp     data_114,0
                je      loc_167
                or      byte ptr ds:[0BF4h],1
                and     byte ptr ds:[0BF4h],0EFh
                call    sub_32
                jmp     loc_160
loc_166::
                call    sub_40
                cli
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                sub     ax,word ptr ds:[662h]
                sti
                cmp     word ptr ds:[664h],ax
                ja      loc_163
                jmp     short loc_171
loc_167::
                and     byte ptr ds:[0BF4h],0FDh
                mov     bx,640h
                test    byte ptr ds:[0BF4h],1
                jz      loc_168
                call    sub_39
loc_168::
                cmp     byte ptr ds:[0BF8h],0
                jne     loc_170
                mov     ax,word ptr ds:[6FEh]
                cmp     ax,8806h
                je      loc_ret_169
                mov     ah,89h
                or      al,al
                jnz     loc_ret_169
                xor     ah,ah
                mov     dx,word ptr ds:[704h]
                xchg    dh,dl
                jmp     loc_177

loc_ret_169::
                retn
loc_170::
                call    sub_40
                jmp     short loc_168
loc_171::
                call    sub_37
                jc      loc_167
                jnz     loc_165
                jmp     loc_160

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_32::
                push    ds
                pop     es
                mov     si,6A4h
                mov     di,766h
                mov     word ptr ds:[68Ch],di
                mov     cx,1Bh
                rep     movsw
                cli
                mov     si,offset data_113
                mov     di,7A2h
                mov     cx,data_114
                mov     bx,cx
                shr     bx,1
                shr     bx,1
                xchg    bh,bl
                mov     word ptr ds:[7A6h],bx
loc_172::
                add     di,6
                add     si,4
                sub     cx,4
                js      loc_173
                mov     ax,[si]
                mov     dx,[si+2]
                sub     dx,ax
                xchg    ah,al
                mov     word ptr [di],0
                mov     [di+2],ax
                xchg    dh,dl
                mov     [di+4],dx
                jmp     short loc_172
loc_173::
                sti
                mov     al,80h
                test    byte ptr ds:[657h],4
                jz      loc_174
                or      al,2
loc_174::
                mov     byte ptr ds:[786h],al
                sub     di,7A8h
                add     di,42h
                mov     word ptr ds:[690h],di
                mov     word ptr ds:[68Ah],1
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_33::
                push    ds
                pop     es
                mov     bx,2
                mov     si,610h
                mov     di,61Ch
                push    di
                call    dword ptr ds:[5D0h]
                pop     di
                cmp     al,0
                jne     loc_176
                mov     bp,cx
                push    ds
                pop     es
                mov     si,684h
                push    si
                mov     cx,3
                repe    cmpsw
                pop     di
                mov     al,1
                jz      loc_ret_175
                mov     si,61Ch
                push    si
                movsw
                movsw
                movsw
                pop     si
                mov     cx,ds:[20h]
                push    es
                mov     es,cx
                cld
                mov     di,data_16e
                movsw
                movsw
                movsw
                mov     es:data_15e,bp
                pop     es
                mov     bx,bp
                call    sub_24
                mov     al,0

loc_ret_175::
                retn
loc_176::
                mov     al,2
                retn
                db       87h,0DBh, 90h
loc_177::
                cmp     [bx+4],dx
                jb      loc_184
                test    byte ptr ds:[0BF4h],8
                jnz     loc_ret_179
                add     dx,word ptr ds:[634h]
                jc      loc_178
                cmp     [bx+4],dx
                ja      loc_ret_179
loc_178::
                test    byte ptr [bx+0Ah],1
                jz      loc_181
                sub     byte ptr [bx+8],1
                adc     byte ptr [bx+8],0
                sub     byte ptr [bx+9],1
                adc     byte ptr [bx+9],0
                jnz     loc_ret_179
                mov     cx,[bx+2]
                mov     [bx],cx

loc_ret_179::
                retn
loc_180::
                or      byte ptr [bx+0Ah],1
                mov     cx,[bx]
                mov     [bx+2],cx
                mov     byte ptr [bx+8],0
                mov     byte ptr [bx+9],0
                retn
loc_181::
                test    byte ptr [bx+0Ah],1
                jnz     loc_ret_179
                dec     byte ptr [bx+9]
                jnz     loc_ret_179
                mov     byte ptr [bx+9],1
                mov     dx,[bx]
                mov     cx,dx
                xchg    [bx+2],cx
                or      dx,dx
                jz      loc_180
                sub     cx,dx
                shr     cx,1
                jnz     loc_182
                inc     cx
loc_182::
                cmp     cx,dx
                jb      loc_183
                mov     cx,dx
loc_183::
                sub     [bx],cx
                jmp     short loc_ret_179
loc_184::
                mov     [bx+4],dx
                and     byte ptr [bx+0Ah],0FEh
                mov     dx,word ptr ds:[63Eh]
                mov     [bx+2],dx
                mov     byte ptr [bx+8],1
                mov     byte ptr [bx+9],1
                jmp     short loc_ret_179
sub_31          endp

                db       87h,0DBh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near
                mov     bx,70Ah
                call    sub_29
loc_185::
                mov     byte ptr ds:[72Ah],0
                mov     cx,18h
                mov     ax,word ptr ds:[652h]
                sub     ax,cx
                cmp     ds:[2Ch],0
                jne     loc_186
                cmp     ds:[2Ah],ax
                ja      loc_186
                mov     ax,ds:[2Ah]
loc_186::
                add     cx,ax
                mov     word ptr ds:[65Ah],ax
                xchg    ah,al
                mov     word ptr ds:[762h],ax
                mov     ax,word ptr ds:[64Ch]
                xchg    ah,al
                mov     word ptr ds:[73Ah],ax
                mov     dx,word ptr ds:[638h]
                add     dx,dx
                add     dx,word ptr ds:[636h]
                add     dx,dx
                cmp     dx,0Ch
                ja      loc_187
                mov     dx,0Ch
loc_187::
                cmp     dx,168h
                jb      loc_188
                mov     dx,168h
loc_188::
                mov     word ptr ds:[664h],dx
                mov     data_114,0
                mov     word ptr ds:[930h],0
                mov     word ptr ds:[932h],cx
                xchg    ch,cl
                mov     word ptr ds:[742h],cx
                call    sub_35
                or      ax,ax
                jnz     loc_189
                mov     bx,word ptr ds:[65Ah]
                add     ds:[26h],bx
                adc     ds:[28h],ax
                sub     ds:[2Ah],bx
                sbb     ds:[2Ch],ax
                jnz     loc_190
                cmp     ds:[2Ah],ax
                jne     loc_190
                sub     ax,ax
loc_189::
                jmp     loc_145
loc_190::
                mov     cx,word ptr ds:[75Eh]
                mov     dx,word ptr ds:[75Ch]
                add     ch,bl
                adc     cl,bh
                adc     dh,al
                adc     dl,al
                mov     word ptr ds:[75Eh],cx
                mov     word ptr ds:[75Ch],dx
                add     word ptr ds:[0Ah],bx
                sub     ds:[41h],bx
                jnc     loc_191
                mov     bx,ds:[41h]
                neg     bx
                mov     ds:[41h],ax
                sub     ds:[3Fh],bx
                add     ds:[10h],bx
                jc      loc_192
loc_191::
                jmp     loc_185
loc_192::
                add     ds:[12h],1000h
                jmp     short loc_191
sub_34          endp

loc_193::
                jmp     loc_202
                db      90h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near
                mov     cs:data_156,0
                mov     cs:data_157,0
                mov     bx,70Ah
                mov     word ptr ds:[68Ch],bx
                mov     ax,word ptr ds:[632h]
                add     ah,1
                adc     al,0
                mov     word ptr ds:[632h],ax
                mov     [bx+32h],ax
                mov     [bx+34h],ax
                and     byte ptr ds:[0BF4h],6
                or      byte ptr ds:[0BF4h],4
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
loc_194::
                mov     byte ptr ds:[0BF7h],0
loc_195::
                inc     cs:data_157
                mov     ax,word ptr ds:[630h]
                mov     dx,word ptr ds:[62Eh]
                add     ah,1
                adc     al,0
                adc     dh,0
                adc     dl,0
                mov     word ptr ds:[630h],ax
                mov     word ptr ds:[62Eh],dx
                mov     bx,word ptr ds:[68Ch]
                mov     [bx+2Ch],ax
                mov     [bx+2Ah],dx
                mov     si,668h
                mov     word ptr [si+22h],1
                mov     word ptr [si+28h],42h
                test    byte ptr [bx+20h],80h
                jnz     loc_193
                and     byte ptr [bx+20h],2
                mov     di,data_114
                mov     ax,word ptr ds:[930h][di]
                mov     dx,word ptr ds:[932h][di]
                sub     dx,ax
                mov     cx,ax
                xchg    ch,cl
                mov     [bx+3Ch],cx
                sub     bp,bp
                mov     cx,word ptr ds:[634h]
;*              sub     ax,18h
                db       2Dh, 18h, 00h
                jnc     loc_197
                mov     cs:data_157,0
                test    byte ptr ds:[0BFCh],20h ; ' '
                jz      loc_196
                sub     cx,8
loc_196::
                mov     bp,18h
                add     [si+28h],bp
                sub     ax,ax
loc_197::
                cmp     cx,dx
                jb      loc_198
                or      byte ptr [bx+20h],10h
                mov     cx,dx
                test    byte ptr ds:[0BF4h],8
                jnz     loc_198
                push    ax
                push    bx
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                mov     word ptr ds:[666h],ax
                pop     bx
                pop     ax
loc_198::
                mov     dx,cx
                xchg    ch,cl
                mov     [bx+3Eh],cx
                add     word ptr ds:[930h][di],dx
                cmp     byte ptr ds:[0BF7h],0
                je      loc_199
                mov     bx,word ptr ds:[932h]
                mov     word ptr ds:[930h],bx
loc_199::
                sub     dx,bp
                lea     di,[si+2Ah]
                mov     bx,ax
                sub     ax,ds:[41h]
                jnc     loc_200
                inc     word ptr [si+22h]
                add     bx,word ptr ds:[0Ah]
                mov     cx,word ptr ds:[0Ch]
                mov     [di],bx
                mov     [di+2],cx
                mov     [di+4],dx
                neg     ax
                sub     dx,ax
                jbe     loc_201
                mov     [di+4],ax
                add     di,6
                sub     ax,ax
loc_200::
                inc     word ptr [si+22h]
                mov     [di+4],dx
                mov     cx,4
                mov     bx,ds:[12h]
                add     ax,ds:[10h]
                adc     ch,ch
                shl     ch,cl
                add     bh,ch
                mov     dx,ax
;*              and     ax,0Fh
                db       25h, 0Fh, 00h
                shr     dx,cl
                add     bx,dx
                mov     [di],ax
                mov     [di+2],bx
loc_201::
                test    byte ptr ds:[0BFCh],20h ; ' '
                jz      loc_202
                cmp     word ptr [si+28h],5Ah
                jne     loc_202
                mov     bx,[si+24h]
                mov     dx,[bx+38h]
                mov     bx,[bx+3Eh]
                xchg    bh,bl
                add     bx,42h
                sub     di,686h
                xchg    bx,di
                call    sub_21
                mov     si,668h
loc_202::
                mov     ax,ds
                mov     es,ax
                mov     bx,data_170e
                test    byte ptr ds:[0BFCh],1
                jnz     loc_203
                mov     bl,3
loc_203::
                call    dword ptr ds:[5D0h]
loc_204::
                cmp     byte ptr ds:[670h],0
                jne     loc_204
                cmp     byte ptr ds:[671h],0
                je      loc_205
                call    sub_38
                jc      loc_212
loc_205::
                mov     bx,word ptr ds:[68Ch]
                test    byte ptr [bx+20h],80h
                jnz     loc_209
                mov     bx,data_114
                mov     ax,word ptr ds:[930h][bx]
                cmp     word ptr ds:[932h][bx],ax
                ja      loc_206
                sub     data_114,4
                jc      loc_209
loc_206::
                mov     si,word ptr ds:[64Ch]
                mov     ax,word ptr ds:[5D8h]
                mov     bx,word ptr ds:[5DAh]
                jmp     short loc_208
                                                ;* No entry point to code
                xchg    bx,bx
                xchg    bx,bx
                xchg    bx,bx
                xchg    bx,bx
                xchg    bx,bx
                xchg    bx,bx
                xchg    bx,bx
loc_207::
                sub     cx,1
                sbb     dx,0
                jnc     loc_207
loc_208::
                mov     cx,ax
                mov     dx,bx
                dec     si
                jns     loc_207
                jmp     loc_194
loc_209::
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                mov     word ptr ds:[662h],ax
loc_210::
                test    byte ptr ds:[0BF4h],20h ; ' '
                jz      loc_211
                mov     ax,word ptr ds:[6FEh]
                cmp     ax,0FCh
                je      loc_212
loc_211::
                test    byte ptr ds:[0BF4h],80h
                jz      loc_217
loc_212::
                and     byte ptr ds:[0BF4h],0FBh
loc_213::
                cmp     byte ptr ds:[0BF8h],0
                jne     loc_216
                mov     ax,word ptr ds:[6FEh]
                cmp     ax,8806h
                je      loc_ret_215
                mov     ah,89h
                or      al,al
                jnz     loc_ret_215
                xor     ah,ah
                test    byte ptr ds:[0BF4h],1
                jnz     loc_214
                push    ax
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                sub     ax,word ptr ds:[666h]
                mov     dx,ax
                push    cs
                mov     ax,16CEh
                push    ax
                push    ds
                mov     ax,584h
                push    ax
                retf
                db      58h
loc_214::
                mov     dx,word ptr ds:[65Ah]
                mov     bx,64Ch
                jmp     loc_177

loc_ret_215::
                retn
loc_216::
                call    sub_40
                jmp     short loc_213
loc_217::
                cmp     data_114,0
                jge     loc_218
                call    sub_40
                cli
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                sub     ax,word ptr ds:[662h]
                sti
                cmp     word ptr ds:[664h],ax
                ja      loc_210
                jmp     short loc_220
loc_218::
                test    byte ptr ds:[0BF4h],1
                jnz     loc_219
                mov     bx,64Ch
                call    sub_39
loc_219::
                mov     word ptr ds:[68Ch],70Ah
                jmp     loc_194
loc_220::
                call    sub_37
                jnc     loc_221
                jmp     loc_212
loc_221::
                jz      loc_224
loc_222::
                test    byte ptr ds:[0BF4h],80h
                jz      loc_223
                jmp     loc_212
loc_223::
                call    sub_36
                jmp     loc_194
loc_224::
                xor     byte ptr ds:[0BF4h],10h
                test    byte ptr ds:[0BF4h],10h
                jnz     loc_222
                mov     byte ptr ds:[0BF7h],0FFh
                mov     data_114,0
                mov     word ptr ds:[930h],0
                mov     ax,word ptr ds:[742h]
                xchg    ah,al
                mov     word ptr ds:[932h],ax
                mov     word ptr ds:[68Ch],70Ah
                jmp     loc_195
sub_35          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    near
                push    ds
                pop     es
                mov     si,70Ah
                mov     di,766h
                mov     bx,di
                mov     cx,1Bh
                rep     movsw
                mov     al,80h
                test    byte ptr ds:[657h],4
                jz      loc_225
                or      al,2
loc_225::
                mov     [bx+20h],al
                mov     word ptr [bx+40h],0
                mov     word ptr ds:[68Ch],bx
                retn
sub_36          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near
                or      byte ptr ds:[0BF4h],8
                dec     byte ptr ds:[0BF9h]
                jz      loc_229
                mov     cx,ds:[20h]
                push    ds
                mov     ds,cx
                test    byte ptr ds:data_14e,8
                pop     ds
                jnz     loc_226
                cmp     byte ptr ds:[0BF9h],1
                je      loc_226
                mov     al,byte ptr ds:[0BFAh]
                shr     al,1
                cmp     byte ptr ds:[0BF9h],al
                jne     loc_228
loc_226::
                call    sub_33
                cmp     al,2
                je      loc_229
                cmp     al,1
                je      loc_227
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
                or      byte ptr ds:[657h],8
loc_227::
                cmp     word ptr ds:[634h],1FCh
                jbe     loc_228
                mov     bx,word ptr ds:[68Ch]
                or      byte ptr [bx+20h],2
                or      byte ptr ds:[657h],4
                mov     word ptr ds:[634h],1FCh
                or      byte ptr ds:[657h],8
loc_228::
                test    byte ptr ds:[0BF4h],20h ; ' '
                clc
                retn
loc_229::
                mov     dl,byte ptr ds:[0BF4h]
                and     byte ptr ds:[0BF4h],0F9h
                call    sub_40
loc_230::
                call    sub_18
                jnz     loc_231
                mov     byte ptr ds:[0BF4h],dl
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
                jmp     short loc_226
loc_231::
                mov     word ptr ds:[6FEh],ax
                stc
                retn
sub_37          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near
                mov     dl,byte ptr ds:[0BF4h]
                and     byte ptr ds:[0BF4h],0F9h
                call    sub_40
                test    cs:data_158,20h
                jz      loc_230
                test    cs:data_157,0FFh
                jnz     loc_230
                test    cs:data_156,0FFh
                jnz     loc_230
                mov     al,byte ptr ds:[0BFAh]
                cmp     byte ptr ds:[0BF9h],al
                jne     loc_230
                push    ds
                mov     ax,ds:[20h]
                mov     ds,ax
                or      byte ptr ds:data_14e,8
                pop     ds
                mov     ax,8806h
                mov     word ptr ds:[6FEh],ax
                stc
                retn
sub_38          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near
                test    byte ptr [bx+0Ah],1
                jz      loc_237
                cmp     byte ptr [bx+9],0F6h
                jae     loc_232
                add     byte ptr [bx+9],0Ah
loc_232::
                add     byte ptr [bx+8],3
                cmp     byte ptr [bx+8],0Fh
                jb      loc_236
                mov     ax,word ptr ds:[660h]
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jz      loc_233
                mov     dx,ax
                xor     ax,ax
                jmp     short loc_234
loc_233::
                mov     ax,word ptr ds:[63Eh]
                mov     dx,ax
                mov     cl,4
                shr     ax,cl
                jnz     loc_234
                mov     ax,2
loc_234::
                add     [bx],ax
                mov     byte ptr [bx+8],0
                cmp     [bx],dx
                jbe     loc_236
                mov     [bx],dx
                mov     cx,word ptr ds:[634h]
                mov     dx,cx
                shl     dx,1
                add     dx,cx
                mov     ax,[bx+6]
                mov     cx,ax
                sub     ax,dx
                shr     ax,1
                shr     ax,1
                jnz     loc_235
                mov     cx,dx
loc_235::
                sub     cx,ax
                mov     [bx+4],cx
                mov     [bx+6],cx
loc_236::
                or      byte ptr ds:[0BF4h],9
                retn
loc_237::
                dec     byte ptr [bx+8]
                jnz     loc_236
                mov     ax,[bx+2]
                sub     ax,[bx]
                shr     ax,1
                jz      loc_238
                mov     dx,word ptr ds:[63Eh]
                mov     cl,6
                shr     dx,cl
                mov     cx,[bx+2]
                sub     cx,[bx]
                cmp     cx,dx
                jb      loc_238
                mov     byte ptr [bx+8],1
                add     [bx],ax
                jmp     short loc_236
loc_238::
                or      byte ptr [bx+0Ah],1
                mov     ax,[bx+2]
                mov     [bx],ax
                mov     byte ptr [bx+8],0
                mov     byte ptr [bx+9],0
                jmp     short loc_236
sub_39          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near
                test    byte ptr ds:[0BFCh],21h ; '!'
                jnz     loc_239
                retn
loc_239::
                cli
                mov     si,word ptr ds:[0BF0h]
                or      si,si
                jnz     loc_240
                sti
                retn
loc_240::
                mov     ax,[si]
                mov     word ptr ds:[0BF0h],ax
                or      ax,ax
                jnz     loc_241
                mov     word ptr ds:[0BF2h],0BF0h
loc_241::
                sti
                push    ds
                pop     es
                test    byte ptr ds:[0BFCh],1
                jz      loc_243
                add     si,0Ah
                mov     bx,22h
                call    dword ptr ds:[5D0h]
                sub     si,0Ah
                or      ax,ax
                jz      loc_242
                inc     word ptr ds:[0C08h]
                jmp     short loc_246
loc_242::
                test    byte ptr ds:[0BFCh],20h ; ' '
                jz      loc_244
loc_243::
                cmp     word ptr ds:[8Ah][si],0
                je      loc_244
                cmp     word ptr ds:[88h][si],0
                jne     loc_244
                mov     cx,ds:[20h]
                mov     dx,word ptr ds:[84h][si]
                mov     ax,[si+4Eh]
                xchg    ah,al
                mov     di,ax
                mov     bx,42h
                add     si,2Eh
                mov     al,4
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_152
                pop     bp
                lea     si,[si-2Eh]
                jnz     loc_245
loc_244::
                cli
                push    cs
                mov     ax,18FBh
                push    ax
                push    ds
                jmp     far ptr loc_278
loc_245::
                inc     word ptr ds:[0C0Ah]
loc_246::
                cli
                push    cs
                mov     ax,18FBh
                push    ax
                push    ds
                jmp     far ptr loc_287
sub_40          endp

                db      10 dup (0)
data_166        db      0
data_167        db      0
data_168        dw      0
data_169        dw      0
                db      3674 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

data_171        db      0
data_172        db      0
data_173        dw      0
data_174        db      0
                db      0, 0, 0, 0, 0
data_175        dw      0
data_176        dw      0                       ; segment storage
data_177        dw      0
data_178        dd      00000h
data_180        dw      0
data_181        dw      0
data_182        dw      0                       ; segment storage
data_183        dw      0
data_184        dw      0
data_185        dw      0
data_186        dw      0
data_187        dw      0
data_188        db      0
                db      0
data_189        dw      0
data_190        dw      0
data_191        dw      0
data_192        dw      0
                db      0
data_193        db      0
                db      0
data_194        dw      0
data_195        dw      0
data_196        dw      0
data_197        dw      0
data_198        dw      0
data_199        dw      0
data_200        dw      0
data_201        dw      0
data_202        dw      0
data_203        dw      0
data_204        dw      0
                db      0
data_205        dw      0C20h
                db      0, 0, 0, 0, 0, 0
loc_247::
                mov     bp,cs:data_293
                lds     di,cs:data_294
                mov     ax,8001h
                or      ax,ax
                retf
                                                ;* No entry point to code
                mov     cs:data_293,bp
                mov     word ptr cs:data_294+2,ds
                mov     word ptr cs:data_294,di
                cmp     word ptr [di+8],42h
                jb      loc_247
                mov     cx,ds
                mov     es,cx
                mov     ax,cs
                mov     ds,ax
                les     di,dword ptr es:[di+4]
                mov     bp,di
                add     di,22h
                mov     si,offset data_237
                mov     cx,4
                repe    cmpsw
                jnz     loc_247
                lea     di,[bp+12h]
                mov     si,offset data_234
                mov     cl,6
                repe    cmpsw
                jnz     loc_247
                mov     ax,es:[bp+32h]
                cmp     data_241,ax
                jne     loc_247
                test    byte ptr data_281,2
                jnz     loc_258
                test    byte ptr data_281,4
                jz      loc_247
                jmp     loc_302
loc_248::
                add     di,8Eh
                cmp     di,offset data_279
                jae     loc_253
                cmp     byte ptr [di+22h],0
                je      loc_248
                cmp     [di+24h],ax
                jne     loc_248
                cmp     [di+26h],cx
                jne     loc_248
                jmp     short loc_256
loc_249::
                cmp     word ptr es:[bp+3Eh],0
                jne     loc_257
                jmp     short loc_259
loc_250::
                mov     ax,es:[bp+3Eh]
                xchg    ah,al
;*              add     ax,64h
                db       05h, 64h, 00h
                cmp     ax,data_242
                jb      loc_251
                callf   sub_41
loc_251::
                mov     ax,es:[bp+38h]
                or      ax,ax
                jz      loc_259
                or      byte ptr data_281,20h   ; ' '
                jmp     short loc_259
loc_252::
                test    byte ptr data_287,21h   ; '!'
                jnz     loc_257
                jmp     loc_268
loc_253::
                jmp     short loc_260
loc_254::
                mov     di,9A8h
                jmp     short loc_248
loc_255::
                jmp     loc_265
loc_256::
                inc     data_288
loc_257::
                jmp     loc_247
                db       87h,0DBh, 90h
loc_258::
                cmp     es:[bp+34h],ax
                je      loc_249
                mov     bx,1Ah
                call    dword ptr data_211
                mov     dx,ax
                sub     dx,data_248
                mov     data_248,ax
                test    byte ptr data_281,20h   ; ' '
                jz      loc_250
loc_259::
                mov     si,data_266
                or      si,si
                jz      loc_252
                mov     dx,es:[bp+3Eh]
                mov     ax,es:[bp+3Ch]
                mov     word ptr [si+2Ch],1
                xchg    dh,dl
                xchg    ah,al
                mov     cx,ax
                add     cx,dx
                mov     [si+24h],ax
                mov     [si+26h],cx
                or      dx,dx
                jz      loc_255
                cmp     byte ptr data_284,0
                jne     loc_254
loc_260::
                mov     di,data_261
loc_261::
                sub     di,4
                js      loc_256
                cmp     data_263[di],ax
                jbe     loc_256
                cmp     data_262[di],cx
                jae     loc_261
                lea     di,[si+34h]
                mov     bx,ax
                sub     ax,data_177
                jnc     loc_262
                inc     word ptr [si+2Ch]
                add     bx,6FEh
                mov     [di],bx
                mov     [di+2],ds
                mov     [di+4],dx
                neg     ax
                sub     dx,ax
                jbe     loc_264
                mov     [di+4],ax
                add     di,6
                sub     ax,ax
loc_262::
                mov     bp,ax
                sub     ax,data_201
                jnc     loc_263
                inc     word ptr [si+2Ch]
                mov     cx,4
                mov     bx,word ptr data_178+2
                add     bp,word ptr data_178
                adc     ch,ch
                shl     ch,cl
                add     bh,ch
                mov     [di],bp
                and     word ptr [di],0Fh
                shr     bp,cl
                add     bx,bp
                mov     [di+2],bx
                mov     [di+4],dx
                neg     ax
                sub     dx,ax
                jbe     loc_264
                mov     [di+4],ax
                add     di,6
                sub     ax,ax
loc_263::
                cmp     data_202,dx
                jb      loc_266
                inc     word ptr [si+2Ch]
                mov     bx,data_181
                mov     cx,data_182
                add     bx,ax
                mov     [di],bx
                mov     [di+2],cx
                mov     [di+4],dx
loc_264::
                test    byte ptr data_287,20h   ; ' '
                jnz     loc_267
loc_265::
                mov     ax,[si]
                mov     data_266,ax
                mov     byte ptr [si+22h],0FFh
                inc     data_284
                inc     data_286
                mov     al,data_286
                mov     [si+23h],al
                mov     ax,ds
                mov     es,ax
                mov     bp,data_293
                lds     di,data_294
                sub     ax,ax
                retf
loc_266::
                inc     data_289
                jmp     loc_247
loc_267::
                cmp     word ptr [si+24h],0
                jne     loc_265
                inc     word ptr [si+2Ch]
                mov     word ptr [di+6],0BE8h
                mov     [di+8],ds
                mov     word ptr [di+0Ah],8
                jmp     short loc_265
data_206        dd      00000h
loc_268::
                mov     word ptr data_206,bp
                mov     word ptr data_206+2,es
                mov     ax,ds
                mov     es,ax
                mov     di,offset data_267
loc_269::
                mov     si,di
                mov     al,[di+23h]
loc_270::
                add     di,8Eh
                cmp     di,offset data_279
                jae     loc_271
                cmp     [di+23h],al
                jns     loc_270
                jmp     short loc_269
loc_271::
                mov     bp,[si+8]
                mov     bx,4
                call    dword ptr data_211
                mov     [si+8],bp
                jnz     loc_272
                inc     data_290
                call    dword ptr [si+0Ah]      ;*
                les     bp,data_206
                jmp     loc_259
loc_272::
                inc     data_291
                les     bp,data_206
                jmp     loc_247
loc_273::
                mov     bx,si
                mov     word ptr [bx],0
                xchg    data_280,bx
                mov     [bx],si
                jmp     loc_282
loc_274::
                jmp     loc_289
loc_275::
                cmp     data_262,0
                jne     loc_276
                and     byte ptr data_281,0DFh
loc_276::
                jmp     loc_286
loc_277::
                jmp     loc_288
                                                ;* No entry point to code
                xchg    bx,bx
                nop
                push    ds
                mov     ax,cs
                mov     ds,ax
                cmp     word ptr [si+8],0
                jne     loc_275
                mov     ax,[si+4Eh]
                xchg    ah,al
                cmp     [si+2Ah],ax
                jb      loc_277
                test    byte ptr data_287,21h   ; '!'
                jnz     loc_273
loc_278::
                dec     byte ptr ds:[0BF8h]
                mov     cl,0
                xchg    [si+22h],cl
                mov     bx,si
                xchg    word ptr ds:[0A34h],bx
                mov     [si],bx
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
                mov     ch,[si+6Ch]
                test    ch,9Eh
                jnz     loc_274
loc_279::
                test    byte ptr ds:[0BF5h],20h ; ' '
                jnz     loc_280
                or      byte ptr ds:[0BF5h],20h ; ' '
                mov     ax,word ptr ds:[84h][si]
                xchg    ah,al
                mov     word ptr ds:[932h],ax
loc_280::
                mov     ax,[si+24h]
                mov     dx,[si+26h]
                assume  ds:seg_a
                mov     di,data_114
loc_281::
                sub     di,4
                js      loc_282
                assume  ds:seg_b
                mov     bx,data_262[di]
                mov     cx,data_263[di]
                cmp     cx,ax
                jbe     loc_282
                cmp     bx,dx
                jae     loc_281
                cmp     dx,cx
                jae     loc_283
                cmp     ax,bx
                ja      loc_284
                mov     data_262[di],dx
                jnz     loc_281
loc_282::
                pop     ds
                retf
loc_283::
                cmp     ax,bx
                ja      loc_285
                sub     data_261,4
                push    di
                mov     cx,data_261
                sub     cx,di
                add     di,offset data_262
                lea     si,[di+4]
                shr     cx,1
                cld
                rep     movsw
                pop     di
                cmp     ax,bx
                je      loc_282
                jmp     short loc_281
loc_284::
                mov     bx,cx
                push    di
                mov     si,data_261
                lea     cx,[si-4]
                sub     cx,di
                shr     cx,1
                lea     si,data_261[si]
                lea     di,[si+4]
                std
                rep     movsw
                cld
                add     data_261,4
                pop     di
                mov     data_264[di],dx
                mov     data_265[di],bx
                mov     data_263[di],ax
                jmp     short loc_282
loc_285::
                mov     data_263[di],ax
                jmp     short loc_282
loc_286::
                cmp     word ptr [si+8],8006h
                jne     loc_287
                inc     data_292
loc_287::
                dec     byte ptr ds:[0BF8h]
                mov     cl,0
                xchg    [si+22h],cl
                mov     bx,si
                xchg    word ptr ds:[0A34h],bx
                mov     [si],bx
                jmp     short loc_282
loc_288::
                inc     word ptr ds:[0C00h]
                jmp     short loc_287
loc_289::
                test    ch,4
                jz      loc_290
                assume  ds:seg_a
                mov     data_114,0
                or      byte ptr ds:[0BF4h],20h ; ' '
                mov     word ptr ds:[6FEh],0FCh
                jmp     loc_282
loc_290::
                test    ch,2
                jz      loc_291
                mov     word ptr ds:[634h],1FEh
                or      byte ptr ds:[657h],8
loc_291::
                test    ch,10h
                jz      loc_294
                cmp     cl,0FEh
                je      loc_294
                cmp     cl,0FDh
                jne     loc_292
                cmp     word ptr ds:[8Ch][si],0
                jne     loc_294
                mov     ax,word ptr ds:[84h][si]
                xchg    ah,al
;*              cmp     ax,4
                db       3Dh, 04h, 00h
                jnz     loc_294
                or      byte ptr ds:[0BF4h],80h
                jmp     loc_282
loc_292::
                push    ax
                mov     ax,word ptr ds:[84h][si]
                xchg    ah,al
;*              cmp     ax,8
                db       3Dh, 08h, 00h
                pop     ax
                jnc     loc_293
                mov     word ptr ds:[702h],0
                mov     word ptr ds:[704h],0
loc_293::
                or      byte ptr ds:[0BF4h],10h
loc_294::
                test    ch,8
                jz      loc_296
                mov     ax,word ptr ds:[664h]
                shl     ax,1
                mov     dx,168h
                cmp     ax,dx
                jbe     loc_295
                mov     ax,dx
loc_295::
                mov     word ptr ds:[664h],ax
                mov     al,byte ptr ds:[0BFAh]
                mov     byte ptr ds:[0BF9h],al
                cmp     cl,0FFh
                jne     loc_296
                and     byte ptr ds:[0BF4h],0FEh
loc_296::
                test    ch,80h
                jz      loc_298
                cmp     cl,0FFh
                je      loc_297
                cmp     cl,0FEh
                je      loc_299
                cmp     cl,0FDh
                je      loc_297
                or      byte ptr ds:[0BF4h],20h ; ' '
loc_297::
                jmp     loc_282
loc_298::
                cmp     cl,0FFh
                jne     loc_297
                jmp     loc_279
loc_299::
                cmp     data_114,0
                jge     loc_297
                mov     cx,word ptr ds:[8Ch][si]
                xchg    ch,cl
                dec     cx
                js      loc_297
                or      byte ptr ds:[0BF4h],20h ; ' '
                add     cx,cx
                add     cx,cx
                mov     data_114,cx
                mov     di,7A8h
                mov     bx,930h
loc_300::
                mov     ax,[di+2]
                xchg    ah,al
                mov     dx,[di+4]
                xchg    dh,dl
                mov     [bx],ax
                add     ax,dx
                mov     [bx+2],ax
                add     di,6
                add     bx,4
                sub     cx,4
                jnc     loc_300
                jmp     loc_282
loc_301::
                jmp     loc_247
loc_302::
                mov     si,word ptr ds:[0A34h]
                or      si,si
                jz      loc_301
                test    byte ptr ds:[0BF4h],80h
                jnz     loc_301
                test    byte ptr es:[bp+20h],9Eh
                jz      loc_301
                mov     bx,7A8h
                mov     di,186h
                mov     cl,0FEh
                mov     dx,es:[bp+34h]
                cmp     ax,dx
                je      loc_303
                add     ah,1
                adc     al,0
                cmp     ax,dx
                jne     loc_301
                mov     bx,6FEh
                mov     di,4
                mov     cl,0FDh
loc_303::
                mov     word ptr [si+2Ch],2
                mov     [si+34h],bx
                mov     [si+36h],ds
                mov     [si+38h],di
                mov     ax,es:[bp+2Ch]
                xchg    ah,al
                test    byte ptr ds:[0BF4h],40h ; '@'
                jnz     loc_304
                mov     word ptr ds:[764h],ax
                or      byte ptr ds:[0BF4h],40h ; '@'
                jmp     short loc_306
loc_304::
                mov     di,ax
                sub     di,word ptr ds:[764h]
                cmp     di,7FFFh
                jae     loc_301
                mov     di,0A36h
loc_305::
                cmp     [di+22h],cl
                je      loc_301
                add     di,8Eh
                cmp     di,0BE0h
                jb      loc_305
                mov     word ptr ds:[764h],ax
loc_306::
                mov     bx,1Ah
                call    dword ptr ds:[5D4h]
                mov     word ptr ds:[662h],ax
                mov     [si+22h],cl
                test    byte ptr ds:[0BFCh],20h ; ' '
                jnz     loc_308
loc_307::
                mov     ax,[si]
                assume  ds:seg_b
                mov     data_266,ax
                inc     data_284
                mov     ax,ds
                mov     es,ax
                mov     bp,data_293
                lds     di,data_294
                sub     ax,ax
                retf
loc_308::
                cmp     word ptr es:[bp+3Eh],0
                je      loc_307
                cmp     word ptr es:[bp+3Ch],0
                jne     loc_307
                inc     word ptr [si+2Ch]
                mov     word ptr [si+3Ah],0BE8h
                mov     [si+3Ch],ds
                mov     word ptr [si+3Eh],8
                jmp     short loc_307

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    far
                test    byte ptr data_281,8
                jnz     loc_ret_310
                mov     bx,offset data_237
                test    byte ptr [bx+31h],10h
                jz      loc_311
                mov     bx,offset data_237
                sub     dx,[bx+10h]
                add     [bx+14h],dx
                or      dx,dx
                jns     loc_309
                neg     dx
loc_309::
                sub     dx,[bx+12h]
                add     [bx+16h],dx
                mov     dx,[bx+14h]
                mov     cl,4
                shr     dx,cl
                mov     [bx+10h],dx
                mov     dx,[bx+16h]
                mov     cl,2
                shr     dx,cl
                mov     [bx+12h],dx

loc_ret_310::
                retf
loc_311::
                or      byte ptr [bx+31h],10h
                mov     [bx+10h],dx
                mov     cl,4
                shl     dx,cl
                mov     [bx+14h],dx
                retf
sub_41          endp

                db      10 dup (0)
data_209        dw      0, 0
data_211        dw      0, 0
data_213        dw      0
data_214        dw      0
data_215        dw      0
data_216        dw      10h
data_217        dw      0Ah
                db      0EEh, 05h
data_218        dw      0                       ; segment storage
                db       12h, 00h, 00h, 06h
data_219        dw      0                       ; segment storage
                db       10h, 00h
data_220        dw      0
data_221        dw      0
                db      0, 0
data_223        dw      0
data_224        dw      0
                db       00h, 00h,0FFh,0FFh, 00h, 00h
                db      0FFh,0FFh
data_225        dw      0
data_227        dw      0
data_228        dw      0
data_229        dw      0
data_230        dw      0
data_231        dw      0
data_232        dw      0
data_233        dw      0
data_234        db      0
                db      11 dup (0)
data_235        db      0
                db      0, 0, 0, 0, 0, 0
                db      0
data_236        dw      0
data_237        dw      0
data_238        dw      0
data_239        dw      0
data_240        dw      0
                db      0, 0, 0, 0
data_241        dw      0
data_242        dw      0
                db      8 dup (0)
data_243        dw      0
                db      24 dup (0)
data_244        db      0
                db      0, 0, 0
data_245        dw      0
data_246        dw      0
data_247        dw      0FFFFh
data_248        dw      0
                db      0, 0
                db      12 dup (0)
data_250        dw      0
                db      16 dup (0)
data_251        db      0
                db      9 dup (0)
data_252        dw      0                       ; segment storage
                db      20 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 10h, 02h
                db      23 dup (0)
                db       18h, 00h, 00h, 00h, 00h, 00h
                db       18h, 00h, 00h, 01h, 00h
                db      34 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 00h, 02h
                db      32 dup (0)
                db      2, 0
                db      24 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 00h, 02h
                db      422 dup (0)
data_261        dw      0
data_262        dw      0                       ; Data table (indexed access)
data_263        dw      0                       ; Data table (indexed access)
data_264        dw      0                       ; Data table (indexed access)
data_265        dw      0                       ; Data table (indexed access)
                db      252 dup (0)
data_266        dw      0A36h
data_267        db      0C4h
                db      0Ah
                db      8 dup (0)
data_269        dw      0, 0
                db      62 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 00h, 02h
                db      32 dup (0)
                db       52h, 0Bh, 00h
                db      7 dup (0)
data_273        dw      0, 0
                db      62 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 00h, 02h
                db      42 dup (0)
data_276        dw      0, 0
                db      62 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      23 dup (0)
                db       77h, 77h, 00h, 02h
                db      32 dup (0)
data_279        db      0
                db      9 dup (0)
                dw      0, 0
                db      0, 0, 0, 0
data_280        dw      0BF0h
data_281        db      0
                db      0
data_282        db      0
                db      0
data_284        db      0
                db      0
data_285        db      0
data_286        db      0
data_287        db      0
                db      0
data_288        dw      0
data_289        dw      0
data_290        dw      0
data_291        dw      0
data_292        dw      0
                db      0, 0, 0, 0
data_293        dw      0
data_294        dd      00000h
                db      2574 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_305,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_301,bx
                mov     word ptr data_301+2,es
                pop     ax
                or      ax,ax
                jz      loc_313
                call    sub_42
                call    sub_43
                call    sub_45
                push    bp
                mov     bp,seg seg_a
                mov     es,bp
                cmp     es:data_150,0
                jne     loc_312
                mov     es:data_161,0C60h
                mov     es,es:data_151
                mov     es:data_205,50h
loc_312::
                xor     bp,bp
                call    sub_44
                xor     bp,bp
                call    sub_46
                pop     bp
                jmp     loc_317
loc_313::
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                push    es
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     cx,seg seg_b
                mov     es,cx
                mov     word ptr es:data_171,bx
                mov     es:data_173,ax
                pop     es
                mov     word ptr es:data_152,bx
                mov     word ptr es:data_152+2,ax
                mov     data_303,bx
                mov     word ptr data_303+2,ax
                push    es
                mov     ax,7A20h
                mov     bx,5
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     word ptr es:data_154,bx
                mov     word ptr es:data_154+2,ax
                mov     ax,data_305
                or      ax,ax
                jz      loc_314
                mov     es:data_151,ax
loc_314::
                push    bx
                push    ds
                mov     ax,609h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_301
                add     sp,4
                pop     bx
                call    sub_43
                mov     bp,seg seg_a
                mov     es,bp
                cmp     es:data_150,0
                jne     loc_315
                mov     es:data_161,0C60h
                mov     ax,seg_b
                mov     es,ax
                mov     es:data_205,50h
loc_315::
                mov     ax,7A20h
                mov     bx,2
                push    es
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     data_299,bx
                mov     data_300,ax
                mov     ax,seg_b
                mov     es,ax
                mov     es,data_305
                mov     ax,seg_b
                mov     ds,ax
                xor     si,si
                mov     di,si
                assume  ds:seg_b
                mov     cx,data_205
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                mov     ax,seg_c
                mov     ds,ax
                mov     bp,0FFFFh
                call    sub_44
                mov     bp,seg seg_a
                mov     es,bp
                cmp     es:data_150,0
                je      loc_316
                mov     bp,0FFFFh
                call    sub_46
loc_316::
                assume  ds:seg_c
                mov     ds,data_305
                mov     bx,seg seg_a
                mov     ds,bx
loc_317::
                mov     ax,seg_c
                mov     ds,ax
                mov     si,seg_a+45eh
                sub     si,seg_c
                mov     cx,seg seg_a
                mov     es,cx
                push    es
                mov     es,es:data_151
                mov     cx,es:data_205
                add     cx,0Fh
                shr     cx,1
                shr     cx,1
                shr     cx,1
                shr     cx,1
                pop     es
                mov     dx,es:data_161
                add     dx,0Fh
                shr     dx,1
                shr     dx,1
                shr     dx,1
                shr     dx,1
                mov     bx,seg seg_b
                sub     bx,seg_a
                sub     bx,dx
                add     si,bx
                mov     bx,seg seg_c
                sub     bx,seg_b
                sub     bx,cx
                add     si,bx
                test    si,8000h
                jz      loc_318
                xor     si,si
loc_318::
                mov     bx,41h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near
                mov     bx,0
                mov     dx,30h
                call    dword ptr data_301
                or      ax,ax
                jnz     loc_319
                retn
loc_319::
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,5F4h
                push    cs
                pop     ds
                call    dword ptr cs:data_301
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,5F8h
                push    ax
                push    cs
                mov     ax,5F4h
                push    ax
                push    cs
                mov     ax,5F8h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_301
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,5F4h
                push    ax
                push    cs
                mov     ax,5F8h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_301
                add     sp,0Ah
                pop     bx
                pop     ax
                mov     ax,0FFFFh
                retf
sub_42          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near
                push    bx
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_307,bx
                mov     word ptr data_307+2,es
                mov     cx,0Ah
                mov     si,73Ch
                mov     di,5DEh
                push    ds
                pop     es
                call    dword ptr data_307
                pop     bx
                retn
sub_43          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,cs:data_310
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jnz     loc_320
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                jne     loc_321
                mov     cs:data_311,di
                mov     word ptr cs:data_311+2,es
                xor     ax,ax
                mov     bx,1Ah
                call    dword ptr cs:data_311
                or      ax,ax
                jz      loc_321
;*              sub     ax,40h
                db       2Dh, 40h, 00h
;*              add     ax,3
                db      5, 3, 0
;*              and     ax,0FFFCh
                db       25h,0FCh,0FFh
loc_320::
                assume  ds:seg_a
                mov     data_149,ax
loc_321::
                mov     es,data_151
                mov     ax,es:data_205
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
;*              and     ax,0FFF0h
                db       25h,0F0h,0FFh
                mov     cx,data_148
                mov     di,data_161
                mov     data_160,di
                jcxz    loc_325

locloop_322::
                mov     bx,ax
                add     bx,data_149
                jc      loc_324
                add     bx,10h
                jc      loc_324
                sub     bx,10h
                or      bp,bp
                jz      loc_323
                mov     word ptr [di],0
                mov     [di+10h],ax
loc_323::
                mov     ax,bx
                add     di,12h
                js      loc_324
                loop    locloop_322

                jmp     short loc_325
loc_324::
                sub     data_148,cx
                or      bp,bp
                jz      loc_325
                push    bx
                push    cx
                mov     ax,3Dh
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr cs:data_301
                add     sp,4
                pop     bx
loc_325::
                mov     data_161,di
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
;*              and     ax,0FFF0h
                db       25h,0F0h,0FFh
                mov     es:data_205,ax
                pop     es
                pop     ds
                retn
sub_44          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45          proc    near
                assume  ds:seg_c
                cmp     byte ptr data_309,0
                je      loc_ret_326
                mov     bx,5
                call    dword ptr data_301

loc_ret_326::
                retn
sub_45          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


fio             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      0, 0, 0, 0, 0, 0

fio             endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46          proc    near
                mov     ax,seg_a
                mov     es,ax
                cmp     es:data_150,0
                jne     loc_327
                jmp     loc_342
loc_327::
                push    ds
                push    es
                mov     ax,1600h
                int     2Fh                     ; Enhanced Windows install check
                pop     es
                pop     ds
                test    al,7Fh
                jz      loc_329
                mov     ax,0FFFFh
                mov     bx,42h
                or      bp,bp
                jz      loc_328
                jmp     loc_341
loc_328::
                jmp     loc_339
loc_329::
                or      bp,bp
                jnz     loc_330
                mov     cx,data_313
                mov     ax,32h
                mul     cx
                add     es:data_161,ax
                sub     ax,ax
                retn
loc_330::
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                je      loc_331
                jmp     loc_340
loc_331::
                mov     ax,es:[bx]
                xchg    al,ah
                cmp     ax,31Eh
                jae     loc_332
                jmp     loc_344
loc_332::
                mov     cs:data_316,di
                mov     word ptr cs:data_316+2,es
                mov     ax,seg_a
                mov     ds,ax
                push    ax
                push    bx
                push    cx
                push    dx
                push    es
                push    di
                push    si
                xor     dx,dx
                mov     bx,1Fh
                call    dword ptr cs:data_316
                assume  ds:seg_a
                mov     data_158,dx
                pop     si
                pop     di
                pop     es
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     ds,data_151
                assume  ds:seg_b
                mov     word ptr data_209,di
                mov     word ptr data_209+2,es
                call    sub_47
                jnc     loc_333
                jmp     loc_345
loc_333::
                mov     bx,0Dh
                call    dword ptr data_209
                mov     data_285,cl
                mov     bx,0
                push    bp
                mov     bp,VLMID_FIO
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:data_303
                pop     bp
                mov     dx,bx
                or      dx,dx
                jz      loc_334
                push    dx
                mov     bx,1
                call    dword ptr data_209
                pop     dx
loc_334::
                push    ds
                pop     es
                mov     si,60h
                mov     bp,42h
                mov     bx,23h
                call    dword ptr data_209
                cmp     al,0
                je      loc_335
                jmp     loc_343
loc_335::
                or      dx,dx
                jnz     loc_336
                jmp     loc_344
loc_336::
                mov     data_224,dx
                mov     data_250,dx
                mov     ax,seg_a
                mov     es,ax
                mov     data_252,ds
                mov     data_218,ds
                mov     data_219,ds
                mov     word ptr es:[1984h],ds
                mov     word ptr es:[1994h],ds
                mov     bx,data_266
loc_337::
                mov     word ptr [bx+0Ah],2BCh
                mov     [bx+0Ch],ds
                mov     byte ptr [bx+22h],0
                lea     ax,[bx+4Ch]
                mov     [bx+2Eh],ax
                mov     [bx+30h],ds
                mov     word ptr [bx+32h],42h
                mov     bx,[bx]
                or      bx,bx
                jnz     loc_337
                mov     data_282,0FFh
                mov     bx,es:data_161
                inc     bx
                and     bl,0FEh
                mov     data_246,bx
                mov     cx,cs:data_313
                mov     data_245,cx
                push    ds
                mov     ax,seg_a
                mov     ds,ax

locloop_338::
                mov     byte ptr [bx+31h],0
                add     bx,32h
                loop    locloop_338

                assume  ds:seg_a
                mov     data_161,bx
                call    sub_48
                pop     ds
                push    ds
                pop     es
                mov     ax,0
loc_339::
                mov     dx,seg seg_c
                mov     ds,dx
                retn
loc_340::
                mov     bx,3Eh
loc_341::
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,1
                mov     bx,6
                mov     cx,bx
                mov     si,5F4h
                push    cs
                pop     ds
                assume  ds:seg_c
                call    dword ptr cs:data_301
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    bx
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr cs:data_301
                add     sp,2
                pop     bx
loc_342::
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_150,0
                mov     ax,0FFFFh
                jmp     short loc_339
loc_343::
                mov     bx,40h
                jmp     short loc_341
loc_344::
                mov     bx,41h
                jmp     short loc_341
loc_345::
                mov     bx,3Fh
                jmp     short loc_341
sub_46          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_47          proc    near
                mov     ax,0C000h
loc_346::
                push    ds
                push    ax
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                pop     ax
                pop     ds
                jz      loc_348
loc_347::
                inc     ah
                jnz     loc_346
                stc
                retn
loc_348::
                mov     di,si
                mov     si,offset data_323      ; ('LINKSUP')
                mov     cx,4
                cld
                cli
                repe    cmps word ptr cs:[si],word ptr es:[di]
                sti
                jnz     loc_347
                mov     cs:data_319,bx
                mov     word ptr cs:data_319+2,dx
                push    cs
                pop     es
                mov     si,7AAh
                mov     bx,2
                call    dword ptr cs:data_319
                mov     ax,cs:data_321
                mov     cx,cs:data_322
                assume  ds:seg_b
                mov     word ptr data_211,ax
                mov     word ptr data_211+2,cx
                clc
                retn
sub_47          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_48          proc    near
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     ds,data_151
                push    cs
                pop     es
                mov     si,798h
                mov     ax,1
                mov     bx,7
                assume  ds:seg_b
                call    dword ptr data_209
                mov     cx,0FFFFh
                mov     dx,cx
                mov     bx,1Ah
                call    dword ptr data_211
                mov     si,ax
loc_349::
                call    dword ptr data_211
                cmp     ax,si
                je      loc_349
                mov     cs:data_315,2
                jmp     short loc_350
loc_350::
                sub     cx,1
                sbb     dx,0
                jnc     loc_350
                mov     ax,0FFFFh
                mov     bx,ax
                sub     ax,cx
                sbb     bx,dx
                mov     si,44Ch
                sub     dx,dx
                xchg    bx,ax
                div     si
                xchg    bx,ax
                div     si
                cmp     dx,226h
                jb      loc_351
;*              add     ax,1
                db      5, 1, 0
                adc     bx,0
loc_351::
                mov     data_213,ax
                mov     data_214,bx
                retn
sub_48          endp

                                                ;* No entry point to code
                assume  ds:seg_c
                dec     cs:data_315
                jz      loc_352
                mov     ax,1
                mov     bx,7
                jmp     dword ptr cs:data_316
loc_352::
                mov     word ptr cs:[586h],9090h
                retf
                db      0, 0, 0, 0, 0, 0
data_299        dw      0
data_300        dw      0
data_301        dw      0, 0
data_303        dw      0, 0
data_305        dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'FIO', 0
                db      'NWP', 0
                db      'VeRsIoN=1.21', 0
                db      'FIO.VLM      - NetWare file inpu'
                db      't-output module  v1.21 (960514)', 0Dh
                db      0Ah
                db      0
data_307        dw      0, 0
data_309        db      0
data_310        dw      0FFFFh
data_311        dw      0, 0
                db      'CACHE BUFFERS'
                db       00h, 38h, 0Ch
                dw      seg_a
                db       00h, 00h, 40h, 00h
                db      'CACHE BUFFER SIZE'
                db       00h, 50h, 06h
                dw      seg_c
                db       40h, 00h, 00h, 10h
                db      'CACHE WRITES'
                db       00h, 36h, 0Ch
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'TRUE COMMIT'
                db       00h, 37h, 0Ch
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'LOAD LOW FIO'
                db       00h, 4Fh, 06h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh
                db      'PBURST READ WINDOW SIZE'
                db       00h,0DEh, 05h
                dw      seg_b
                db       03h, 00h, 80h, 00h
                db      'PBURST WRITE WINDOW SIZE'
                db       00h,0E0h, 05h
                dw      seg_b
                db       03h, 00h, 80h, 00h
                db      'PB BUFFERS'
                db       00h, 3Ch, 0Ch
                dw      seg_a
                db       00h, 00h, 0Ah, 00h
                db      'CONNECTIONS'
                db       00h,0B0h, 45h
                dw      seg_a
                db       02h, 00h, 32h, 00h, 4Dh, 41h
                db       58h, 20h, 49h, 50h, 47h, 00h
                db       60h, 2Eh
                dw      seg_a
                db       00h, 00h,0FFh, 7Fh, 56h, 06h
                db       0Eh, 01h, 00h, 00h, 64h, 06h
                db       6Ch, 06h, 12h, 00h, 02h, 00h
                db       7Eh, 06h, 86h, 06h, 0Dh, 00h
                db       04h, 00h, 93h, 06h, 9Bh, 06h
                db       0Ch, 00h, 04h, 00h,0A7h, 06h
                db      0AFh, 06h, 0Dh, 00h, 04h, 00h
                db      0BCh, 06h,0C4h, 06h, 18h, 01h
                db       02h, 00h,0DCh, 06h,0E4h, 06h
                db       19h, 01h, 02h, 00h,0FDh, 06h
                db       05h, 07h, 0Bh, 01h, 02h, 00h
                db       10h, 07h, 18h, 07h, 0Ch, 00h
                db       02h, 00h, 24h, 07h, 2Ch, 07h
                db       08h, 00h, 02h, 00h, 34h, 07h
                db       00h, 00h, 00h, 00h
data_313        dw      8
data_315        dw      0
data_316        dw      0, 0
                db       00h, 00h, 00h, 00h,0B0h, 05h
                dw      seg_c
                db      0
                db      0, 0, 0, 0, 0
data_319        dw      0, 0
data_321        dw      0
data_322        dw      0
                db      0, 0, 0, 0
data_323        db      'LINKSUP$'

seg_c           ends



                end     start
