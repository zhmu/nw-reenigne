; The following equates show data references outside the range of the program.

include common.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0000h,    seg_b
                dw      loc_0038, seg_a
                dw      loc_0051, seg_a
                dw      loc_0054, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      loc_0075, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_TRANS
data_5          dw      offset loc_1            ; Data table (indexed access)

loc_0038:
                cmp     bx,1
                jc      loc_0041
                mov     ax,STATUS_NONEXISTANT_FUNC_CALLED
                retf

loc_0041:
                shl     bx,1
                jmp     cs:[bx+offset data_5]


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1:
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

loc_0051:
                xor     ax,ax
                retf

loc_0054:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_7
                cmp     cx,[si]
                jbe     loc_2
                mov     cx,[si]
loc_2:
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

loc_0075:
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
                mov     [bp-8],cx
                mov     [bp-0Ah],dx
                mov     bx,[bp]
                mov     ax,ss:[bx+6]
                mov     [bp-2],ax
                mov     bh,0Fh
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_3
                or      dx,dx
                jz      loc_6
                mov     ax,VLMID_TRANS
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     cx,[bp-8]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:vlm_call_ptr
loc_3:
                add     sp,12h
                pop     bp
                retf
loc_4:
                add     sp,4
                jmp     short loc_3
loc_5:
                mov     ax,[bp-0Eh]
                mov     bx,[bp-10h]
                mov     dx,[bp-12h]
                mov     ds,[bp-0Ch]
                jmp     short loc_3
loc_6:
                mov     bx,offset data_10
                mov     dx,[bx]
loc_7:
                push    bx
                mov     bh,0Fh
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pop     bx
                jnz     loc_3
                or      dx,dx
                jz      loc_5
                push    bx
                push    ds
                mov     ax,VLMID_TRANS
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     cx,[bp-8]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:vlm_call_ptr
                or      al,al
                jnz     loc_8
                jmp     short loc_4
loc_8:
                pop     ds
                mov     [bp-0Eh],ax
                mov     [bp-10h],bx
                mov     [bp-12h],dx
                pop     bx
                inc     bx
                inc     bx
                mov     dx,[bx]
                jmp     short loc_7
                db      14 dup (0)
data_7          db      2
                db      0
vlm_call_ptr    dw      0, 0
data_10         dw      21h, 22h, 0, 0
data_12         db      0
                db      0, 0, 0
data_13         dw      2
                db      12 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_a

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_b
                mov     ds,ax
                assume  ds:seg_b
                mov     data_22,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_18,bx
                mov     word ptr data_18+2,es
                pop     ax
                or      ax,ax
                jz      loc_9
                jmp     short loc_10
loc_9:
                mov     byte ptr data_23,0
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                mov     ax,seg_a
                mov     es,ax
                mov     word ptr es:vlm_call_ptr,bx
                mov     word ptr es:vlm_call_ptr+2,cx
                mov     word ptr vlm_call_ptr2,bx
                mov     word ptr vlm_call_ptr2+2,cx
                push    bx
                push    ds
                mov     ax,256h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_18
                add     sp,4
                pop     bx
loc_10:
                mov     ax,seg_a
                mov     es,ax
                call    sub_2
                mov     ax,0FFFFh
                cmp     es:data_13,1
                jae     loc_11
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,238h
                push    cs
                pop     ds
                call    dword ptr cs:data_18
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,23Dh
                push    ax
                push    cs
                mov     ax,238h
                push    ax
                push    cs
                mov     ax,23Dh
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_18
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,238h
                push    ax
                push    cs
                mov     ax,23Dh
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_18
                add     sp,0Ah
                pop     bx
                mov     bx,20h
                mov     ax,0FFFFh
                retf
loc_11:
                ja      loc_13
                cmp     byte ptr ds:data_23,0
                jne     loc_12
                mov     cx,20h
                mov     bx,1
                assume  ds:seg_a
                mov     dx,es:data_10
                call    dword ptr ds:data_18
loc_12:
                xor     ax,ax
                call    sub_1
                add     si,cx
                add     si,dx
                xor     cx,cx
                mov     dx,cx
                mov     bx,20h
                retf
loc_13:
                call    sub_1
                mov     si,seg_a+41h
                sub     si,seg_a
                sub     si,cx
                sub     si,dx
                mov     bx,20h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1           proc    near
                mov     si,seg_a+41h
                sub     si,seg_b
                mov     cx,seg seg_b
                sub     cx,seg_b
                mov     dx,seg seg_b
                sub     dx,seg_a
                retn
sub_1           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                mov     es:data_13,0
                mov     di,156h
                xor     bp,bp
loc_14:
                mov     bx,0
                mov     dx,es:data_10[bp]
                assume  ds:seg_b
                call    dword ptr data_18
                or      ax,ax
                jnz     loc_15
                inc     di
                inc     di
                inc     es:data_13
                call    sub_3
loc_15:
                inc     bp
                inc     bp
                cmp     es:data_10[bp],0
                jne     loc_14
                mov     word ptr es:[di],0
                cmp     byte ptr data_23,0
                jne     loc_ret_16
                mov     bx,2
                mov     cx,20h
                call    dword ptr data_18
                add     cx,dx
                or      cx,cx
                jnz     loc_ret_16
                xor     ax,ax
                cmp     es:data_13,2
                jae     loc_17

loc_ret_16:
                retn
loc_17:
                mov     bp,2
loc_18:
                mov     bx,3
                mov     dx,es:data_10[bp]
                call    dword ptr data_18
                inc     bp
                inc     bp
                cmp     es:data_10[bp],0
                jne     loc_18
                retn
sub_2           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    di
                mov     bx,offset data_12
                mov     di,offset data_10
                mov     ax,es:[bp+di]
                cmp     es:data_13,1
                je      loc_22
                mov     cx,es:data_13
                dec     cx

locloop_19:
                cmp     si,es:[bx]
                jb      loc_20
                jmp     short loc_21
loc_20:
                xchg    es:[bx],si
                xchg    es:[di],ax
loc_21:
                inc     di
                inc     di
                inc     bx
                inc     bx
                loop    locloop_19

loc_22:
                mov     es:[bx],si
                mov     es:[di],ax
                pop     di
                retn
sub_3           endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


tran            proc    far

start:
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      8 dup (0)
data_18         dw      0, 0
vlm_call_ptr2   dw      0, 0
data_22         dw      0
data_23         db      0FFh
                db      'DOSRQSTR.MSG', 0
                db      'TRAN', 0
                db      '<Transport>', 0
                db      'VeRsIoN=1.21', 0
                db      'TRAN.VLM     - NetWare transport'
                db      ' m'
                db      'ultiplexo'
                db      'r module  v1.21 (960514)', 0Dh, 0Ah
                db      0, 0, 0

tran            endp

seg_b           ends



                end     start
