; The following equates show data references outside the range of the program.

prn_timeout_3_  equ     47Ah
data_1e         equ     84Ah                    ;*
data_41e        equ     13C0h                   ;*
data_42e        equ     13C2h                   ;*
data_43e        equ     13C4h                   ;*
data_45e        equ     1406h                   ;*
data_46e        equ     1516h                   ;*
data_47e        equ     1518h                   ;*
data_48e        equ     1618h                   ;*
data_187e       equ     3D4h                    ;*
data_189e       equ     3D8h                    ;*
data_191e       equ     3DCh                    ;*
data_192e       equ     3DEh                    ;*
data_193e       equ     3DFh                    ;*
data_194e       equ     3E0h                    ;*
data_195e       equ     456h                    ;*
data_196e       equ     46Eh                    ;*
data_197e       equ     470h                    ;*
data_198e       equ     474h                    ;*
data_199e       equ     476h                    ;*
data_201e       equ     523h                    ;*
data_207e       equ     498h                    ;*

include  common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0, seg_d
                dw      offset loc_07b6, seg_a
                dw      offset loc_07fd, seg_a
                dw      offset loc_136a, seg_a
                dw      offset sub_15, seg_a
                dw      offset sub_12, seg_a
                dw      offset sub_14, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset loc_0a2d, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset loc_00d8, seg_a
                dw      offset loc_0e20, seg_a
                dw      offset sub_35, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_PNW

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,43h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                retn
sub_6           endp

data_3          dw      offset loc_23           ; Data table (indexed access)
data_4          dw      offset loc_44
data_5          dw      offset loc_33
                db       1Ah, 07h, 38h, 06h, 5Bh, 06h
                db       93h, 01h, 70h, 01h, 15h, 05h
                db      0E8h, 00h, 2Ah, 01h, 83h,0FBh
                db       0Bh, 77h, 07h,0D1h,0E3h, 2Eh
                db      0FFh,0A7h,0C2h, 00h
loc_1::
                mov     ax,8811h
                retf
                                                ;* No entry point to code
                push    si
                push    ds
                push    cx
                push    di
                push    es
                mov     es,cs:data_42e
                cld
                xor     ax,ax
                mov     di,offset data_122
                mov     cx,4
                repe    scasw
                jz      loc_2
                mov     di,offset data_75
                push    di
                mov     cl,12h
                rep     movsw
                push    es
                pop     ds
                pop     bx
                mov     si,offset data_122
                mov     di,offset data_74
                push    di
                call    sub_20
                pop     si
                pop     es
                pop     di
                push    di
                mov     cl,4
                rep     movsw
                pop     di
                xor     ax,ax
                jmp     short loc_3
loc_2::
                mov     ax,8834h
                pop     es
                pop     di
loc_3::
                pop     cx
                pop     ds
                pop     si
                retf
                                                ;* No entry point to code
                push    si
                push    ds
                push    di
                push    es
                push    es
                pop     ds
                push    di
                pop     si
                mov     es,cs:data_42e
                mov     di,offset data_76
                push    di
                mov     cx,5
                cld
                rep     movsw
                push    es
                pop     ds
                pop     si
                mov     di,43Ah
                assume  ds:seg_c
                mov     byte ptr data_98,0
                call    sub_33
                pop     es
                pop     di
                mov     cx,data_172
                xchg    ch,cl
                or      ax,ax
                jz      loc_4
                mov     al,0FAh
                jmp     short loc_5
loc_4::
                push    di
                push    cx
                mov     cx,3
                mov     si,offset data_77
                rep     movsw
                pop     cx
                pop     di
loc_5::
                xor     ah,ah
                pop     ds
                pop     si
                retf
                                                ;* No entry point to code
                push    si
                push    di
                push    ds
                push    cx
                mov     ax,seg_b
                mov     ds,ax
                mov     si,offset data_58
                cld
                mov     cx,11h
                rep     movsw
                xor     ax,ax
                pop     cx
                pop     ds
                pop     di
                pop     si
                retf
data_6          dw      offset loc_12           ; Data table (indexed access)
data_7          dw      offset loc_19
data_8          dw      offset loc_21
data_9          dw      offset loc_22
data_10         dw      offset loc_20
                db       81h,0F9h, 00h, 10h, 73h, 04h
                db      0B8h, 0Eh, 88h,0CBh,0FCh, 81h
                db      0E9h, 46h, 0Ch,0D1h,0E0h, 3Dh
                db       0Ah, 00h, 76h, 03h,0E9h,0DDh
                db       00h, 52h, 50h, 5Bh, 58h, 06h
                db       57h, 1Eh, 57h, 50h, 2Eh, 8Eh
                db       1Eh,0C2h, 13h,0C6h, 06h, 75h
                db       04h, 00h, 56h, 53h, 51h, 06h
                db       1Eh, 07h,0BEh, 40h, 08h,0BBh
                db       09h, 00h,0E8h,0B7h, 11h, 07h
                db       59h, 5Bh, 5Eh, 88h, 1Eh, 5Ah
                db       04h, 8Ch, 06h, 52h, 04h, 89h
                db       3Eh, 50h, 04h, 26h, 83h, 3Dh
                db       00h, 74h, 08h,0E8h,0B4h, 02h
                db      0C6h, 06h, 6Ch, 04h, 01h
loc_6::
                add     di,cx
                mov     word ptr ds:[454h],di
                mov     word ptr ds:[45Ch],di
                mov     dx,word ptr ds:[462h]
                mov     word ptr ds:[72Bh],dx
                mov     es:[di+0Ah],dx
                mov     word ptr es:[di+4],19Bh
                mov     es:[di+6],ds
                xor     ax,ax
                push    si
                mov     si,76Fh
                mov     [si+2Ch],al
                mov     [si+15h],al
                mov     byte ptr ds:[468h],al
                mov     byte ptr [si],2
                mov     byte ptr [si+2],0FFh
                mov     byte ptr [si+3],0
                pop     si
                mov     byte ptr ds:[45Bh],al
                inc     al
                mov     es:[di+22h],ax
                mov     word ptr ds:[743h],ax
                mov     ax,di
;*              add     ax,30h
                db       05h, 30h, 00h
                mov     es:[di+24h],ax
                mov     es:[di+26h],es
                push    ds
                push    cx
                push    si
                push    di
                push    bx
                push    es
                pop     ds
                mov     si,di
                add     di,210h
                mov     cx,4

locloop_7::
                push    si
                push    cx
                mov     bx,di
                mov     cx,210h
                rep     movsb
                mov     ax,bx
;*              add     ax,30h
                db       05h, 30h, 00h
                mov     es:[bx+24h],ax
                pop     cx
                pop     si
                loop    locloop_7

                pop     bx
                pop     di
                pop     si
                pop     cx
                pop     ds
                add     di,0A50h
                mov     word ptr ds:[460h],di
                pop     dx
                or      dl,dl
                jnz     loc_8
                mov     es:[di],dl
loc_8::
                inc     di
                mov     word ptr ds:[45Eh],di
                pop     di
                pop     ds
                xor     ax,ax
                jmp     word ptr cs:data_6[bx]  ;*5 entries
                db      0B8h, 11h, 88h,0EBh, 28h
loc_9::
                mov     ds,cs:data_42e
                cmp     byte ptr data_94,1
                jne     loc_10
                call    sub_10
loc_10::
                mov     byte ptr data_94,0
                pop     di
                pop     es
                mov     dl,data_84
                mov     si,data_87
                mov     cl,data_91
                mov     ds,data_79
                xor     ch,ch

loc_ret_11::
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_12::
                push    es
                mov     es,cs:data_42e
                mov     di,offset data_151
                mov     cx,0Ah
                cld
                rep     movsw
                push    es
                pop     ds
                mov     byte ptr data_150,91h
                mov     byte ptr data_147,19h
                mov     data_145,751h
                mov     data_146,33h
                mov     data_149,2490h
                mov     ax,48h
loc_13::
                call    sub_7
                pop     es
                xor     ax,ax
                jmp     short loc_9

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                mov     es,data_79
                mov     di,data_85
                push    cx
                mov     cx,5

locloop_14::
                mov     es:[di+28h],ax
                mov     si,di
                mov     bx,4
                push    cx
                push    ax
                call    sub_34
                pop     ax
                pop     cx
                add     di,210h
                loop    locloop_14

                pop     cx
                push    ds
                pop     es
                mov     byte ptr data_93,1
                call    sub_32
                mov     byte ptr ds:[46Bh],0
                mov     es,word ptr ds:[452h]
                or      ax,ax
                push    ax
                mov     cx,5
                mov     si,word ptr ds:[45Ch]

locloop_15::
                mov     bx,6
                push    cx
                call    sub_34
                pop     cx
                add     si,210h
                loop    locloop_15

                pop     ax
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                push    es
                push    di
                push    bx
                push    ax
                mov     es,data_79
                mov     di,data_87
                cli
                mov     al,es:[di]
                or      al,al
                jz      loc_18
                cmp     al,1Eh
                jbe     loc_16
                mov     al,1Eh
loc_16::
                mov     bx,offset data_141
                mov     word ptr [bx+22h],2
                inc     di
                mov     [bx+2Ah],di
                dec     di
                mov     [bx+2Ch],es
                push    ax
                mov     ah,0Ah
                mul     ah
                mov     [bx+2Eh],ax
                pop     ax
                cmp     byte ptr data_83,0
                jne     loc_17
                mov     data_155,al
                mov     word ptr [bx+28h],34h
                jmp     short loc_18
loc_17::
                mov     data_157,al
                mov     word ptr [bx+28h],4Bh
loc_18::
                sti
                pop     ax
                pop     bx
                pop     di
                pop     es
                retn
sub_8           endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_19::
                push    es
                mov     es,cs:data_42e
                mov     di,offset data_154
                mov     cx,0Ah
                cld
                rep     movsw
                push    es
                pop     ds
                mov     di,offset data_150
                mov     byte ptr [di+1],1
                mov     word ptr [di+1Ch],2Ah
                mov     [di+4],ax
                mov     [di+6],ax
                mov     byte ptr data_147,19h
                mov     data_145,751h
                mov     data_146,4Bh
                mov     data_149,2390h
                mov     ax,62h
                jmp     loc_13

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_20::
                push    es
                mov     es,cs:data_42e
                mov     di,offset data_154
                mov     cx,0Ah
                cld
                rep     movsw
                push    es
                pop     ds
                mov     di,offset data_150
                mov     byte ptr [di+1],1
                mov     word ptr [di+1Ch],2Ah
                mov     [di+4],ax
                mov     [di+6],ax
                mov     byte ptr [di+3],1
                mov     byte ptr data_147,19h
                mov     data_145,751h
                mov     data_146,4Bh
                mov     data_149,2390h
                mov     ax,62h
                jmp     loc_13

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_21::
                push    es
                mov     es,cs:data_42e
                mov     di,offset data_154
                mov     cx,0Ah
                cld
                rep     movsw
                push    es
                pop     ds
                mov     di,offset data_150
                mov     byte ptr [di+1],4
                mov     word ptr [di+1Ch],2Ah
                mov     [di+4],ax
                mov     [di+6],ax
                mov     [di+3],dh
                mov     byte ptr data_147,19h
                mov     data_145,751h
                mov     data_146,4Bh
                mov     data_149,2390h
                mov     ax,1E0h
                jmp     loc_13

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22::
                push    es
                mov     es,cs:data_42e
                mov     di,offset data_154
                mov     cx,0Ah
                cld
                rep     movsw
                push    es
                pop     ds
                mov     di,offset data_150
                mov     byte ptr [di+1],7
                mov     word ptr [di+1Ch],2Ah
                mov     [di+3],al
                mov     [di+4],ax
                mov     [di+6],ax
                mov     byte ptr data_147,19h
                mov     data_145,751h
                mov     data_146,4Bh
                mov     data_149,2390h
                mov     ax,190h
                jmp     loc_13

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    ds
                push    es
                push    cx
                push    di
                push    si
                push    es
                push    di
                mov     cx,seg seg_b
                mov     es,cx
                mov     di,offset data_62
                mov     si,offset data_112
                push    ds
                push    si
                cld
                mov     cx,6Eh
                push    cx
                rep     movsw
                pop     cx
                pop     di
                pop     es
                pop     si
                pop     ds
                inc     si
                inc     si
                rep     movsw
                pop     si
                pop     di
                pop     cx
                pop     es
                pop     ds
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    ds
                push    es
                push    cx
                push    di
                push    si
                push    ds
                pop     es
                mov     cx,seg seg_b
                mov     ds,cx
                mov     si,offset data_62
                mov     di,offset data_112
                mov     cx,6Eh
                rep     movsw
                pop     si
                pop     di
                pop     cx
                pop     es
                pop     ds
                retn
sub_10          endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_23::
                push    ds
                push    es
                push    dx
                push    cx
                push    di
                push    si
                push    es
                push    di
                mov     ax,ds
                mov     es,ax
                mov     di,si
                call    sub_23
                pop     di
                pop     es
                or      ax,ax
                jnz     loc_24
                mov     si,dx
                mov     cx,0Ch
                cld
                rep     movsb
                mov     cx,44h
                mov     ds,cs:data_42e
                mov     si,offset data_136
                rep     movsb
loc_24::
                pop     si
                pop     di
                pop     cx
                pop     dx
                pop     es
                pop     ds
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    far
                push    ds
                push    es
                push    dx
                push    di
                push    si
                push    es
                push    di
                mov     es,cs:data_42e
                mov     di,offset data_66
                push    si
                mov     si,dx
                cmp     byte ptr [si],0
                je      loc_25
                mov     cl,0
loc_25::
                or      cl,cl
                jz      loc_26
                mov     cl,1
loc_26::
                inc     cl
                mov     es:data_102,cl
                mov     byte ptr es:data_103,0
                mov     es:data_152,ch
                mov     cx,8
                cld
                rep     movsw
                pop     si
                mov     di,offset data_156
                mov     cx,8
                rep     movsw
                push    es
                pop     ds
                mov     di,offset data_150
                mov     byte ptr [di],2
                mov     byte ptr [di+1],4
                mov     byte ptr [di+2],0FFh
                xor     ax,ax
                mov     [di+4],ax
                mov     [di+6],ax
                push    di
                lea     di,[di+8]
                mov     cx,0Ah
                mov     si,offset data_114
                rep     movsw
                pop     di
                mov     [di+2Ch],al
                mov     si,offset data_141
                mov     dx,data_88
                mov     [si+0Ah],dx
                mov     [si+4],ax
                mov     [si+6],ax
                inc     ax
                mov     [si+22h],ax
                mov     word ptr [si+24h],751h
                mov     [si+26h],ds
                mov     word ptr [si+28h],4Bh
                mov     byte ptr data_147,19h
                mov     data_149,2390h
                mov     si,offset data_132
                mov     [si+0Ah],dx
                mov     word ptr [si+4],72h
                mov     [si+6],ds
                mov     [si+22h],ax
                mov     word ptr [si+24h],6BDh
                mov     [si+26h],ds
                mov     word ptr [si+28h],64h
                mov     data_101,ah
                mov     bx,4
                call    sub_34
                call    sub_32
                mov     si,693h
                mov     bx,6
                call    sub_34
                pop     di
                pop     es
                cmp     byte ptr ds:[475h],1
                jne     loc_29
                mov     ax,word ptr ds:[583h]
                or      ax,word ptr ds:[585h]
                jnz     loc_27
                mov     ax,word ptr ds:[6F3h]
                mov     word ptr ds:[583h],ax
                mov     ax,word ptr ds:[6F5h]
                mov     word ptr ds:[585h],ax
loc_27::
                cmp     byte ptr ds:[3C0h],0
                jne     loc_28
                mov     cl,byte ptr ds:[477h]
                cmp     cl,1
                jne     loc_30
loc_28::
                mov     si,offset data_134
                mov     cx,5
                rep     movsw
                mov     si,offset data_136
                mov     ax,[si+2Ch]
                stosw
                mov     al,[si+43h]
                stosb
                mov     al,[si+2]
                stosb
                lea     si,[si+1Ch]
                mov     cl,8
                rep     movsw
                jmp     short loc_30
loc_29::
                mov     ax,8847h
                jmp     short loc_31
loc_30::
                xor     ax,ax
loc_31::
                pop     si
                pop     di
                pop     dx
                pop     es
                pop     ds
                retf
sub_11          endp

                                                ;* No entry point to code
                push    ds
                push    cx
                push    di
                push    si
                mov     ds,cs:data_42e
                mov     si,840h
                push    es
                push    ds
                pop     es
                mov     bx,9
                call    sub_34
                pop     es
                mov     cx,5
                cld
                rep     movsw
                pop     si
                pop     di
                pop     cx
                pop     ds
                xor     ax,ax
                retf
data_26         db      1Eh
                db       06h, 52h, 51h, 57h, 56h, 8Ch
                db      0C0h, 2Eh, 8Eh, 06h,0C2h, 13h
                db       26h, 89h, 0Eh, 4Fh, 07h, 26h
                db       89h, 3Eh, 4Bh, 07h, 26h,0A3h
                db       4Dh, 07h,0BFh, 57h, 07h,0B9h
                db       06h, 00h,0FCh,0F3h,0A5h, 06h
                db       1Fh,0BFh, 3Dh, 07h,0BEh, 57h
                db       07h,0C6h, 06h, 70h, 04h, 00h
                db      0E8h,0E9h, 0Bh, 50h, 57h, 33h
                db      0C0h, 48h,0B9h, 03h, 00h,0FCh
                db      0F3h,0AFh, 5Fh, 58h, 75h, 08h
                db       83h,0C6h, 04h,0B9h, 03h, 00h
                db      0F3h,0A5h, 0Bh,0C0h, 75h, 2Ah
                db      0C6h, 06h, 56h, 07h, 19h, 8Bh
                db       16h, 62h, 04h, 89h, 16h, 2Bh
                db       07h,0C7h, 06h, 43h, 07h, 02h
                db       00h,0C7h, 06h, 45h, 07h, 51h
                db       07h,0C7h, 06h, 49h, 07h, 1Eh
                db       00h,0BEh, 21h, 07h,0E8h, 5Ch
                db       0Ah, 74h, 03h,0B8h, 06h, 88h
loc_32::
                pop     si
                pop     di
                pop     cx
                pop     dx
                pop     es
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_33::
                push    cx
                push    bx
                push    di
                push    si
                push    bp
                push    ds
                mov     ds,cs:data_42e
                cmp     dx,111h
                je      loc_34
                mov     ax,8844h
                jmp     short loc_36
loc_34::
                mov     bx,data_108
                mov     ax,8836h
                cmp     si,[bx+2]
                jae     loc_36
                add     cx,si
                cmp     cx,[bx+2]
                ja      loc_36
                sub     cx,si
                mov     ax,es
                or      ax,di
                jz      loc_35
                lea     si,[bx+si+4]
                rep     movsb
loc_35::
                xor     ax,ax
loc_36::
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     bx
                pop     cx
                retf
                                                ;* No entry point to code
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
                mov     word ptr [bp-2],0
                mov     es,cs:data_42e
                mov     bx,es:data_108
                cmp     dx,111h
                je      loc_37
                mov     word ptr [bp-2],8844h
                jmp     short loc_43
loc_37::
                mov     word ptr [bp-2],8836h
                cmp     di,es:[bx+2]
                jae     loc_43
                mov     word ptr [bp-2],0
                mov     ax,cx
                add     ax,di
                cmp     ax,es:[bx+2]
                jbe     loc_38
                mov     word ptr [bp-2],8836h
                jmp     short loc_43
loc_38::
                cld
                mov     dx,di
                lea     di,[bx+di+4]
loc_39::
                jcxz    loc_43
                cmp     dx,10h
                jb      loc_40
                cmp     dx,13h
                jbe     loc_41
loc_40::
                movsb
                jmp     short loc_42
loc_41::
                inc     si
                inc     di
loc_42::
                inc     dx
                dec     cx
                jmp     short loc_39
loc_43::
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

loc_44::
                push    es
                push    cx
                push    di
                mov     es,cs:data_42e
                mov     ax,8844h
                cmp     dx,111h
                jne     loc_45
                mov     cx,2
                mov     di,offset data_111
                xor     ax,ax
                cld
                rep     stosw
                mov     cl,4
                mov     di,offset data_122
                rep     stosw
loc_45::
                pop     di
                pop     cx
                pop     es
                retf
data_33         dw      offset loc_46           ; Data table (indexed access)
data_34         dw      offset loc_47

loc_07b6:
                db       83h,0FBh, 02h, 72h, 04h,0B8h
                db       11h, 88h,0CBh,0D1h,0E3h, 2Eh
                db      0FFh,0A7h,0B2h, 07h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_47::
                cmp     byte ptr cs:data_45e,0
                je      loc_48
                retf
loc_48::
                push    cx
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     byte ptr ds:data_45e,1
                mov     cx,0FFFFh
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                pop     ds
                pop     cx
                retf

loc_07fd:
                xor     ax,ax
                or      cx,cx
                jnz     loc_ret_52
                push    es
loc_49::
                xor     cx,cx
                mov     dx,33h
                mov     bx,100h
                call    sub_2
                mov     ax,0
                jnz     loc_50
                callf   sub_12
                or      ax,ax
                jz      loc_49
loc_50::
                push    ax
                mov     ax,seg_b
                mov     es,ax
                mov     al,es:data_56
                mov     es,word ptr es:[2]
                cmp     al,0
                je      loc_51
                mov     si,84Eh
                mov     bx,6
                call    sub_34
                mov     dx,2490h
                mov     bx,1
                call    sub_34
loc_51::
                mov     dx,es:data_88
                mov     bx,1
                call    sub_34
                mov     dx,es:data_159
                mov     bx,1
                call    sub_34
                pop     ax
                pop     es

loc_ret_52::
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    far
                mov     bh,0Dh
                call    sub_3
                jnz     loc_ret_54
                or      dx,dx
                jz      loc_53
                mov     bh,10h
                mov     dx,5555h
                call    sub_4
                xor     ax,ax
                mov     bx,ax
                mov     dx,ax
                call    sub_6
loc_53::
                call    sub_5

loc_ret_54::
                retf
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                mov     dl,1
                callf   sub_12
                retn
sub_13          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    far
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
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                jnz     loc_56
                mov     bh,0Ah
                call    sub_3
                jnz     loc_56
                inc     dx
                mov     bh,0Ah
                call    sub_4
                jnz     loc_56
                mov     bh,10h
                mov     dx,1111h
                call    sub_4
                jnz     loc_56
                mov     bh,0Dh
                mov     dx,0FFFFh
                call    sub_4
                jnz     loc_56
                xor     bx,bx
                mov     dx,bx
                call    sub_6
                jz      loc_57
                cmp     al,0FFh
                jne     loc_56
                mov     ax,8808h
loc_55::
                push    ax
                mov     bh,10h
                mov     dx,5555h
                call    sub_4
                xor     bx,bx
                mov     dx,bx
                call    sub_6
                mov     bh,0Dh
                xor     dx,dx
                call    sub_4
                mov     bh,0Ch
                xor     dx,dx
                call    sub_4
                pop     ax
loc_56::
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
loc_57::
                mov     bh,10h
                mov     dx,2222h
                call    sub_4
                jnz     loc_56
                mov     bh,2
                call    sub_4
                jnz     loc_56
                mov     es,cs:data_42e
                push    es
                pop     ds
                mov     si,633h
                mov     di,639h
                mov     bx,1
                mov     dx,bx
                mov     al,17h
                call    sub_6
                jnz     loc_56
                mov     dx,data_72
                mov     ax,8857h
                cmp     dl,1
                jne     loc_55
                mov     bh,8
                call    sub_4
                mov     si,3C0h
                mov     byte ptr [si+30h],0
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,30h
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                jnz     loc_58
                mov     bx,2
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,1
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                jmp     loc_56
loc_58::
                push    ax
                call    sub_5
                pop     ax
                jmp     loc_56
sub_14          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    far

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
                mov     [bp+LOCAL_1],cx
                mov     bh,0Dh
                call    sub_3
                jnz     loc_59
                or      dx,dx
                jz      loc_60
loc_59::
                mov     ax,884Fh
                jmp     short loc_61
loc_60::
                call    sub_16
                jnz     loc_62
loc_61::
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
                or      ax,ax
                retf
loc_62::
                mov     es,cs:data_42e
                mov     di,3C0h
                mov     bx,3
                callf   sub_35
                jnz     loc_61
                mov     cx,[bp-6]
                push    es
                pop     ds
                mov     si,di
                callf   sub_14
                or      ax,ax
                jnz     loc_64
                mov     dx,33h
                mov     bh,1
                call    sub_4
                xor     ax,ax
loc_63::
                jmp     short loc_61
loc_64::
                mov     ax,880Fh
                jmp     short loc_63
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                push    dx
                mov     dx,cx
                xor     cx,cx
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                jz      loc_65
                mov     cx,dx
                jmp     short loc_66
loc_65::
                mov     dx,[bp-6]
                mov     [bp-2],dx
                mov     [bp-6],cx
                mov     cx,dx
                call    sub_13
                mov     ax,8800h
loc_66::
                pop     dx
                retn
sub_16          endp

loc_0a2d:
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
                mov     dl,[si]
                push    es
                push    di
                mov     ax,seg_b
                mov     es,ax
                mov     di,offset data_50       ; ('MgB 0MkS')
                mov     cx,8
                cld
                repe    cmpsw
                pop     di
                pop     es
                mov     ds,ax
                assume  ds:seg_b
                mov     data_63,es
                jnz     loc_67
                or      dl,dl
                jz      loc_67
                mov     si,offset data_61
                mov     cl,11h
                repe    cmpsb
                jnz     loc_67
                mov     byte ptr data_55,1
                jmp     short loc_68
loc_67::
                mov     byte ptr data_55,0
loc_68::
                mov     es,ax
                mov     ds,cs:data_42e
                mov     si,offset data_109      ; ('PNW_CLIENT')
                mov     di,offset data_51
                mov     cl,0Ah
                rep     movsw
                mov     si,offset data_120
                push    si
                mov     cl,8
                rep     movsw
                mov     si,offset data_122
                mov     cl,4
                rep     movsw
                pop     di
                push    es
                push    ds
                pop     es
                xor     ax,ax
                dec     ax
                mov     cl,4
                rep     stosw
                inc     ax
                mov     cl,4
                rep     stosw
                pop     es
                cmp     byte ptr es:data_55,0
                je      loc_69
                push    es
                push    ds
                pop     es
                pop     ds
                mov     si,offset data_50       ; ('MgB 0MkS')
                mov     di,offset data_109      ; ('PNW_CLIENT')
                mov     cl,8
                rep     movsw
loc_69::
                mov     es,cs:data_42e
                push    es
                pop     ds
                call    sub_18
                cmp     al,0DFh
                je      loc_70
                or      ax,ax
                jnz     loc_71
loc_70::
                assume  ds:seg_c
                mov     data_174,ax
                mov     cx,[bp-4]
                mov     bh,3
                call    sub_4
                jnz     loc_71
                mov     bh,2
                call    sub_4
                mov     bh,1
                mov     dx,33h
                call    sub_4
                jnz     loc_71
                mov     ax,data_174
loc_71::
                mov     [bp-2],ax
                mov     cx,seg seg_b
                mov     ds,cx
                or      ax,ax
                jnz     loc_73
loc_72::
                assume  ds:seg_b
                cmp     byte ptr data_55,0
                je      loc_75
                jmp     short loc_74
loc_73::
                cmp     al,0DFh
                je      loc_72
loc_74::
                mov     es,cs:data_42e
                mov     di,offset data_109      ; ('PNW_CLIENT')
                mov     si,offset data_51
                mov     cx,0Ah
                rep     movsw
                mov     di,offset data_120
                mov     cl,8
                rep     movsw
                mov     di,offset data_122
                mov     cl,4
                rep     movsw
loc_75::
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
                                                ;* No entry point to code
                mov     al,17h
                mov     cx,[bp-4]
                call    sub_6
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                mov     dx,cx
                xor     al,al
                repne   scasb
                neg     cx
                dec     dx
                add     cx,dx
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                push    cx
                push    si
                push    di
                mov     si,644h
                mov     ax,0EAh
                cmp     bx,1
                jne     loc_76
                mov     ax,2
                assume  ds:seg_c
                mov     data_124,ax
                mov     data_125,ax
                push    dx
                mov     di,650h
                mov     bx,ax
                mov     dx,1
                mov     al,74h                  ; 't'
                mov     cx,[bp-4]
                call    sub_6
                pop     dx
                jz      loc_77
loc_76::
                jmp     loc_81
loc_77::
                or      dl,dl
                jz      loc_79
                mov     si,offset data_67
                mov     di,offset data_111
                movsw
                movsw
                push    ds
                mov     ax,414h
                push    ax
                mov     es,cs:data_46e
                mov     cx,80h
                mov     di,[bp-10h]
                call    sub_17
                push    cx
                push    es
                push    word ptr [bp-10h]
                push    ds
                pop     es
                push    data_69
                push    data_68
                call    sub_21
                add     sp,0Eh
                push    ds
                pop     es
                mov     di,offset data_74
                push    di
                mov     si,offset data_73
                mov     cl,4

locloop_78::
                lodsw
                xor     ax,[si+6]
                stosw
                loop    locloop_78

                mov     di,offset data_127
                mov     si,offset data_109      ; ('PNW_CLIENT')
                mov     cl,0Ah
                rep     movsw
                mov     si,offset data_120
                mov     cl,8
                rep     movsw
                pop     si
                mov     di,offset data_122
                mov     bx,offset data_127
                call    sub_20
                jmp     short loc_80
loc_79::
                mov     di,offset data_127
                mov     si,offset data_109      ; ('PNW_CLIENT')
                mov     al,[si]
                mov     cx,0Ah
                rep     movsw
                mov     es:[di-5],al
loc_80::
                mov     di,offset data_73
                xor     ax,ax
                mov     cx,16h
                rep     stosw
                dec     ax
                mov     cl,4
                rep     stosw
                mov     di,offset data_75
                push    di
                mov     cx,[bp-4]
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                add     di,1Ch
                mov     si,offset data_70
                mov     cx,4
                rep     movsw
                pop     bx
                mov     si,offset data_122
                mov     di,offset data_130
                call    sub_20
                mov     si,687h
                mov     di,68Dh
                mov     bx,1
                mov     dx,bx
                mov     al,74h                  ; 't'
                mov     cx,[bp-4]
                call    sub_6
loc_81::
                pop     di
                pop     si
                pop     cx
                retn
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near

locloop_82::
                add     ax,[bx]
                adc     dx,0
;*              add     ax,3
                db      5, 3, 0
                adc     dx,0
                push    cx
                push    dx
                mov     cx,8351h
                mul     cx
                pop     cx
                add     dx,cx
                pop     cx
                push    cx
                shl     cl,1

locloop_83::
                push    ax
                shl     ax,1
                pop     ax
                rcl     dx,1
                rcl     ax,1
                loop    locloop_83

                pop     cx
                xor     [di],dx
                inc     bx
                inc     bx
                inc     di
                inc     di
                loop    locloop_82

                retn
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    cx
                push    dx
                push    si
                push    di
                mov     cx,4
                rep     movsw
                pop     si
                push    si
                mov     ax,9B99h
                mov     dx,0E6A9h
                mov     cl,4

locloop_84::
                push    cx
                mov     di,si
                mov     cl,4
                call    sub_19
                pop     cx
                loop    locloop_84

                mov     di,si
                mov     cl,2
                call    sub_19
                pop     di
                pop     si
                pop     dx
                pop     cx
                retn
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
LOCAL_15        =       -1Eh                    ; bp+0FFE2h
LOCAL_14        =       -1Ch                    ; bp+0FFE4h
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
                sub     sp,24h
                push    si
                push    di
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                add     dx,[bp+PARAMETER_5]
                dec     dx
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                jmp     short loc_86
loc_85::
                dec     word ptr [bp+PARAMETER_5]
loc_86::
                les     bx,dword ptr [bp+LOCAL_2]
                dec     word ptr [bp+LOCAL_2]
                cmp     byte ptr es:[bx],0
                jne     loc_87
                cmp     word ptr [bp+PARAMETER_5],0
                jne     loc_85
loc_87::
                push    di
                push    es
                xor     ax,ax
                mov     cx,10h
                push    ss
                pop     es
                lea     di,[bp-24h]
                rep     stosw
                pop     es
                pop     di
                jmp     short loc_91
loc_88::
                xor     di,di
                jmp     short loc_90
loc_89::
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     al,es:[bx]
                xor     [bp+di-24h],al
                inc     word ptr [bp+PARAMETER_3]
                inc     di
loc_90::
                cmp     di,20h
                jb      loc_89
                sub     word ptr [bp+PARAMETER_5],20h
loc_91::
                cmp     word ptr [bp+PARAMETER_5],20h
                jae     loc_88
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                cmp     word ptr [bp+PARAMETER_5],0
                jbe     loc_96
                xor     di,di
                jmp     short loc_95
loc_92::
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                add     dx,[bp+PARAMETER_5]
                cmp     ax,[bp+LOCAL_1]
                jne     loc_93
                cmp     dx,[bp+LOCAL_2]
                jne     loc_93
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                mov     al,cs:data_48e[di]
                xor     [bp+di-24h],al
                jmp     short loc_94
loc_93::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     al,es:[bx]
                xor     [bp+di-24h],al
                inc     word ptr [bp+LOCAL_2]
loc_94::
                inc     di
loc_95::
                cmp     di,20h
                jb      loc_92
loc_96::
                xor     di,di
                jmp     short loc_98
loc_97::
                mov     bx,di
                and     bx,3
                lea     ax,[bp+PARAMETER_1]
                add     bx,ax
                mov     al,ss:[bx]
                xor     [bp+di-24h],al
                inc     di
loc_98::
                cmp     di,20h
                jb      loc_97
                push    word ptr [bp+PARAMETER_7]
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    ss                      ; PARAMETER_2
                lea     ax,[bp-24h]
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,8
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,2
                push    si
                push    di
                mov     byte ptr [bp+LOCAL_1],0
                xor     di,di
                jmp     short loc_102
loc_99::
                xor     si,si
                jmp     short loc_101
loc_100::
                mov     al,[bp+LOCAL_1]
                mov     ah,0
                mov     dx,si
                add     dx,ax
                and     dx,1Fh
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     al,es:[bx]
                sub     al,cs:data_48e[si]
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     dl,es:[bx+si]
                add     dl,[bp+LOCAL_1]
                xor     dl,al
                mov     [bp-1],dl
                mov     al,[bp-1]
                add     [bp+LOCAL_1],al
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,[bp-1]
                mov     es:[bx+si],al
                inc     si
loc_101::
                cmp     si,20h
                jl      loc_100
                inc     di
loc_102::
                cmp     di,2
                jl      loc_99
                push    di
                push    es
                xor     ax,ax
                mov     cx,8
                les     di,dword ptr [bp+PARAMETER_3]
                rep     stosw
                pop     es
                pop     di
                xor     si,si
                jmp     short loc_106
loc_103::
                test    si,1
                jz      loc_104
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+si]
                mov     ah,0
                mov     bx,ax
                mov     al,cs:data_47e[bx]
                mov     cl,4
                shl     al,cl
                jmp     short loc_105
loc_104::
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+si]
                mov     ah,0
                mov     bx,ax
                mov     al,cs:data_47e[bx]
loc_105::
                push    ax
                mov     ax,si
                mov     bx,2
                cwd
                idiv    bx
                les     bx,dword ptr [bp+PARAMETER_3]
                add     bx,ax
                pop     ax
                or      es:[bx],al
                inc     si
loc_106::
                cmp     si,20h
                jl      loc_103
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_22          endp

loc_0e20:
                db       33h,0C0h,0CBh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_107::
                push    cx
                push    ds
                push    es
                push    di
                mov     di,si
                push    ds
                pop     es
                call    sub_23
                pop     di
                pop     es
                mov     si,dx
                mov     cx,6
                rep     movsw
                pop     ds
                or      ax,ax
                pop     cx
                jmp     loc_171

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_108::
                push    cx
                cmp     dx,33h
                je      loc_109
                mov     ax,8857h
                jmp     short loc_110
loc_109::
                mov     ds,cs:data_42e
                mov     cx,0Ah
                mov     si,offset data_114
                cld
                rep     movsw
                xor     ax,ax
loc_110::
                pop     cx
                jmp     loc_171

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_111::
                push    cx
                cmp     dx,33h
                je      loc_112
                mov     ax,8857h
                jmp     short loc_113
loc_112::
                mov     es,cs:data_42e
                mov     cx,0Ah
                mov     di,offset data_114
                cld
                rep     movsw
                xor     ax,ax
loc_113::
                pop     cx
                jmp     loc_171

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_114::
                cmp     dx,33h
                je      loc_115
                or      dx,dx
                jnz     loc_116
loc_115::
                mov     es,cs:data_42e
                mov     ax,seg_b
                mov     ds,ax
                mov     si,offset data_58
                mov     byte ptr [si],0
                lea     si,[si+12h]
                mov     dx,si
                add     dx,0Fh
                mov     di,3C0h
                mov     cx,400h
                callf   sub_11
                push    es
                pop     ds
                mov     byte ptr data_101,0
                or      ax,ax
loc_116::
                jnz     loc_117
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,10h
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:data_43e
                pop     bp
                jnz     loc_117
                push    cx
                mov     bh,0Fh
                xor     dx,dx
                call    sub_4
                mov     bh,1
                mov     dx,33h
                call    sub_4
                mov     si,offset data_66
                mov     di,offset data_173
                mov     cx,2
                rep     movsw
                mov     dl,4
                mov     si,offset data_71
                push    si
                push    es
                mov     ax,seg_b
                mov     es,ax
                mov     di,offset data_59
                mov     cx,8
                rep     movsw
                pop     es
                pop     si
                pop     cx
                callf   sub_15
                jz      loc_118
                cmp     ax,8800h
                mov     ax,0
                jz      loc_118
                call    sub_5
loc_117::
                mov     ax,8847h
                jmp     short loc_120
loc_118::
                push    es
                push    cx
                push    ax
                mov     ax,seg_b
                mov     es,ax
                xor     bx,bx
                call    sub_1
                or      ax,ax
                jnz     loc_119
                mov     di,offset data_58
                mov     es:[di+1],bl
                mov     byte ptr es:[di],1
loc_119::
                pop     ax
                pop     cx
                pop     es
loc_120::
                jmp     loc_171

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                mov     ds,cs:data_42e
                mov     si,offset data_150
                mov     byte ptr [si],2
                mov     byte ptr [si+1],1
                mov     byte ptr [si+2],0FFh
                mov     byte ptr [si+3],0
                xor     ax,ax
                mov     [si+4],ax
                mov     [si+6],ax
                mov     [si+2Ch],al
                push    es
                push    di
                push    ds
                pop     es
                mov     cx,0Ah
                mov     si,offset data_114
                mov     di,offset data_154
                cld
                rep     movsw
                pop     di
                pop     es
                mov     cl,10h
                mov     si,offset data_156

locloop_121::
                mov     al,es:[di]
                or      al,al
                jz      locloop_122
                cmp     al,5Ch                  ; '\'
                je      locloop_122
                mov     [si],al
                inc     si
                inc     di
                loop    locloop_121

                inc     cx

locloop_122::
                xor     ax,ax
                mov     [si],al
                inc     si
                loop    locloop_122

                mov     data_101,al
                mov     data_66,al
                inc     ax
                mov     data_102,al
                mov     byte ptr data_147,19h
                mov     dx,data_88
                mov     data_142,dx
                mov     data_144,ax
                mov     data_145,751h
                mov     data_146,4Bh
                mov     data_149,2390h
                mov     si,offset data_132
                mov     [si+0Ah],dx
                mov     [si+22h],ax
                mov     word ptr [si+24h],6BDh
                mov     word ptr [si+28h],62h
                mov     word ptr [si+4],72h
                mov     [si+6],ds
                push    ds
                pop     es
                mov     bx,4
                call    sub_34
                call    sub_32
                cmp     byte ptr ds:[475h],1
                je      loc_123
                push    ds
                pop     es
                mov     si,693h
                mov     bx,6
                call    sub_34
                mov     ax,89FCh
                jmp     short loc_125
loc_123::
                mov     ax,word ptr ds:[583h]
                or      ax,word ptr ds:[585h]
                jnz     loc_124
                mov     ax,word ptr ds:[6F3h]
                mov     word ptr ds:[583h],ax
                mov     ax,word ptr ds:[6F5h]
                mov     word ptr ds:[585h],ax
loc_124::
                mov     ax,word ptr ds:[707h]
                mov     word ptr ds:[6D9h],ax
                xor     ax,ax
loc_125::
                mov     dx,6CFh
                mov     byte ptr ds:[475h],0
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                push    di
                push    si
                push    cx
                push    dx
                mov     dl,0
                mov     al,dl
                mov     di,offset data_123
                mov     si,offset data_112
                mov     byte ptr data_107,0FFh
loc_126::
                inc     data_107
                cmp     dl,14h
                jae     loc_129
                cmp     byte ptr data_101,1
                jne     loc_127
                xor     al,al
                jmp     short loc_129
loc_127::
                cmp     byte ptr [si],0
                je      loc_128
                cmp     byte ptr [di],0
                jne     loc_128
                inc     ax
                inc     si
                push    ax
                call    sub_33
                pop     ax
                call    sub_25
                dec     si
loc_128::
                add     di,7
                add     si,0Bh
                inc     dx
                jmp     short loc_126
loc_129::
                pop     dx
                pop     cx
                pop     si
                pop     di
                retn
sub_24          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                cmp     byte ptr data_105,0
                je      loc_ret_132
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bx,8
                call    sub_34
                add     al,data_105
                adc     ah,0
                mov     data_90,ax
loc_130::
                mov     bx,8
                call    sub_34
                sub     ax,data_90
                cmp     ax,8000h
                jbe     loc_131
                cmp     byte ptr data_101,1
                je      loc_131
                mov     bx,0Ah
                call    sub_34
                jmp     short loc_130
loc_131::
                pop     dx
                pop     cx
                pop     bx
                pop     ax

loc_ret_132::
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                push    di
                push    cx
                push    ax
                mov     di,offset data_148
                mov     si,offset data_173
                mov     cx,2
                cld
                rep     movsw
                xor     ax,ax
                dec     ax
                stosw
                stosw
                stosw
                mov     di,offset data_143
                stosw
                stosw
                stosw
                mov     si,721h
                call    sub_28
                pop     ax
                pop     cx
                pop     di
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                push    di
                push    si
                push    bx
                push    cx
                push    dx
                mov     di,offset data_112
                mov     si,offset data_123
                mov     dl,0
                mov     al,0
loc_133::
                cmp     dl,14h
                jae     loc_136
                cmp     byte ptr [di],0
                je      loc_135
                cmp     byte ptr [si],1
                jne     loc_135
                push    di
                push    si
                inc     di
                inc     si
                push    si
                mov     si,di
                mov     di,offset data_173
                mov     cx,[di]
                or      cx,[di+2]
                jnz     loc_134
                push    si
                push    di
                mov     di,442h
                mov     bx,2
                call    sub_34
                pop     si
                mov     bx,9
                call    sub_34
                pop     si
loc_134::
                mov     di,offset data_148
                mov     cx,5
                rep     movsw
                pop     si
                mov     di,offset data_143
                mov     cl,3
                rep     movsw
                mov     si,721h
                call    sub_28
                pop     si
                pop     di
                inc     al
loc_135::
                inc     dl
                add     di,0Bh
                add     si,7
                jmp     short loc_133
loc_136::
                pop     dx
                pop     cx
                pop     bx
                pop     si
                pop     di
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
                push    dx
                push    cx
                push    bx
                push    ax
                mov     bx,3
                call    sub_34
loc_137::
                cmp     byte ptr [si+8],0
                je      loc_138
                mov     bx,0Ah
                call    sub_34
                jmp     short loc_137
loc_138::
                pop     ax
                pop     bx
                pop     cx
                pop     dx
                cmp     byte ptr [si+9],0
                retn
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                push    si
                push    cx
                mov     si,offset data_123
                mov     cx,14h

locloop_139::
                cmp     byte ptr [si],0
                je      loc_140
                add     si,7
                loop    locloop_139

loc_140::
                or      cx,cx
                pop     cx
                pop     si
                retn
sub_29          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                mov     bx,8
                call    sub_34
                mov     bx,ax
                add     bl,data_118
                adc     bh,0
                mov     data_89,bx
loc_141::
                cmp     byte ptr data_104,1
                je      loc_142
                call    sub_29
                jz      loc_142
                mov     bx,8
                call    sub_34
                sub     ax,data_89
                cmp     ax,8000h
                mov     al,1
                jbe     loc_143
                mov     bx,0Ah
                call    sub_34
                jmp     short loc_141
loc_142::
                mov     al,0
loc_143::
                cmp     al,0
                retn
sub_30          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                mov     bx,8
                call    sub_34
                mov     bx,ax
                add     bl,byte ptr ds:[588h]
                adc     bh,0
                mov     word ptr ds:[464h],bx
loc_144::
                cmp     byte ptr data_104,1
                je      loc_ret_145
                mov     bx,8
                call    sub_34
                sub     ax,data_89
                cmp     ax,8000h
                jbe     loc_ret_145
                mov     bx,0Ah
                call    sub_34
                jmp     short loc_144

loc_ret_145::
                retn
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near
                push    di
                push    si
                push    dx
                push    cx
                push    bx
                mov     byte ptr data_98,1
                mov     al,data_119
                mov     data_105,al
                cmp     byte ptr data_94,1
                je      loc_146
                call    sub_26
                jnz     loc_152
loc_146::
                mov     al,byte ptr ds:[587h]
                mov     byte ptr ds:[46Fh],al
                mov     byte ptr ds:[46Dh],al
                mov     di,offset data_123
                xor     ax,ax
                mov     cx,8Ch
                cld
                rep     stosb
                mov     si,7EEh
                mov     bx,4
                call    sub_34
loc_147::
                cmp     byte ptr data_97,0
                je      loc_148
                call    sub_24
                cmp     al,0
                je      loc_148
                call    sub_30
                jz      loc_148
                dec     data_97
                jmp     short loc_147
loc_148::
                mov     byte ptr data_92,0
loc_149::
                cmp     byte ptr ds:[46Bh],0
                je      loc_150
                call    sub_8
loc_150::
                cmp     byte ptr ds:[475h],1
                je      loc_153
                cmp     byte ptr ds:[46Ah],0
                je      loc_151
                cmp     byte ptr ds:[46Ch],1
                je      loc_151
                call    sub_26
loc_151::
                inc     byte ptr ds:[46Ah]
                call    sub_27
                call    sub_31
                dec     byte ptr ds:[46Dh]
                cmp     byte ptr ds:[46Dh],0
                je      loc_153
                jmp     short loc_149
loc_152::
                mov     ax,8806h
                jmp     short loc_154
loc_153::
                mov     si,7EEh
                mov     bx,6
                call    sub_34
                xor     ax,ax
loc_154::
                pop     bx
                pop     cx
                pop     dx
                pop     si
                pop     di
                retn
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near
                push    di
                push    cx
                push    bx
                push    dx
                push    si
                push    si
                push    di
                mov     di,offset data_173
                mov     cx,2
                cld
                repe    cmpsw
                pop     di
                pop     si
                jnz     loc_158
loc_155::
                cmp     byte ptr data_98,1
                je      loc_157
                add     si,4
                mov     cl,3
                rep     movsw
loc_156::
                jmp     loc_165
loc_157::
                mov     al,7
                mul     data_107
                add     ax,5A4h
                mov     si,ax
                mov     byte ptr [si],2
                jmp     short loc_156
loc_158::
                mov     ax,[si]
                or      ax,[si+2]
                jz      loc_155
                push    di
                mov     di,offset data_164
                mov     cl,2
                rep     movsw
                pop     di
                cmp     byte ptr data_98,1
                je      loc_159
                mov     si,7EEh
                mov     bx,4
                call    sub_34
loc_159::
                mov     al,data_117
                mov     data_96,al
loc_160::
                push    di
                mov     di,offset data_162
                mov     si,offset data_173
                mov     cx,5
                cld
                rep     movsw
                pop     di
                mov     data_104,cl
                mov     si,79Ch
                call    sub_28
                jnz     loc_163
                cmp     byte ptr ds:[470h],1
                je      loc_165
                mov     bx,8
                call    sub_34
                mov     bx,ax
                add     bl,byte ptr ds:[588h]
                adc     bh,0
                mov     word ptr ds:[464h],bx
loc_161::
                cmp     byte ptr data_104,1
                je      loc_164
                mov     bx,8
                call    sub_34
                sub     ax,data_89
                cmp     ax,8000h
                jbe     loc_162
                mov     bx,0Ah
                call    sub_34
                jmp     short loc_161
loc_162::
                dec     data_96
                jz      loc_163
                jmp     short loc_160
loc_163::
                mov     si,7EEh
                mov     bx,6
                call    sub_34
                mov     ax,8806h
                jmp     short loc_166
loc_164::
                mov     si,offset data_169
                mov     cx,3
                rep     movsw
loc_165::
                xor     ax,ax
loc_166::
                pop     si
                pop     dx
                pop     bx
                pop     cx
                pop     di
                retn
sub_33          endp

                db      0FCh,0F8h

locloop_167::
                lodsw
                sbb     ax,33CDh
                ror     ax,cl
                adc     dx,ax
                xor     dx,ax
                loop    locloop_167

                mov     cx,bx
                mov     si,di

locloop_168::
                lodsw
                sbb     ax,33CDh
                ror     ax,cl
                adc     dx,ax
                xor     dx,ax
                loop    locloop_168

                retn

loc_136a:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,data_41e
                cmp     cx,[si]
                jbe     loc_169
                mov     cx,[si]
loc_169::
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

sub_34          proc    near
                push    si
                push    di
                push    bp
                push    es
                push    ds
                mov     ds,cs:data_42e
                call    dword ptr data_99
                pop     ds
                pop     es
                pop     bp
                pop     di
                pop     si
                retn
sub_34          endp

data_37         dw      offset loc_108          ; Data table (indexed access)
data_38         dw      offset loc_111
data_39         dw      offset loc_114
data_40         dw      offset loc_107

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    far
                cmp     bx,4
                jb      loc_170
                mov     ax,8811h
                retf
loc_170::
                push    dx
                push    si
                push    di
                push    ds
                push    es
                add     bx,bx
                jmp     word ptr cs:data_37[bx] ;*4 entries
sub_35          endp

loc_171::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     dx
                or      ax,ax
                retf
                db      0, 0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b


                dw      2h, seg_c
                db      0, 0, 0, 0
data_50         db      'MgB', 8, '0MkS'
                db       01h, 19h, 4Ah, 6Ch, 43h, 08h
                db       04h, 00h
data_51         db      2
                db      19 dup (2)
                db      3, 0, 0, 0, 3, 0
                db      0, 0
                db      8 dup (4)
                db      8 dup (0)
data_55         db      0
data_56         db      1
                db      0
data_58         db      0
                db      0
data_59         db      0
                db      15 dup (0)
                db       4Ch, 4Fh, 47h, 49h, 4Eh
                db      11 dup (0)
data_61         db      4
                db       16h, 09h, 02h,0FBh,0E9h,0BFh
                db      0A7h
                db      'HappyDay'
                db      0
data_62         dw      110 dup (0)
data_63         dw      0                       ; segment storage
                db       07h, 08h, 00h, 08h, 06h, 04h
                db       0Eh, 04h, 05h, 0Ch, 01h, 07h
                db       0Bh, 0Fh, 0Ah, 08h, 0Fh, 08h
                db       0Ch, 0Ch, 09h, 04h, 01h, 0Eh
                db       04h, 06h, 02h, 04h, 00h, 0Ah
                db       0Bh, 09h, 02h, 0Fh, 0Bh, 01h
                db       0Dh, 02h, 01h, 09h, 05h, 0Eh
                db       07h, 00h, 00h, 02h, 06h, 06h
                db       00h, 07h, 03h, 08h, 02h, 09h
                db       03h, 0Fh, 07h, 0Fh, 0Ch, 0Fh
                db       06h, 04h, 0Ah, 00h, 02h, 03h
                db       0Ah, 0Bh, 0Dh, 08h, 03h, 0Ah
                db       01h, 07h, 0Ch, 0Fh, 01h, 08h
                db       09h, 0Dh, 09h, 01h, 09h, 04h
                db       0Eh, 04h, 0Ch, 05h, 05h, 0Ch
                db       08h, 0Bh, 02h, 03h, 09h, 0Eh
                db       07h, 07h, 06h, 09h, 0Eh, 0Fh
                db       0Ch, 08h, 0Dh, 01h, 0Ah, 06h
                db       0Eh, 0Dh, 00h, 07h, 07h, 0Ah
                db       00h, 01h, 0Fh, 05h, 04h, 0Bh
                db       07h, 0Bh, 0Eh, 0Ch, 09h, 05h
                db       0Dh, 01h, 0Bh, 0Dh, 01h, 03h
                db       05h, 0Dh, 0Eh, 06h, 03h, 00h
                db       0Bh, 0Bh, 0Fh, 03h, 06h, 04h
                db       09h, 0Dh, 0Ah, 03h, 01h, 04h
                db       09h, 04h, 08h, 03h, 0Bh, 0Eh
                db       05h, 00h, 05h, 02h, 0Ch, 0Bh
                db       0Dh, 05h, 0Dh, 05h, 0Dh, 02h
                db       0Dh, 09h, 0Ah, 0Ch, 0Ah, 00h
                db       0Bh, 03h, 05h, 03h, 06h, 09h
                db       05h, 01h, 0Eh, 0Eh, 00h, 0Eh
                db       08h, 02h, 0Dh, 02h, 02h, 00h
                db       04h, 0Fh, 08h, 05h, 09h, 06h
                db       08h, 06h, 0Bh, 0Ah, 0Bh, 0Fh
                db       00h, 07h, 02h, 08h, 0Ch, 07h
                db       03h, 0Ah, 01h, 04h, 02h, 05h
                db       0Fh, 07h, 0Ah, 0Ch, 0Eh, 05h
                db       09h, 03h, 0Eh, 07h, 01h, 02h
                db       0Eh, 01h, 0Fh, 04h, 0Ah, 06h
                db       0Ch, 06h, 0Fh, 04h, 03h, 00h
                db       0Ch, 00h, 03h, 06h, 0Fh, 08h
                db       07h, 0Bh, 02h, 0Dh, 0Ch, 06h
                db       0Ah, 0Ah, 08h, 0Dh, 48h, 93h
                db       46h, 67h, 98h, 3Dh,0E6h, 8Dh
                db      0B7h, 10h, 7Ah, 26h, 5Ah,0B9h
                db      0B1h, 35h, 6Bh, 0Fh,0D5h, 70h
                db      0AEh,0FBh,0ADh, 11h,0F4h, 47h
                db      0DCh,0A7h,0ECh,0CFh, 50h,0C0h
                db      8 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    far
                push    si
                push    di
                push    es
                push    ds
                push    bp
                call    dword ptr cs:data_99
                pop     bp
                pop     ds
                pop     es
                pop     di
                pop     si
                retf
sub_36          endp

                                                ;* No entry point to code
                push    es
                pop     ds
                cmp     byte ptr [si+9],0
                je      loc_172
                cmp     byte ptr [si+9],0FDh
                jne     loc_178
loc_172::
                cmp     byte ptr data_98,0
                jne     loc_173
                mov     byte ptr data_104,1
                jmp     short loc_ret_179
loc_173::
                xor     dl,dl
                mov     si,offset data_112
loc_174::
                cmp     dl,14h
                jae     loc_177
                mov     cx,4
                cmp     [si],ch
                je      loc_175
                mov     di,offset data_170
                inc     si
                repe    cmpsb
                jnz     loc_176
                mov     al,7
                mul     dl
                add     ax,5A4h
                mov     di,ax
                cmp     [di],ch
                jne     loc_177
                inc     byte ptr [di]
                inc     di
                mov     si,offset data_169
                movsw
                movsw
                movsw
                jmp     short loc_177
loc_175::
                inc     si
loc_176::
                inc     dl
                add     si,cx
                add     si,6
                jmp     short loc_174
loc_177::
                mov     si,7EEh
loc_178::
                mov     bx,4
                callf   sub_36

loc_ret_179::
                retf
                                                ;* No entry point to code
                push    es
                pop     ds
                cmp     byte ptr [si+9],0
                je      loc_180
                cmp     byte ptr [si+9],0FDh
                jne     loc_178
loc_180::
                inc     data_103
                cmp     byte ptr data_102,2
                jne     loc_181
                dec     data_102
                mov     byte ptr data_101,1
                jmp     short loc_178
loc_181::
                cmp     byte ptr data_66,0
                je      loc_182
                push    si
                mov     si,offset data_139
                mov     di,offset data_66
                mov     cx,8
                cld
                repe    cmpsw
                pop     si
                jnz     loc_178
loc_182::
                mov     byte ptr data_101,1
                retf
                                                ;* No entry point to code
                push    es
                pop     ds
                xor     ch,ch
                cmp     [si+9],ch
                je      loc_183
                cmp     byte ptr [si+9],0FDh
                je      loc_183
                jmp     loc_188
loc_183::
                mov     bx,offset data_185
                mov     di,offset data_181
                cmp     byte ptr [bx],91h
                jne     loc_188
                push    ax
                mov     ax,[di+2]
                xchg    ah,al
;*              cmp     ax,33h
                db       3Dh, 33h, 00h
                pop     ax
                jbe     loc_186
                mov     si,offset data_173
                cmp     [si],ch
                jne     loc_184
                push    bx
                mov     bx,[di+6]
                mov     [si],bx
                mov     bx,[di+8]
                mov     [si+2],bx
                pop     bx
loc_184::
                mov     di,bx
                mov     cl,[di+15h]
                cmp     cl,1Eh
                ja      loc_186
                add     di,0Ch
                cld
                jcxz    loc_186

locloop_185::
                add     di,0Ah
                push    di
                push    si
                push    cx
                mov     cx,5
                repe    cmpsw
                pop     cx
                pop     si
                pop     di
                jz      loc_188
                loop    locloop_185

loc_186::
                mov     di,bx
                add     di,1
                cmp     word ptr [di],2Ah
                jne     loc_187
                cmp     word ptr [bx+11h],0
                jne     loc_187
                cmp     word ptr [bx+13h],0
                je      loc_189
loc_187::
                push    si
                mov     cx,8
                mov     si,offset data_114
                cld
                repe    cmpsw
                pop     si
                jnz     loc_188
                mov     di,bx
                add     di,11h
                push    si
                mov     si,offset data_115
                mov     cx,2
                repe    cmpsw
                pop     si
                jz      loc_189
loc_188::
                mov     si,offset data_175
                mov     word ptr es:[si+4],0B3h
                mov     es:[si+6],cs
                mov     word ptr es:[si+28h],160h
                mov     bx,4
                callf   sub_36
                retf
loc_189::
                mov     di,offset data_185
                mov     si,offset data_109      ; ('PNW_CLIENT')
                mov     cx,0Ah
                rep     movsw
                mov     si,offset data_114
                mov     cl,0Ah
                rep     movsw
                mov     ax,data_106
                mov     [di],ax
                mov     data_180,48h
                mov     si,offset data_184
                mov     di,offset data_182
                mov     cl,6
                rep     movsw
                mov     si,offset data_175
                mov     word ptr [si+4],146h
                mov     [si+6],cs
                mov     bx,3
                callf   sub_36
                retf
                                                ;* No entry point to code
                push    es
                push    si
                push    cs
                pop     ds
                xor     ch,ch
                cld
                cmp     es:[si+9],ch
                je      loc_190
                cmp     byte ptr es:[si+9],0FDh
                je      loc_190
                jmp     loc_219
loc_190::
                mov     di,data_87
                mov     cl,es:[di]
                inc     di
                cmp     byte ptr data_83,8
                je      loc_193
                mov     si,es:[si+24h]
                add     si,12h
                cmp     cl,32h                  ; '2'
                jae     loc_200
                push    es
                pop     ds
                jcxz    loc_192

locloop_191::
                push    cx
                push    si
                mov     cl,0Ah
                repe    cmpsb
                pop     si
                jz      loc_201
                add     di,cx
                pop     cx
                loop    locloop_191

loc_192::
                mov     cl,5
                rep     movsw
                jmp     short loc_199
loc_193::
                mov     si,es:[si+24h]
                add     si,26h
                cmp     cl,32h                  ; '2'
                jae     loc_200
                push    es
                pop     ds
                jcxz    loc_197

locloop_194::
                push    cx
                push    si
                mov     cl,0Ah

locloop_195::
                mov     al,[si]
                xor     al,[si+0Ah]
                cmp     al,es:[di]
                jne     loc_196
                inc     si
                inc     di
                loop    locloop_195

loc_196::
                pop     si
                jcxz    loc_201
                add     di,cx
                pop     cx
                loop    locloop_194

loc_197::
                mov     cl,5
                shl     cx,1

locloop_198::
                mov     al,[si]
                xor     al,[si+0Ah]
                stosb
                inc     si
                loop    locloop_198

loc_199::
                push    cs
                pop     ds
                mov     di,data_87
                inc     data_91
                inc     byte ptr es:[di]
loc_200::
                pop     si
                jmp     short loc_202
loc_201::
                pop     cx
                jmp     short loc_204
loc_202::
                push    si
                mov     si,es:[si+24h]
                mov     di,data_78
                cmp     byte ptr data_83,0
                jne     loc_205
                mov     dx,34h
                add     dx,di
                cmp     dx,data_80
                jb      loc_203
                inc     data_84
                jmp     short loc_206
loc_203::
                push    ds
                push    si
                add     si,1Eh
                mov     cl,14h
                push    es
                pop     ds
                rep     movsw
                mov     ax,es:[si]
                mov     es:[di+0Ah],ax
                pop     si
                add     si,12h
                mov     cl,5
                rep     movsw
                pop     ds
                add     data_78,34h
loc_204::
                jmp     short loc_208
loc_205::
                cmp     byte ptr data_83,2
                jne     loc_209
                mov     dx,4Ch
                push    dx
                add     dx,di
                cmp     dx,data_80
                pop     dx
                jc      loc_207
                inc     data_84
loc_206::
                mov     byte ptr data_101,1
                jmp     loc_216
loc_207::
                push    si
                add     si,20h
                mov     cl,15h
                push    es
                pop     ds
                rep     movsw
                lodsw
                mov     [di+20h],ax
                mov     cl,0Bh
                rep     movsw
                pop     si
                add     si,12h
                mov     cl,5
                rep     movsw
                push    cs
                pop     ds
                add     data_78,dx
loc_208::
                jmp     loc_219
loc_209::
                cmp     byte ptr data_83,8
                jne     loc_212
                mov     ax,es:[si+22h]
                or      ax,es:[si+24h]
                jz      loc_210
                mov     dx,38h
                push    dx
                add     dx,di
                cmp     dx,data_80
                pop     dx
                jc      loc_211
                inc     data_84
                mov     byte ptr data_101,1
loc_210::
                jmp     short loc_216
loc_211::
                push    si
                add     si,20h
                mov     cl,15h
                push    es
                pop     ds
                rep     movsw
                lodsw
                mov     [di+0Ch],ax
                mov     cl,1
                rep     movsw
                pop     si
                add     si,12h
                mov     cl,5
                rep     movsw
                push    cs
                pop     ds
                add     data_78,dx
                jmp     loc_219
loc_212::
                cmp     byte ptr data_83,4
                jne     loc_217
                push    si
                add     si,4Eh
                mov     al,12h
                mul     byte ptr es:[si]
;*              add     ax,10h
                db       05h, 10h, 00h
                mov     data_81,ax
                add     ax,di
                cmp     ax,data_80
                pop     si
                jc      loc_213
                inc     data_84
                mov     byte ptr data_101,1
                jmp     short loc_216
loc_213::
                add     si,3Ah
                mov     cl,0Fh
                push    es
                pop     ds
                rep     movsb
                add     si,5
                mov     al,[si]
                movsb
                inc     si
loc_214::
                or      al,al
                jz      loc_215
                mov     cl,9
                rep     movsw
                dec     al
                jmp     short loc_214
loc_215::
                push    cs
                pop     ds
                mov     ax,data_81
                add     data_78,ax
                jmp     short loc_219
loc_216::
                mov     di,data_87
                dec     byte ptr es:[di]
                dec     data_91
                jmp     short loc_219
loc_217::
                cmp     byte ptr data_83,6
                jne     loc_219
                push    si
                add     si,4Eh
                mov     al,20h                  ; ' '
                mul     byte ptr es:[si]
;*              add     ax,12h
                db       05h, 12h, 00h
                mov     data_82,ax
                add     ax,di
                cmp     ax,data_80
                pop     si
                jc      loc_218
                inc     data_84
                mov     byte ptr data_101,1
                jmp     short loc_216
loc_218::
                add     si,3Ah
                mov     cl,8
                push    es
                pop     ds
                rep     movsw
                add     si,4
                mov     ax,[si]
                movsw
                mov     cl,10h
                mul     cl
                mov     cx,ax
                rep     movsw
                push    cs
                pop     ds
                mov     ax,data_82
                add     data_78,ax
loc_219::
                pop     si
                pop     es
                mov     bx,4
                callf   sub_36
                retf
                db      13 dup (0)
data_66         db      0
                db      0
data_67         db      0
                db      0, 0, 0
data_68         dw      0
data_69         dw      0
data_70         db      0
                db      0, 0, 0
data_71         db      0
                db      33 dup (0)
data_72         dw      0
                db      34 dup (0)
data_73         db      0
                db      15 dup (0)
data_74         db      0
                db      0, 0, 0, 0, 0, 0
                db      0
data_75         db      0
                db      0, 0, 0
data_76         db      0
                db      9 dup (0)
data_77         db      0
                db      21 dup (0)
data_78         dw      0
data_79         dw      0                       ; segment storage
data_80         dw      0
data_81         dw      0
data_82         dw      0
data_83         db      0
data_84         db      0
data_85         dw      0
data_86         dw      0
data_87         dw      0
data_88         dw      0
data_89         dw      0
data_90         dw      0
data_91         db      0
                db      0
data_92         db      0
data_93         db      0
data_94         db      0
data_95         db      0
data_96         db      0
data_97         db      0
data_98         db      0
data_99         dw      0, 0
data_101        db      0
data_102        db      0
data_103        db      0
data_104        db      0
data_105        db      0
data_106        dw      0
data_107        db      0FFh
data_108        dw      47Fh
                db       11h, 01h, 19h, 01h
data_109        db      'PNW_CLIENT'
                db      0, 0, 0, 0, 0, 0
data_111        db      0
                db      0, 0, 0
data_112        db      0
data_113        db      0
                db      218 dup (0)
data_114        db      0
                db      15 dup (0)
data_115        dw      0
data_116        dw      0
data_117        db      3
data_118        db      2
data_119        db      0
                db      0, 0
data_120        dw      4 dup (0FFFFh)
                db      8 dup (0)
data_122        db      0
                db      0, 0, 0, 0, 0, 0
                db      0
data_123        db      0
                db      140 dup (0)
                db       01h, 11h, 30h, 06h
                dw      seg_c
                db       03h, 00h,0C0h, 03h
                dw      seg_c
                db       80h, 00h, 00h, 13h, 01h
data_124        dw      1
                db       3Fh, 06h
                dw      seg_c
                db       05h, 00h, 83h, 04h
                dw      seg_c
                db       10h, 00h,0C0h, 03h
                dw      seg_c
                db       12h, 00h, 00h, 27h, 02h
data_125        dw      1
data_127        db      0
                db      15 dup (0)
                db      8 dup (0FFh)
                db      12 dup (0)
data_130        db      0
                db      7 dup (0)
                db       56h, 06h
                dw      seg_c
                db       31h, 00h,0C0h, 03h
                dw      seg_c
                db      0
                db      0
data_132        db      0
                db      41 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      11 dup (0)
data_134        db      0
                db      9 dup (0)
data_135        dw      0
data_136        db      0
                db      23 dup (0)
data_137        dw      0
data_138        dw      0
data_139        db      0
                db      15 dup (0)
data_140        dw      0
                db      24 dup (0)
data_141        db      0
                db      9 dup (0)
data_142        dw      0
                db      16 dup (0)
data_143        db      0
                db      0, 0, 0, 0, 0
data_144        dw      0
data_145        dw      0
                db      0, 0
data_146        dw      0
                db       00h, 00h, 00h, 00h, 00h, 00h
                db      0FFh,0FFh, 00h, 00h, 00h
data_147        db      11h
data_148        dw      5 dup (0)
data_149        dw      0
                db      12 dup (0)
data_150        db      2
data_151        db      1
                db      0FFh
data_152        db      0
                db      0, 0, 0, 0
data_154        db      0
                db      12 dup (0)
data_155        db      0
                db      0, 0, 0, 0, 0, 0
data_156        db      0
                db      15 dup (0)
data_157        db      0
data_158        db      0
                db      9 dup (0)
data_159        dw      0
                db      30 dup (0)
data_160        db      0FFh
                db      0FFh, 00h, 00h, 00h, 11h, 00h
                db      11 dup (0)
data_162        db      0
                db      11 dup (0)
data_163        dw      100h
data_164        db      0
                db      0, 0, 0
data_166        db      0
                db      0, 0, 0
data_167        db      0
                db      41 dup (0)
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      15 dup (0)
data_169        db      0
                db      8 dup (0)
                db      1
data_170        db      0
                db      0, 0, 0, 0, 0
data_172        dw      0
data_173        db      0
                db      11 dup (0)
data_174        dw      0
data_175        db      0
                db      0, 0, 0
data_176        dw      0
                db      0, 0, 0, 0
data_177        dw      0
                db      22 dup (0)
data_178        dw      0
data_179        dw      0
                db      0, 0
data_180        dw      0
data_181        db      0FFh
                db      0FFh, 00h, 00h, 00h, 11h
data_182        db      0
                db      11 dup (0)
data_184        db      0
                db      11 dup (0)
data_185        db      0
                db      329 dup (0)

seg_c           ends



;------------------------------------------------------------  seg_d   ----

seg_d           segment byte public
                assume cs:seg_d  , ds:seg_d


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    far
                push    ax
                push    bx
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ds:data_189e,bx
                mov     word ptr ds:data_189e+2,es
                call    sub_42
                push    es
                push    di
                push    cx
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                je      loc_220
                mov     byte ptr ds:data_193e,1
                jmp     short loc_221
loc_220::
                mov     cx,es
                mov     ax,seg_c
                mov     es,ax
                mov     word ptr es:data_99,di
                mov     word ptr es:data_99+2,cx
loc_221::
                pop     cx
                pop     di
                pop     es
                cmp     byte ptr ds:data_193e,0
                je      loc_222
                pop     bx
                pop     ax
                mov     ax,0FFFFh
                retf
loc_222::
                push    ds
                mov     ds,ax
                call    sub_45
                or      al,al
                jz      loc_223
                push    es
                mov     ax,seg_b
                mov     es,ax
                mov     es:data_56,0
                pop     es
loc_223::
                mov     dx,2490h
                mov     bx,1
                call    far ptr sub_36
                pop     ds
                pop     bx
                pop     ax
                or      ax,ax
                jz      loc_224
                jmp     loc_235
loc_224::
                call    sub_40
                push    es
                push    bx
                push    cx
                push    ax
                mov     ax,seg_c
                mov     es,ax
                xor     dx,dx
                mov     bx,dx
                mov     al,0FFh
                call    far ptr sub_36
                cmp     al,0
                je      loc_225
                mov     byte ptr ds:data_192e,1
                jmp     short loc_226
loc_225::
                mov     es:data_88,dx
                xor     dx,dx
                mov     bx,dx
                mov     al,0FFh
                call    far ptr sub_36
                cmp     al,0
                je      loc_226
                mov     byte ptr ds:data_192e,1
loc_226::
                call    sub_38
                pop     ax
                pop     cx
                pop     bx
                pop     es
                cmp     byte ptr ds:data_192e,0
                je      loc_227
                mov     ax,0FFFFh
                retf
loc_227::
                push    bx
                call    sub_39
                jz      loc_228
                call    sub_46
loc_228::
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt

loc_00d8:
                mov     cx,es
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_43e,bx
                mov     word ptr es:data_43e+2,cx
                mov     ds:data_187e,bx
                mov     word ptr ds:data_187e+2,cx
                pop     bx
                mov     ds:data_191e,bx
                or      bx,bx
                jz      loc_229
                mov     es:data_42e,bx
loc_229::
                push    bx
                push    ds
                mov     ax,414h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr ds:data_189e
                add     sp,4
                pop     bx
                mov     bx,ds:data_191e
                or      bx,bx
                jz      loc_234
                mov     ax,seg_c
                mov     es,ax
                mov     dx,bx
                mov     si,data_195e
                mov     cx,ds:data_196e
                jcxz    loc_232

locloop_230::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_230

                call    sub_39
                jz      loc_232
                mov     si,data_197e
                mov     cx,ds:data_198e
                jcxz    loc_232

locloop_231::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_231

loc_232::
                mov     es,dx
                mov     ax,seg_c
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,cs
                sub     ax,seg_c
                call    sub_39
                jnz     loc_233
;*              sub     ax,18h
                db       2Dh, 18h, 00h
loc_233::
                mov     cl,4
                shl     ax,cl
                mov     cx,ax
                rep     movsb
loc_234::
                call    sub_43
                call    sub_39
                jz      loc_235
                call    sub_44
loc_235::
                mov     ax,seg_d
                mov     ds,ax
                mov     dx,seg seg_c
                mov     bx,33h
                mov     si,seg seg_f
                sub     si,ax
                mov     cx,ax
                sub     cx,dx
                call    sub_39
                jnz     loc_236
                sub     cx,18h
                add     si,18h
loc_236::
                sub     dx,seg_a
                xor     ax,ax
                retf
sub_37          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near
                push    ds
                push    di
                push    si
                push    cx
                push    es
                pop     ds
                assume  ds:seg_c
                mov     data_163,100h
                mov     di,offset data_158
                mov     [di+0Ah],dx
                mov     word ptr [di+22h],1
                mov     word ptr [di+28h],28h
                mov     ax,0FFFFh
                mov     [di+1Ch],ax
                mov     [di+1Eh],ax
                mov     [di+20h],ax
                mov     si,offset data_160
                mov     [di+24h],si
                mov     word ptr [si+10h],5304h
                mov     [si+1Ch],dx
                mov     byte ptr [si+5],1
                lea     di,[si+6]
                inc     ax
                stosw
                stosw
                dec     ax
                stosw
                stosw
                stosw
                mov     di,offset data_166
                stosw
                stosw
                mov     di,offset data_167
                mov     [di+0Ah],dx
                mov     word ptr [di+22h],1
                mov     word ptr [di+24h],818h
                mov     word ptr [di+28h],28h
                mov     word ptr [di+4],10h
                mov     [di+6],ds
                pop     cx
                pop     si
                pop     di
                pop     ds
                retn
sub_38          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near
                push    es
                push    ax
                mov     ax,seg_b
                mov     es,ax
                cmp     es:data_56,0
                pop     ax
                pop     es
                retn
sub_39          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near
                push    es
                push    ds
                push    cx
                push    ax
                mov     ax,seg_e
                mov     es,ax
                mov     di,offset data_205
                mov     cx,15h
                xor     ax,ax
                cld
                repe    scasb
                jz      loc_238
                mov     si,offset data_205
                push    es
                pop     ds
                mov     ax,seg_c
                mov     es,ax
                mov     di,data_207e
                clc
                cld
                call    sub_41
                call    sub_41
                call    sub_41
                call    sub_41
                inc     si
                call    sub_41
                call    sub_41
                call    sub_41
                call    sub_41
                call    sub_41
                call    sub_41
                jnc     loc_237
                mov     di,offset data_113
                xor     ax,ax
                mov     cx,5
                rep     stosw
                push    bx
                mov     ax,43h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                assume  ds:seg_e
                call    dword ptr data_203
                add     sp,2
                pop     bx
                jmp     short loc_238
loc_237::
                mov     es:data_112,1
loc_238::
                pop     ax
                pop     cx
                pop     ds
                pop     es
                retn
sub_40          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    near
                mov     al,[si]
                cmp     al,30h                  ; '0'
                jb      loc_243
                cmp     al,39h                  ; '9'
                ja      loc_239
                sub     al,30h                  ; '0'
                jmp     short loc_240
loc_239::
                cmp     al,41h                  ; 'A'
                jb      loc_243
                cmp     al,46h                  ; 'F'
                ja      loc_243
                sub     al,37h                  ; '7'
loc_240::
                shl     al,1
                shl     al,1
                shl     al,1
                shl     al,1
                mov     ah,al
                inc     si
                mov     al,[si]
                cmp     al,30h                  ; '0'
                jb      loc_243
                cmp     al,39h                  ; '9'
                ja      loc_241
                sub     al,30h                  ; '0'
                jmp     short loc_242
loc_241::
                cmp     al,41h                  ; 'A'
                jb      loc_243
                cmp     al,46h                  ; 'F'
                ja      loc_243
                sub     al,37h                  ; '7'
loc_242::
                or      al,ah
                stosb
                inc     si
                clc
                retn
loc_243::
                stc
                retn
sub_41          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near
                push    es
                push    di
                push    si
                push    bx
                push    cx
                push    ax
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ds:data_199e,bx
                mov     word ptr ds:data_199e+2,es
                mov     cx,7
                mov     si,data_201e
                mov     di,data_194e
                push    ds
                pop     es
                call    dword ptr ds:data_199e
                pop     ax
                pop     cx
                pop     bx
                pop     si
                pop     di
                pop     es
                retn
sub_42          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near
                mov     bx,cs:data_191e
                mov     ds,bx
                push    ds
                pop     es
                mov     si,840h
                mov     bx,9
                call    far ptr sub_36
                xor     bx,bx
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:data_187e
                pop     bp
                mov     ds:data_1e,si
                mov     ds:prn_timeout_3_,si
                retn
sub_43          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near
                mov     bx,seg seg_c
                mov     ds,bx
                call    sub_45
                cmp     al,0
                je      loc_244
                stc
                jmp     short loc_ret_245
loc_244::
                mov     si,84Eh
                mov     es,cs:data_191e
                mov     bx,4
                call    far ptr sub_36
                clc

loc_ret_245::
                retn
sub_44          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45          proc    near
                mov     dx,2490h
                mov     bx,0
                mov     al,0FFh
                call    far ptr sub_36
                retn
sub_45          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46          proc    near
                push    ds
                mov     bx,seg seg_c
                mov     ds,bx
                assume  ds:seg_c
                mov     data_177,2490h
                mov     data_176,0B3h
                mov     data_178,1
                mov     data_179,878h
                pop     ds
                retn
sub_46          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


pnw             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      13 dup (0)

pnw             endp

seg_d           ends



;------------------------------------------------------------  seg_e   ----

seg_e           segment byte public
                assume cs:seg_e  , ds:seg_e

                db      8 dup (0)
data_203        dw      offset sub_37, 0 ; seg sub_37
                db      0, 0, 0, 0
                db      'NETWARE DOS REQUESTER', 0
                db      'DOSRQSTR.MSG', 0
                db      'PNW', 0
                db      'VeRsIoN=1.21', 0
                db      'PNW.VLM      - Personal NetWare '
                db      'protocol module  v1.21 (960514)', 0Dh
                db      0Ah, 0
                db       35h, 06h, 3Bh, 06h,0B9h, 06h
                db      0C2h, 07h, 14h, 08h,0F4h, 07h
                db       47h, 07h, 46h, 06h, 4Ch, 06h
                db       52h, 06h, 89h, 06h, 8Fh, 06h
                db       0Ch, 00h, 54h, 08h, 74h, 08h
                db       02h, 00h, 00h, 00h
                dw      0
                db      'BROADCAST RETRIES'
                db       00h, 87h, 05h
                dw      seg_c
                db       01h, 00h,0FFh, 00h
                db      'BROADCAST TIMEOUT'
                db       00h, 88h, 05h
                dw      seg_c
                db       01h, 00h,0FFh, 00h
                db      'BROADCAST SEND DELAY'
                db       00h, 89h, 05h
                dw      seg_c
                db       00h, 00h,0FFh, 00h
                db      'MOBILE MODE'
                db       00h, 8Ah, 05h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh
                db      'RESPONDER'
                db       00h, 05h, 14h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'PREFERRED WORKGROUP'
                db       00h, 73h, 05h
                dw      seg_c
                db       01h, 00h, 0Fh, 00h
                db      'WORKGROUP NET'
                db       00h, 8Bh, 01h
                dw      seg_e
                db       15h, 00h, 15h, 00h, 7Ah, 04h
                db       12h, 00h, 00h, 00h, 8Ch, 04h
                db       94h, 04h, 12h, 00h, 00h, 00h
                db      0A6h, 04h,0AEh, 04h, 15h, 00h
                db       00h, 00h,0C3h, 04h,0CBh, 04h
                db       0Ch, 00h, 02h, 00h,0D7h, 04h
                db      0DFh, 04h, 0Ah, 00h, 04h, 00h
                db      0E9h, 04h,0F1h, 04h, 14h, 00h
                db       06h, 00h, 05h, 05h, 0Dh, 05h
                db       0Eh, 00h, 06h, 00h, 1Bh, 05h
data_205        db      0
                db      0
                db      19 dup (0)

seg_e           ends



;------------------------------------------------------------  seg_f   ----

seg_f           segment byte public


seg_f           ends



                end     start
