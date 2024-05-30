; The following equates show data references outside the range of the program.

data_1e         equ     0
data_2e         equ     2
data_3e         equ     4
data_4e         equ     6
data_5e         equ     12h
data_6e         equ     30h
data_68e        equ     954Bh                   ;*
data_84e        equ     3Eh
data_85e        equ     3Fh

callf           macro   loc
                ; push    cs
                call    loc
endm

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_c
                dw      70h, seg_a
                db      3Dh, 01h
                dw      seg_a
                db       9Bh, 01h
                dw      seg_a
                db      0BCh, 01h
                dw      seg_a
                db       13h, 02h
                dw      seg_a
                db       3Fh, 02h
                dw      seg_a
                db      0AAh, 02h
                dw      seg_a
                db      0AFh, 02h
                dw      seg_a
                db      0FFh, 03h
                dw      seg_a
                db       0Ch, 04h
                dw      seg_a
                db       3Ah, 05h
                dw      seg_a
                db       0Eh, 05h
                dw      seg_a
                db      0E8h, 05h
                dw      seg_a
                db       2Dh, 06h
                dw      seg_a
                db       7Ah, 06h
                dw      seg_a
                db       9Ch, 06h
                dw      seg_a
                db      0C5h, 09h
                dw      seg_a
                db      0F1h, 09h
                dw      seg_a
                db       00h, 00h, 00h, 00h, 4Eh, 56h
                db       6Ch, 6Dh, 10h, 00h
data_7          dw      offset loc_2            ; Data table (indexed access)
data_8          dw      offset loc_4
data_9          dw      offset loc_1
data_10         dw      offset loc_1
data_11         dw      offset loc_1
data_12         dw      offset loc_1
data_13         dw      offset loc_5
data_14         dw      offset loc_10
data_15         dw      offset loc_9
data_16         dw      offset loc_11
data_17         dw      offset loc_1
data_18         dw      offset loc_1
data_19         dw      offset loc_12
data_20         dw      0FB83h                  ; Data table (indexed access)
                db       0Dh, 72h, 04h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                shl     bx,1
                jmp     word ptr cs:data_7[bx]  ;*13 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
                mov     bx,1
                mov     cx,15h
loc_3::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jnz     loc_3
                mov     bx,1
                mov     ax,cx
                jmp     loc_77

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                cmp     dl,1
                jne     loc_9
                mov     ax,1
loc_6::
                push    ds
                push    dx
                mov     ds,cx
                mov     dx,ds:data_4e
                or      dx,dx
                jnz     loc_7
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jz      loc_8
loc_7::
                add     dx,ax
                mov     ds:data_4e,dx
loc_8::
                pop     dx
                pop     ds
                jmp     short loc_3

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_9::
                mov     bx,5
                mov     ax,1
                jmp     loc_77

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_10::
                cmp     dl,1
                jne     loc_11
                mov     ax,0FFFFh
                jmp     short loc_6

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_11::
                mov     bx,5
                mov     ax,0FFFFh
                jmp     loc_77

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_12::
                cmp     cx,1
                jne     loc_1
                cmp     dx,0
                jne     loc_1
                cmp     byte ptr cs:data_51,0
                je      loc_14
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
                mov     ax,data_52
                test    ax,8000h
                jz      loc_13
                mov     ax,60h
                mul     data_44
                mov     cx,ax
                xor     ax,ax
                shr     cx,1
                push    es
                mov     bx,cx
                shr     bx,1
                shr     bx,1
                shr     bx,1
                mov     ah,48h
                int     21h                     ; DOS Services  ah=function 48h
                                                ;  allocate memory, bx=bytes/16
                mov     data_52,ax
                mov     es,ax
                xor     ax,ax
                xor     di,di
                cld
                rep     stosw
                mov     ax,es
                mov     cl,4
                shr     di,cl
                add     ax,di
                pop     es
                mov     data_65,ax
loc_13::
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
loc_14::
                xor     ax,ax
                retf
                                                ;* No entry point to code
                or      cx,cx
                jnz     loc_19
                push    ax
                push    bx
                push    cx
                push    es
                push    ds
                mov     ax,seg_a
                mov     es,ax
                mov     ds,ax
                mov     bx,data_61
                mov     cx,data_46

locloop_15::
                test    word ptr [bx+2],0FFFFh
                jz      loc_17
                push    es
                mov     es,[bx+2]
                cmp     byte ptr es:[3Eh],0CEh
                jne     loc_16
                cmp     byte ptr es:[3Fh],0
                je      loc_16
                mov     byte ptr es:[3Eh],0
                mov     byte ptr es:[3Fh],0
loc_16::
                pop     es
loc_17::
                add     bx,7
                loop    locloop_15

                cmp     byte ptr cs:data_51,0
                je      loc_18
                mov     es,es:data_52
                mov     ah,49h
                int     21h                     ; DOS Services  ah=function 49h
                                                ;  release memory block, es=seg
loc_18::
                pop     ds
                pop     es
                pop     cx
                pop     bx
                pop     ax
loc_19::
                xor     ax,ax
                retf
                                                ;* No entry point to code
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_43
                cmp     cx,[si]
                jbe     loc_20
                mov     cx,[si]
loc_20::
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

sub_1           proc    far
                push    dx
                push    si
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     cx,data_44
                mov     ax,data_52
                mov     es,ax

locloop_21::
                cmp     byte ptr es:data_70,0
                je      loc_23
;*              add     ax,6
                db      5, 6, 0
                mov     es,ax
                loop    locloop_21

                call    sub_29
                jz      loc_22
                inc     data_47
                xor     cx,cx
                mov     ax,883Fh
                jmp     short loc_24
loc_22::
                mov     dl,1
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_53
                pop     bp
                mov     es,cx
loc_23::
                mov     byte ptr es:data_2e,1
                xor     ax,ax
                mov     cx,es
loc_24::
                pop     es
                pop     ds
                pop     si
                pop     dx
                retf
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    far
                push    dx
                push    ds
                push    es
                mov     ax,8801h
                jcxz    loc_25
                mov     ax,seg_a
                mov     ds,ax
                mov     es,cx
                mov     ax,8801h
                test    byte ptr es:data_2e,1
                jz      loc_25
                cmp     cx,data_52
                jb      loc_25
                cmp     cx,data_65
                jae     loc_25
                xor     ax,ax
loc_25::
                pop     es
                pop     ds
                pop     dx
                retf
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    far
                push    bx
                push    cx
                push    dx
                push    di
                push    es
                callf   sub_2
                or      ax,ax
                jnz     loc_26
                callf   sub_17
                mov     bx,3
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_53
                pop     bp
                mov     dl,1
                call    sub_26
                mov     ah,1
                push    cx
                call    sub_28
                pop     es
                xor     di,di
                xor     ax,ax
                mov     cx,30h
                rep     stosw
loc_26::
                pop     es
                pop     di
                pop     dx
                pop     cx
                pop     bx
                retf
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    cx
                push    ds
                mov     ds,cx
                xor     ax,ax
                cmp     word ptr ds:data_1e,32h
                jne     loc_27
                cmp     word ptr ds:data_5e,5555h
                je      loc_27
                mov     al,ds:data_2e
                and     al,20h                  ; ' '
                mov     cl,5
                shr     al,cl
                cmp     word ptr ds:data_3e,1
                cmc
                adc     al,0
loc_27::
                pop     ds
                pop     cx
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    far
                xor     bl,bl
                jmp     short loc_34

loc_ret_28::
                retf

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_6           proc far
                mov     bl,1
                callf   sub_2
                or      ax,ax
                jnz     loc_ret_28
                call    sub_4
                or      ax,ax
                jz      loc_35
                push    ax
                callf   sub_7
                call    sub_4
                xchg    bx,ax
                pop     ax
                or      bh,al
                xor     ax,ax
                test    bh,2
                jnz     loc_29
                test    bh,1
                jnz     loc_30
                retf
loc_29::
                test    bl,1
                jnz     loc_32
                retf
loc_30::
                test    bl,2
                jnz     loc_31
                retf
loc_31::
                inc     ax
loc_32::
                mov     bx,6
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,32h
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:data_53
                pop     bp

loc_ret_33::
                retf
sub_6           endp

data_21         dw      offset sub_8            ; Data table (indexed access)
data_22         dw      offset sub_9
data_23         dw      offset sub_10
data_24         dw      offset sub_11
data_25         dw      offset sub_12
data_26         dw      offset sub_13
data_27         dw      offset sub_14
data_28         dw      offset sub_15
data_29         dw      offset sub_16
loc_34::
                callf   sub_2
                or      ax,ax
                jnz     loc_ret_33
sub_5           endp

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_7           proc    far
loc_35::
                push    ds
                push    cx
                push    si
                push    di
                push    es
                push    bp
                mov     bp,sp
                mov     ax,seg_a
                mov     ds,ax
                cmp     data_56,bh
                jbe     loc_38
                xor     si,si
                mov     es,cx
                cmp     bh,3
                jne     loc_36
                cmp     bl,0
                je      loc_36
                mov     cx,30h
                mov     di,data_6e
                xor     ax,ax
                rep     stosb
loc_36::
                mov     di,offset data_55
                xor     ah,ah
                mov     al,bh
                mul     data_57
                add     di,ax
                xor     ax,ax
                or      al,[di]
                add     si,ax
                mov     ax,bx
                xor     bh,bh
                add     bl,bl
                add     bl,bl
                or      bl,[di+1]
                cmp     bl,9
                jae     loc_38
                xor     cx,cx
                or      cl,[di+2]
                add     bx,bx
                call    word ptr cs:data_21[bx] ;*9 entries
                xor     ax,ax
loc_37::
                pop     bp
                pop     es
                pop     di
                pop     si
                pop     cx
                pop     ds
                retf
sub_7           endp

loc_38::
                mov     ax,8836h
                jmp     short loc_37


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                xor     dx,dx
                lods    byte ptr es:[si]
                and     al,cl
                sub     cl,al
                sub     cl,1
                adc     dl,0
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                xor     ax,ax
                lods    byte ptr es:[si]
                xchg    dx,ax
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                lods    word ptr es:[si]
                xchg    dx,ax
                retn
sub_10          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
;*              cmp     dl,cl
                db       3Ah,0D1h
                ja      loc_39
                mov     cl,dl
loc_39::
                mov     dl,cl
                xor     bx,bx
                mov     bl,dh
                mov     dh,[di+2]
                add     si,bx
                push    es
                pop     ds
                mov     es,[bp+2]
                mov     di,[bp+4]
                rep     movsb
                retn
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                or      es:[si],cl
                retn
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                mov     es:[si],dl
                cmp     ah,0Ch
                jne     loc_ret_40
                push    dx
                mov     dl,0
                mov     cx,[bp+8]
                call    sub_26
                pop     dx

loc_ret_40::
                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                mov     es:[si],dx
                retn
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
;*              cmp     dl,cl
                db       3Ah,0D1h
                ja      loc_41
                mov     cl,dl
loc_41::
                mov     dl,cl
                xor     bx,bx
                mov     bl,dh
                mov     dh,[di+2]
                add     si,bx
                mov     di,si
                mov     ds,[bp+0Ah]
                mov     si,[bp+6]
                rep     movsb
                cmp     ah,11h
                je      loc_42
                retn
loc_42::
                mov     ah,0
                mov     cx,[bp+8]
                call    sub_28
                retn
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                not     cl
                and     es:[si],cl
                retn
sub_16          endp

                db      0B3h, 02h,0E9h,0ADh,0FEh
data_30         dw      offset loc_48           ; Data table (indexed access)
data_31         dw      offset loc_46
data_32         dw      offset loc_46
data_33         dw      offset loc_54
                db       2Eh, 38h, 3Eh,0B5h, 0Ah, 73h
                db       04h,0B8h, 36h, 88h

loc_ret_43::
                retf
                                                ;* No entry point to code
                jcxz    loc_44
                callf   sub_2
                or      ax,ax
                jnz     loc_ret_43
                add     cx,6
                jmp     short loc_45
loc_44::
                mov     cx,cs:data_52
loc_45::
                push    bx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                push    bp
                mov     bp,sp
                mov     ax,seg_a
                mov     ds,ax
                mov     di,offset data_55
                xor     ah,ah
                mov     al,bh
                mul     data_57
                add     di,ax
                and     byte ptr [bp+0Ch],40h   ; '@'
                xor     bx,bx
                or      bl,[di+1]
                add     bx,bx
                jmp     word ptr cs:data_30[bx] ;*4 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                cmp     data_65,cx
                jbe     loc_53
                mov     bh,[bp+0Dh]
                callf   sub_5
                or      ax,ax
                jnz     loc_47
                cmp     [bp+0Ah],dl
                lahf
                xor     ah,[bp+0Ch]
                sahf
                jnz     loc_47
                cmp     byte ptr [di+1],2
                jb      loc_51
                cmp     [bp+0Ah],dx
                lahf
                xor     ah,[bp+0Ch]
                sahf
                jz      loc_51
loc_47::
                add     cx,6
                jmp     short loc_46

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_48::
                cmp     data_65,cx
                jbe     loc_53
                mov     bh,[bp+0Dh]
                callf   sub_5
                or      ax,ax
                jnz     loc_50
                cmp     [bp+0Ah],dl
                jne     loc_49
                test    byte ptr [bp+0Ch],0FFh
                jz      loc_51
                jmp     short loc_50
loc_49::
                test    byte ptr [bp+0Ch],0FFh
                jnz     loc_51
loc_50::
                add     cx,6
                jmp     short loc_48
loc_51::
                xor     ax,ax
loc_52::
                pop     bp
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     bx
                retf
loc_53::
                mov     ax,8801h
                jmp     short loc_52

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_54::
                mov     al,[bp+0Ah]
                xor     ah,ah
                sub     sp,ax
                push    ss
                pop     es
loc_55::
                mov     di,sp
                cmp     data_65,cx
                jbe     loc_57
                mov     bh,[bp+0Dh]
                mov     dx,[bp+0Ah]
                callf   sub_5
                or      ax,ax
                jnz     loc_56
                push    cx
                mov     cl,dl
                xor     ch,ch
                mov     si,[bp+6]
                mov     ds,[bp+2]
                repe    cmpsb
                pop     cx
                lahf
                xor     ah,[bp+0Ch]
                sahf
                jnz     loc_56
                mov     al,[bp+0Ah]
                xor     ah,ah
                add     sp,ax
                jmp     short loc_51
loc_56::
                mov     ax,seg_a
                mov     ds,ax
                add     cx,6
                jmp     short loc_55
loc_57::
                mov     al,[bp+0Ah]
                xor     ah,ah
                add     sp,ax
                jmp     short loc_53

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    far
                push    cx
                push    si
                push    di
                push    ds
                push    es
                call    sub_19
                jnz     loc_58
                mov     ax,seg_a
                mov     es,ax
                mov     si,di
                mov     al,[di+2]
                xor     ah,ah
;*              add     ax,3
                db      5, 3, 0
                add     si,ax
                mov     cx,es:data_63
                sub     cx,si
                rep     movsb
loc_58::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                xor     ax,ax
                retf
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    far

LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,4
                push    cx
                push    si
                push    di
                push    ds
                push    es
                push    ds
                callf   sub_17
                pop     ds
                mov     di,seg seg_a
                mov     es,di
                mov     di,es:data_62
                mov     cx,0FFFFh
                xor     al,al
loc_59::
                repne   scasb
                scasb
                jnz     loc_59
                mov     [bp+LOCAL_1],di
                mov     di,si
                push    ds
                pop     es
                xor     ch,ch
                mov     cl,30h                  ; '0'
                xor     al,al
                repne   scasb
                neg     cl
                add     cl,2Fh                  ; '/'
                mov     di,[bp+LOCAL_1]
                add     di,cx
                inc     di
                mov     ax,seg_a
                mov     es,ax
                cmp     es:data_63,di
                jb      loc_64
                mov     di,[bp+LOCAL_1]
                mov     ax,[bp-6]
                dec     di
                dec     di
                stosw
                mov     ax,cx
                stosb

locloop_60::
                lodsb
                cmp     al,61h                  ; 'a'
                jb      loc_61
                cmp     al,7Ah                  ; 'z'
                jbe     loc_63
loc_61::
                stosb
                loop    locloop_60

                xor     ax,ax
                stosw
loc_62::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                add     sp,4
                pop     bp
                retf
loc_63::
                xor     ax,ax
                mov     di,[bp+LOCAL_1]
                dec     di
                dec     di
                stosw
                mov     ax,8836h
                jmp     short loc_62
loc_64::
                inc     es:data_48
                mov     ax,8851h
                jmp     short loc_62
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                mov     ax,seg_a
                mov     ds,ax
                mov     di,data_62
loc_65::
                cmp     word ptr [di],0
                je      loc_67
                cmp     [di],cx
                je      loc_66
                mov     al,[di+2]
                xor     ah,ah
;*              add     ax,3
                db      5, 3, 0
                add     di,ax
                jmp     short loc_65
loc_66::
                xor     ax,ax
                retn
loc_67::
                mov     ax,8801h
                or      ax,ax
                retn
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    far
                push    cx
                push    si
                push    di
                push    ds
                push    es
                callf   sub_2
                or      ax,ax
                jnz     loc_69
                push    di
                call    sub_19
                pop     si
                jnz     loc_69
                xchg    si,di
                mov     bl,[si+2]
                xor     bh,bh
                add     si,3
                mov     ax,es
                or      ax,di
                jz      loc_68
                mov     cx,bx
                rep     movsb
                mov     byte ptr es:[di],0
loc_68::
                xor     ax,ax
loc_69::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                retf
sub_20          endp

loc_70::
                xor     ch,ch
                mov     cl,30h                  ; '0'
                xor     al,al
                repne   scasb
                mov     di,si
                neg     cl
                add     cl,2Fh                  ; '/'
                jmp     short loc_71

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    far
                push    bp
                mov     bp,sp
                push    cx
                push    si
                push    di
                push    ds
                push    es
                push    ds
                pop     es
                cld
                mov     di,si
                jcxz    loc_70
loc_71::
                mov     si,seg seg_a
                mov     ds,si
                mov     si,data_62
loc_72::
                cmp     word ptr [si],0
                je      loc_76
                mov     al,[si+2]
;*              cmp     al,cl
                db       3Ah,0C1h
                jnz     loc_73
                push    cx
                push    si
                push    di
                add     si,3
                repe    cmpsb
                pop     di
                pop     si
                pop     cx
                jz      loc_74
loc_73::
                xor     ah,ah
;*              add     ax,3
                db      5, 3, 0
                add     si,ax
                jmp     short loc_72
loc_74::
                mov     cx,[si]
                mov     [bp-2],cx
                xor     ax,ax
loc_75::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bp
                retf
loc_76::
                mov     ax,8801h
                jmp     short loc_75
sub_21          endp

                                                ;* No entry point to code
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     cx,data_52
                mov     dx,data_44
                xor     ax,ax
                pop     ds
                retf
data_34         dw      offset loc_79           ; Data table (indexed access)
data_35         dw      offset loc_85
data_36         dw      offset loc_90
data_37         dw      offset loc_93
data_38         dw      offset loc_94
data_39         dw      offset loc_96
data_40         dw      offset loc_99
data_41         dw      offset loc_101

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    far
loc_77::
                cmp     bx,8
                jb      loc_78
                mov     ax,8811h
                retf
loc_78::
                push    dx
                push    cx
                push    ds
                push    es
                mov     cx,seg seg_a
                mov     ds,cx
                shl     bx,1
                mov     cx,data_46
                jmp     word ptr data_34[bx]    ;*8 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_79::
                les     bx,data_59
                mov     es,es:[bx]
                or      cx,cx
                jz      loc_83
                cmp     byte ptr es:data_84e,0CEh
                jne     loc_80
                mov     al,es:data_85e
                mov     ah,7
                mul     ah
                mov     bx,ax
                add     bx,data_61
                mov     ax,es
                cmp     [bx+2],ax
                jne     loc_80
                mov     al,es:data_85e
                cmp     al,0
                je      loc_83
                call    sub_24
                or      ax,ax
                jz      loc_83
                cmp     [bx],ax
                je      loc_83
loc_80::
                mov     byte ptr es:data_84e,0CEh
                mov     bx,data_61

locloop_81::
                cmp     word ptr [bx+2],0
                je      loc_82
                add     bx,7
                loop    locloop_81

                inc     data_49
loc_82::
                mov     [bx+2],es
                call    sub_24
                mov     [bx],ax
                mov     byte ptr [bx+6],0
                mov     word ptr [bx+4],0
                sub     bx,data_61
                mov     ax,bx
                mov     bl,7
                div     bl
                mov     es:data_85e,al
loc_83::
                mov     bl,es:data_85e
loc_84::
                xor     ax,ax
                pop     es
                pop     ds
                pop     cx
                pop     dx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_85::
                jcxz    loc_84
                mov     bx,data_61
                add     bx,7

locloop_86::
                cmp     [bx+2],ax
                je      loc_88
loc_87::
                add     bx,7
                loop    locloop_86

                jmp     short loc_84
loc_88::
                mov     dx,ax
                call    sub_24
                xchg    dx,ax
                or      dx,dx
                jz      loc_89
                cmp     [bx],dx
                jne     loc_87
loc_89::
                call    sub_25
                jmp     short loc_84

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_90::
                jcxz    loc_84
                mov     bx,data_61

locloop_91::
                cmp     [bx],ax
                je      loc_92
                add     bx,7
                loop    locloop_91

                jmp     short loc_84
loc_92::
                push    ax
                call    sub_25
                pop     ax
                jmp     short locloop_91

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_93::
                call    sub_23
                mov     [bx+6],al
                jmp     short loc_84

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_94::
                call    sub_23
                mov     bl,[bx+6]
                jmp     short loc_84

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_23::
                push    ax
                push    es
                les     bx,data_59
                mov     es,es:[bx]
                cmp     byte ptr es:data_84e,0CEh
                je      loc_95
                mov     bx,0
                callf   sub_22
loc_95::
                mov     al,es:data_85e
                mov     bl,7
                mul     bl
                add     ax,data_61
                mov     bx,ax
                pop     es
                pop     ax
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_24::
                push    bx
                xor     bx,bx
                mov     ax,1683h
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,bx
                pop     bx
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_25::
                xor     ax,ax
                mov     [bx],ax
                mov     [bx+2],ax
                mov     [bx+6],al
                mov     [bx+4],ax
                retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_96::
                pop     es
                pop     ds
                pop     cx
                pop     dx
                push    dx
                push    es
                mov     es,cx
                mov     dx,es:data_3e
                pop     es
                or      dx,dx
                jnz     loc_97
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jz      loc_98
loc_97::
                add     dx,ax
                mov     bh,9
                callf   sub_6
loc_98::
                pop     dx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_99::
                les     bx,data_59
                mov     es,es:[bx]
                or      cx,cx
                jz      loc_100
                cmp     byte ptr es:data_84e,0CEh
                jne     loc_100
                mov     al,es:data_85e
                mov     ah,7
                mul     ah
                add     ax,data_61
                xchg    bx,ax
                mov     ax,es
                cmp     [bx+2],ax
                jne     loc_100
                mov     bx,[bx+4]
                jmp     loc_84
loc_100::
                xor     bx,bx
                jmp     loc_84

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_101::
                les     bx,data_59
                mov     es,es:[bx]
                or      cx,cx
                jz      loc_103
                cmp     byte ptr es:data_84e,0CEh
                jne     loc_103
                xchg    cx,ax
                mov     al,es:data_85e
                mov     ah,7
                mul     ah
                add     ax,data_61
                xchg    bx,ax
                or      cx,cx
                jz      loc_102
                mov     ax,[bx+4]
                or      ax,ax
                jz      loc_102
                cmp     ax,cx
                je      loc_102
                mov     cx,0FFFFh
loc_102::
                mov     [bx+4],cx
loc_103::
                jmp     loc_84
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                push    es
                mov     es,cx
                cmp     word ptr es:data_1e,32h
                pop     es
                jz      loc_104
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_27::
loc_104::
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
                mov     es,ax
                mov     di,data_66
                mov     bx,di
                xchg    cx,ax
                mov     cx,data_50
                cmp     dl,0
                jne     loc_109
                mov     dx,cx
                cmp     [di],ax
                jne     loc_106
loc_105::
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
                cld
                retn
loc_106::
                inc     data_50
                jcxz    loc_108
                repne   scasw
                jnz     loc_107
                sub     dx,cx
                dec     dx
                dec     di
                dec     di
                dec     data_50
loc_107::
                mov     cx,dx
                lea     si,[di-2]
                std
                rep     movsw
loc_108::
                mov     [bx],ax
                jmp     short loc_105
loc_109::
                jcxz    loc_105
                repne   scasw
                jnz     loc_105
                mov     si,di
                dec     di
                dec     di
                rep     movsw
                dec     data_50
                mov     [di],cx
                jmp     short loc_105
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                mov     es,cx
                pop     ax
                xor     di,di
                mov     bp,60h
                mov     cx,data_44
                mov     ds,data_52
                xor     si,si
                mov     dh,1
                mov     dl,es:[di+8]
                cmp     ah,0
                je      loc_112
                xor     ax,ax
                cmp     ax,es:[di+1Ah]
                jne     locloop_110
                cmp     ax,es:[di+1Ch]
                je      loc_118

locloop_110::
                cmp     dl,[si+8]
                jae     loc_111
                mov     al,[si+8]
                or      al,al
                jz      loc_111
                dec     byte ptr [si+8]
loc_111::
                add     si,bp
                loop    locloop_110

                jmp     short loc_118
loc_112::
                test    byte ptr es:[di+2],1
                jz      loc_118
                mov     bx,di
                add     di,1Ah
                xor     ax,ax

locloop_113::
                test    byte ptr [si+2],1
                jz      loc_117
                push    si
                push    di
                push    cx
                add     si,1Ah
                mov     cx,0Ch
                repe    cmpsb
                pop     cx
                pop     di
                pop     si
                jc      loc_115
                cmp     [si+8],dl
                jb      loc_114
                or      dl,dl
                jnz     loc_117
loc_114::
                inc     byte ptr [si+8]
                jmp     short loc_117
loc_115::
                cmp     [si+1Ah],ax
                jne     loc_116
                cmp     [si+1Ch],ax
                je      loc_117
loc_116::
                inc     dh
loc_117::
                add     si,bp
                loop    locloop_113

                mov     di,bx
                mov     es:[di+8],dh
loc_118::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                push    di
                push    es
                push    ds
                push    ds
                pop     es
                mov     di,data_66
                mov     ax,data_50
                mov     cx,ax
                jcxz    loc_123
                dec     ax
                add     di,ax
                add     di,ax

locloop_119::
                mov     ds,es:[di]
                xor     si,si
                cmp     word ptr [si],32h
                je      loc_121
                clc
loc_120::
                mov     dl,1
                push    cx
                mov     cx,ds
                pushf
                call    sub_27
                popf
                pop     cx
                jc      loc_124
                jmp     short loc_122
loc_121::
                cmp     byte ptr [si+2],2
                stc
                jz      loc_120
                test    byte ptr [si+2],10h
                jnz     loc_122
                cmp     word ptr [si+4],0
                jne     loc_122
                cmp     word ptr [si+6],0
                je      loc_124
loc_122::
                dec     di
                dec     di
                loop    locloop_119

loc_123::
                mov     ax,883Fh
                or      ax,ax
                jmp     short loc_125
loc_124::
                mov     cx,ds
                xor     ax,ax
loc_125::
                pop     ds
                pop     es
                pop     di
                retn
sub_29          endp

                                                ;* No entry point to code
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    ds
                callf   sub_2
                or      ax,ax
                jnz     loc_126
                mov     di,bx
                callf   sub_20
                jnz     loc_126
                mov     di,si
                mov     ds,cx
                mov     si,data_1e
                mov     cx,60h
                rep     movsb
                mov     ax,0
loc_126::
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf
                                                ;* No entry point to code
                push    bx
                push    dx
                push    si
                push    di
                push    ds
                push    es
                push    si
                push    es
                pop     ds
                mov     si,bx
                xor     cx,cx
                callf   sub_21
                pop     si
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jz      loc_127
                callf   sub_1
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jnz     loc_128
                push    si
                mov     si,bx
                callf   sub_18
                pop     si
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jz      loc_127
                push    ax
                callf   sub_3
                pop     ax
                jmp     short loc_128
loc_127::
                push    cx
                mov     es,cx
                xor     di,di
                mov     cx,60h
                rep     movsb
                pop     cx
                mov     bx,2
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_53
                pop     bp
                xor     ax,ax
loc_128::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                pop     bx
                retf
data_43         db      11h
                db      0
data_44         dw      8
data_45         dw      30h
data_46         dw      1Fh
data_47         dw      0
data_48         dw      0
data_49         dw      0
data_50         dw      0
data_51         db      0
data_52         dw      seg_b
data_53         dw      0, 0
data_55         db      2
                db       00h, 02h, 00h, 02h, 00h, 02h
                db       00h, 10h, 02h, 00h, 20h, 03h
                db       00h, 01h, 03h, 00h, 02h, 03h
                db       00h, 04h, 03h, 00h, 08h, 0Ah
                db       02h, 00h, 04h, 02h, 00h, 0Ch
                db       02h, 00h, 0Eh, 02h, 00h, 14h
                db       01h, 00h, 15h, 02h, 00h, 08h
                db       01h, 00h, 18h, 02h, 00h, 12h
                db       02h, 00h, 1Ah, 03h, 16h, 02h
                db       00h, 04h, 10h, 02h, 00h, 09h
                db       01h, 00h, 06h, 02h, 00h, 02h
                db       00h, 40h, 03h, 00h, 20h, 02h
                db       00h, 08h, 30h, 03h
                db      30h
data_56         db      1Ah
data_57         db      3
                db      0
data_59         dd      00000h
data_61         dw      0
data_62         dw      0
data_63         dw      0
                db      60h
                db      0
data_65         dw      0
data_66         dw      0
data_67         db      0
                db      4439 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

                db      0, 0
data_70         db      0
                db      4797 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_78,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_76,bx
                mov     word ptr data_76+2,es
                pop     ax
                or      ax,ax
                jz      loc_129
                call    sub_30
                call    sub_31
                call    sub_32
                jmp     loc_132
loc_129::
                mov     ax,seg_a
                mov     es,ax
                mov     ax,7A20h
                mov     bx,0
                push    es
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                pop     es
                mov     word ptr es:data_53,bx
                mov     word ptr es:data_53+2,cx
                mov     data_74,bx
                mov     data_75,cx
                push    bx
                push    ds
                mov     ax,292h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_76
                add     sp,4
                pop     bx
                push    es
                call    sub_31
                pop     es
                mov     ax,data_78
                or      ax,ax
                jz      loc_130
                mov     es:data_52,ax
loc_130::
                push    ds
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                add     si,10h
                mov     word ptr es:data_59,si
                mov     word ptr es:data_59+2,ds
                pop     ds
                mov     ax,60h
                mul     es:data_44
                mov     cx,ax
                xor     ax,ax
                shr     cx,1
                push    es
                mov     es,data_78
                xor     ax,ax
                xor     di,di
                cld
                rep     stosw
                mov     ax,es
                mov     cl,4
                shr     di,cl
                add     ax,di
                pop     es
                mov     es:data_65,ax
                mov     di,offset data_67
                mov     ax,3
                add     ax,es:data_45
                mul     es:data_44
                mov     cx,ax
                xor     ax,ax
                shr     cx,1
                mov     es:data_62,di
                rep     stosw
                adc     cl,0
                rep     stosb
                mov     es:data_63,di
                stosw
                mov     es:data_66,di
                mov     cx,es:data_44
                rep     stosw
                stosw
                test    es:data_46,0FFFFh
                jz      loc_131
                mov     ax,7
                mul     byte ptr es:data_46
                mov     cx,ax
                xor     ax,ax
                shr     cx,1
                mov     es:data_61,di
                rep     stosw
loc_131::
                mov     al,data_83
                mov     es:data_51,al
                mov     bx,0
                call    far ptr sub_22
loc_132::
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                mov     bx,10h
                mov     si,seg_a+326h
                sub     si,seg_c
                mov     ax,3
;*              add     ax,2
                db      5, 2, 0
                add     ax,es:data_45
                mul     es:data_44
;*              add     ax,4
                db      5, 4, 0
                test    byte ptr es:data_44,0FFh
                jz      loc_133
                mov     dx,ax
                mov     ax,7
                mul     byte ptr es:data_46
                add     ax,dx
loc_133::
                add     ax,0AC8h
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
                mov     cl,4
                shr     ax,cl
                mov     dx,ax
                mov     cx,seg seg_b
                sub     cx,seg_a
                sub     cx,ax
                add     si,cx
                push    dx
                mov     ax,60h
                mul     es:data_44
                mov     cl,4
                shr     ax,cl
                mov     cx,ax
                pop     dx
                mov     ax,seg_c
                sub     ax,seg_b
                sub     ax,cx
                add     si,ax
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                push    bx
                xor     cx,cx
                mov     ah,0DCh
                int     21h                     ; ??INT Non-standard interrupt
                or      cx,cx
                jz      loc_135
                mov     bx,33h
loc_134::
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,bx
                mov     si,280h
                push    cs
                pop     ds
                call    dword ptr cs:data_76
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    bx
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_76
                add     sp,2
                pop     bx
                pop     ax
                pop     ax
                mov     ax,0FFFFh
                retf
loc_135::
                mov     ax,7AF0h
                push    es
                int     2Fh                     ; ??INT Non-standard interrupt
                pop     es
                cmp     al,0FFh
                mov     bx,34h
                jz      loc_134
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                xchg    ah,al
                cmp     ax,30Ah
                mov     bx,32h
                jc      loc_134
                pop     bx
                retn
sub_30          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_80,bx
                mov     word ptr data_80+2,es
                mov     cx,5
                mov     si,34Eh
                mov     di,26Ah
                push    ds
                pop     es
                call    dword ptr data_80
                retn
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near
                cmp     byte ptr data_82,0
                je      loc_ret_136
                mov     bx,5
                call    dword ptr data_76

loc_ret_136::
                retn
sub_32          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


conn            proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      0, 0, 0, 0, 0, 0
data_74         dw      0
data_75         dw      0
data_76         dw      0, 0
data_78         dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'CONN', 0
                db      'VeRsIoN=1.21', 0
                db      'CONN.VLM     - NetWare connectio'
                db      'n table '
                db      'manager  v1.21 (960514)', 0Dh, 0Ah
                db      0
data_80         dw      0, 0
data_82         db      1
data_83         db      0
                db      'CONNECTIONS'
                db       00h, 52h, 0Ah
                dw      seg_a
                db       02h, 00h, 32h, 00h
                db      'AVERAGE NAME LENGTH'
                db       00h, 54h, 0Ah
                dw      seg_a
                db       02h, 00h, 30h, 00h
                db      'MAX TASKS'
                db       00h, 56h, 0Ah
                dw      seg_a
                db       05h, 00h,0FEh, 00h
                db      'LOAD LOW CONN'
                db       00h,0D8h, 02h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh
                db      'LOAD CONN TABLE LOW'
                db       00h,0D9h, 02h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh,0DAh, 02h
                db       0Ch, 00h, 02h, 00h,0E6h, 02h
                db      0EEh, 02h, 14h, 00h, 02h, 00h
                db       02h, 03h, 0Ah, 03h, 0Ah, 01h
                db       00h, 00h, 14h, 03h, 1Ch, 03h
                db       0Eh, 00h, 04h, 00h, 2Ah, 03h
                db       32h, 03h, 14h, 00h, 04h, 00h
                db       46h, 03h

conn            endp

seg_c           ends



                end     start
