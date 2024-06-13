include common.inc

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

data_1          dw      0, seg_c
                dw      offset loc_00d8, seg_a
                dw      offset loc_00f1, seg_a
                dw      offset loc_012a, seg_a
                dw      offset loc_014b, seg_a
                dw      offset sub_11, seg_a
                dw      offset sub_12, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0505, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_0ad3, seg_a
                dw      offset loc_07ce, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_BIND


; vcall_[target]_[nr] issue a VLM call from us (bind) to [target], command [nr]
vcall_conn_0ah  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_0ah  endp

vcall_conn_7h   proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_7h   endp

vcall_conn_8h   proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_8h   endp

vcall_trans_6h  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_trans_6h  endp

vcall_conn_0eh  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,0Eh
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_0eh  endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_conn_06h  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_06h  endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_nwp_10h   proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_nwp_10h   endp

                db      0E8h, 00h
loc_00d8:
                db      83h                     ; Data table (indexed access)
                db      0FBh, 01h, 72h, 04h,0B8h, 11h
                db       88h,0CBh,0D1h,0E3h, 2Eh,0FFh
                db      0A7h,0D6h, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf
loc_00f1:
                xor     ax,ax
                or      cx,cx
                jnz     loc_ret_4
                push    bx
                push    dx
                mov     ax,7A20h
                mov     bx,9
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jnz     loc_2
                cmp     bx,1
                jne     loc_2
                mov     ax,0
                jmp     short loc_3
loc_2::
                xor     cx,cx
                mov     dx,31h
                mov     bx,100h
                call    vcall_conn_0ah
                mov     ax,0
                jnz     loc_3
                callf   sub_11
                or      ax,ax
                jz      loc_2
loc_3::
                pop     dx
                pop     bx

loc_ret_4::
                retf

loc_012a:
                db       51h, 56h, 57h, 1Eh
data_7          db      0B8h
                dw      seg_a
                db       8Eh,0D8h
                db      0BEh,0E0h, 0Ah
data_8          dw      0C3Bh
                db      76h
data_9          dw      8B02h
data_10         db      0Ch
loc_5::
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

loc_014b:
                push    bp
                mov     bp,sp
                sub     sp,4
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
                mov     [bp-2],cx
                mov     word ptr [bp-4],0
                mov     bh,0Dh
                call    vcall_conn_7h
                jz      loc_7
                jmp     loc_14
loc_6::
                mov     ax,884Fh
                jmp     loc_14
loc_7::
                or      dx,dx
                jnz     loc_6
                call    sub_9
                jnz     loc_8
                jmp     loc_14
loc_8::
                mov     bx,1
                push    cx
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_GENERAL
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pop     ax
                jnz     loc_10
                cmp     cx,ax
                je      loc_10
                mov     bh,1
                call    vcall_conn_7h
                cmp     dx,31h
                je      loc_9
                cmp     dx,32h
                jne     loc_10
loc_9::
                mov     word ptr [bp-4],0FFFFh
                jmp     loc_16
loc_10::
                mov     bh,0Fh
                call    vcall_conn_7h
                xor     cx,cx
                or      dx,dx
                jnz     loc_12
loc_11::
                mov     bx,100h
                mov     dx,31h
                call    vcall_conn_0ah
                mov     dx,0
                jnz     loc_13
                mov     bh,0Dh
                call    vcall_conn_7h
                or      dx,dx
                jz      loc_11
                mov     word ptr [bp-4],0FFFFh
                jmp     loc_16
loc_12::
                mov     bx,0F00h
                call    vcall_conn_0ah
                jnz     loc_13
                push    dx
                mov     bh,1
                call    vcall_conn_7h
                cmp     dx,31h
                pop     dx
                jnz     loc_12
                push    dx
                mov     bh,0Dh
                call    vcall_conn_7h
                or      dx,dx
                pop     dx
                jz      loc_12
                mov     word ptr [bp-4],0FFFFh
                jmp     short loc_16
loc_13::
                mov     word ptr [bp-4],0
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_14
                mov     [bp-2],cx
                mov     bh,0Fh
                call    vcall_conn_8h
                push    dx
                mov     bh,1
                mov     dx,31h
                call    vcall_conn_8h
                pop     dx
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jz      loc_16
                or      al,al
                jnz     loc_14
                mov     word ptr [bp-2],0
                mov     word ptr [bp-4],0FEh
                jmp     short loc_16
loc_14::
                mov     [bp-6],ax
                mov     cx,[bp-8]
                cmp     [bp-2],cx
                je      loc_15
                mov     cx,[bp-2]
                jcxz    loc_15
                call    sub_8
loc_15::
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
                add     sp,4
                pop     bp
                retf
loc_16::
                mov     es,cs:data_34
                mov     di,50h
                callf   sub_10
                or      ax,ax
                jz      loc_17
                test    word ptr [bp-4],0FFFFh
                jz      loc_14
                cmp     word ptr [bp-4],0FEh
                je      loc_14
                jmp     loc_11
loc_17::
                test    word ptr [bp-4],0FFFFh
                jnz     loc_19
                push    cx
                push    ds
                push    si
                push    es
                push    di
                mov     ds,[bp-2]
                xor     cx,cx
                mov     si,cx
                add     si,1Ah
                mov     cx,0Ah
                repe    cmpsb
                pop     di
                pop     es
                pop     si
                pop     ds
                pop     cx
                jnz     loc_18
                mov     cx,[bp-8]
                call    vcall_conn_06h
                mov     cx,[bp-2]
                mov     [bp-8],cx
                xor     ax,ax
                mov     [bp-2],ax
                mov     [bp-6],ax
                jmp     short loc_15
loc_18::
                call    sub_8
                mov     word ptr [bp-2],0
                jz      loc_19
                jmp     loc_14
loc_19::
                mov     cx,[bp-8]
                push    es
                pop     ds
                mov     si,di
                callf   sub_12
                jmp     loc_14

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                mov     dl,1
                callf   sub_11
                retn
sub_8           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    dx
                mov     dx,cx
                xor     cx,cx
                call    vcall_conn_0eh
                jz      loc_20
                mov     cx,dx
                jmp     short loc_21
loc_20::
                mov     dx,[bp-8]
                mov     [bp-2],dx
                mov     [bp-8],cx
                mov     ax,8800h
loc_21::
                pop     dx
                retn
sub_9           endp

data_25         db      1
                db      0Bh
                db      'NET_ADDRESS'

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    far
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
                jmp     short loc_24

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22::
                jcxz    loc_23
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jz      loc_24
                jmp     loc_25
loc_23::
                push    dx
                mov     dx,31h
                mov     bx,100h
                call    vcall_conn_0ah
                pop     dx
                jnz     loc_25
                mov     bh,0Dh
                call    vcall_conn_7h
                or      dx,dx
                jz      loc_23
loc_24::
                mov     es,cs:data_34
                mov     cx,18h
                mov     di,offset data_44
                push    di
                rep     movsw
                pop     di
                mov     cl,30h                  ; '0'
                xor     al,al
                repne   scasb
                dec     di
                neg     cx
                add     cx,2Fh
                mov     si,offset data_25
                mov     bl,cl
                mov     es:data_43,bl
                mov     ax,seg_a
                mov     ds,ax
                add     bl,[si+7]
                mov     cl,0Dh
                rep     movsb
                mov     di,offset data_40
                xor     bh,bh
                xchg    bh,bl
                mov     es:[di],bx
                xchg    bh,bl
                mov     byte ptr es:[di+2],3Dh  ; '='
                mov     word ptr es:[di+3],400h
                push    es
                pop     ds
                mov     si,offset data_48
                mov     di,offset data_49
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
                call    vcall_trans_6h
loc_25::
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
sub_10          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    far
                push    bx
                push    dx
                mov     bh,0Dh
                call    vcall_conn_7h
                jnz     loc_27
                or      dx,dx
                jz      loc_26
                mov     bh,10h
                mov     dx,5555h
                call    vcall_conn_8h
                xor     ax,ax
                mov     bx,ax
                mov     dx,ax
                call    vcall_trans_6h
loc_26::
                call    vcall_conn_06h
loc_27::
                pop     dx
                pop     bx
                retf
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    far
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
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_29
                mov     bh,10h
                mov     dx,1111h
                call    sub_13
                mov     bh,0Dh
                mov     dx,0FFFFh
                call    sub_13
                mov     bh,0Ch
                xor     dl,dl
                call    sub_13
                mov     bx,100h
                xor     dx,dx
                call    vcall_trans_6h
                jz      loc_30
                cmp     al,0FFh
                je      loc_28
                push    ax
                call    vcall_conn_06h
                pop     ax
                jmp     short loc_29
loc_28::
                mov     bh,0Dh
                xor     dx,dx
                call    sub_13
                mov     ax,8808h
loc_29::
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
loc_30::
                mov     bh,10h
                mov     dx,2222h
                call    sub_13
                mov     bh,2
                call    sub_13
                mov     es,cs:data_34
                push    es
                pop     ds
                mov     si,11Fh
                mov     di,125h
                mov     bx,1
                mov     dx,bx
                mov     al,17h
                call    vcall_trans_6h
                jnz     loc_29
                assume  ds:seg_b
                mov     dx,data_47
                mov     bh,8
                call    sub_13
                mov     si,50h
                mov     byte ptr [si+30h],0
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_29
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_31
                mov     bx,2
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jmp     loc_29
loc_31::
                call    vcall_conn_06h
                jmp     loc_29
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                call    vcall_conn_8h
                jnz     loc_32
                retn
loc_32::
                pop     bx
                jmp     loc_29
sub_13          endp

data_26         dw      8 dup (0)
data_27         db      0
                db      7 dup (0)
loc_0505:
                db       55h, 8Bh,0ECh
                db      'PQRSTUVW'
                db       1Eh, 06h, 2Eh,0F6h, 06h,0E8h
                db       0Ah,0FFh, 74h, 7Ah, 1Eh, 07h
                db       87h,0F7h,0B9h,0FFh,0FFh, 32h
                db      0C0h,0F2h,0AEh,0F7h,0D1h, 49h
                db       2Eh, 8Eh, 06h,0E2h, 0Ah, 06h
                db       1Fh,0BEh, 0Ah, 01h, 8Bh, 46h
                db      0EEh, 89h, 44h, 02h, 8Bh, 46h
                db      0F2h, 89h, 04h, 89h, 4Ch, 04h
                db       88h, 0Eh, 03h, 01h, 83h,0C1h
                db       10h, 86h,0E9h, 89h, 0Eh,0FEh
                db       00h,0BEh, 04h, 01h,0BFh, 16h
                db       01h,0BBh, 03h, 00h,0BAh, 01h
                db       00h,0B0h, 17h, 8Bh, 4Eh,0FCh
                db      0E8h, 25h,0FBh, 8Bh, 5Eh,0F8h
                db       8Bh, 7Eh,0F0h, 8Bh, 76h,0F2h
                db       8Eh, 5Eh,0EEh, 8Eh, 46h,0ECh
                db       74h, 22h, 80h,0FCh, 88h, 75h
                db       03h,0E9h, 30h, 01h, 50h, 53h
                db      0BBh, 02h, 00h, 55h,0BDh, 31h
                db       00h, 55h,0BDh, 60h, 00h, 55h
                db      0BDh, 05h, 00h, 55h, 2Eh,0FFh
                db       1Eh,0E4h, 0Ah, 5Dh, 5Bh, 58h
                db       2Eh, 8Eh, 06h,0E2h, 0Ah, 06h
                db       1Fh,0E8h,0B9h, 01h, 0Ah,0C0h
                db       74h, 0Bh, 3Dh, 05h, 88h, 75h
                db       03h,0E9h, 00h, 01h
loc_33::
                jmp     loc_42
loc_34::
                mov     es,[bp-12h]
                mov     di,[bp-0Eh]
                mov     si,17Ah
                mov     [si+6],di
                mov     [si+8],es
                mov     word ptr ds:[154h],di
                mov     word ptr ds:[156h],es
                mov     cx,30h
                call    sub_15
                mov     [si+0Ah],cx
                mov     byte ptr ds:[179h],cl
                mov     bx,[bp-8]
                xchg    bh,bl
                mov     word ptr ds:[177h],bx
                assume  ds:seg_a
                mov     data_10,cl
                mov     word ptr ds:[158h],cx
                add     cx,4
                xchg    ch,cl
                mov     word ptr ds:[174h],cx
                add     ch,8
                mov     data_1,cx
                push    ds
                pop     es
                mov     di,186h
                mov     bx,2
                mov     dx,1
                call    sub_14
                mov     ax,seg_a
                mov     ds,ax
                push    ds
                mov     ax,4EDh
                push    ax
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                mov     cx,80h
                call    sub_15
                push    cx
                push    word ptr [bp-14h]
                push    word ptr [bp-10h]
                mov     es,data_34
                push    es:data_46
                push    es:data_45
                call    sub_19
                add     sp,0Eh
                call    sub_17
                call    sub_18
                jz      loc_36
                cmp     ah,89h
                jne     loc_38
                xor     dl,dl
                cmp     al,0BCh
                jne     loc_35
                mov     dl,2
loc_35::
                or      dl,dl
                jz      loc_38
                push    ax
                mov     al,1
                call    vcall_nwp_10h
                test    bh,dl
                pop     ax
                jz      loc_38
                push    bx
                push    cx
                or      bl,dl
                or      cl,dl
                mov     al,4
                call    vcall_nwp_10h
                mov     cx,[bp-4]
                mov     al,6
                call    vcall_nwp_10h
                pop     cx
                pop     bx
                mov     al,4
                call    vcall_nwp_10h
                call    sub_16
                jnz     loc_38
                call    sub_17
                call    sub_18
                jnz     loc_38
loc_36::
                push    ax
                mov     bh,14h
                call    vcall_conn_7h
                pop     ax
                test    dl,0Ah
                jz      loc_37
                mov     si,seg seg_a
                mov     ds,si
                mov     si,offset data_26
                mov     di,offset data_1
                push    cx
                push    di
                mov     cx,0Ch
                rep     movsw
                pop     si
                pop     cx
                push    es
                pop     ds
                mov     al,2
                call    vcall_nwp_10h
                or      ax,ax
                jnz     loc_38
loc_37::
                jmp     loc_43
loc_38::
                mov     [bp-2],ax
loc_39::
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

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                mov     al,17h
                mov     cx,[bp-4]
                call    vcall_trans_6h
                mov     [bp-2],ax
                cmp     al,0DFh
                je      loc_40
                or      ax,ax
                jnz     loc_41
                retn
loc_40::
                xor     ax,ax
                retn
loc_41::
                pop     bx
                jmp     short loc_38
sub_14          endp

loc_42::
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                mov     word ptr ds:[16Eh],di
                mov     word ptr ds:[170h],es
                mov     cx,80h
                call    sub_15
                mov     byte ptr ds:[15Ah],cl
                mov     word ptr ds:[172h],cx
                mov     bl,cl
                mov     es,[bp-12h]
                mov     di,[bp-0Eh]
                mov     word ptr ds:[162h],di
                mov     word ptr ds:[164h],es
                mov     cl,30h                  ; '0'
                call    sub_15
                mov     data_10,cl
                mov     word ptr ds:[166h],cx
                add     bl,cl
                add     bl,5
                xor     bh,bh
                xchg    bh,bl
                mov     data_8,bx
                mov     si,15Ch
                mov     bx,[bp-8]
                xchg    bh,bl
                mov     data_9,bx
                mov     bx,4
                xor     dx,dx
                call    sub_14
loc_43::
                mov     bh,3
                call    vcall_conn_8h
                jnz     loc_44
                mov     bh,2
                call    vcall_conn_8h
                jnz     loc_44
                mov     bh,1
                mov     dx,31h
                call    vcall_conn_8h
                jnz     loc_44
                jmp     loc_39
loc_44::
                jmp     loc_38

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    near
                mov     dx,cx
                xor     al,al
                repne   scasb
                neg     cx
                dec     dx
                add     cx,dx
                retn
sub_15          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                mov     si,13Ch
                mov     di,148h
                mov     al,17h
                mov     bl,1
                mov     bh,1
                mov     dx,1
                call    vcall_trans_6h
                jnz     loc_ret_45
                mov     di,seg seg_a
                mov     es,di
                mov     di,offset data_27
                mov     si,offset data_50
                mov     cx,4
                rep     movsw

loc_ret_45::
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                push    data_34
                mov     bx,offset data_7
                push    bx                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,4EDh
                push    ax                      ; PARAMETER_3
                push    data_34                 ; PARAMETER_2
                push    bx                      ; PARAMETER_1
                call    sub_21
                add     sp,0Ch
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
                mov     ds,data_34
                push    ds
                pop     es
                assume  ds:seg_b
                mov     byte ptr data_41,18h
                mov     bx,[bp-8]
                xchg    bh,bl
                mov     data_51,bx
                mov     si,142h
                mov     bx,4
                xor     dx,dx
                mov     al,17h
                mov     cx,[bp-4]
                call    vcall_trans_6h
                cmp     al,0DFh
                je      loc_46
                or      ax,ax
                retn
loc_46::
                mov     [bp-2],ax
                xor     ax,ax
                retn
sub_18          endp

data_28         dw      offset loc_49           ; Data table (indexed access)
data_29         dw      offset loc_50
data_30         dw      offset loc_55
data_31         dw      offset loc_22

loc_07ce:
                db       83h,0FBh, 04h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 55h, 8Bh,0ECh
                db      'PQRSTUVW'
                db       1Eh, 06h, 2Eh, 8Eh, 06h,0E2h
                db       0Ah, 03h,0DBh, 2Eh,0FFh,0A7h
                db      0C6h, 07h
loc_47::
                mov     [bp-2],ax
loc_48::
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

loc_49::
                mov     word ptr [bp-6],31h
                push    es
                pop     ds
                mov     es,[bp-14h]
                mov     si,offset data_64
                mov     cx,data_63
                rep     movsb
                xor     ax,ax
                stosb
                jmp     short loc_47

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_50::
                mov     ax,8836h
                cmp     dx,31h
                jne     loc_47
                cmp     cx,2Fh
                ja      loc_47
                mov     bx,ds
                or      bx,si
                jz      loc_47
                mov     es:data_63,cx
                mov     di,offset data_64
                jcxz    loc_53

locloop_51::
                lodsb
                cmp     al,61h                  ; 'a'
                jb      loc_52
                cmp     al,7Ah                  ; 'z'
                jbe     loc_54
loc_52::
                stosb
                loop    locloop_51

loc_53::
                xor     ax,ax
                stosb
                jmp     short loc_47
loc_54::
                xor     ax,ax
                mov     es:data_63,ax
                mov     di,offset data_64
                stosb
                mov     ax,8836h
                jmp     short loc_47

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_55::
                push    es
                pop     ds
                mov     word ptr [bp-2],0
                cmp     data_63,0
                je      loc_56
                mov     cx,data_63
                mov     si,18Eh
                call    vcall_conn_0eh
                jnz     loc_58
                jz      loc_59
                mov     ax,8855h
                jmp     loc_47
loc_56::
                mov     ax,8859h
loc_57::
                jmp     loc_47
loc_58::
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_57
                mov     dx,31h
                mov     bh,1
                call    vcall_conn_8h
                mov     dl,4
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jz      loc_59
                or      al,al
                jnz     loc_60
loc_59::
                mov     [bp-4],cx
                jmp     loc_48
loc_60::
                call    vcall_conn_06h
                mov     word ptr [bp-2],8855h
                jmp     loc_48

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near

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
                jmp     short loc_62
loc_61::
                dec     word ptr [bp+PARAMETER_5]
loc_62::
                les     bx,dword ptr [bp+LOCAL_2]
                dec     word ptr [bp+LOCAL_2]
                cmp     byte ptr es:[bx],0
                jne     loc_63
                cmp     word ptr [bp+PARAMETER_5],0
                jne     loc_61
loc_63::
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
                jmp     short loc_67
loc_64::
                xor     di,di
                jmp     short loc_66
loc_65::
                les     bx,dword ptr [bp+PARAMETER_3]
                mov     al,es:[bx]
                xor     [bp+di-24h],al
                inc     word ptr [bp+PARAMETER_3]
                inc     di
loc_66::
                cmp     di,20h
                jb      loc_65
                sub     word ptr [bp+PARAMETER_5],20h
loc_67::
                cmp     word ptr [bp+PARAMETER_5],20h
                jae     loc_64
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                cmp     word ptr [bp+PARAMETER_5],0
                jbe     loc_72
                xor     di,di
                jmp     short loc_71
loc_68::
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                add     dx,[bp+PARAMETER_5]
                cmp     ax,[bp+LOCAL_1]
                jne     loc_69
                cmp     dx,[bp+LOCAL_2]
                jne     loc_69
                mov     ax,[bp+PARAMETER_4]
                mov     dx,[bp+PARAMETER_3]
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],dx
                assume  ds:seg_a
                mov     al,cs:data_38[di]
                xor     [bp+di-24h],al
                jmp     short loc_70
loc_69::
                les     bx,dword ptr [bp+LOCAL_2]
                mov     al,es:[bx]
                xor     [bp+di-24h],al
                inc     word ptr [bp+LOCAL_2]
loc_70::
                inc     di
loc_71::
                cmp     di,20h
                jb      loc_68
loc_72::
                xor     di,di
                jmp     short loc_74
loc_73::
                mov     bx,di
                and     bx,3
                lea     ax,[bp+PARAMETER_1]
                add     bx,ax
                mov     al,ss:[bx]
                xor     [bp+di-24h],al
                inc     di
loc_74::
                cmp     di,20h
                jb      loc_73
                push    word ptr [bp+PARAMETER_7]
                push    word ptr [bp+PARAMETER_6]       ; PARAMETER_3
                push    ss                      ; PARAMETER_2
                lea     ax,[bp-24h]
                push    ax                      ; PARAMETER_1
                call    sub_20
                add     sp,8
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_19          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near

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
                jmp     short loc_78
loc_75::
                xor     si,si
                jmp     short loc_77
loc_76::
                mov     al,[bp+LOCAL_1]
                mov     ah,0
                mov     dx,si
                add     dx,ax
                and     dx,1Fh
                les     bx,dword ptr [bp+PARAMETER_1]
                add     bx,dx
                mov     al,es:[bx]
                sub     al,cs:data_38[si]
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
loc_77::
                cmp     si,20h
                jl      loc_76
                inc     di
loc_78::
                cmp     di,2
                jl      loc_75
                push    di
                push    es
                xor     ax,ax
                mov     cx,8
                les     di,dword ptr [bp+PARAMETER_3]
                rep     stosw
                pop     es
                pop     di
                xor     si,si
                jmp     short loc_82
loc_79::
                test    si,1
                jz      loc_80
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+si]
                mov     ah,0
                mov     bx,ax
                mov     al,cs:data_37[bx]
                mov     cl,4
                shl     al,cl
                jmp     short loc_81
loc_80::
                les     bx,dword ptr [bp+PARAMETER_1]
                mov     al,es:[bx+si]
                mov     ah,0
                mov     bx,ax
                mov     al,cs:data_37[bx]
loc_81::
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
loc_82::
                cmp     si,20h
                jl      loc_79
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
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
                sub     sp,20h
                push    si
                push    di
                push    ss                      ; PARAMETER_7
                lea     ax,[bp-20h]
                push    ax                      ; PARAMETER_6
                mov     ax,10h
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                les     bx,dword ptr [bp+PARAMETER_1]
                push    word ptr es:[bx+2]      ; PARAMETER_2
                push    word ptr es:[bx]        ; PARAMETER_1
                call    sub_19
                add     sp,0Eh
                push    ss                      ; PARAMETER_7
                lea     ax,[bp+LOCAL_8]
                push    ax                      ; PARAMETER_6
                mov     ax,10h
                push    ax                      ; PARAMETER_5
                push    word ptr [bp+PARAMETER_4]       ; PARAMETER_4
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                les     bx,dword ptr [bp+PARAMETER_1]
                push    word ptr es:[bx+6]      ; PARAMETER_2
                push    word ptr es:[bx+4]      ; PARAMETER_1
                call    sub_19
                add     sp,0Eh
                xor     si,si
                mov     di,01fh ; offset data_5
                jmp     short loc_84
loc_83::
                mov     al,[bp+di-20h]
                xor     [bp+si-20h],al
                inc     si
                dec     di
loc_84::
                cmp     si,10h
                jl      loc_83
                xor     si,si
                mov     di,0fh ; offset data_4
                jmp     short loc_86
loc_85::
                mov     al,[bp+si-20h]
                xor     al,[bp+di-20h]
                les     bx,dword ptr [bp+PARAMETER_5]
                mov     es:[bx+si],al
                inc     si
                dec     di
loc_86::
                cmp     si,8
                jl      loc_85
                pop     di
                pop     si
                mov     sp,bp
                pop     bp
                retn
sub_21          endp

loc_0ad3:
                db      0B8h, 11h, 88h,0CBh
                db      9 dup (0)
data_33         db      2
                db      0
data_34         dw      seg_b
vlm_call_ptr    dw      0, 0
                db      0
data_37         db      7                       ; Data table (indexed access)
                db       08h, 00h, 08h, 06h, 04h, 0Eh
                db       04h, 05h, 0Ch, 01h, 07h, 0Bh
                db       0Fh, 0Ah, 08h, 0Fh, 08h, 0Ch
                db       0Ch, 09h, 04h, 01h, 0Eh, 04h
                db       06h, 02h, 04h, 00h, 0Ah, 0Bh
                db       09h, 02h, 0Fh, 0Bh, 01h, 0Dh
                db       02h, 01h, 09h, 05h, 0Eh, 07h
                db       00h, 00h, 02h, 06h, 06h, 00h
                db       07h, 03h, 08h, 02h, 09h, 03h
                db       0Fh, 07h, 0Fh, 0Ch, 0Fh, 06h
                db       04h, 0Ah, 00h, 02h, 03h, 0Ah
                db       0Bh, 0Dh, 08h, 03h, 0Ah, 01h
                db       07h, 0Ch, 0Fh, 01h, 08h, 09h
                db       0Dh, 09h, 01h, 09h, 04h, 0Eh
                db       04h, 0Ch, 05h, 05h, 0Ch, 08h
                db       0Bh, 02h, 03h, 09h, 0Eh, 07h
                db       07h, 06h, 09h, 0Eh, 0Fh, 0Ch
                db       08h, 0Dh, 01h, 0Ah, 06h, 0Eh
                db       0Dh, 00h, 07h, 07h, 0Ah, 00h
                db       01h, 0Fh, 05h, 04h, 0Bh, 07h
                db       0Bh, 0Eh, 0Ch, 09h, 05h, 0Dh
                db       01h, 0Bh, 0Dh, 01h, 03h, 05h
                db       0Dh, 0Eh, 06h, 03h, 00h, 0Bh
                db       0Bh, 0Fh, 03h, 06h, 04h, 09h
                db       0Dh, 0Ah, 03h, 01h, 04h, 09h
                db       04h, 08h, 03h, 0Bh, 0Eh, 05h
                db       00h, 05h, 02h, 0Ch, 0Bh, 0Dh
                db       05h, 0Dh, 05h, 0Dh, 02h, 0Dh
                db       09h, 0Ah, 0Ch, 0Ah, 00h, 0Bh
                db       03h, 05h, 03h, 06h, 09h, 05h
                db       01h, 0Eh, 0Eh, 00h, 0Eh, 08h
                db       02h, 0Dh, 02h, 02h, 00h, 04h
                db       0Fh, 08h, 05h, 09h, 06h, 08h
                db       06h, 0Bh, 0Ah, 0Bh, 0Fh, 00h
                db       07h, 02h, 08h, 0Ch, 07h, 03h
                db       0Ah, 01h, 04h, 02h, 05h, 0Fh
                db       07h, 0Ah, 0Ch, 0Eh, 05h, 09h
                db       03h, 0Eh, 07h, 01h, 02h, 0Eh
                db       01h, 0Fh, 04h, 0Ah, 06h, 0Ch
                db       06h, 0Fh, 04h, 03h, 00h, 0Ch
                db       00h, 03h, 06h, 0Fh, 08h, 07h
                db       0Bh, 02h, 0Dh, 0Ch, 06h
                db       0Ah, 0Ah, 08h, 0Dh
data_38         db      48h                     ; Data table (indexed access)
                db       93h, 46h, 67h, 98h, 3Dh,0E6h
                db       8Dh,0B7h, 10h, 7Ah, 26h, 5Ah
                db      0B9h,0B1h, 35h, 6Bh, 0Fh,0D5h
                db       70h,0AEh,0FBh,0ADh, 11h,0F4h
                db       47h,0DCh,0A7h,0ECh,0CFh, 50h
                db      0C0h
                db      7 dup (0)

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

data_40         dw      0
data_41         db      0
                db      0, 0
data_43         db      0
data_44         db      0
                db      73 dup (0)
data_45         dw      0
data_46         dw      0
                db      44 dup (0)
data_47         dw      0
                db      94 dup (0)
data_48         db      0
                db      0
                dw      seg_b
                db      0, 0
data_49         dw      seg_b
                db       00h, 00h, 0Ch, 00h, 5Ch
                db       00h
                dw      seg_b
                db       76h, 00h, 01h
                db      0Ah, 'DISABLE_AR'
                db       00h, 00h, 3Dh, 00h, 01h, 00h
                db      0FEh, 00h
                dw      seg_b
                db      6, 0
                dw      seg_b
                db       00h, 00h, 00h, 00h,0F2h, 00h
                dw      seg_b
                db       0Ch, 00h, 50h, 00h
                dw      seg_b
                db       82h, 00h, 00h, 01h, 11h, 1Ch
                db       01h
                dw      seg_b
                db       03h, 00h, 50h, 00h
                dw      seg_b
                db       80h, 00h, 00h, 01h, 17h
data_50         dw      5 dup (0)
                db      14h
data_51         dw      0
data_52         db      0
                db       2Bh, 01h
                dw      seg_b
                db      3, 0, 0, 0
                dw      seg_b
                db       03h, 00h, 2Eh, 01h
                dw      seg_b
                db       08h, 00h, 39h, 01h
                dw      seg_b
                db      3, 0
data_53         dw      0
data_54         dw      0                       ; segment storage
data_55         dw      0
                db       00h, 00h, 36h, 01h
                dw      seg_b
                db      6
                db      7 dup (0)
                db       5Ah, 01h
                dw      seg_b
                db      1, 0
                db      0, 0, 0, 0, 0, 0
data_58         dw      0
                db      35h
data_59         dw      0
data_60         db      0
                db       74h, 01h
                dw      seg_b
                db      6
                db      7 dup (0)
                db       50h, 00h
                dw      seg_b
                db      36h
                db      0
data_63         dw      0
data_64         db      0
                db      49 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

data_65         db      50h
                db       53h,0B8h
                dw      seg_c
                db      8Eh
data_66         db      0D8h
                db      0B8h, 20h, 7Ah,0BBh, 02h, 00h
                db      0CDh, 2Fh, 89h, 1Eh,0F0h, 01h
                db       8Ch, 06h,0F2h, 01h
                db      0BBh, 00h, 00h,0BAh, 20h, 00h
                db      0FFh, 1Eh,0F0h, 01h, 5Bh, 3Dh
                db       00h, 00h, 58h, 74h, 63h, 50h
                db       53h, 51h, 56h, 1Eh,0B4h, 02h
                db      0B0h, 00h
                db      0BBh, 06h, 00h,0B9h, 05h, 00h
                db      0BEh, 54h, 02h, 0Eh, 1Fh, 2Eh
                db      0FFh, 1Eh,0F0h, 01h, 1Fh, 5Eh
                db       59h, 5Bh, 58h, 53h, 0Eh,0B8h
                db       66h, 02h, 50h, 0Eh,0B8h, 54h
                db       02h, 50h, 0Eh,0B8h, 66h, 02h
                db       50h,0B8h, 05h, 00h
                db      50h
                db      0BBh, 06h, 00h,0B4h, 00h,0B0h
                db       00h,0FFh, 1Eh,0F0h, 01h, 83h
                db      0C4h, 0Eh, 5Bh, 53h, 0Eh,0B8h
                db       54h, 02h, 50h, 0Eh,0B8h, 66h
                db       02h, 50h,0B8h, 06h, 00h
                db      50h
                db      0BBh, 06h, 00h,0B4h, 00h,0B0h
                db       00h,0FFh, 1Eh,0F0h, 01h, 83h
                db      0C4h, 0Ah, 5Bh,0B8h,0FFh,0FFh
                db      0CBh
loc_87::
                or      ax,ax
                jz      loc_88
                jmp     loc_93
loc_88::
                push    bx
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
                pop     bx
                mov     data_72,bx
                or      bx,bx
                jz      loc_89
                mov     es:data_34,bx
loc_89::
                push    bx
                push    ds
                mov     ax,278h
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_68
                add     sp,4
                pop     bx
                call    sub_22
                mov     bx,data_72
                or      bx,bx
                jz      loc_92
                mov     ax,seg_b
                mov     es,ax
                mov     dx,bx
                mov     si,offset data_76
                mov     cx,data_77
                jcxz    loc_91

locloop_90::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_90

loc_91::
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
loc_92::
                mov     ax,seg_c
                mov     ds,ax
loc_93::
                mov     ax,seg_c
                mov     ds,ax
                mov     bx,31h
                mov     si,seg_a+10bh
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

sub_22          proc    near
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
                mov     data_73,bx
                mov     word ptr data_73+2,es
                mov     cx,2
                mov     si,22Eh
                mov     di,23Eh
                push    ds
                pop     es
                call    dword ptr data_73
                mov     ax,seg_b
                mov     es,ax
                mov     ds,ax
                mov     di,offset data_64
                cmp     byte ptr [di],0
                je      loc_94
                mov     cx,2Fh
                xor     al,al
                repne   scasb
                neg     cx
                add     cx,2Eh
                assume  ds:seg_b
                mov     data_63,cx
loc_94::
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
sub_22          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


bind            proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      14 dup (0)
data_68         dw      0, 0
vlm_call_ptr2   dw      0, 0
data_72         dw      0
data_73         dw      0, 0
                db      'PREFERRED SERVER'
                db       00h, 8Eh, 01h
                dw      seg_b
                db       01h, 00h, 2Fh, 00h
                db      'BIND RECONNECT'
                db       00h,0E8h, 0Ah
                dw      seg_a
                db       00h, 00h,0FFh,0FFh,0FEh, 01h
                db       11h, 01h, 06h, 00h, 0Fh, 02h
                db       17h, 02h, 0Fh, 00h, 04h, 00h
                db       26h, 02h
                db      4Eh
                db      'ETWARE DOS REQUESTER', 0
                db      'BIND', 0
                db      'DOSRQSTR.MSG', 0
                db      'TRAN', 0
                db      'VeRsIoN=1.21', 0
                db      'BIND.VLM     - NetWare bindery p'
                db      'rotocol module  v1.21 (960514)', 0Dh
                db      0Ah, 0
data_76         db      0E2h
                db       00h,0EEh, 00h, 21h, 01h, 27h
                db       01h, 06h, 01h, 12h, 01h, 18h
                db       01h, 21h, 01h, 27h, 01h, 3Eh
                db       01h, 44h, 01h, 4Ah, 01h, 50h
                db       01h, 7Ch, 01h, 88h, 01h, 5Eh
                db       01h, 6Ah, 01h
data_77         dw      11h

bind            endp

seg_c           ends



                end     start
