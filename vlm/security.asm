include  common.inc


;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_b
                dw      38h, seg_a
                dw      88h, seg_a
                dw      8bh, seg_a
                dw      0bah, seg_a

                db       00h, 00h, 00h, 00h, 4Eh, 56h
                db       6Ch, 6Dh, 61h, 00h
data_1          dw      offset loc_2            ; Data table (indexed access)
data_2          dw      offset loc_1
data_3          dw      offset loc_4
data_4          dw      offset loc_5
data_5          dw      offset loc_1
data_6          dw      offset loc_1
data_7          dw      offset loc_1
data_8          dw      offset loc_1
data_9          dw      offset loc_1
data_10         dw      offset loc_1
data_11         dw      offset loc_1
data_12         dw      offset loc_1
data_13         dw      offset loc_6
                db       83h,0FBh, 0Dh, 72h, 04h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                shl     bx,1
                jmp     word ptr cs:data_1[bx]  ;*13 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
                mov     bx,1
                mov     cx,15h
loc_3::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
                jmp     short loc_3

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                jmp     short loc_3

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                cmp     cx,1
                jne     loc_1
                cmp     dx,0
                jne     loc_1
                push    cx
                push    dx
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_22
                pop     bp
                mov     data_26,cx
                mov     data_25,dx
                pop     ds
                pop     dx
                pop     cx
                xor     ax,ax
                retf
                                                ;* No entry point to code
                xor     ax,ax
                retf
                                                ;* No entry point to code
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_34
                cmp     cx,[si]
                jbe     loc_7
                mov     cx,[si]
loc_7::
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
                                                ;* No entry point to code
                jcxz    $+2
                db       69h, 01h, 6Fh, 01h,0ABh, 01h
                db       39h, 02h, 42h, 02h, 46h, 02h
                db       3Ch, 07h, 73h, 14h
                db      'PQRSTUVW'
                db       1Eh, 06h, 32h,0E4h, 93h, 03h
                db      0DBh, 2Eh,0FFh,0A7h,0ACh, 00h
                db      0B8h, 11h, 88h,0CBh
loc_8::
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
                                                ;* No entry point to code
                push    cx
                mov     ax,seg_a
                mov     es,ax
                mov     di,offset data_28
                mov     cx,0Ch
                rep     movsw
                mov     ds,ax
                mov     si,offset data_33       ; ('Authorized NetWare Clien')
                mov     cx,19h
                rep     movsb
                xor     ax,ax
                mov     cx,0Fh
                rep     stosb
                mov     si,0F1Ah
                mov     bx,0F04h
                mov     di,0F6Ah
                call    sub_4
                pop     cx
                jcxz    loc_9
                mov     bh,14h
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_22
                pop     bp
                mov     bh,14h
                or      dl,20h                  ; ' '
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_22
                pop     bp
                call    sub_3
                lea     si,[bx+10h]
                xchg    si,di
                mov     cx,4
                rep     movsw
                mov     di,bx
                mov     si,offset data_24
                mov     cl,8
                rep     movsw
                jmp     short loc_8
loc_9::
                mov     bp,sp
                mov     di,[bp+4]
                mov     es,[bp]
                mov     si,offset data_30
                mov     cx,4
                rep     movsw
                jmp     loc_8
                                                ;* No entry point to code
                call    sub_4
                jmp     loc_8
                                                ;* No entry point to code
                push    di
                xchg    bx,ax
                call    sub_1
                mov     ax,cx
                mov     es:data_31,al
                cmp     bl,42h                  ; 'B'
                je      loc_10
                xchg    dx,ax
loc_10::
                mov     es:[di],ax
                mov     es:[di+2],dx
                add     di,4
                pop     ax
                xchg    cl,bh
                xchg    cx,bx
                push    word ptr [bx+si+2]
                push    word ptr [bx+si]
                mov     bx,cx
                call    sub_2
                push    es
                pop     ds
                mov     si,offset data_29
                pop     di
                pop     es
                mov     cx,4
                rep     movsw
                jmp     loc_8
loc_11::
                jmp     loc_21
                                                ;* No entry point to code
                mov     byte ptr cs:data_31,1
loc_12::
                sub     di,8
                jc      loc_11
                push    di
                xchg    bx,ax
                call    sub_1
                cmp     bl,42h                  ; 'B'
                je      loc_13
                xchg    cx,dx
loc_13::
                mov     es:[di],cx
                mov     es:[di+2],dx
                add     di,4
                pop     dx
                mov     ax,dx
                push    ds
                push    si
                call    sub_2
                pop     si
                pop     ds
loc_14::
                add     si,6
                sub     dx,[si-2]
                jnc     loc_14
                add     dx,[si-2]
                mov     ax,8
                mov     di,offset data_30
                mov     bx,si
                mov     bp,ds
loc_15::
                mov     cx,[bx-2]
                lds     si,dword ptr [bx-6]
                add     si,dx
                sub     cx,dx
                xor     dx,dx
                cmp     ax,cx
                jae     loc_16
                mov     cx,ax
loc_16::
                jcxz    loc_18
                sub     ax,cx

locloop_17::
                cmpsb
                jnz     loc_21
                mov     [si-1],ch
                loop    locloop_17

loc_18::
                mov     ds,bp
                add     bx,6
                or      ax,ax
                jnz     loc_15
                push    es
                pop     ds
                cmp     byte ptr data_31,2
                jb      loc_20
loc_19::
                mov     si,offset data_29
                mov     di,data_32
                mov     cx,8
                rep     movsw
loc_20::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     bp
                pop     bx
                pop     bx
                pop     dx
                pop     cx
                add     sp,2
                retf
loc_21::
                mov     ax,0FFFFh
                jmp     short loc_20
                                                ;* No entry point to code
                mov     byte ptr cs:data_31,2
                jmp     loc_12
                                                ;* No entry point to code
                xor     ax,ax
                jmp     short loc_19
                                                ;* No entry point to code
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_22
                pop     bp
                jnz     loc_20
                call    sub_3
                mov     si,bx
                add     si,10h
                mov     cx,4
                rep     movsw
                jmp     loc_8

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                mov     ax,seg_a
                mov     es,ax
                mov     di,0F1Ah
                push    bx
                push    dx
                push    si
                push    ds
                call    sub_3
                lea     si,[bx+10h]
                mov     cx,4
                rep     movsw
                pop     ds
                pop     si
                pop     dx
                pop     bx
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                sub     ax,bx
;*              cmp     ax,34h
                db       3Dh, 34h, 00h
                jc      loc_22
                mov     ax,34h
loc_22::
                mov     cx,[si+4]
                push    si
                push    ds
                lds     si,dword ptr [si]
                sub     cx,bx
                add     si,bx
                xor     bx,bx
                cmp     ax,cx
                ja      loc_23
                mov     cx,ax
loc_23::
                sub     ax,cx
                shr     cx,1
                rep     movsw
                adc     cl,cl
                rep     movsb
                pop     ds
                pop     si
                add     si,6
                or      ax,ax
                jnz     loc_22
                mov     cx,0F5Ah
                sub     cx,di
                shr     cx,1
                rep     stosw
                adc     cl,cl
                rep     stosb
                push    es
                pop     ds
                mov     si,offset data_28
                mov     bx,0F5Ah
                mov     di,0F6Ah
                cmp     byte ptr data_31,1
                jae     loc_24
                mov     bx,data_32
                mov     di,offset data_29
loc_24::
                jmp     short loc_25

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_3::
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,cx
                sub     ax,data_26
                mov     dl,6
                div     dl
                mov     dl,18h
                mul     dl
                mov     bx,offset data_36
                add     bx,ax
                mov     data_32,bx
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_4::
loc_25::
                push    bx
                push    cx
                push    dx
                push    bp
                mov     ax,[bx]
                mov     [di],ax
                mov     ax,[bx+2]
                mov     [di+2],ax
                mov     ax,[bx+4]
                mov     [di+4],ax
                mov     ax,[bx+6]
                mov     [di+6],ax
                mov     ax,[bx+8]
                mov     [di+8],ax
                mov     ax,[bx+0Ah]
                mov     [di+0Ah],ax
                mov     ax,[bx+0Ch]
                mov     [di+0Ch],ax
                mov     ax,[bx+0Eh]
                mov     [di+0Eh],ax
                push    bx
                mov     ax,[di+4]
                mov     dx,[di+6]
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+8]
                and     dx,[di+0Ah]
                not     bx
                not     cx
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si]
                adc     dx,[si+2]
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+4]
                and     dx,[di+6]
                not     bx
                not     cx
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+4]
                adc     dx,[si+6]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di]
                and     dx,[di+2]
                not     bx
                not     cx
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+8]
                adc     dx,[si+0Ah]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                not     bx
                not     cx
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+0Ch]
                adc     dx,[si+0Eh]
                xchg    dx,ax
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+8]
                and     dx,[di+0Ah]
                not     bx
                not     cx
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+10h]
                adc     dx,[si+12h]
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+4]
                and     dx,[di+6]
                not     bx
                not     cx
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+14h]
                adc     dx,[si+16h]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di]
                and     dx,[di+2]
                not     bx
                not     cx
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+18h]
                adc     dx,[si+1Ah]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                not     bx
                not     cx
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+1Ch]
                adc     dx,[si+1Eh]
                xchg    dx,ax
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+8]
                and     dx,[di+0Ah]
                not     bx
                not     cx
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+20h]
                adc     dx,[si+22h]
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+4]
                and     dx,[di+6]
                not     bx
                not     cx
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+24h]
                adc     dx,[si+26h]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di]
                and     dx,[di+2]
                not     bx
                not     cx
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+28h]
                adc     dx,[si+2Ah]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                not     bx
                not     cx
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+2Ch]
                adc     dx,[si+2Eh]
                xchg    dx,ax
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+8]
                and     dx,[di+0Ah]
                not     bx
                not     cx
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+30h]
                adc     dx,[si+32h]
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+4]
                and     dx,[di+6]
                not     bx
                not     cx
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+34h]
                adc     dx,[si+36h]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di]
                and     dx,[di+2]
                not     bx
                not     cx
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+38h]
                adc     dx,[si+3Ah]
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                not     bx
                not     cx
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+3Ch]
                adc     dx,[si+3Eh]
                xchg    dx,ax
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+8]
                or      dx,[di+0Ah]
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si]
                adc     dx,[si+2]
                add     ax,7999h
                adc     dx,5A82h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+4]
                or      dx,[di+6]
                and     ax,[di+8]
                and     dx,[di+0Ah]
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+10h]
                adc     dx,[si+12h]
                add     ax,7999h
                adc     dx,5A82h
                mov     bh,ah
                and     bh,0F8h
                mov     bl,dh
                and     bl,0F8h
                mov     cl,5
                shl     ax,cl
                rol     bl,cl
                or      al,bl
                shl     dx,cl
                rol     bh,cl
                or      dl,bh
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di]
                or      dx,[di+2]
                and     ax,[di+4]
                and     dx,[di+6]
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+20h]
                adc     dx,[si+22h]
                add     ax,7999h
                adc     dx,5A82h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+0Ch]
                or      dx,[di+0Eh]
                and     ax,[di]
                and     dx,[di+2]
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+30h]
                adc     dx,[si+32h]
                add     ax,7999h
                adc     dx,5A82h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+8]
                or      dx,[di+0Ah]
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+4]
                adc     dx,[si+6]
                add     ax,7999h
                adc     dx,5A82h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+4]
                or      dx,[di+6]
                and     ax,[di+8]
                and     dx,[di+0Ah]
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+14h]
                adc     dx,[si+16h]
                add     ax,7999h
                adc     dx,5A82h
                mov     bh,ah
                and     bh,0F8h
                mov     bl,dh
                and     bl,0F8h
                mov     cl,5
                shl     ax,cl
                rol     bl,cl
                or      al,bl
                shl     dx,cl
                rol     bh,cl
                or      dl,bh
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di]
                or      dx,[di+2]
                and     ax,[di+4]
                and     dx,[di+6]
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+24h]
                adc     dx,[si+26h]
                add     ax,7999h
                adc     dx,5A82h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+0Ch]
                or      dx,[di+0Eh]
                and     ax,[di]
                and     dx,[di+2]
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+34h]
                adc     dx,[si+36h]
                add     ax,7999h
                adc     dx,5A82h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+8]
                or      dx,[di+0Ah]
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+8]
                adc     dx,[si+0Ah]
                add     ax,7999h
                adc     dx,5A82h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+4]
                or      dx,[di+6]
                and     ax,[di+8]
                and     dx,[di+0Ah]
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+18h]
                adc     dx,[si+1Ah]
                add     ax,7999h
                adc     dx,5A82h
                mov     bh,ah
                and     bh,0F8h
                mov     bl,dh
                and     bl,0F8h
                mov     cl,5
                shl     ax,cl
                rol     bl,cl
                or      al,bl
                shl     dx,cl
                rol     bh,cl
                or      dl,bh
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di]
                or      dx,[di+2]
                and     ax,[di+4]
                and     dx,[di+6]
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+28h]
                adc     dx,[si+2Ah]
                add     ax,7999h
                adc     dx,5A82h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+0Ch]
                or      dx,[di+0Eh]
                and     ax,[di]
                and     dx,[di+2]
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+38h]
                adc     dx,[si+3Ah]
                add     ax,7999h
                adc     dx,5A82h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+8]
                or      dx,[di+0Ah]
                and     ax,[di+0Ch]
                and     dx,[di+0Eh]
                and     bx,[di+8]
                and     cx,[di+0Ah]
                or      ax,bx
                or      dx,cx
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+0Ch]
                adc     dx,[si+0Eh]
                add     ax,7999h
                adc     dx,5A82h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+4]
                or      dx,[di+6]
                and     ax,[di+8]
                and     dx,[di+0Ah]
                and     bx,[di+4]
                and     cx,[di+6]
                or      ax,bx
                or      dx,cx
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+1Ch]
                adc     dx,[si+1Eh]
                add     ax,7999h
                adc     dx,5A82h
                mov     bh,ah
                and     bh,0F8h
                mov     bl,dh
                and     bl,0F8h
                mov     cl,5
                shl     ax,cl
                rol     bl,cl
                or      al,bl
                shl     dx,cl
                rol     bh,cl
                or      dl,bh
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di]
                or      dx,[di+2]
                and     ax,[di+4]
                and     dx,[di+6]
                and     bx,[di]
                and     cx,[di+2]
                or      ax,bx
                or      dx,cx
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+2Ch]
                adc     dx,[si+2Eh]
                add     ax,7999h
                adc     dx,5A82h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                mov     bx,ax
                mov     cx,dx
                or      ax,[di+0Ch]
                or      dx,[di+0Eh]
                and     ax,[di]
                and     dx,[di+2]
                and     bx,[di+0Ch]
                and     cx,[di+0Eh]
                or      ax,bx
                or      dx,cx
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+3Ch]
                adc     dx,[si+3Eh]
                add     ax,7999h
                adc     dx,5A82h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si]
                adc     dx,[si+2]
                add     ax,0EBA1h
                adc     dx,6ED9h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                xor     ax,[di+4]
                xor     dx,[di+6]
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+20h]
                adc     dx,[si+22h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                xor     ax,[di]
                xor     dx,[di+2]
                xor     ax,[di+4]
                xor     dx,[di+6]
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+10h]
                adc     dx,[si+12h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                xor     ax,[di]
                xor     dx,[di+2]
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+30h]
                adc     dx,[si+32h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+8]
                adc     dx,[si+0Ah]
                add     ax,0EBA1h
                adc     dx,6ED9h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                xor     ax,[di+4]
                xor     dx,[di+6]
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+28h]
                adc     dx,[si+2Ah]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                xor     ax,[di]
                xor     dx,[di+2]
                xor     ax,[di+4]
                xor     dx,[di+6]
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+18h]
                adc     dx,[si+1Ah]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                xor     ax,[di]
                xor     dx,[di+2]
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+38h]
                adc     dx,[si+3Ah]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+4]
                adc     dx,[si+6]
                add     ax,0EBA1h
                adc     dx,6ED9h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                xor     ax,[di+4]
                xor     dx,[di+6]
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+24h]
                adc     dx,[si+26h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                xor     ax,[di]
                xor     dx,[di+2]
                xor     ax,[di+4]
                xor     dx,[di+6]
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+14h]
                adc     dx,[si+16h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                xor     ax,[di]
                xor     dx,[di+2]
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+34h]
                adc     dx,[si+36h]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                add     ax,[di]
                adc     dx,[di+2]
                add     ax,[si+0Ch]
                adc     dx,[si+0Eh]
                add     ax,0EBA1h
                adc     dx,6ED9h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di],ax
                mov     [di+2],dx
                xor     ax,[di+4]
                xor     dx,[di+6]
                xor     ax,[di+8]
                xor     dx,[di+0Ah]
                add     ax,[di+0Ch]
                adc     dx,[di+0Eh]
                add     ax,[si+2Ch]
                adc     dx,[si+2Eh]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+0Ch],ax
                mov     [di+0Eh],dx
                xor     ax,[di]
                xor     dx,[di+2]
                xor     ax,[di+4]
                xor     dx,[di+6]
                add     ax,[di+8]
                adc     dx,[di+0Ah]
                add     ax,[si+1Ch]
                adc     dx,[si+1Eh]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    ah,al
                xchg    dh,dl
                xchg    al,dl
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                shl     ax,1
                rcl     dx,1
;*              adc     ax,0
                db       15h, 00h, 00h
                mov     [di+8],ax
                mov     [di+0Ah],dx
                xor     ax,[di+0Ch]
                xor     dx,[di+0Eh]
                xor     ax,[di]
                xor     dx,[di+2]
                add     ax,[di+4]
                adc     dx,[di+6]
                add     ax,[si+3Ch]
                adc     dx,[si+3Eh]
                add     ax,0EBA1h
                adc     dx,6ED9h
                xchg    dx,ax
                mov     bx,ax
                shr     bx,1
                rcr     dx,1
                rcr     ax,1
                mov     [di+4],ax
                mov     [di+6],dx
                pop     bx
                mov     ax,[bx]
                mov     dx,[bx+2]
                add     [di],ax
                adc     [di+2],dx
                mov     ax,[bx+4]
                mov     dx,[bx+6]
                add     [di+4],ax
                adc     [di+6],dx
                mov     ax,[bx+8]
                mov     dx,[bx+0Ah]
                add     [di+8],ax
                adc     [di+0Ah],dx
                mov     ax,[bx+0Ch]
                mov     dx,[bx+0Eh]
                add     [di+0Ch],ax
                adc     [di+0Eh],dx
                pop     bp
                pop     dx
                pop     cx
                pop     bx
                retn
sub_2           endp

                db      10 dup (0)
data_22         dw      0, 0
data_24         db      1
                db       23h, 45h, 67h, 89h,0ABh,0CDh
                db      0EFh,0FEh,0DCh,0BAh, 98h, 76h
                db       54h, 32h, 10h
data_25         dw      8
data_26         dw      0
                db      0, 0
data_28         db      0
                db      63 dup (0)
data_29         db      0
                db      15 dup (0)
data_30         db      0
                db      15 dup (0)
data_31         db      0
data_32         dw      0
data_33         db      'Authorized NetWare Client'
data_34         db      2
                db      0
data_36         db      0
                db      1207 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment para public
                assume cs:seg_b  , ds:seg_a

                                                ;* No entry point to code
                mov     dx,seg seg_b
                mov     ds,dx
                assume  ds:seg_b
                mov     data_44,ax
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_40,bx
                mov     word ptr data_40+2,es
                mov     bx,0
                mov     dx,20h
                call    dword ptr data_40
                or      ax,ax
                jz      loc_26
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,84Dh
                push    cs
                pop     ds
                call    dword ptr cs:data_40
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,856h
                push    ax
                push    cs
                mov     ax,84Dh
                push    ax
                push    cs
                mov     ax,856h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_40
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,84Dh
                push    ax
                push    cs
                mov     ax,856h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_40
                add     sp,0Ah
                pop     bx
                mov     ax,0FFFFh
                retf
loc_26::
                cmp     word ptr ds:[828h],0
                je      loc_29
                call    sub_5
                cmp     byte ptr ds:[8B1h],0
                jne     loc_28
                mov     ax,0FFFFh
                retf
loc_27::
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,1
                mov     bx,6
                mov     cx,3Ch
                mov     si,84Dh
                push    cs
                pop     ds
                call    dword ptr cs:data_40
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,3Ch
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr ds:[820h]
                add     sp,2
                pop     bx
                mov     ax,0FFFFh
                retf
loc_28::
                mov     bx,0
                mov     dx,31h
                call    dword ptr ds:[820h]
                or      ax,ax
                jz      loc_27
                mov     bx,0
                mov     dx,32h
                call    dword ptr ds:[820h]
                or      ax,ax
                jz      loc_27
                jmp     short loc_31
loc_29::
                mov     ax,seg_b
                mov     ds,ax
                push    bx
                push    ds
                mov     ax,868h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_40
                add     sp,4
                pop     bx
                call    sub_5
                mov     ax,seg_a
                mov     es,ax
                cmp     byte ptr data_46,0
                je      loc_30
                mov     si,offset data_37
                mov     di,2FCh
                mov     cx,5EAh
                rep     movsb
loc_30::
                push    es
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     word ptr es:data_22,bx
                mov     word ptr es:data_22+2,ax
                mov     data_42,bx
                mov     word ptr data_42+2,ax
                push    bp
                mov     bp,61h
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_42
                pop     bp
                mov     es:data_26,cx
                mov     es:data_25,dx
                mov     ax,seg_b
                mov     ds,ax
loc_31::
                mov     ax,seg_b
                mov     ds,ax
                mov     bx,61h
                mov     si,seg_a+1d4h
                sub     si,seg_b
                mov     ax,seg_a
                mov     es,ax
                mov     ax,18h
                mul     es:data_25
                add     ax,0F98h
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
                mov     cl,4
                shr     ax,cl
                mov     dx,ax
                mov     cx,seg seg_b
                sub     cx,seg_a
                sub     cx,ax
                add     si,cx
                xor     cx,cx
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     word ptr ds:[8ADh],bx
                mov     word ptr ds:[8AFh],es
                mov     cx,2
                mov     si,8DFh
                mov     di,82Ah
                push    ds
                pop     es
                call    dword ptr ds:[8ADh]
                pushf
                pop     ax
                and     ax,0FFFh
                push    ax
                popf
                pushf
                pop     ax
                and     ax,0F000h
                cmp     ax,0F000h
                je      loc_ret_32
                pushf
                pop     ax
                or      ax,0F000h
                push    ax
                popf
                pushf
                pop     ax
                test    ax,0F000h
                jz      loc_ret_32
                dec     byte ptr ds:[8B2h]

loc_ret_32::
                retn
sub_5           endp

                db      90h
data_37         db      9Ch
                db      0FAh
                db      'fPfSfQfRfWfUWSf'
                db       8Bh, 07h, 66h, 8Bh, 4Fh, 08h
                db       66h, 8Bh, 57h, 0Ch, 66h, 8Bh
                db       5Fh, 04h, 66h, 8Bh,0FBh, 66h
                db       23h,0F9h, 66h, 8Bh,0EBh, 66h
                db      0F7h,0D5h, 66h, 23h,0EAh, 66h
                db       0Bh,0FDh, 66h, 03h,0C7h, 66h
                db       03h, 04h, 66h,0C1h,0C0h, 03h
                db       66h, 8Bh,0F8h, 66h, 23h,0FBh
                db       66h, 8Bh,0E8h, 66h,0F7h,0D5h
                db       66h, 23h,0E9h, 66h, 0Bh,0FDh
                db       66h, 03h,0D7h, 66h, 03h, 54h
                db       04h, 66h,0C1h,0C2h, 07h, 66h
                db       8Bh,0FAh, 66h, 23h,0F8h, 66h
                db       8Bh,0EAh, 66h,0F7h,0D5h, 66h
                db       23h,0EBh, 66h, 0Bh,0FDh, 66h
                db       03h,0CFh, 66h, 03h, 4Ch, 08h
                db       66h,0C1h,0C1h, 0Bh, 66h, 8Bh
                db      0F9h, 66h, 23h,0FAh, 66h, 8Bh
                db      0E9h, 66h,0F7h,0D5h, 66h, 23h
                db      0E8h, 66h, 0Bh,0FDh, 66h, 03h
                db      0DFh, 66h, 03h, 5Ch, 0Ch, 66h
                db      0C1h,0C3h, 13h, 66h, 8Bh,0FBh
                db       66h, 23h,0F9h, 66h, 8Bh,0EBh
                db       66h,0F7h,0D5h, 66h, 23h,0EAh
                db       66h, 0Bh,0FDh, 66h, 03h,0C7h
                db       66h, 03h, 44h, 10h, 66h,0C1h
                db      0C0h, 03h, 66h, 8Bh,0F8h, 66h
                db       23h,0FBh, 66h, 8Bh,0E8h, 66h
                db      0F7h,0D5h, 66h, 23h,0E9h, 66h
                db       0Bh,0FDh, 66h, 03h,0D7h, 66h
                db       03h, 54h, 14h, 66h,0C1h,0C2h
                db       07h, 66h, 8Bh,0FAh, 66h, 23h
                db      0F8h, 66h, 8Bh,0EAh, 66h,0F7h
                db      0D5h, 66h, 23h,0EBh, 66h, 0Bh
                db      0FDh, 66h, 03h,0CFh, 66h, 03h
                db       4Ch, 18h, 66h,0C1h,0C1h, 0Bh
                db       66h, 8Bh,0F9h, 66h, 23h,0FAh
                db       66h, 8Bh,0E9h, 66h,0F7h,0D5h
                db       66h, 23h,0E8h, 66h, 0Bh,0FDh
                db       66h, 03h,0DFh, 66h, 03h, 5Ch
                db       1Ch, 66h,0C1h,0C3h, 13h, 66h
                db       8Bh,0FBh, 66h, 23h,0F9h, 66h
                db       8Bh,0EBh, 66h,0F7h,0D5h, 66h
                db       23h,0EAh, 66h, 0Bh,0FDh, 66h
                db       03h,0C7h, 66h, 03h, 44h, 20h
                db       66h,0C1h,0C0h, 03h, 66h, 8Bh
                db      0F8h, 66h, 23h,0FBh, 66h, 8Bh
                db      0E8h, 66h,0F7h,0D5h, 66h, 23h
                db      0E9h, 66h, 0Bh,0FDh, 66h, 03h
                db      0D7h, 66h, 03h, 54h, 24h, 66h
                db      0C1h,0C2h, 07h, 66h, 8Bh,0FAh
                db       66h, 23h,0F8h, 66h, 8Bh,0EAh
                db       66h,0F7h,0D5h, 66h, 23h,0EBh
                db       66h, 0Bh,0FDh, 66h, 03h,0CFh
                db       66h, 03h, 4Ch, 28h, 66h,0C1h
                db      0C1h, 0Bh, 66h, 8Bh,0F9h, 66h
                db       23h,0FAh, 66h, 8Bh,0E9h, 66h
                db      0F7h,0D5h, 66h, 23h,0E8h, 66h
                db       0Bh,0FDh, 66h, 03h,0DFh, 66h
                db       03h, 5Ch, 2Ch, 66h,0C1h,0C3h
                db       13h, 66h, 8Bh,0FBh, 66h, 23h
                db      0F9h, 66h, 8Bh,0EBh, 66h,0F7h
                db      0D5h, 66h, 23h,0EAh, 66h, 0Bh
                db      0FDh, 66h, 03h,0C7h, 66h, 03h
                db       44h, 30h, 66h,0C1h,0C0h, 03h
                db       66h, 8Bh,0F8h, 66h, 23h,0FBh
                db       66h, 8Bh,0E8h, 66h,0F7h,0D5h
                db       66h, 23h,0E9h, 66h, 0Bh,0FDh
                db       66h, 03h,0D7h, 66h, 03h, 54h
                db       34h, 66h,0C1h,0C2h, 07h, 66h
                db       8Bh,0FAh, 66h, 23h,0F8h, 66h
                db       8Bh,0EAh, 66h,0F7h,0D5h, 66h
                db       23h,0EBh, 66h, 0Bh,0FDh, 66h
                db       03h,0CFh, 66h, 03h, 4Ch, 38h
                db       66h,0C1h,0C1h, 0Bh, 66h, 8Bh
                db      0F9h, 66h, 23h,0FAh, 66h, 8Bh
                db      0E9h, 66h,0F7h,0D5h, 66h, 23h
                db      0E8h, 66h, 0Bh,0FDh, 66h, 03h
                db      0DFh, 66h, 03h, 5Ch, 3Ch, 66h
                db      0C1h,0C3h, 13h, 66h, 8Bh,0F9h
                db       66h, 0Bh,0FAh, 66h, 23h,0FBh
                db       66h, 8Bh,0E9h, 66h, 23h,0EAh
                db       66h, 0Bh,0FDh, 66h, 67h, 8Dh
                db       84h, 38h, 99h, 79h, 82h, 5Ah
                db       66h, 03h, 04h, 66h,0C1h,0C0h
                db       03h, 66h, 8Bh,0FBh, 66h, 0Bh
                db      0F9h, 66h, 23h,0F8h, 66h, 8Bh
                db      0EBh, 66h, 23h,0E9h, 66h, 0Bh
                db      0FDh, 66h, 67h, 8Dh, 94h, 3Ah
                db       99h, 79h, 82h, 5Ah, 66h, 03h
                db       54h, 10h, 66h,0C1h,0C2h, 05h
                db       66h, 8Bh,0F8h, 66h, 0Bh,0FBh
                db       66h, 23h,0FAh, 66h, 8Bh,0E8h
                db       66h, 23h,0EBh, 66h, 0Bh,0FDh
                db       66h, 67h, 8Dh, 8Ch, 39h, 99h
                db       79h, 82h, 5Ah, 66h, 03h, 4Ch
                db       20h, 66h,0C1h,0C1h, 09h, 66h
                db       8Bh,0FAh, 66h, 0Bh,0F8h, 66h
                db       23h,0F9h, 66h, 8Bh,0EAh, 66h
                db       23h,0E8h, 66h, 0Bh,0FDh, 66h
                db       67h, 8Dh, 9Ch, 3Bh, 99h, 79h
                db       82h, 5Ah, 66h, 03h, 5Ch, 30h
                db       66h,0C1h,0C3h, 0Dh, 66h, 8Bh
                db      0F9h, 66h, 0Bh,0FAh, 66h, 23h
                db      0FBh, 66h, 8Bh,0E9h, 66h, 23h
                db      0EAh, 66h, 0Bh,0FDh, 66h, 67h
                db       8Dh, 84h, 38h, 99h, 79h, 82h
                db       5Ah, 66h, 03h, 44h, 04h, 66h
                db      0C1h,0C0h, 03h, 66h, 8Bh,0FBh
                db       66h, 0Bh,0F9h, 66h, 23h,0F8h
                db       66h, 8Bh,0EBh, 66h, 23h,0E9h
                db       66h, 0Bh,0FDh, 66h, 67h, 8Dh
                db       94h, 3Ah, 99h, 79h, 82h, 5Ah
                db       66h, 03h, 54h, 14h, 66h,0C1h
                db      0C2h, 05h, 66h, 8Bh,0F8h, 66h
                db       0Bh,0FBh, 66h, 23h,0FAh, 66h
                db       8Bh,0E8h, 66h, 23h,0EBh, 66h
                db       0Bh,0FDh, 66h, 67h, 8Dh, 8Ch
                db       39h, 99h, 79h, 82h, 5Ah, 66h
                db       03h, 4Ch, 24h, 66h,0C1h,0C1h
                db       09h, 66h, 8Bh,0FAh, 66h, 0Bh
                db      0F8h, 66h, 23h,0F9h, 66h, 8Bh
                db      0EAh, 66h, 23h,0E8h, 66h, 0Bh
                db      0FDh, 66h, 67h, 8Dh, 9Ch, 3Bh
                db       99h, 79h, 82h, 5Ah, 66h, 03h
                db       5Ch, 34h, 66h,0C1h,0C3h, 0Dh
                db       66h, 8Bh,0F9h, 66h, 0Bh,0FAh
                db       66h, 23h,0FBh, 66h, 8Bh,0E9h
                db       66h, 23h,0EAh, 66h, 0Bh,0FDh
                db       66h, 67h, 8Dh, 84h, 38h, 99h
                db       79h, 82h, 5Ah, 66h, 03h, 44h
                db       08h, 66h,0C1h,0C0h, 03h, 66h
                db       8Bh,0FBh, 66h, 0Bh,0F9h, 66h
                db       23h,0F8h, 66h, 8Bh,0EBh, 66h
                db       23h,0E9h, 66h, 0Bh,0FDh, 66h
                db       67h, 8Dh, 94h, 3Ah, 99h, 79h
                db       82h, 5Ah, 66h, 03h, 54h, 18h
                db       66h,0C1h,0C2h, 05h, 66h, 8Bh
                db      0F8h, 66h, 0Bh,0FBh, 66h, 23h
                db      0FAh, 66h, 8Bh,0E8h, 66h, 23h
                db      0EBh, 66h, 0Bh,0FDh, 66h, 67h
                db       8Dh, 8Ch, 39h, 99h, 79h, 82h
                db       5Ah, 66h, 03h, 4Ch, 28h, 66h
                db      0C1h,0C1h, 09h, 66h, 8Bh,0FAh
                db       66h, 0Bh,0F8h, 66h, 23h,0F9h
                db       66h, 8Bh,0EAh, 66h, 23h,0E8h
                db       66h, 0Bh,0FDh, 66h, 67h, 8Dh
                db       9Ch, 3Bh, 99h, 79h, 82h, 5Ah
                db       66h, 03h, 5Ch, 38h, 66h,0C1h
                db      0C3h, 0Dh, 66h, 8Bh,0F9h, 66h
                db       0Bh,0FAh, 66h, 23h,0FBh, 66h
                db       8Bh,0E9h, 66h, 23h,0EAh, 66h
                db       0Bh,0FDh, 66h, 67h, 8Dh, 84h
                db       38h, 99h, 79h, 82h, 5Ah, 66h
                db       03h, 44h, 0Ch, 66h,0C1h,0C0h
                db       03h, 66h, 8Bh,0FBh, 66h, 0Bh
                db      0F9h, 66h, 23h,0F8h, 66h, 8Bh
                db      0EBh, 66h, 23h,0E9h, 66h, 0Bh
                db      0FDh, 66h, 67h, 8Dh, 94h, 3Ah
                db       99h, 79h, 82h, 5Ah, 66h, 03h
                db       54h, 1Ch, 66h,0C1h,0C2h, 05h
                db       66h, 8Bh,0F8h, 66h, 0Bh,0FBh
                db       66h, 23h,0FAh, 66h, 8Bh,0E8h
                db       66h, 23h,0EBh, 66h, 0Bh,0FDh
                db       66h, 67h, 8Dh, 8Ch, 39h, 99h
                db       79h, 82h, 5Ah, 66h, 03h, 4Ch
                db       2Ch, 66h,0C1h,0C1h, 09h, 66h
                db       8Bh,0FAh, 66h, 0Bh,0F8h, 66h
                db       23h,0F9h, 66h, 8Bh,0EAh, 66h
                db       23h,0E8h, 66h, 0Bh,0FDh, 66h
                db       67h, 8Dh, 9Ch, 3Bh, 99h, 79h
                db       82h, 5Ah, 66h, 03h, 5Ch, 3Ch
                db       66h,0C1h,0C3h, 0Dh, 66h, 8Bh
                db      0FBh, 66h, 33h,0F9h, 66h, 33h
                db      0FAh, 66h, 67h, 8Dh, 84h, 38h
                db      0A1h,0EBh,0D9h, 6Eh, 66h, 03h
                db       04h, 66h,0C1h,0C0h, 03h, 66h
                db       8Bh,0F8h, 66h, 33h,0FBh, 66h
                db       33h,0F9h, 66h, 67h, 8Dh, 94h
                db       3Ah,0A1h,0EBh,0D9h, 6Eh, 66h
                db       03h, 54h, 20h, 66h,0C1h,0C2h
                db       09h, 66h, 8Bh,0FAh, 66h, 33h
                db      0F8h, 66h, 33h,0FBh, 66h, 67h
                db       8Dh, 8Ch, 39h,0A1h,0EBh,0D9h
                db       6Eh, 66h, 03h, 4Ch, 10h, 66h
                db      0C1h,0C1h, 0Bh, 66h, 8Bh,0F9h
                db       66h, 33h,0FAh, 66h, 33h,0F8h
                db       66h, 67h, 8Dh, 9Ch, 3Bh,0A1h
                db      0EBh,0D9h, 6Eh, 66h, 03h, 5Ch
                db       30h, 66h,0C1h,0C3h, 0Fh, 66h
                db       8Bh,0FBh, 66h, 33h,0F9h, 66h
                db       33h,0FAh, 66h, 67h, 8Dh, 84h
                db       38h,0A1h,0EBh,0D9h, 6Eh, 66h
                db       03h, 44h, 08h, 66h,0C1h,0C0h
                db       03h, 66h, 8Bh,0F8h, 66h, 33h
                db      0FBh, 66h, 33h,0F9h, 66h, 67h
                db       8Dh, 94h, 3Ah,0A1h,0EBh,0D9h
                db       6Eh, 66h, 03h, 54h, 28h, 66h
                db      0C1h,0C2h, 09h, 66h, 8Bh,0FAh
                db       66h, 33h,0F8h, 66h, 33h,0FBh
                db       66h, 67h, 8Dh, 8Ch, 39h,0A1h
                db      0EBh,0D9h, 6Eh, 66h, 03h, 4Ch
                db       18h, 66h,0C1h,0C1h, 0Bh, 66h
                db       8Bh,0F9h, 66h, 33h,0FAh, 66h
                db       33h,0F8h, 66h, 67h, 8Dh, 9Ch
                db       3Bh,0A1h,0EBh,0D9h, 6Eh, 66h
                db       03h, 5Ch, 38h, 66h,0C1h,0C3h
                db       0Fh, 66h, 8Bh,0FBh, 66h, 33h
                db      0F9h, 66h, 33h,0FAh, 66h, 67h
                db       8Dh, 84h, 38h,0A1h,0EBh,0D9h
                db       6Eh, 66h, 03h, 44h, 04h, 66h
                db      0C1h,0C0h, 03h, 66h, 8Bh,0F8h
                db       66h, 33h,0FBh, 66h, 33h,0F9h
                db       66h, 67h, 8Dh, 94h, 3Ah,0A1h
                db      0EBh,0D9h, 6Eh, 66h, 03h, 54h
                db       24h, 66h,0C1h,0C2h, 09h, 66h
                db       8Bh,0FAh, 66h, 33h,0F8h, 66h
                db       33h,0FBh, 66h, 67h, 8Dh, 8Ch
                db       39h,0A1h,0EBh,0D9h, 6Eh, 66h
                db       03h, 4Ch, 14h, 66h,0C1h,0C1h
                db       0Bh, 66h, 8Bh,0F9h, 66h, 33h
                db      0FAh, 66h, 33h,0F8h, 66h, 67h
                db       8Dh, 9Ch, 3Bh,0A1h,0EBh,0D9h
                db       6Eh, 66h, 03h, 5Ch, 34h, 66h
                db      0C1h,0C3h, 0Fh, 66h, 8Bh,0FBh
                db       66h, 33h,0F9h, 66h, 33h,0FAh
                db       66h, 67h, 8Dh, 84h, 38h,0A1h
                db      0EBh,0D9h, 6Eh, 66h, 03h, 44h
                db       0Ch, 66h,0C1h,0C0h, 03h, 66h
                db       8Bh,0F8h, 66h, 33h,0FBh, 66h
                db       33h,0F9h, 66h, 67h, 8Dh, 94h
                db       3Ah,0A1h,0EBh,0D9h, 6Eh, 66h
                db       03h, 54h, 2Ch, 66h,0C1h,0C2h
                db       09h, 66h, 8Bh,0FAh, 66h, 33h
                db      0F8h, 66h, 33h,0FBh, 66h, 67h
                db       8Dh, 8Ch, 39h,0A1h,0EBh,0D9h
                db       6Eh, 66h, 03h, 4Ch, 1Ch, 66h
                db      0C1h,0C1h, 0Bh, 66h, 8Bh,0F9h
                db       66h, 33h,0FAh, 66h, 33h,0F8h
                db       66h, 67h, 8Dh, 9Ch, 3Bh,0A1h
                db      0EBh,0D9h, 6Eh, 66h, 03h, 5Ch
                db       3Ch, 66h,0C1h,0C3h, 0Fh, 5Fh
                db       66h, 03h, 05h, 66h, 03h, 5Dh
                db       04h, 66h, 03h, 4Dh, 08h, 66h
                db       03h, 55h, 0Ch, 5Fh, 66h, 89h
                db       05h, 66h, 89h, 5Dh, 04h, 66h
                db       89h, 4Dh, 08h, 66h, 89h
                db      'U', 0Ch, 'f]f_fZfYf[fX'
                db       9Dh,0C3h

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


security        proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
                db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.  All Rights Res'
                db      'erved.'
                db      10 dup (0)
data_40         dw      0, 0
data_42         dw      0, 0
data_44         dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'DOSRQSTR.MSG', 0
                db      'SECURITY', 0
                db      'TRAN', 0
                db      'VeRsIoN=1.21', 0
                db      'SECURITY.VLM - NetWare security '
                db      'enhancement module  v1.21 (96051'
                db      '4)', 0Dh, 0Ah
                db      0, 0, 0, 0, 0, 1
data_46         db      0
                db      'SIGNATURE LEVEL'
                db       00h,0B1h, 08h
                dw      seg_b
                db      0, 0, 3, 0
                db      'CONNECTIONS'
                db       00h, 14h, 0Fh
                dw      seg_a
                db       02h, 00h, 32h, 00h,0B3h, 08h
                db       10h, 01h, 00h, 00h,0C3h, 08h
                db      0CBh, 08h, 0Ch, 00h, 02h, 00h
                db      0D7h
                db      8

security        endp

seg_b           ends



                end     start
