include common.inc
include vlm.inc
include conn.inc

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

data_1          dw      offset init_fn, seg_c
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
conn_lookup_handle  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_LOOKUP_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
conn_lookup_handle  endp

conn_get_field  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_GET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
conn_get_field  endp

conn_set_field  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_SET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
conn_set_field  endp

; see TODO, this may be the main NCP request/reply invoker
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

conn_name2handle  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_NAME2HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
conn_name2handle  endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

conn_free_handle  proc    near
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_FREE_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
conn_free_handle  endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

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
                call    conn_lookup_handle
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
                mov     bh,CONN_FIELD_CONN_NUMBER
                call    conn_get_field
                jz      loc_7
                jmp     loc_14
loc_6::
                mov     ax,VLM_STATUS_CONN_ALREADY_IN_USE
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
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_get_field
                cmp     dx,VLMID_BIND
                je      loc_9
                cmp     dx,VLMID_NDS
                jne     loc_10
loc_9::
                mov     word ptr [bp-4],0FFFFh
                jmp     loc_16
loc_10::
                mov     bh,CONN_FIELD_TRANSPORT_FOR_VLMID
                call    conn_get_field
                xor     cx,cx
                or      dx,dx
                jnz     loc_12
loc_11::
                mov     bx,100h
                mov     dx,31h
                call    conn_lookup_handle
                mov     dx,0
                jnz     loc_13
                mov     bh,CONN_FIELD_CONN_NUMBER
                call    conn_get_field
                or      dx,dx
                jz      loc_11
                mov     word ptr [bp-4],0FFFFh
                jmp     loc_16
loc_12::
                mov     bx,0F00h
                call    conn_lookup_handle
                jnz     loc_13
                push    dx
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_get_field
                cmp     dx,VLMID_BIND
                pop     dx
                jnz     loc_12
                push    dx
                mov     bh,CONN_FIELD_CONN_NUMBER
                call    conn_get_field
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
                mov     bp,CONN_FUNC_ALLOC_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_14
                mov     [bp-2],cx
                mov     bh,CONN_FIELD_TRANSPORT_FOR_VLMID
                call    conn_set_field
                push    dx
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                mov     dx,VLMID_BIND
                call    conn_set_field
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
                call    conn_free_handle
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_8           proc    near
                mov     dl,1
                callf   sub_11
                retn
sub_8           endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_9           proc    near
                push    dx
                mov     dx,cx
                xor     cx,cx
                call    conn_name2handle
                jz      loc_20
                mov     cx,dx
                jmp     short loc_21
loc_20::
                mov     dx,[bp-8]
                mov     [bp-2],dx
                mov     [bp-8],cx
                mov     ax,VLM_STATUS_8800
loc_21::
                pop     dx
                retn
sub_9           endp

data_25         db      1
                db      0Bh
                db      'NET_ADDRESS'

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_22::
                jcxz    loc_23
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_VALIDATE_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jz      loc_24
                jmp     loc_25
loc_23::
                push    dx
                mov     dx,31h
                mov     bx,100h
                call    conn_lookup_handle
                pop     dx
                jnz     loc_25
                mov     bh,CONN_FIELD_CONN_NUMBER
                call    conn_get_field
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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_11          proc    far
                push    bx
                push    dx
                mov     bh,CONN_FIELD_CONN_NUMBER
                call    conn_get_field
                jnz     loc_27
                or      dx,dx
                jz      loc_26
                mov     bh,CONN_FIELD_NCP_REQ_TYPE
                mov     dx,5555h
                call    conn_set_field
                xor     ax,ax
                mov     bx,ax
                mov     dx,ax
                call    vcall_trans_6h
loc_26::
                call    conn_free_handle
loc_27::
                pop     dx
                pop     bx
                retf
sub_11          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
                call    conn_free_handle
                pop     ax
                jmp     short loc_29
loc_28::
                mov     bh,0Dh
                xor     dx,dx
                call    sub_13
                mov     ax,VLM_STATUS_NO_CONN_SLOTS_AVAIL
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
                mov     bp,CONN_FUNC_0B
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
                call    conn_free_handle
                jmp     loc_29
sub_12          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_13          proc    near
                call    conn_set_field
                jnz     loc_32
                retn
loc_32::
                pop     bx
                jmp     loc_29
sub_13          endp

data_26         dw      8 dup (0)

; TODO THis seems to contain the login key
login_key       db      0
                db      7 dup (0)

loc_0505:
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
                test    data_0ae8,0ffh
                jz      loc_0594
                push    ds
                pop     es
                xchg    si,di
                mov     cx,0ffffh
                xor     al,al
                repne   scasb
                not     cx
                dec     cx

                ; construct "read property value" request
                mov     es,data_34
                push    es
                pop     ds
                mov     si,offset data_010a
                mov     ax,[bp-12h]
                mov     [si+2h],ax
                mov     ax,[bp-0eh]
                mov     [si],ax
                mov     [si+4],cx
                mov     data_0103,cl           ; object name length
                add     cx,10h
                xchg    ch,cl
                mov     data_0fe,cx
                mov     si,offset data_0104
                mov     di,offset data_0116
                mov     bx,3
                mov     dx,1
                mov     al,17h
                mov     cx,[bp-4]
                call    vcall_trans_6h
                mov     bx,[bp-8]
                mov     di,[bp-10h]
                mov     si,[bp-0eh]
                mov     ds,[bp-12h]
                mov     es,[bp-14h]
                jz      loc_0594
                cmp     ah,88h
                jnz     loc_057a
                jmp     loc_38

loc_057a:
                push    ax
                push    bx
                mov     bx,2
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_AUTO
                push    bp
                mov     bp,5
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pop     bx
                pop     ax
loc_0594:
                mov     es,cs:data_34
                push    es
                pop     ds
                call    get_login_key
                or      al,al
                jz      loc_34
                cmp     ax,8805h
                jnz     loc_33
                jmp     loc_38

loc_33::
                jmp     loc_42
loc_34::
                mov     es,[bp-12h]
                mov     di,[bp-0Eh]
                mov     si,offset ncp_req_get_bindery_obj_id
                mov     [si+6],di
                mov     [si+8],es
                mov     word ptr ds:[data_53],di
                mov     word ptr ds:[data_54],es
                mov     cx,48
                call    calc_len
                mov     [si+0Ah],cx
                mov     byte ptr ds:[data_60],cl
                mov     bx,[bp-8]
                xchg    bh,bl
                mov     word ptr ds:[data_59],bx
                assume  ds:seg_a
                mov     data_10,cl
                mov     word ptr ds:[data_55],cx
                add     cx,4
                xchg    ch,cl
                mov     word ptr ds:[data_58],cx
                add     ch,8
                mov     data_1,cx
                push    ds
                pop     es
                mov     di,offset ncp_resp_get_bind_obj_id
                mov     bx,2
                mov     dx,1
                call    bind_ncp_23
                mov     ax,seg_a
                mov     ds,ax
                push    ds
                mov     ax,4EDh
                push    ax
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                mov     cx,80h
                call    calc_len
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
                call    get_login_key
                jnz     loc_38
                call    sub_17
                call    sub_18
                jnz     loc_38
loc_36::
                push    ax
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                call    conn_get_field
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

bind_ncp_23     proc    near
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
bind_ncp_23     endp

loc_42::
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                mov     word ptr ds:[16Eh],di
                mov     word ptr ds:[170h],es
                mov     cx,80h
                call    calc_len
                mov     byte ptr ds:[15Ah],cl
                mov     word ptr ds:[172h],cx
                mov     bl,cl
                mov     es,[bp-12h]
                mov     di,[bp-0Eh]
                mov     word ptr ds:[162h],di
                mov     word ptr ds:[164h],es
                mov     cl,30h                  ; '0'
                call    calc_len
                mov     data_10,cl
                mov     word ptr ds:[166h],cx
                add     bl,cl
                add     bl,5
                xor     bh,bh
                xchg    bh,bl
                mov     data_8,bx
                mov     si,offset data_015c
                mov     bx,[bp-8]
                xchg    bh,bl
                mov     data_9,bx
                mov     bx,4
                xor     dx,dx
                call    bind_ncp_23
loc_43::
                mov     bh,CONN_FIELD_AUTHENTICATED
                call    conn_set_field
                jnz     loc_44
                mov     bh,CONN_FIELD_PERMANENT
                call    conn_set_field
                jnz     loc_44
                mov     bh,CONN_FIELD_TRANSPORT_VLMID	
                mov     dx,VLMID_BIND
                call    conn_set_field
                jnz     loc_44
                jmp     loc_39
loc_44::
                jmp     loc_38

; some kind of length calculation for ascii string in ds:si
calc_len        proc    near
                mov     dx,cx
                xor     al,al
                repne   scasb
                neg     cx
                dec     dx
                add     cx,dx
                retn
calc_len        endp


; Seems to issue 0x2222 23 23 Get Login Key
get_login_key   proc    near
                mov     si,offset data_013c
                mov     di,offset data_0148
                mov     al,17h              ; bindery request
                mov     bl,1                ; 1 request
                mov     bh,1                ; return network errors to caller
                mov     dx,1                ; 1 response
                call    vcall_trans_6h
                jnz     loc_ret_45
                mov     di,seg seg_a
                mov     es,di
                mov     di,offset login_key
                mov     si,offset data_50
                mov     cx,4
                rep     movsw

loc_ret_45::
                retn
get_login_key   endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
set_status_ret::
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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_49::        ; return asciiz string of preferred server name
                mov     word ptr [bp-6],31h
                push    es
                pop     ds
                mov     es,[bp-14h]
                mov     si,offset pref_server
                mov     cx,pref_server_len
                rep     movsb
                xor     ax,ax
                stosb
                jmp     short set_status_ret

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_50::
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                cmp     dx,31h
                jne     set_status_ret

                ; dx = 31h, set preferred server to ds:si, cx bytes
                cmp     cx,2Fh
                ja      set_status_ret
                mov     bx,ds
                or      bx,si
                jz      set_status_ret
                mov     es:pref_server_len,cx
                mov     di,offset pref_server
                jcxz    loc_53

locloop_51::
                lodsb
                cmp     al,'a'
                jb      loc_52
                cmp     al,'z'
                jbe     loc_54
loc_52::
                stosb
                loop    locloop_51

loc_53::
                xor     ax,ax
                stosb
                jmp     short set_status_ret

loc_54::        ; invalid character (> 'a', < 'z' - reject)
                xor     ax,ax
                mov     es:pref_server_len,ax
                mov     di,offset pref_server
                stosb
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                jmp     short set_status_ret

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_55::
                push    es
                pop     ds
                mov     word ptr [bp-2],0
                cmp     pref_server_len,0
                je      loc_56
                mov     cx,pref_server_len
                mov     si,offset pref_server
                call    conn_name2handle
                jnz     loc_58
                jz      loc_59
                mov     ax,VLM_STATUS_PREF_SERVER_NOT_FOUND
                jmp     set_status_ret
loc_56::
                mov     ax,VLM_STATUS_8859
loc_57::
                jmp     set_status_ret
loc_58::
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_ALLOC_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_57
                mov     dx,VLMID_BIND
                mov     bh,CONN_FIELD_TRANSPORT_VLMID	
                call    conn_set_field
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
                call    conn_free_handle
                mov     word ptr [bp-2],VLM_STATUS_PREF_SERVER_NOT_FOUND
                jmp     loc_48

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
data_0ae8       db      0
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
data_0fe        dw      00h
                db      61                              ; read property value
                dw      100h                            ; object type: user
data_0103       db      00h                             ; object name length
data_0104       dw      offset data_0fe, seg_b
                db      6, 0
data_010a       dw      seg_b
                db       00h, 00h, 00h, 00h,0F2h, 00h
                dw      seg_b
                db       0Ch, 00h
data_0116       db      50h, 00h
                dw      seg_b
                db       82h, 00h, 00h, 01h, 11h, 1Ch
                db       01h
                dw      seg_b
                db       03h, 00h, 50h, 00h
                dw      seg_b
                db       80h, 00h
data_012b       db      00h, 01h, 17h
data_50         dw      4 dup (0)
data_0136       dw      0
                db      14h
data_51         dw      0
data_52         db      0
data_013c       dw      offset data_012b, seg_b
                dw      3
                dw      0, seg_b
                db       03h, 00h
data_0148       dw      offset data_50, seg_b, 8
                dw      offset data_51, seg_b, 3
data_53         dw      0
data_54         dw      0                       ; segment storage
data_55         dw      0
data_015a       db       00h, 00h

; ncp request 2222 23 ??
data_015c       dw      offset data_0136, seg_b, 6
                db      6 dup (0)
                dw      offset data_015a, seg_b
                db      1, 0
                db      0, 0, 0, 0, 0, 0
data_58         dw      0
                db      35h
data_59         dw      0
data_60         db      0

; ncp request 2222 23 53: get bindery object id
ncp_req_get_bindery_obj_id:
                dw      offset data_58, seg_b, 6
                db      6 dup (0)

; response buffer for ncp_req_get_bindery_obj_id
ncp_resp_get_bind_obj_id:
                dw      offset data_45, seg_b, 36h
pref_server_len dw      0
pref_server     db      50 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

init_fn:
                push    ax
                push    bx
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,07A20h
                mov     bx,2
                int     2Fh
                mov     word ptr [vlm_multiplex_ptr],bx
                mov     word ptr [vlm_multiplex_ptr+2],es
                mov     bx,0
                mov     dx,20h
                call    dword ptr vlm_multiplex_ptr
                pop     bx
                ; cmp     ax,0h
                db      3Dh, 0h, 0h
                pop     ax
                jz      loc_87

                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,254h
                push    cs
                pop     ds
                call    dword ptr cs:vlm_multiplex_ptr
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax

                push    bx
                push    cs
                mov     ax,266h
                push    ax
                push    cs
                mov     ax,254h
                push    ax
                push    cs
                mov     ax,266h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr vlm_multiplex_ptr
                add     sp,0eh
                pop     bx

                push    bx
                push    cs
                mov     ax,254h
                push    ax
                push    cs
                mov     ax,266h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr vlm_multiplex_ptr
                add     sp,0ah
                pop     bx
                mov     ax,0ffffh
                retf

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
                call    dword ptr vlm_multiplex_ptr
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
                mov     vlm_parse_ptr,bx
                mov     word ptr vlm_parse_ptr+2,es
                mov     cx,2
                mov     si,22Eh
                mov     di,23Eh
                push    ds
                pop     es
                call    dword ptr vlm_parse_ptr

                mov     ax,seg_b
                mov     es,ax
                mov     ds,ax
                mov     di,offset pref_server
                cmp     byte ptr [di],0
                je      loc_94

                ; determine length of preferred server string
                mov     cx,2Fh
                xor     al,al
                repne   scasb
                neg     cx
                add     cx,2Eh
                assume  ds:seg_b
                mov     pref_server_len,cx

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


;ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
;
;                       Program Entry Point
;
;ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


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
vlm_multiplex_ptr dw      0, 0
vlm_call_ptr2   dw      0, 0
data_72         dw      0
vlm_parse_ptr   dw      0, 0
                db      'PREFERRED SERVER',0
                dw      offset pref_server, seg_b
                db       01h, 00h, 2Fh, 00h
                db      'BIND RECONNECT', 0
                dw      offset data_0ae8, seg_a
                db       00h, 00h,0FFh,0FFh,0FEh, 01h
                db       11h, 01h, 06h, 00h, 0Fh, 02h
                db       17h, 02h, 0Fh, 00h, 04h, 00h
                db       26h, 02h
                db      'NETWARE DOS REQUESTER', 0
                db      'BIND', 0
                db      'DOSRQSTR.MSG', 0
                db      'TRAN', 0
                db      'VeRsIoN=1.21', 0
                db      'BIND.VLM     - NetWare bindery p'
                db      'rotocol module  v1.21 (960514)', 0Dh
                db      0Ah, 0
; relocation entries
data_76         dw       0E2h, 0EEh, 121h, 127h
                dw       106h, 112h, 118h, 121h
                dw       127h, 13Eh, 144h, 14Ah
                dw       150h, 17Ch, 188h, 15Eh
                dw      16Ah
data_77         dw      11h

bind            endp

seg_c           ends



                end     start
