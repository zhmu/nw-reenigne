; The following equates show data references outside the range of the program.

data_1e         equ     0
data_2e         equ     2
data_3e         equ     4
data_4e         equ     6
data_5e         equ     0Ah
data_6e         equ     12h
data_7e         equ     15h
data_8e         equ     3Fh
data_9e         equ     0                       ;*
data_105e       equ     15h
data_106e       equ     0
data_107e       equ     2
data_108e       equ     6
data_109e       equ     0Ah
data_110e       equ     12h
data_111e       equ     14h
data_112e       equ     15h
data_113e       equ     18h

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_c
                dw      offset loc_02f6, seg_a
                dw      offset loc_041a, seg_a
                dw      offset loc_044f, seg_a
                dw      offset loc_0627, seg_a
                dw      offset sub_16, seg_a
                dw      offset sub_17, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_09db, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_0129, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_0135, seg_a
                dw      offset loc_0a43, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_NDS

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    dx
                mov     dl,1
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                pop     dx
                retn
sub_6           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,21h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                mov     ax,0FFFFh
                jmp     short loc_1

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_10::
                mov     ax,1
loc_1::
                push    bx
                mov     bx,5
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                pop     bx
                retn
sub_9           endp

                                                ;* No entry point to code
                jo      $+6
                mov     [si],ax
                mov     dl,4
                cmp     ax,[di]
                db      0F1h, 05h,0A4h, 01h, 59h, 01h
                db       39h, 01h,0C5h, 0Bh, 35h, 01h
                db       8Ah, 0Bh,0DFh, 09h, 06h, 0Ah

loc_0129:
                db       83h,0FBh, 0Dh, 77h, 07h,0D1h
                db      0E3h, 2Eh,0FFh,0A7h, 0Fh, 01h

loc_0135:
                db      0B8h, 11h, 88h,0CBh, 48h, 75h
                db       07h, 2Eh, 8Bh, 0Eh,0EDh, 17h
                db      0EBh, 11h, 48h,0B8h, 36h, 88h
                db       75h, 0Dh, 1Eh,0B8h
                dw      seg_a
                db       8Eh,0D8h, 89h, 0Eh,0EDh, 17h
                db       1Fh, 33h,0C0h
loc_2::
                or      ax,ax
                retf
                                                ;* No entry point to code
                push    bx
                push    dx
                push    di
                push    si
                push    ds
                push    es
                mov     es,cs:data_42
                xchg    bx,ax
                mov     di,offset data_59
                mov     ax,400h
                stosw
                mov     al,1Dh
                mov     ah,bl
                stosw
                xor     ax,ax
                stosw
                stosb
                push    es
                pop     ds
                mov     si,offset data_64
                mov     word ptr [si+4],7
                mov     al,17h
                mov     bx,1
                xor     dx,dx
                call    sub_7
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     dx
                pop     bx
                retf
data_10         dw      offset loc_4            ; Data table (indexed access)
data_11         dw      offset loc_5
data_12         dw      offset loc_11
data_13         dw      offset loc_12
data_14         dw      offset loc_6
data_15         dw      offset loc_7
data_16         dw      offset loc_13
data_17         dw      offset loc_14
data_18         dw      offset loc_15
data_19         dw      offset loc_16

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    far
                mov     ax,8836h
                cmp     dl,9
                ja      loc_ret_10
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jnz     loc_ret_10
                push    bx
                push    dx
                push    di
                push    si
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                xor     dh,dh
                mov     di,dx
                shl     di,1
                test    dl,2
                jz      loc_3
                call    sub_12
                jnz     loc_9
loc_3::
                push    ds
                mov     ds,cx
                mov     dx,ds:data_108e
                xor     ax,ax
                pop     ds
                jmp     word ptr data_10[di]    ;*10 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
                call    sub_10
                jmp     short loc_9

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                call    sub_9
                jmp     short loc_9

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                inc     dx
                jmp     short loc_8

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_7::
                or      dx,dx
                jz      loc_9
                dec     dx
loc_8::
                push    ds
                mov     ds,cx
                mov     ds:data_108e,dx
                xor     ax,ax
                pop     ds
loc_9::
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     dx
                pop     bx

loc_ret_10::
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_11::
                inc     byte ptr [si+3]
                call    sub_10
                jmp     short loc_9

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_12::
                or      bl,bl
                jz      loc_9
                dec     byte ptr [si+3]
                call    sub_9
                jmp     short loc_9

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_13::
                inc     byte ptr [si+4]
                inc     dx
                jmp     short loc_8

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_14::
                or      bh,bh
                jz      loc_9
                dec     byte ptr [si+4]
                or      dx,dx
                jz      loc_9
                dec     dx
                jmp     short loc_8

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_15::
                call    sub_12
                jnz     loc_9
                push    ds
                mov     ds,cx
                xor     ax,ax
                test    byte ptr ds:data_107e,40h       ; '@'
                pop     ds
                jnz     loc_9
                push    ds
                mov     ds,cx
                or      byte ptr ds:data_107e,40h       ; '@'
                pop     ds
                inc     byte ptr [si+3]
                jmp     short loc_4

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_16::
                call    sub_12
                jnz     loc_9
                push    ds
                mov     ds,cx
                xor     ax,ax
                test    byte ptr ds:data_107e,40h       ; '@'
                pop     ds
                jz      loc_9
                push    ds
                mov     ds,cx
                and     byte ptr ds:data_107e,0BFh
                pop     ds
                cmp     byte ptr [si+3],0
                je      loc_17
                dec     byte ptr [si+3]
loc_17::
                jmp     loc_5
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
                xor     ax,ax
                push    cx
                push    di
                push    bp
                push    es
                xchg    bp,cx
                mov     si,data_49
                mov     cx,data_51
                mov     bx,0
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                xor     di,di

locloop_18::
                cmp     word ptr [si+1],0
                je      loc_23
                cmp     [si],bl
                je      loc_20
loc_19::
                add     si,5
                loop    locloop_18

                or      di,di
                jnz     loc_22
                mov     ax,8851h
                jmp     short loc_21
loc_20::
                cmp     [si+1],bp
                jne     loc_19
loc_21::
                mov     bx,[si+3]
                or      ax,ax
                pop     es
                pop     bp
                pop     di
                pop     cx
                retn
loc_22::
                mov     si,di
                mov     [si+1],bp
                mov     [si],bl
                jmp     short loc_21
loc_23::
                or      di,di
                jnz     loc_19
                mov     di,si
                jmp     short loc_19
sub_12          endp

data_20         dw      offset loc_25           ; Data table (indexed access)
data_21         dw      offset loc_31
data_22         dw      offset loc_24
data_23         dw      offset loc_26
data_24         dw      offset loc_24
data_25         dw      offset loc_24
data_26         dw      offset loc_24
data_27         dw      offset loc_29
data_28         dw      offset loc_24
data_29         dw      offset loc_24
data_30         dw      offset loc_24
data_31         dw      offset loc_24
data_32         dw      offset loc_38

loc_02f6:
                db       83h,0FBh, 0Dh, 72h, 04h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_24::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                shl     bx,1
                jmp     word ptr cs:data_20[bx] ;*13 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_25::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    far

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_26::
                push    bx
                push    dx
                push    ds
                push    cs
                pop     ds
                mov     bx,data_49
                mov     dx,data_51
loc_27::
                cmp     [bx+1],cx
                jne     loc_28
                mov     byte ptr [bx],0
                mov     word ptr [bx+1],0
                mov     word ptr [bx+3],0
loc_28::
                add     bx,5
                dec     dx
                jnz     loc_27
                pop     ds
                pop     dx
                pop     bx
                xor     ax,ax
                retf
sub_13          endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                mov     ah,dh
                sub     ah,41h                  ; 'A'
                mov     al,1
                push    cx
                push    dx
                xor     cx,cx
                xor     dx,dx
                callf   sub_18
                pop     dx
                pop     cx
loc_30::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_31::
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jnz     loc_30
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
                mov     es,cx
                mov     al,es:data_8e
                mov     si,data_49
                mov     cx,data_51

locloop_32::
                cmp     [si],al
                je      loc_34
loc_33::
                add     si,5
                loop    locloop_32

                jmp     short loc_37
loc_34::
                mov     bp,cx
                mov     cx,[si+1]
                jcxz    loc_37
                push    ds
                mov     ds,cx
                mov     dx,ds:data_3e
                pop     ds
                xor     ax,ax
                sub     dl,[si+3]
                sbb     dh,0
                jnc     loc_35
                mov     dx,ax
loc_35::
                mov     bh,9
                call    sub_3
                xchg    dx,ax
                push    ds
                mov     ds,cx
                mov     dx,ds:data_4e
                pop     ds
                sub     dl,[si+4]
                sbb     dh,0
                jnc     loc_36
                mov     dx,0
loc_36::
                push    ds
                mov     ds,cx
                mov     ds:data_4e,dx
                pop     ds
                add     dx,ax
                push    ds
                mov     ds,cx
                and     byte ptr ds:data_2e,0BFh
                pop     ds
                xor     ax,ax
                mov     [si],al
                mov     [si+1],ax
                mov     [si+3],ax
                mov     cx,bp
                mov     al,es:data_8e
                jmp     short loc_33
loc_37::
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

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_38::
                cmp     cx,1
                jne     loc_39
                cmp     dx,0
                jne     loc_39
                push    cx
                push    dx
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                mov     data_40,cx
                mov     data_41,dx
                pop     ds
                pop     dx
                pop     cx
                xor     ax,ax
                retf
loc_39::
                mov     ax,8811h
                retf

loc_041a:
                xor     ax,ax
                or      cx,cx
                jnz     loc_ret_42
                push    bx
                push    dx
                mov     ax,7A20h
                mov     bx,9
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jnz     loc_40
                cmp     bx,1
                jne     loc_40
                jmp     short loc_41
loc_40::
                mov     dx,32h
                mov     bx,100h
                call    sub_5
                jnz     loc_41
                mov     dl,1
                callf   sub_16
                xor     cx,cx
                jmp     short loc_40
loc_41::
                xor     ax,ax
                pop     dx
                pop     bx

loc_ret_42::
                retf

loc_044f:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_39
                cmp     cx,[si]
                jbe     loc_43
                mov     cx,[si]
loc_43::
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

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_44::
                push    ds
                push    es
                push    cx
                push    di
                push    si
                cmp     cx,103h
                jbe     loc_45
                mov     cx,103h
loc_45::
                mov     ax,seg_a
                mov     ds,ax
                mov     si,data_45
                jmp     short loc_47

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                push    ds
                push    es
                push    cx
                push    di
                push    si
                mov     ax,seg_a
                mov     es,ax
                mov     di,es:data_45
                cmp     cx,103h
                mov     ax,8833h
                ja      loc_48
loc_47::
                shr     cx,1
                cld
                rep     movsw
                adc     cx,cx
                rep     movsb
                xor     ax,ax
loc_48::
                pop     si
                pop     di
                pop     cx
                pop     es
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_49::
                push    bx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                xor     ax,ax
                mov     bx,data_47
                cmp     dx,110h
                je      loc_50
                mov     ax,8844h
                jmp     short loc_55
loc_50::
                mov     ax,8836h
                cmp     si,[bx+2]
                jae     loc_55
                mov     ax,cx
                add     ax,si
                cmp     ax,[bx+4]
                jbe     loc_51
                mov     ax,8836h
                mov     dx,si
                sub     dx,[bx+4]
                neg     dx
                jnc     loc_55
                cmp     cx,dx
                jbe     loc_51
                mov     cx,dx
loc_51::
                mov     dx,110h
                mov     ax,es
                or      ax,di
                jz      loc_54
                push    cx
                push    bx
                lea     bx,[bx+si+7]
                push    si
                mov     si,bx
                push    di
                cld
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     di
                pop     si
                pop     bx
                test    byte ptr [bx+6],4
                pop     cx
                jz      loc_54
                xchg    dx,ax
                mov     dx,si
                push    cx
                add     cx,si
                mov     bx,1
                jmp     short loc_53
loc_52::
                push    ax
                call    sub_14
                xor     es:[di],al
                inc     di
                inc     dx
                pop     ax
loc_53::
                cmp     dx,cx
                jb      loc_52
                pop     cx
loc_54::
                xor     ax,ax
loc_55::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     bx
                retf
                                                ;* No entry point to code
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
                mov     word ptr [bp-4],0
                mov     ax,seg_a
                mov     es,ax
                mov     bx,es:data_47
                cmp     dx,110h
                je      loc_56
                mov     word ptr [bp-4],8844h
                jmp     short loc_61
loc_56::
                mov     word ptr [bp-4],8836h
                cmp     di,es:[bx+2]
                jae     loc_61
                mov     word ptr [bp-4],0
                mov     ax,cx
                add     ax,di
                cmp     ax,es:[bx+2]
                jbe     loc_57
                mov     word ptr [bp-4],8836h
                mov     dx,di
                sub     dx,es:[bx+2]
                not     dx
                jnc     loc_61
                mov     word ptr [bp-4],8845h
                cmp     cx,dx
                jbe     loc_57
                mov     ax,es:[bx+2]
                mov     cx,dx
                dec     dx
                sub     ax,dx
loc_57::
                mov     dx,110h
                cmp     es:[bx+4],ax
                jae     loc_58
                mov     es:[bx+4],ax
loc_58::
                mov     [bp-2],cx
                add     [bp-2],di
                lea     di,[bx+di+7]
                push    di
                cld
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     di
                test    byte ptr es:[bx+6],4
                jz      loc_61
                xchg    dx,ax
                mov     dx,[bp-12h]
                mov     bx,1
                jmp     short loc_60
loc_59::
                push    ax
                call    sub_14
                xor     es:[di],al
                inc     di
                inc     dx
                pop     ax
loc_60::
                cmp     dx,[bp-2]
                jb      loc_59
loc_61::
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
                                                ;* No entry point to code
                push    ds
                push    di
                push    cs
                pop     ds
                mov     si,data_47
                mov     ax,8844h
                cmp     dx,110h
                jne     loc_62
                mov     bl,[si+6]
                mov     cx,[si+4]
                mov     dx,[si+2]
                xor     ax,ax
loc_62::
                pop     di
                pop     ds
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    cx
                push    dx
                not     ax
                mul     dx
                mov     dx,0C827h
                mul     dx
                mov     cl,bl
                mov     dx,1
                shl     dx,cl
                xor     ax,dx
                pop     dx
                pop     cx
                retn
sub_14          endp

loc_0627:
                push    bx
                push    dx
                push    di
                push    si
                push    ds
                push    es
                push    bp
                mov     bp,sp
                sub     sp,2
                mov     bh,0Dh
                call    sub_4
                jz      loc_64
                jmp     loc_73
loc_63::
                mov     ax,884Fh
                jmp     loc_73
loc_64::
                or      dx,dx
                jnz     loc_63
                push    cx
                xor     cx,cx
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jnz     loc_66
                mov     es,cx
                cmp     byte ptr es:data_5e,4
                jae     loc_65
                pop     cx
                mov     ax,8857h
                jmp     loc_73
loc_65::
                mov     es,cx
                mov     word ptr es:data_9e,32h
                pop     ax
                push    cx
                mov     cx,ax
                call    sub_6
                pop     cx
                xor     ax,ax
                jmp     loc_73
loc_66::
                pop     di
                xor     ax,ax
                mov     [bp-2],ax
                mov     ax,1
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jz      loc_70
                xor     cx,cx
loc_67::
                xor     dx,dx
                mov     bx,0D40h
                call    sub_5
                jnz     loc_68
                mov     es,cx
                test    byte ptr es:data_2e,2
                jz      loc_70
                jmp     short loc_67
loc_68::
                inc     word ptr [bp-2]
                call    sub_1
                xor     dl,dl
                push    bp                      ; PARAMETER_4
                mov     bp,VLMID_NDS
                push    bp                      ; PARAMETER_3
                mov     bp,20h
                push    bp                      ; PARAMETER_2
                mov     bp,4
                push    bp                      ; PARAMETER_1
                call    dword ptr cs:data_56
                pop     bp
                cmp     ax,8800h
                jne     loc_69
                mov     word ptr [bp-2],0FEh
loc_69::
                or      al,al
                jnz     loc_76
loc_70::
                mov     es,cs:data_42
                push    di
                mov     di,44h
                mov     bx,400h
                callf   sub_15
                pop     dx
                mov     bx,[bp-2]
                cmp     word ptr [bp-2],0FEh
                je      loc_71
                or      bx,[bp-2]
                jz      loc_71
                push    ax
                call    sub_6
                pop     ax
loc_71::
                or      ax,ax
                jz      loc_72
                or      bx,bx
                mov     di,dx
                jz      loc_67
                jmp     short loc_74
loc_72::
                push    di
                pop     si
                push    es
                pop     ds
                mov     cx,dx
                mov     dl,[bp+0Ah]
                callf   sub_17
                or      ax,ax
                jnz     loc_75
                mov     dl,5
                callf   sub_11
loc_73::
                mov     sp,bp
                pop     bp
                pop     es
                pop     ds
                pop     si
                pop     di
                pop     dx
                pop     bx
                retf
loc_74::
                mov     cx,dx
                jmp     short loc_73
loc_75::
                push    ax
                call    sub_6
                call    sub_1
                pop     ax
                jmp     short loc_73
loc_76::
                push    ax
                call    sub_6
                pop     ax
                mov     cx,di
                jmp     short loc_73
data_33         db      1
                db      0Bh
                db      'NET_ADDRESS'

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    far

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah

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
                jmp     short loc_80

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_77::
                mov     bx,400h
                jcxz    loc_79
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jz      loc_80
loc_78::
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
loc_79::
                push    dx
                mov     dx,32h
                push    bx
                mov     bx,100h
                call    sub_5
                pop     bx
                pop     dx
                jnz     loc_78
                push    ds
                mov     ds,cx
                mov     dx,ds:data_105e
                pop     ds
                or      dx,dx
                jz      loc_79
loc_80::
                mov     es,cs:data_42
                cld
                mov     cx,18h
                mov     di,offset data_61
                push    di
                rep     movsw
                pop     di
                mov     cl,30h                  ; '0'
                xor     al,al
                repne   scasb
                dec     di
                neg     cx
                add     cx,2Fh
                mov     si,offset data_33
                push    bx
                mov     bl,cl
                mov     es:data_60,bl
                mov     ax,seg_a
                mov     ds,ax
                add     bl,[si+1]
                add     bl,6
                mov     cl,0Dh
                rep     movsb
                mov     di,offset data_59
                xor     bh,bh
                xchg    bh,bl
                mov     es:[di],bx
                xchg    bh,bl
                mov     ax,bx
                pop     bx
                mov     byte ptr es:[di+2],3Dh  ; '='
                mov     word ptr es:[di+3],400h
                mov     bx,ax
                push    es
                pop     ds
                mov     si,offset data_65
                mov     di,offset data_66
                mov     ax,[bp-10h]
                mov     es:[di],ax
                mov     ax,[bp-14h]
                mov     es:[di+2],ax
                inc     bx
                inc     bx
                mov     [si+4],bx
                mov     bx,1
                mov     dx,2
                mov     al,17h
                mov     cx,[bp-4]
                call    sub_7
                jmp     loc_78
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    far
                push    bx
                push    dx
                push    si
                call    sub_2
                jnz     loc_83
                dec     dl
                jnz     loc_82
                push    ds
                mov     ds,cx
                mov     dx,ds:data_7e
                xor     ax,ax
                pop     ds
                or      dx,dx
                jz      loc_81
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_6e,5555h
                pop     ds
                xor     ax,ax
                mov     bx,ax
                mov     dx,ax
                call    sub_7
loc_81::
                push    ax
                call    sub_8
                pop     ax
                jmp     short loc_83
loc_82::
                mov     ax,8836h
                inc     dl
                jnz     loc_83
                xor     ax,ax
                push    ds
                mov     ds,cx
                mov     ds:data_4e,ax
                mov     ds:data_3e,ax
                mov     bh,9
                xor     dx,dx
                call    sub_3
                and     byte ptr ds:data_2e,0BFh
                pop     ds
                callf   sub_13
loc_83::
                pop     si
                pop     dx
                pop     bx
                retf
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    far

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
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jz      loc_84
                jmp     loc_90
loc_84::
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_110e,1111h
                mov     word ptr ds:data_112e,0FFFFh
                mov     byte ptr ds:data_111e,0
                xor     ax,ax
                pop     ds
                mov     bx,100h
                xor     dx,dx
                call    sub_7
                jz      loc_86
                cmp     al,0FFh
                jne     loc_85
                mov     ax,8808h
loc_85::
                push    ax
                call    sub_8
                pop     ax
                jmp     loc_90
loc_86::
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_110e,2222h
                pop     ds
                mov     bh,3
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                mov     ax,cs:data_42
                mov     es,ax
                mov     ds,ax
                mov     si,2EFh
                mov     di,2F5h
                mov     bx,101h
                mov     dx,1
                mov     al,17h
                call    sub_7
                jnz     loc_87
                assume  ds:seg_b
                mov     dx,data_62
                cmp     dl,4
                jae     loc_88
loc_87::
                push    ds
                mov     ds,cx
                mov     dx,ds:data_106e
                mov     [bp+LOCAL_1],dx
                mov     dx,ds:data_113e
                pop     ds
                mov     si,dx
                mov     dl,1
                callf   sub_16
                call    sub_1
                mov     dx,si
                push    ds
                mov     ds,cx
                mov     ds:data_113e,dx
                mov     dx,[bp+LOCAL_1]
                mov     ds:data_106e,dx
                pop     ds
                mov     [bp-6],cx
                mov     ax,8847h
                jmp     short loc_90
loc_88::
                push    dx
                mov     dx,[bp-8]
                callf   sub_11
                pop     dx
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_106e,32h
                mov     ds:data_109e,dx
                pop     ds
                mov     si,44h
                mov     byte ptr [si+30h],0
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jnz     loc_90
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jnz     loc_89
                mov     bx,2
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jmp     short loc_90
loc_89::
                call    sub_8
                jmp     short loc_90
                                                ;* No entry point to code
                cmp     ax,89FFh
                jne     loc_90
                mov     bh,0Dh
                mov     dx,0
                call    sub_3
                mov     ax,8808h
loc_90::
                mov     [bp-4],ax
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
sub_17          endp

loc_09db:
                mov     ax,8836h
                retf
                                                ;* No entry point to code
                push    dx
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                call    sub_19
                mov     dx,[di+2]
                mov     ax,[di]
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,34h
                push    bp
                mov     bp,4
                push    bp
                assume  ds:seg_a
                call    dword ptr cs:data_56
                pop     bp
                pop     ds
                pop     di
                pop     dx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    far
                push    ds
                mov     bx,seg seg_a
                mov     ds,bx
                cmp     ah,19h
                ja      loc_93
                xor     bx,bx
                xchg    bl,ah
                add     bx,bx
                add     bx,bx
                add     bx,offset data_43
                dec     ax
                js      loc_91
                jnz     loc_93
                mov     [bx],dx
                mov     [bx+2],cx
loc_91::
                mov     dx,[bx]
                mov     cx,[bx+2]
                mov     ax,cx
                or      ax,dx
                jz      loc_93
                xor     ax,ax
loc_92::
                pop     ds
                retf
loc_93::
                mov     ax,8836h
                jmp     short loc_92
sub_18          endp

data_34         dw      offset loc_96           ; Data table (indexed access)
data_35         dw      offset loc_97
data_36         dw      offset loc_105
data_37         dw      offset loc_77

loc_0a43:
                db       83h,0FBh, 04h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 55h, 8Bh,0ECh
                db      'PQRSTUVW'
                db       1Eh, 06h, 2Eh, 8Eh, 06h, 66h
                db       0Dh, 03h,0DBh, 2Eh,0FFh,0A7h
                db       3Bh, 0Ah
loc_94::
                mov     [bp-2],ax
loc_95::
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

loc_96::
                mov     word ptr [bp-6],32h
                push    es
                pop     ds
                mov     es,[bp-14h]
                mov     si,offset data_68
                mov     cx,20h
                rep     movsb
                xor     ax,ax
                stosb
                jmp     short loc_94

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_97::
                mov     ax,8836h
                cmp     dx,32h
                jne     loc_94
                cmp     cx,20h
                ja      loc_94
                mov     bx,ds
                or      bx,si
                jz      loc_94
                mov     cx,20h
                mov     di,offset data_68
                jcxz    loc_101

locloop_98::
                lodsb
                cmp     al,61h                  ; 'a'
                jb      loc_99
                cmp     al,7Ah                  ; 'z'
                jbe     loc_103
loc_99::
                cmp     al,20h                  ; ' '
                je      loc_102
                or      al,al
                jz      loc_104
loc_100::
                stosb
                loop    locloop_98

loc_101::
                xor     ax,ax
                stosb
                jmp     short loc_94
loc_102::
                mov     al,5Fh                  ; '_'
                jmp     short loc_100
loc_103::
                xor     ax,ax
                mov     di,offset data_68
                stosb
                mov     ax,8836h
                jmp     short loc_94
loc_104::
                mov     al,5Fh                  ; '_'
                rep     stosb
                xor     ax,ax
                stosb
                jmp     short loc_94

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_105::
                push    es
                pop     ds
                mov     word ptr [bp-2],0
                assume  ds:seg_b
                cmp     byte ptr data_68,0
                je      loc_107
                xor     cx,cx
                mov     bx,100h
                mov     dx,32h
                call    sub_5
                jz      loc_106
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jz      loc_108
                jmp     loc_94
loc_106::
                mov     [bp-4],cx
                jmp     loc_95
loc_107::
                mov     ax,8859h
                jmp     loc_94
loc_108::
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_1e,32h
                pop     ds
                mov     dl,6
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                jz      loc_106
                or      al,al
                jz      loc_106
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_1e,31h
                pop     ds
                mov     dl,6
                push    bp                      ; PARAMETER_4
                mov     bp,VLMID_NDS
                push    bp                      ; PARAMETER_3
                mov     bp,20h
                push    bp                      ; PARAMETER_2
                mov     bp,4
                push    bp                      ; PARAMETER_1
                call    dword ptr cs:data_56
                pop     bp
                mov     si,313h
                mov     di,44h
                push    bx
                mov     bx,7802h
                callf   sub_15
                pop     bx
                or      ax,ax
                jz      loc_110
loc_109::
                push    ds
                mov     ds,cx
                mov     word ptr ds:data_1e,32h
                pop     ds
                call    sub_8
                mov     word ptr [bp-2],8855h
                jmp     loc_95
loc_110::
                callf   sub_17
                jz      loc_106
                jmp     short loc_109
                                                ;* No entry point to code
                push    bx
                push    cx
                push    dx
                push    es
                cmp     dl,4
                jbe     loc_111
                mov     dl,4
loc_111::
                call    sub_19
                mov     ax,seg_a
                mov     es,ax
                xor     ch,ch
                mov     cl,dl
                rep     movsb
                pop     es
                pop     dx
                pop     cx
                pop     bx
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                push    ax
                push    bx
                push    dx
                mov     ax,cx
                assume  ds:seg_a
                sub     ax,cs:data_40
                mov     dl,6
                div     dl
                mov     dl,4
                mul     dl
                mov     di,17F3h
                add     di,ax
                pop     dx
                pop     bx
                pop     ax
                retn
sub_19          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                sub     sp,0Ah
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
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                pop     bx
                mov     ax,[si+4]
                mov     dx,es:[di+4]
                mov     [bp-8],ax
                lds     si,dword ptr [si]
                les     di,dword ptr es:[di]
                mov     ax,ds
                mov     ds,cs:data_42
                assume  ds:seg_b
                mov     data_84,ax
                or      ax,si
                jz      loc_112
                mov     ax,es
                or      ax,di
                jnz     loc_113
loc_112::
                mov     ax,8836h
                jmp     loc_122
loc_113::
                mov     [bp-4],si
                mov     [bp-6],di
                mov     [bp-2],es
                mov     [bp-0Ah],dx
                mov     data_69,0FFFFh
                mov     data_71,0FFFFh
                mov     ax,data_92
                mov     data_72,ax
                mov     data_73,0
                mov     data_76,0
                mov     data_77,0
                mov     ax,[bp-0Ch]
                mov     data_78,ax
                mov     data_79,0
                mov     data_80,dx
                mov     data_81,0
                mov     data_82,19h
                xor     dx,dx
loc_114::
                mov     bx,1
                mov     ax,[bp-8]
                cmp     ax,data_92
                jbe     loc_115
                mov     ax,data_92
loc_115::
                mov     data_85,ax
                mov     data_74,0Ch
                add     data_74,ax
                mov     data_75,0
                mov     si,[bp-0Ah]
                cmp     si,data_92
                jbe     loc_116
                mov     si,data_92
loc_116::
                mov     data_91,si
                or      ax,ax
                jnz     loc_117
                mov     data_82,9
                jmp     short loc_118
loc_117::
                mov     si,[bp-4]
                mov     data_83,si
                mov     data_85,ax
                add     [bp-4],ax
                sub     [bp-8],ax
                inc     bx
loc_118::
                push    ds
                pop     es
                mov     si,34Dh
                mov     di,365h
                mov     ax,68h
                push    dx
                mov     dx,2
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_56
                pop     bp
                pop     dx
                jnz     loc_122
                mov     es,[bp-2]
                mov     di,offset data_63
                mov     si,[bp-6]
                xchg    di,si
                push    cx
                xor     cx,cx
                cmp     data_86,4
                je      loc_119
                mov     cx,data_86
                sub     cx,8
loc_119::
                rep     movsb
                pop     cx
                mov     ax,data_86
;*              cmp     ax,8
                db       3Dh, 08h, 00h
                jbe     loc_120
;*              sub     ax,8
                db       2Dh, 08h, 00h
                add     dx,ax
                add     [bp-6],ax
                sub     [bp-0Ah],ax
loc_120::
                mov     ax,data_88
                mov     bx,data_89
                push    ax
                and     ax,bx
                not     ax
                or      ax,ax
                pop     ax
                jz      loc_121
                mov     data_69,ax
                mov     data_71,bx
                jmp     loc_114
loc_121::
                mov     ax,data_90
loc_122::
                mov     [bp-10h],dx
                mov     [bp-0Ch],ax
                mov     bx,2
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,1
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_56
                pop     bp
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
                add     sp,0Ah
                pop     bp
                retf
                db      12 dup (0)
data_39         db      2
                db      0
data_40         dw      0
data_41         dw      8
data_42         dw      seg_b
data_43         dw      52 dup (0)
                db      0D2h, 0Dh
                db      49 dup (0)
data_45         dw      0E05h
data_46         dw      129 dup (0)
                db      0, 3, 1, 0, 0
data_47         dw      0F0Eh
                db       10h, 01h, 00h, 08h, 08h, 00h
                db       04h, 02h, 6Bh,0D0h, 39h,0A6h
                db       0Fh, 74h,0DDh
                db      2040 dup (0)
data_49         dw      1717h
                db      160 dup (0)
data_51         dw      20h
                db      48 dup (0)
data_53         dw      0
data_54         dw      0                       ; segment storage
data_55         dw      0
data_56         dw      0, 0
                db      205 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

                db      0, 0, 0, 0
data_59         db      0
                db      0, 0, 0, 0
data_60         db      0
data_61         db      0
                db      105 dup (0)
data_62         dw      0
                db      94 dup (0)
data_63         db      0
                db      511 dup (0)
data_64         db      4
                db      0
                dw      seg_b
                db      0, 0
data_65         db      4
                db      0
                dw      seg_b
                db      0, 0
data_66         db      0
                db       00h, 00h, 00h, 0Ch, 00h, 50h
                db       00h
                dw      seg_b
                db       76h, 00h, 00h, 01h, 11h,0ECh
                db       02h
                dw      seg_b
                db       03h, 00h, 44h, 00h
                dw      seg_b
                db       80h, 00h, 04h, 00h
                dw      seg_b
                db       03h, 00h, 44h, 00h
                dw      seg_b
                db      5, 0, 0
                db      11 dup (0)
data_68         db      0
                db      32 dup (0)
                db      2
data_69         dw      0
data_71         dw      0
data_72         dw      0
data_73         dw      0
data_74         dw      0
data_75         dw      0
data_76         dw      0
data_77         dw      0
data_78         dw      0
data_79         dw      0
data_80         dw      0
data_81         dw      0
                db       34h, 03h
                dw      seg_b
data_82         dw      19h
data_83         dw      seg_b
data_84         dw      0
data_85         dw      0
data_86         dw      0
                db      0, 0
data_88         dw      0
data_89         dw      0
data_90         dw      0
                db       00h, 00h, 59h, 03h
                dw      seg_b
                db       0Ch, 00h,0D4h, 00h
                dw      seg_b
data_91         dw      0
data_92         dw      200h
                db      13 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_99,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_95,bx
                mov     word ptr data_95+2,es
                pop     ax
                push    ax
                mov     bx,0
                mov     dx,20h
                call    dword ptr data_95
                or      ax,ax
                jz      loc_123
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,260h
                push    cs
                pop     ds
                call    dword ptr cs:data_95
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,271h
                push    ax
                push    cs
                mov     ax,260h
                push    ax
                push    cs
                mov     ax,271h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_95
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,260h
                push    ax
                push    cs
                mov     ax,271h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_95
                add     sp,0Ah
                pop     bx
                pop     ax
                mov     ax,0FFFFh
                retf
loc_123::
                pop     ax
                or      ax,ax
                jz      loc_124
                jmp     loc_127
loc_124::
                call    sub_20
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_a
                mov     es,ax
                mov     word ptr es:data_56,bx
                mov     word ptr es:data_56+2,cx
                mov     data_97,bx
                mov     word ptr data_97+2,cx
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:data_97
                pop     bp
                mov     es:data_40,cx
                mov     es:data_41,dx
                mov     bx,data_99
                mov     es:data_42,bx
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                assume  ds:seg_a
                mov     es:data_53,si
                mov     es:data_54,ds
                mov     ax,seg_c
                mov     ds,ax
                push    bx
                push    ds
                mov     ax,287h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                assume  ds:seg_c
                call    dword ptr data_95
                add     sp,4
                pop     bx
                mov     ax,seg_b
                mov     es,ax
                mov     dx,bx
                mov     si,offset data_103
                mov     cx,data_104
                jcxz    loc_126

locloop_125::
                lodsw
                xchg    bx,ax
                mov     es:[bx],dx
                loop    locloop_125

loc_126::
                mov     es,dx
                mov     ax,seg_b
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,seg_c
                sub     ax,seg_b
                mov     cl,4
                shl     ax,cl
                xchg    cx,ax
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
loc_127::
                mov     bx,32h
                mov     si,seg_a+1f9h
                sub     si,seg_c
                mov     ax,seg_a
                mov     es,ax
                mov     ax,4
                mul     es:data_41
                add     ax,17F3h
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
                mov     cl,4
                shr     ax,cl
                mov     dx,ax
                mov     cx,seg seg_b
                sub     cx,seg_a
                sub     cx,ax
                add     si,cx
                mov     cx,seg seg_c
                sub     cx,seg_b
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    ds
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_101,bx
                mov     word ptr data_101+2,es
                mov     cx,3
                mov     si,317h
                mov     di,24Ah
                push    ds
                pop     es
                call    dword ptr data_101
                mov     ax,seg_a
                mov     ds,ax
                mov     es,ax
                mov     di,offset data_46
                push    di
                mov     cx,103h
                xor     al,al
                repne   scasb
                neg     cx
                add     cx,100h
                xor     ch,ch
                pop     di
                lea     si,[di+1]
                cld
                rep     movsb
                stosb
                mov     ax,seg_b
                mov     es,ax
                mov     ds,ax
                mov     di,offset data_68
                cmp     byte ptr [di],0
                je      loc_131
                mov     si,di
                mov     cx,20h

locloop_128::
                lodsb
                or      al,al
                jz      loc_130
                cmp     al,20h                  ; ' '
                je      loc_132
loc_129::
                stosb
                loop    locloop_128

loc_130::
                mov     al,5Fh                  ; '_'
                rep     stosb
                xor     ax,ax
                stosb
loc_131::
                pop     ds
                retn
loc_132::
                mov     al,5Fh                  ; '_'
                jmp     short loc_129
sub_20          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


nds             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      10 dup (0)
data_95         dw      0, 0
data_97         dw      0, 0
data_99         dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'NDS', 0
                db      'DOSRQSTR.MSG', 0
                db      'TRAN', 0
                db      'RSA', 0
                db      'VeRsIoN=1.21', 0
                db      'NDS.VLM      - NetWare directory'
                db      ' services protocol module  v1.21'
                db      ' (960514)', 0Dh, 0Ah
                db      0
data_101        dw      0, 0
                db      'PREFERRED TREE'
                db       00h, 13h, 03h
                dw      seg_b
                db       01h, 00h, 20h, 00h
                db      'NAME CONTEXT'
                db       00h, 05h, 0Eh
                dw      seg_a
                db      1, 0, 1, 1
                db      'CONNECTIONS'
                db       00h, 64h, 0Dh
                dw      seg_a
                db       02h, 00h, 32h, 00h,0EEh, 02h
                db       0Dh, 00h, 06h, 00h,0FBh, 02h
                db      0D7h, 02h, 0Fh, 01h, 06h, 00h
                db      0E6h, 02h, 03h, 03h, 0Ch, 00h
                db       02h, 00h, 0Fh, 03h
data_103        db      0DCh
                db       02h,0E8h, 02h,0F1h, 02h,0F7h
                db       02h,0F1h, 02h,0F7h, 02h,0FDh
                db       02h, 03h, 03h,0D6h, 02h, 4Fh
                db       03h, 67h, 03h, 6Dh, 03h
data_104        dw      0Ch

nds             endp

seg_c           ends



                end     start
