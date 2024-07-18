; The following equates show data references outside the range of the program.

data_1e         equ     0Eh
irq1_vector     equ     24h                     ; 0:24h = int9 = irq1
data_4e         equ     40h
data_5e         equ     42h
int16_vector    equ     58h
keybd_q_head_   equ     41Ah
keybd_q_tail_   equ     41Ch
prn_scrn_stat   equ     0
data_11e        equ     0BCh                    ;*
data_12e        equ     0BEh                    ;*
data_66e        equ     55CBh                   ;*

include  common.inc
include  conn.inc
include  nwp.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      offset init, seg_d
                dw      offset loc_00dc, seg_a
                dw      offset loc_08b1, seg_a
                dw      offset nwp_stats, seg_a     ; function 3
                dw      offset loc_014c, seg_a
                dw      offset loc_014c, seg_a
                dw      offset loc_014c, seg_a
                dw      offset loc_62, seg_a
                dw      offset loc_014c, seg_a
                dw      offset loc_05e9, seg_a
                dw      offset loc_02fe, seg_a
                dw      offset loc_086b, seg_a
                dw      offset loc_087f, seg_a
                dw      offset loc_0893, seg_a
                dw      offset sub_8, seg_a
                dw      offset loc_014c, seg_a
                dw      offset loc_07ea, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_NWP

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

conn_get_field  proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_GET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
conn_get_field  endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

conn_lookup_handle    proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_LOOKUP_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
conn_lookup_handle    endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_trans_6   proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
vcall_trans_6   endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_trans_9   proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
vcall_trans_9   endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

conn_set_field  proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_SET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
conn_set_field  endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_exe_1     proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
vcall_exe_1     endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall_security_4 proc    near
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_SECURITY
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
vcall_security_4 endp

data_13         dw      offset loc_5            ; Data table (indexed access)

loc_00dc:
                db       83h,0FBh, 01h, 72h, 04h,0B8h
                db       11h, 88h,0CBh,0D1h,0E3h, 2Eh
                db      0FFh,0A7h,0DAh, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

nwp_stats:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset nwp_statistics
                cmp     cx,[si]
                jbe     loc_6
                mov     cx,[si]
loc_6::
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     ds
                pop     di
                pop     si
                pop     cx
                mov     ax,0
                retf
loc_7::
                push    ax
                push    ds
                mov     ax,seg_a+0AEh
                mov     ds,ax
                mov     byte ptr ds:[34h],1     ; data_0b14
                push    bx
                push    di
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     es,ds:data_0af6
                xor     bx,bx
                mov     di,3CEh
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                pop     es
                pop     di
                pop     bx
                pop     ds
                pop     ax

loc_014c:
                cmp     byte ptr cs:data_0b14,0
                je      loc_7
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
                mov     [bp-0Ah],dx
                mov     bx,[bp]
                mov     ax,ss:[bx+6]
                mov     [bp-2],ax
;*              cmp     ax,0Fh
                db       3Dh, 0Fh, 00h
                jz      loc_8
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_get_field
                jz      loc_8
                mov     bx,[bp-6]
                mov     ds,[bp-0Ch]
                jmp     short loc_11
loc_8::
                or      dx,dx
                jnz     loc_9
                jmp     short loc_16
loc_9::
                mov     ax,30h
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:vlm_call_ptr2
                jz      loc_10
                cmp     ax,8855h
                jne     loc_11
                mov     ax,8847h
                jmp     short loc_11
loc_10::
                cmp     word ptr [bp-2],8
                jne     loc_11
                push    bx
                mov     bx,4
                call    vcall_exe_1
                pop     bx
loc_11::
                add     sp,12h
                pop     bp
                retf
loc_12::
                add     sp,4
                jmp     short loc_10
loc_13::
                cmp     word ptr [bp-2],0Fh
                jne     loc_14
                cmp     word ptr [bp-6],2
                jne     loc_14
                mov     word ptr [bp-0Eh],0
                jmp     short loc_21
loc_14::
                mov     ax,[bp-0Eh]
loc_15::
                mov     bx,[bp-10h]
                mov     dx,[bp-12h]
                mov     ds,[bp-0Ch]
                jmp     short loc_11
loc_16::
                mov     bx,offset data_0b00
                mov     dx,[bx]
loc_17::
                cmp     word ptr [bp-2],0Fh
                je      loc_19
                push    bx
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_set_field
                pop     bx
                jnz     loc_15
loc_19::
                or      dx,dx
                jz      loc_13
                push    bx
                push    ds
                mov     ax,VLMID_NWP
                push    ax
                push    dx
                push    word ptr [bp-2]
                mov     ax,[bp-4]
                mov     bx,[bp-6]
                mov     dx,[bp-0Ah]
                mov     ds,[bp-0Ch]
                call    dword ptr cs:vlm_call_ptr2
                or      al,al
                jnz     loc_20
                jmp     short loc_12
loc_20::
                pop     ds
                mov     [bp-0Eh],ax
                mov     [bp-10h],bx
                mov     [bp-12h],dx
                pop     bx
                cmp     ax,8855h
                je      loc_21
                inc     bx
                inc     bx
                mov     dx,[bx]
                jmp     short loc_17
loc_21::
                xor     cx,cx
                mov     bx,100h
                mov     dx,[bp-0Ah]
                or      dx,dx
                jnz     loc_22
                mov     bl,CONN_LOOKUP_NOT_EQUAL
loc_22::
                call    conn_lookup_handle
                jnz     loc_24
loc_23::
                mov     [bp-8],cx
                jmp     short loc_14
loc_24::
                push    ax
                mov     bx,0
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_25
                mov     bx,0
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_25
                pop     ax
                jmp     loc_15
loc_25::
                pop     ax
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_ALLOC_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_26
                jmp     loc_15
loc_26::
                mov     bx,offset data_0b00
                mov     dx,[bx]
loc_27::
                cmp     dx,33h
                je      loc_28
                push    bx
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_set_field
                pop     bx
                mov     dl,6
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_23
loc_28::
                inc     bx
                inc     bx
                mov     dx,[bx]
                or      dx,dx
                jnz     loc_27
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_FREE_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     ax,8847h
                jmp     loc_15
data_14         dw      offset loc_30           ; Data table (indexed access)
data_15         dw      offset loc_30
data_16         dw      offset loc_33
data_17         dw      offset loc_44
data_18         dw      offset loc_46
data_19         dw      offset loc_49           ;; I wonder if this is used to display messages?
data_20         dw      203h
data_21         dw      offset loc_29
loc_02fe:
                db       83h,0FBh, 06h, 72h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                add     al,0B8h
                adc     ds:data_66e[bx+si],cx
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
                add     bx,bx
                assume  ds:seg_a
                jmp     word ptr cs:data_14[bx] ;*6 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_30::
                mov     ax,8811h
loc_31::
                mov     [bp-2],ax
loc_32::
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

loc_33::
                cmp     dl,5
                je      loc_37
                jbe     loc_34
                jmp     loc_41
loc_34::
                cmp     dl,4
                je      loc_36
                mov     ax,seg_a
                mov     ds,ax
                mov     es,ds:data_0af6
                mov     es:data_92,dl
                mov     al,dl
                mov     bx,offset data_20
                xlat
                push    es
                pop     ds
                assume  ds:seg_c
                mov     data_108,al
                mov     si,48Ch
                mov     bx,1
                xor     dx,dx
                mov     ax,0FF15h
                jcxz    loc_35
                call    vcall_trans_6
                jz      loc_36
                jmp     short loc_31
loc_35::
                callf   sub_8
                or      ax,ax
                jz      loc_36
                jmp     short loc_31
loc_36::
                mov     es,cs:data_0af6
                mov     dl,es:data_92
                mov     [bp-6],dl
                jmp     short loc_40
loc_37::
                mov     ds,cs:data_0af6
                mov     ax,cx
                or      ax,si
                jz      loc_38
                mov     ax,int2f_prev
                or      ax,word ptr int2f_prev+2
                jnz     loc_39
                mov     ax,352Fh
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     int2f_prev,bx
                mov     word ptr int2f_prev+2,es
                mov     dx,offset int_2Fh_entry
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                jmp     short loc_39
loc_38::
                mov     es,ax
                cmp     word ptr es:data_11e,154h
                jne     loc_39
                mov     bx,ds
                cmp     es:data_12e,bx
                jne     loc_39
                push    ds
                lds     dx,dword ptr int2f_prev
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                xor     ax,ax
                mov     int2f_prev,ax
                mov     word ptr int2f_prev+2,ax
loc_39::
                mov     broadcast_callback_ptr,si
                mov     word ptr broadcast_callback_ptr+2,cx
loc_40::
                xor     ax,ax
                jmp     loc_31
loc_41::
                cmp     dl,7
                ja      loc_36
                jz      loc_42
                mov     cx,cs:v_msg_timeout
                jmp     short loc_43
loc_42::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                xchg    ds:v_msg_timeout,cx
                pop     ds
loc_43::
                mov     [bp-4],cx
                jmp     short loc_40

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_44::
                mov     ds,cs:data_0af6
                push    dx
                mov     bh,CONN_FIELD_TRANSPORT_VLMID
                call    conn_get_field
                pop     dx
                mov     ax,[bp-2]
                mov     data_115,ax
                mov     data_116,dl
                mov     data_119,es
                mov     data_118,di
                mov     data_120,dx
                add     dx,4
                xchg    dl,dh
                mov     data_114,dx
                mov     si,offset data_04dc
                mov     di,4E8h
                push    ds
                pop     es
                mov     bx,2
                mov     dx,1
                mov     ax,17h
                call    vcall_trans_6
                jnz     loc_45
                mov     dx,data_111
                mov     bx,word ptr [data_112]
                mov     [bp-8],bx
                mov     [bp-6],dx
loc_45::
                jmp     loc_31

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                mov     ds,cs:data_0af6
                mov     data_121,dx
                mov     data_122,si
                mov     si,4F5h
                mov     di,4FBh
                push    ds
                pop     es
                mov     bx,1
                mov     dx,bx
                mov     al,17h
                call    vcall_trans_6
                jnz     loc_48

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_47::
                lds     si,dword ptr [di]
                add     si,6
                mov     es,[bp-14h]
                mov     di,[bp-10h]
                push    cx
                mov     cx,18h
                rep     movsw
                pop     cx
                xor     ax,ax
loc_48::
                jmp     loc_31

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_49::
                mov     ax,seg_a
                mov     ds,ax
                call    in_text_mode
                jz      loc_50
                jmp     loc_54
loc_50::
                cmp     cx,0FFFFh
                jne     loc_51

                mov     es,ds:data_0af6
                mov     di,offset data_109
                mov     bx,1
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,0Ah
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jmp     short loc_52

loc_51::        ; cx != 0FFFFh
                push    ds
                mov     es,ds:data_0af6
                mov     byte ptr es:data_108,1
                push    es
                pop     ds
                mov     si,48Ch
                mov     di,492h
                mov     bx,1
                mov     dx,bx
                mov     al,15h
                call    vcall_trans_6
                pop     ds
                jnz     loc_53

loc_52::
                test    byte ptr es:data_109,0FFh
                jz      loc_53
                cmp     byte ptr es:data_92,2
                je      loc_53
                mov     byte ptr ds:display_attr,70h        ; 'p'
                call    set_cursor_pos
                push    dx
                call    save_first_line
                xor     dx,dx
                call    set_cursor_pos
                mov     si,offset msg_prefix
                call    write_chars
                push    ds
                mov     ds,ds:data_0af6
                mov     si,offset data_110
                mov     bl,data_109
                xor     bh,bh
                mov     byte ptr [bx+si],0
                call    write_chars
                pop     ds
                mov     si,offset msg_ctrl_enter
                mov     byte ptr ds:write_newline,0
                call    write_chars
                mov     byte ptr ds:write_newline,0FFh
                call    beep

                ; wait until enter or timeout
                mov     cx,0FFFFh                   ; mask for ah/al (int16 fn 0)
                mov     dx,1C0Ah                    ; dl = enter
                call    wait_until_key_or_timeout

                call    restore_first_line
                mov     byte ptr ds:write_newline,0FFh
                pop     dx
                call    set_cursor_pos
                call    hook_keyboard_ints
loc_53::
                mov     word ptr [bp-4],0
loc_54::
                jmp     loc_32

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    far

LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                or      bx,bx
                jz      loc_55
                push    word ptr [si+4]
loc_55::
                mov     [bp+LOCAL_1],ax
                mov     [bp+LOCAL_2],bx
                mov     [bp+LOCAL_3],dx
                mov     word ptr [bp+LOCAL_4],0
                mov     byte ptr [bp+LOCAL_5],1
                mov     word ptr [bp+LOCAL_6],0
loc_56::
                mov     dx,[bp+LOCAL_4]
                add     dl,[bp+LOCAL_5]
                mov     [bp+LOCAL_4],dx
                xor     cx,cx
                mov     bx,0E00h+CONN_LOOKUP_EQUAL
                call    conn_lookup_handle
                jnz     loc_57
                mov     ax,[bp+LOCAL_1]
                mov     bx,[bp+LOCAL_2]
                mov     dx,[bp+LOCAL_3]
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_59
                jmp     short loc_56
loc_57::
                cmp     word ptr [bp+LOCAL_2],0
                je      loc_58
                pop     word ptr [si+4]
loc_58::
                mov     ax,[bp+LOCAL_6]
                add     sp,0Ch
                pop     bp
                retf
loc_59::
                cmp     ax,8809h
                je      loc_56
                cmp     ax,89FBh
                je      loc_56
                cmp     byte ptr [bp+LOCAL_5],0FFh
                je      loc_56
                mov     [bp+LOCAL_6],ax
                mov     ax,[bp+LOCAL_1]
                cmp     ah,0FFh
                je      loc_60
                xchg    ah,al
                mov     [bp+LOCAL_1],ax
                mov     byte ptr [bp+LOCAL_2],1
                mov     word ptr [si+4],1
                push    si
                push    ds
                lds     si,dword ptr [si]
                mov     byte ptr [si],1
                pop     ds
                pop     si
                mov     byte ptr [bp+LOCAL_5],0FFh
loc_60::
                jmp     short loc_56
sub_8           endp

loc_05e9:
                push    bx
                push    dx
                mov     bx,0Bh
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_PRINT
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     al,19h
                xor     dx,dx
                mov     bx,dx
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_TRANS
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_61
                mov     bh,CONN_FIELD_AUTHENTICATED
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_RESET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                mov     bx,5
                call    vcall_exe_1
loc_61::
                pop     dx
                pop     bx
                retf
loc_62::
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    ds
                push    es
                mov     bh,CONN_FIELD_PBURST_RESET
                call    conn_set_field
                jz      loc_63
                jmp     loc_76
loc_63::
                xor     bx,bx
                call    vcall_trans_9
                mov     ds,cs:data_0af6
                push    ds
                pop     es
                push    dx
                push    bx
                xchg    bh,bl
                mov     data_101,bx
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                call    conn_get_field
                and     dl,0Fh
                or      dl,cs:sec_preferred
                mov     bp,2
loc_64::
                mov     bx,3
                call    vcall_trans_9
                or      bl,bl
                jnz     loc_65
                and     dl,0FEh
loc_65::
                cmp     byte ptr cs:v_lip,0
                jne     loc_66
                or      dl,80h
loc_66::
                mov     data_102,dl
                mov     si,offset data_106
                mov     di,offset data_107
                mov     word ptr [si+4],3
                mov     word ptr [di+4],5
                mov     al,61h                  ; 'a'
                mov     bx,1
                mov     dx,bx
                call    vcall_trans_6
                jz      loc_68
                jmp     loc_73
loc_67::
                jmp     loc_74
loc_68::
                cmp     data_103,ax
                je      loc_67
                pop     bx
                pop     dx
                push    dx
                push    bx
                mov     ax,data_103
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                push    ds
                mov     ds,cx
                mov     ds:data_1e,ax
                pop     ds
                mov     dl,data_102
                mov     dh,dl
                not     dl
                and     dl,data_105
                jz      loc_70
                and     dl,cs:sec_enabled
                jz      loc_70
                test    byte ptr data_102,1
                jz      loc_69
                test    byte ptr data_105,1
                jz      loc_69
                push    dx
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                mov     dl,1
                call    conn_set_field
                pop     dx
loc_69::
                or      dl,dh
                dec     bp
                jz      loc_74
                jmp     loc_64
loc_70::
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                call    conn_get_field
                mov     dh,dl
                and     dh,0F0h
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                mov     dl,data_105
                and     dl,cs:sec_enabled
                or      dl,dh
                call    conn_set_field
                mov     dx,data_104
                mov     bh,CONN_FIELD_LIP_SUPPORTED
                call    conn_set_field
                or      dx,dx
                jz      loc_74
                cmp     byte ptr cs:v_lip,0
                je      loc_74
                test    byte ptr data_105,80h
                jnz     loc_74
                mov     bx,1
                call    vcall_trans_9
                jnz     loc_74
                mov     bh,CONN_FIELD_17
                call    conn_set_field
                call    sub_9
                pop     ax
                pop     dx
                push    ds
                mov     ds,cx
                mov     bx,ds:data_1e
                pop     ds
                mov     ax,es:data_103
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                xchg    dx,ax
                cmp     dx,bx
                jb      loc_72
                mov     dx,bx
loc_72::
                mov     bh,CONN_FIELD_MAX_PKT_SIZE
                call    conn_set_field
                jmp     short loc_76
loc_73::
                xor     dx,dx
                mov     bh,CONN_FIELD_LIP_SUPPORTED
                call    conn_set_field
loc_74::
                pop     bx
                pop     dx
                mov     ax,data_101
                xchg    ah,al
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                sub     ax,dx
                xchg    ah,al
                mov     data_101,ax
                mov     bx,1
                mov     dx,bx
                mov     si,offset data_106
                mov     di,offset data_107
                mov     word ptr [si+4],2
                mov     word ptr [di+4],2
                mov     al,21h                  ; '!'
                call    vcall_trans_6
                jnz     loc_76
                mov     ax,data_103
                xchg    ah,al
                mov     bx,data_101
                xchg    bh,bl
                cmp     ax,bx
                jb      loc_75
                mov     ax,bx
loc_75::
                mov     bh,CONN_FIELD_MAX_PKT_SIZE
                xchg    dx,ax
                call    conn_set_field
                call    sub_9
                sub     ax,ax
loc_76::
                pop     es
                pop     ds
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    cx
                mov     bx,2
                call    vcall_trans_9
                pop     cx
                jnz     loc_ret_77
                xchg    dx,ax
                mov     bx,22Bh
                div     bx
                xchg    dx,ax
                cmp     dx,1
                adc     dx,0
                mov     bh,CONN_FIELD_SERVER_DISTANCE
                call    conn_set_field

loc_ret_77::
                retn
sub_9           endp

data_29         dw      offset loc_83           ; Data table (indexed access)
                db      0FEh, 07h, 16h
                db      8, '1', 8, '8', 8, 'V', 8, 'g', 8

loc_07ea:
                db      '<'
                db       07h, 72h, 04h,0B8h, 11h, 88h
                db      0CBh, 53h, 33h,0DBh, 8Ah,0D8h
                db       03h,0DBh, 2Eh,0FFh,0A7h,0DCh
                db       07h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_78::
                pop     bx
                mov     bl,cs:sec_preferred
                mov     bh,cs:sec_enabled
                mov     ch,cs:sec_min_level
                mov     cl,cs:sec_required
loc_79::
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_80::
                push    dx
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                call    conn_get_field
                jz      loc_82
                pop     dx
loc_81::
                pop     bx
                retf
loc_82::
                test    dl,2
                pop     dx
                jz      loc_83
                mov     al,0
                call    vcall_security_4
                jnz     loc_81

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_83::
                pop     bx
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_84::
                mov     al,1
                call    vcall_security_4
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_85::
                push    ds
                mov     bx,seg seg_a
                mov     ds,bx
                or      cl,ds:sec_min_level
                mov     ds:sec_required,cl
                pop     ax
                pop     bx
                or      bl,cl
                and     bl,ds:sec_enabled
                mov     ds:sec_preferred,bl
                mov     ds,ax
                jmp     short loc_79

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_86::
                push    dx
                mov     bh,CONN_FIELD_SECURITY_OPTIONS
                call    conn_get_field
                jnz     loc_87
                pop     ax
                mov     bl,dl
                xchg    dx,ax
                jmp     short loc_79
loc_87::
                pop     dx
                pop     bx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_88::
                pop     bx
                jmp     loc_62

loc_086b:
                                                ;* No entry point to code
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_BIND
                push    bp
                mov     bp,0Bh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retf
 
 loc_087f:
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Ch
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retf
                                                ;* No entry point to code
 loc_0893:
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_PNW
                push    bp
                mov     bp,0Dh
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retf
                db      0CBh
                db      8 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                retn
sub_10          endp


loc_08b1:
                mov     ax,seg_a
                mov     ds,ax
                mov     ds,ds:data_0af6
                jcxz    loc_90
                mov     al,28h                  ; '('
                mov     bx,0
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jnz     loc_89
                mov     al,10h
                mov     bx,0
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                jz      loc_91
loc_89::
                mov     ax,884Eh
                retf
loc_90::
                call    sub_10
                push    ds
                lds     dx,dword ptr ds:[int28_prev]
                mov     ax,2528h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                push    ds
                lds     dx,dword ptr ds:[3C0h]
                mov     ax,2510h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
loc_91::
                mov     ax,0
                retf
                db      90h
display_mode_list:
                db      0                       ; 40x25
                db      01h                     ; 40x25
                db      02h                     ; 80x25
                db      03h                     ; 80x25
                db      07h                     ; 80x25
                db      0Ah                     ; 80x25
                db      0Bh                     ; 80x25
                db       19h                    ; 80x50, 132x28, 132x44
                db      23h                     ; 132x25, 132x60, 128x48
                db      24h                     ; 80x30, 132x50, 132x28
                db      32h                     ; 80x34
                db      '34DEMNOVWZ'
                db       82h, 83h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

in_text_mode    proc    near
                call    get_video_info
                push    es
                push    di
                push    cx
                mov     ax,seg_a
                mov     es,ax
                mov     di,offset display_mode_list
                mov     cx,0Bh
                xor     ah,ah
                mov     al,cs:display_mode
                repne   scasb
                pop     cx
                pop     di
                pop     es
                jz      loc_92
                dec     ah
loc_92::
                or      ah,ah
                retn
in_text_mode    endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

save_first_line proc    near
                cld
                push    ds
                pop     es
                mov     di,offset saved_line_buf
                mov     cx,80

                mov     bh,cs:display_page
                xor     dx,dx
                mov     ah,2                    ; video: set cursor to 0,0
                int     10h

locloop_93::
                mov     ah,8                    ; video: get char/attr
                int     10h
                stosw
                inc     dl
                cmp     byte ptr cs:display_mode,1
                ja      loc_94
                cmp     dl,40
                jb      loc_94

                ; mode 0/1, go to next line
                xor     dl,dl
                inc     dh
loc_94::
                mov     ah,2                    ; video: set cursor location to dx
                int     10h
                loop    locloop_93

                retn
save_first_line endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

restore_first_line  proc    near
                cld
                mov     si,offset saved_line_buf
                mov     cx,80
                xor     dx,dx
                call    set_cursor_pos
                mov     byte ptr cs:write_newline,0

locloop_95::
                lodsw
                mov     cs:display_attr,ah
                call    put_char
                loop    locloop_95

                retn
restore_first_line  endp


; set cursor location to ax
set_cursor_pos  proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                mov     ah,3                    ; video: get cursor position in dx
                mov     bh,cs:display_page
                int     10h
                pop     ax
                push    dx
                mov     dx,ax
                mov     ah,2                    ; video: set cursor position
                int     10h
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
set_cursor_pos  endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

write_chars     proc    near
                cld
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bh,cs:display_page
                mov     bl,cs:display_attr
loc_96::
                lodsb
                cmp     al,cs:terminator_char
                je      loc_98
                cmp     al,7
                je      loc_97
                cmp     al,0Ah
                je      loc_97
                cmp     al,0Dh
                je      loc_97
                call    write_char_attr
                jmp     short loc_96

loc_97::        ; use tty output for BEL, CR, LF
                mov     ah,0Eh                  ; video: tty output
                int     10h
                jmp     short loc_96
loc_98::
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
write_chars     endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

put_char        proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                mov     bh,cs:display_page
                mov     bl,cs:display_attr
                call    write_char_attr
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
put_char        endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

beep            proc    near
                push    ax
                mov     ah,0Eh                  ; video: write bel char
                mov     al,7
                int     10h
                pop     ax
                retn
beep            endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

get_video_info  proc    near
                push    ax
                push    bx
                mov     ah,0Fh                  ; video: get current video mode
                int     10h
                mov     cs:display_ncols,ah
                mov     cs:display_mode,al
                mov     cs:display_page,bh
                pop     bx
                pop     ax
                retn
get_video_info  endp

; input: bl = attribute, al = char
write_char_attr proc    near
                mov     ah,9
                mov     cx,1                    ; 1 char
                int     10h                     ; video: write char al/attr bl at cursor

                mov     ah,3                    ; video: get cursur position in dx
                int     10h
                inc     dl
                cmp     dl,cs:display_ncols
                jb      loc_99

                ; need to write a newline, maybe
                cmp     byte ptr cs:write_newline,0
                je      loc_ret_100
                mov     ax,0E0Ah                ; video: write '\n'
                int     10h
                mov     ax,0E0Dh                ; video: write '\r'
                int     10h
                jmp     short loc_ret_100
loc_99::
                mov     ah,2                    ; video: set cursor location in dx
                int     10h

loc_ret_100::
                retn
write_char_attr endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

wait_until_key_or_timeout          proc    near
                call    swap_keyboard_ints
                mov     ax,word ptr es:[46Ch]
                add     ax,ds:v_msg_timeout
                mov     ds:data_0b12,ax

                ; loop until timeout or keyboard char
loc_101::
                cmp     word ptr ds:v_msg_timeout,0
                je      loc_102
                mov     ax,ds:data_0b12
                sub     ax,word ptr es:[46Ch]
                js      loc_ret_104
loc_102::
                mov     ah,1
                int     16h                     ; Keyboard i/o  ah=function 01h
                                                ;  get status, if zf=0  al=char
                jnz     loc_103
                mov     ah,84h                  ; network: keyboard busy loop
                int     2Ah
                jmp     short loc_101
loc_103::
                mov     ah,0                    ; keyboard: get keystroke
                int     16h
                and     ax,cx
                cmp     ax,dx
                jne     loc_101

loc_ret_104::
                retn
wait_until_key_or_timeout          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

hook_keyboard_ints          proc    near
                xor     cx,cx
                mov     es,cx
                mov     al,5

                ; delays 65536*5 iterations
locloop_105::
                loop    locloop_105
                dec     al
                jnz     locloop_105

                cli
                mov     si,offset data_0b26
                mov     di,irq1_vector
                movsw
                movsw
                mov     si,offset data_0b2e
                mov     di,int16_vector
                movsw
                movsw
                sti
                retn
hook_keyboard_ints          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

swap_keyboard_ints proc    near
                xor     ax,ax
                mov     es,ax
                cli
                mov     ax,es:keybd_q_tail_
                mov     es:keybd_q_head_,ax
                mov     ax,ds:data_0b2a
                xchg    es:irq1_vector,ax
                mov     ds:data_0b26,ax
                mov     ax,ds:data_0b2c
                xchg    es:irq1_vector+2,ax
                mov     ds:data_0b28,ax
                mov     ax,ds:data_0b32
                xchg    es:int16_vector,ax
                mov     ds:data_0b2e,ax
                mov     ax,ds:data_0b34
                xchg    es:int16_vector+2,ax
                mov     ds:data_0b30,ax
                sti
                retn
swap_keyboard_ints endp

                db      0, 0, 0

; AE0h
nwp_statistics  dw      7                   ; 00 size of record
v_lip           db      1                   ; 02 flag: large internet packets enabled
sec_enabled     db      3                   ; 03 enabled security features
sec_preferred   db      0                   ; 04 preferred security features
sec_required    db      0                   ; 05 required security features
sec_min_level   db      0                   ; 06 minimum level of required security
                db      15 dup (0)
data_0af6       dw      seg_c
vlm_call_ptr2   dw      0, 0
data_0afc       dw      0
data_0afe       dw      0
data_0b00       dw      31h, 32h, 33h, 0
data_0b08       db      6 dup (0)
data_0b0e       dw      3
v_msg_timeout   dw      0
data_0b12       dw      0
data_0b14       db      12 dup (0)
display_page    db      0                           ; 0B21
display_attr    db      07h
display_mode    db      07h
display_ncols   db      80
write_newline   db      0FFh
terminator_char db      00h                   ; 0B25
data_0b26       dw      0
data_0b28       dw      0
data_0b2a       dw      0
data_0b2c       dw      0
data_0b2e       dw      0
data_0b30       dw      0
data_0b32       dw      0
data_0b34       dw      0
msg_prefix      db      ">> ", 0, 0
msg_ctrl_enter  db      ' (Press CTRL-ENTER)', 0
saved_line_buf  dw      80 dup (0)
                db      0

seg_a           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    ds
                push    cs
                pop     ds
                mov     data_80,ss
                mov     data_79,sp
                push    ds
                pop     ss
                mov     sp,3B8h
                sti
                mov     cx,data_91
                jcxz    loc_107
                push    bp
                xor     bp,bp
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,NWP_FUNC_07
                push    bp
                call    dword ptr vlm_call_ptr
                pop     bp
loc_106::
                jmp     short loc_111
loc_107::
                cmp     byte ptr data_92,3
                jae     loc_106
                mov     cx,data_90
                cmp     cx,0FFFFh
                je      loc_108
                mov     bh,CONN_FIELD_BCAST_MSG_WAITING
                xor     ax,ax
                push    ax
                mov     ax,VLMID_CONN
                push    ax
                mov     ax,CONN_FUNC_GET_FIELD
                push    ax
                call    dword ptr vlm_call_ptr
                jnz     loc_110
                or      dl,dl
                jz      loc_110
loc_108::
                mov     ax,7A21h
                int     2Fh                     ; ??INT Non-standard interrupt
                jcxz    loc_109
                mov     bx,5
                xor     ax,ax
                push    ax
                mov     ax,VLMID_NWP
                push    ax
                mov     ax,NWP_FUNC_0A
                push    ax
                call    dword ptr vlm_call_ptr
                or      cx,cx
                jnz     loc_111
loc_109::
                mov     cx,data_90
                mov     bh,CONN_FIELD_BCAST_MSG_WAITING
                xor     ax,ax
                push    ax
                mov     ax,VLMID_CONN
                push    ax
                mov     ax,CONN_FUNC_RESET_FIELD
                push    ax
                call    dword ptr vlm_call_ptr
loc_110::
                xor     cx,cx
                mov     data_90,cx
                mov     bx,1200h
                mov     dl,1
                xor     ax,ax
                push    ax
                mov     ax,VLMID_CONN
                push    ax
                mov     ax,CONN_FUNC_LOOKUP_HANDLE
                push    ax
                call    dword ptr vlm_call_ptr
                jnz     loc_111
                mov     data_90,cx
loc_111::
                cli
                mov     ss,data_80
                mov     sp,data_79
                pop     ds
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     byte ptr cs:data_84,0
                retn
sub_23          endp

loc_00bc:
                mov     es:data_98,12h
                mov     es:data_99,0
                test    es:data_90,0FFFFh
                jnz     loc_112
                test    es:data_91,0FFFFh
                jnz     loc_112
                retf
loc_112::
                mov     es:data_98,9
                lds     bx,es:dos_sda_ptr
                cmp     word ptr [bx],0         ; checks critical error/indos flags
                jne     loc_113
                test    byte ptr cs:data_100,0FFh
                jnz     loc_113
                call    is_busy
                jz      loc_113
                mov     al,1
                xchg    es:data_84,al
                or      al,al
                jnz     loc_113
                call    sub_23
loc_113::
                push    es
                pop     ds
                mov     di,offset data_96
                mov     [di+30h],ds
                mov     word ptr [di+26h],3D4h
                jmp     dword ptr vlm_calla_ptr

int28_entry:
                                                ;* No entry point to code
                test    cs:data_90,0FFFFh
                jnz     loc_115
                test    cs:data_91,0FFFFh
                jnz     loc_115
loc_114::
                jmp     dword ptr cs:int28_prev
loc_115::
                push    es
                push    bx
                push    cs
                pop     es
                les     bx,es:dos_sda_ptr
                test    byte ptr es:[bx],0FFh           ; check critical error flag
                pop     bx
                pop     es
                jnz     loc_114
                push    ax
                mov     al,1
                xchg    cs:data_84,al
                or      al,al
                pop     ax
                jnz     loc_114
                call    sub_23
                jmp     short loc_114

; int 2f will invoke broadcast_callback_ptr for AX=7A21h it that ptr is non-zero
int_2Fh_entry   proc    far
                cmp     ax,7A21h
                je      loc_117
loc_116::
                jmp     dword ptr cs:int2f_prev

loc_117::       ; ax=7a21h -> broadcast callback
                cmp     word ptr cs:broadcast_callback_ptr+2,0
                je      loc_116
                call    dword ptr cs:broadcast_callback_ptr
                iret
int_2Fh_entry   endp

                db       00h, 00h, 00h, 00h, 2Eh,0FEh
                db       06h, 38h, 04h, 9Ch, 2Eh,0FFh
                db       1Eh,0C0h, 03h, 2Eh,0FEh, 0Eh
                db       38h, 04h,0CFh

; checks whether an irq is pending (?) or print-screen is active
is_busy         proc    near
                mov     al,0Bh
                out     20h,al                  ; port 20h, 8259-1 int command
                                                ;  al = 0Bh, read InServiceReg
                jmp     short $+2
                in      al,20h                  ; port 20h, 8259-1 int IRR/ISR
                mov     ah,al
                mov     al,0Ah
                jmp     short $+2
                out     20h,al                  ; port 20h, 8259-1 int command
                                                ;  al = 0Ah, read IntRequestReg
                test    ah,0FFh
                jnz     loc_118
                push    es
                mov     ax,50h
                mov     es,ax
                cmp     byte ptr es:prn_scrn_stat,1
                pop     es
                jz      loc_118
                or      al,1
                retn
loc_118::
                xor     ax,ax
                retn
is_busy         endp

                db      0, 0, 0, 0, 0
vlm_call_ptr    dw      0, 0
vlm_calla_ptr   dw      0, 0
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
                db      'S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2S2'
data_79         dw      0
data_80         dw      0                       ; segment storage
int28_prev      dw      0, 0                    ; 3BCh
data_82         dw      0, 0
data_84         db      0
int2f_prev      dw      0, 0
broadcast_callback_ptr         dw      0, 0
                db      0
data_90         dw      0
data_91         dw      0
data_92         db      0
                db       00h, 00h, 00h, 00h, 00h

                dw      loc_00bc, seg_c
                db      34 dup (0)
dos_sda_ptr     dd      00000h
data_96         db      0
                db      9 dup (0)
                db       20h, 00h, 08h, 00h
                db      8 dup (0)
data_98         dw      0
                db      0, 0
data_99         dw      0
                db      26 dup (0)
data_100        db      0
data_101        dw      0
data_102        db      0
data_103        dw      0
data_104        dw      0
data_105        db      0
data_106        dw      offset data_101, seg_c
                dw      0
data_107        dw      offset data_103, seg_c
                dw      0
data_044d       db      0, 1
data_108        db      1
data_109        db      0                               ; this may be the text string to show
data_110        db      59 dup (0)
                dw      offset data_044d, seg_c
                dw       03h
                dw      offset data_109, seg_c
                dw       3Ch
data_111        dw      0
data_112        dw      30 dup (0)
data_114        dw      0
                db      35h
data_115        dw      0
data_116        db      0
data_04dc       dw      offset data_114, seg_c   ; 4d6
                dw       6
data_118        dw      0
data_119        dw      0                       ; segment storage
data_120        dw      0
                dw      offset data_111, seg_c
                dw       3Eh
data_04ee       db      05h, 00h, 36h
data_121        dw      0
data_122        dw      0
                dw      offset data_04ee, seg_c
                dw       07h
                dw      offset data_111, seg_c
                dw       36h
data_0501       db      10 dup (0)
                db      2, 0, 1, 0, 0, 0
                db      0, 2, 0, 0
                db      62h
                db      7 dup (0)
data_051d       db      512 dup (0)
                dw      offset data_0501, seg_c
                dw       1Ch
                dw      offset data_051d, seg_c
                dw       00h
                dw      offset data_111, seg_c
                dw       14h

                db      0h

seg_c           ends



;------------------------------------------------------------  seg_d   ----

seg_d           segment byte public
                assume cs:seg_d  , ds:seg_d

init:
                push    ax
                push    bx
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,7A20h                ; vlm: get multiplex address
                mov     bx,2
                int     2Fh
                mov     vlm_multiplex_ptr,bx
                mov     dx,es
                mov     word ptr vlm_multiplex_ptr+2,dx
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_0afe,dx
                mov     es:data_0afc,bx
                pop     bx
                pop     ax
                or      ax,ax
                jz      loc_119
                jmp     loc_125
loc_119::
                mov     byte ptr data_132,0
                push    bx
                mov     ax,7A20h                ; vlm: get call address
                mov     bx,0
                int     2Fh
                mov     cx,es
                mov     ax,seg_c
                mov     es,ax
                mov     word ptr es:vlm_call_ptr,bx
                mov     word ptr es:vlm_call_ptr+2,cx
                mov     ax,seg_a
                mov     es,ax
                mov     word ptr es:vlm_call_ptr2,bx
                mov     word ptr es:vlm_call_ptr2+2,cx
                mov     vlm_call_ptr3,bx
                mov     word ptr vlm_call_ptr3+2,cx
                push    es
                mov     ax,7A20h                ; vlm: get calla address
                mov     bx,1
                int     2Fh
                mov     cx,es
                mov     ax,seg_c
                mov     es,ax
                mov     word ptr es:vlm_calla_ptr,bx
                mov     word ptr es:vlm_calla_ptr+2,cx
                pop     es
                pop     bx
                mov     data_131,bx
                or      bx,bx
                jz      loc_120
                mov     es:data_0af6,bx
loc_120::
                push    bx
                push    ds
                mov     ax,offset data_049d
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr vlm_multiplex_ptr
                add     sp,4
                pop     bx
                call    sub_28
                test    byte ptr es:sec_enabled,2
                jz      loc_121
                mov     bx,0
                mov     dx,61h
                call    dword ptr vlm_multiplex_ptr
                or      ax,ax
                jz      loc_121

                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,1
                mov     bx,6
                mov     cx,3Bh
                mov     si,3C1h
                push    cs
                pop     ds
                call    dword ptr cs:vlm_multiplex_ptr
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx

                mov     ax,3Bh
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                and     byte ptr es:sec_enabled,0FDh
loc_121::
                mov     ax,seg_c
                mov     es,ax
                mov     bx,data_131
                or      bx,bx
                jz      loc_124
                mov     dx,bx
                mov     si,offset data_139
                mov     cx,data_140
                jcxz    loc_123

locloop_122::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_122

loc_123::
                mov     es,dx
                mov     ax,seg_c
                mov     ds,ax
                xor     si,si
                mov     di,si
                mov     ax,seg_d
                sub     ax,seg_c
                mov     cl,4
                shl     ax,cl
                mov     cx,ax
                shr     cx,1
                rep     movsw
                adc     cl,0
                rep     movsb
loc_124::
                push    es
                mov     ah,35h                  ; dos: get int 28h
                mov     al,28h
                int     21h
                pop     ds
                mov     word ptr ds:int28_prev,bx
                mov     word ptr ds:int28_prev+2,es

                mov     ax,2528h
                mov     dx,offset int28_entry
;               db      0BAh, 1Ah, 01h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,seg_d
                mov     ds,ax
                call    sub_31
                mov     ax,seg_a
                mov     es,ax
                mov     es,es:data_0af6
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     word ptr es:dos_sda_ptr,si
                mov     word ptr es:dos_sda_ptr+2,ds
                mov     ax,21Ch
                mov     si,3D4h
                xor     bx,bx
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,20h
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr3
                pop     bp
                mov     ax,seg_d
                mov     ds,ax
loc_125::
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                call    sub_26
                mov     ax,0FFFFh
                cmp     word ptr es:data_0b0e,1
                jae     loc_126
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,7
                mov     si,3C1h
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
                mov     ax,3D2h
                push    ax
                push    cs
                mov     ax,3C1h
                push    ax
                mov     ax,7
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr vlm_multiplex_ptr
                add     sp,0Ah
                pop     bx
                mov     ax,0FFFFh
                mov     bx,30h
                retf
loc_126::
                xor     ax,ax
                call    sub_25
                mov     bx,30h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                mov     si,seg_a+181h
                sub     si,seg_d
                mov     cx,seg seg_d
                sub     cx,seg_c
                mov     dx,seg seg_c
                sub     dx,seg_a
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                push    word ptr es:data_0b0e
                mov     word ptr es:data_0b0e,0
                mov     di,0B00h
                xor     bp,bp
loc_127::
                mov     bx,0
                mov     dx,es:data_0b00[bp]
                call    dword ptr vlm_multiplex_ptr
;*              cmp     ax,0
                db       3Dh, 00h, 00h
                jnz     loc_128
                inc     di
                inc     di
                inc     word ptr es:data_0b0e
                call    sub_27
loc_128::
                inc     bp
                inc     bp
                cmp     word ptr es:data_0b00[bp],0
                jne     loc_127
                pop     ax
                mov     word ptr es:[di],0
                cmp     ax,es:data_0b0e
                mov     ax,0
                jc      loc_ret_129
                retn

loc_ret_129::
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                push    di
                mov     bx,offset data_0b08
                mov     di,offset data_0b00
                mov     ax,es:[bp+di]
                cmp     word ptr es:data_0b0e,1
                je      loc_133
                mov     cx,es:data_0b0e
                dec     cx

locloop_130::
                cmp     si,es:[bx]
                jb      loc_131
                jmp     short loc_132
loc_131::
                xchg    es:[bx],si
                xchg    es:[di],ax
loc_132::
                inc     di
                inc     di
                inc     bx
                inc     bx
                loop    locloop_130

loc_133::
                mov     es:[bx],si
                mov     es:[di],ax
                pop     di
                retn
sub_27          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near
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
                mov     ax,seg_d
                mov     ds,ax
                mov     ax,7A20h                ; vlm: get parse api address
                mov     bx,3
                int     2Fh
                mov     vlm_parse_ptr,bx
                mov     word ptr vlm_parse_ptr+2,es
                mov     cx,4
                mov     si,offset config_settings
                mov     di,offset s_nw_dos_req
                push    ds
                pop     es
                call    dword ptr vlm_parse_ptr
                mov     bx,word ptr [v_checksum]         ; signature level / checksum
                mov     ax,seg_a
                mov     ds,ax
                mov     al,1
                call    sub_29
                mov     bl,bh
                mov     al,2
                call    sub_29
                mov     al,ds:sec_required
                mov     ds:sec_min_level,al
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
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near
                mov     ah,al
                not     ah
                mov     cl,0
                mov     di,offset sec_enabled
                call    sub_30
                inc     di
                call    sub_30
                inc     di
                call    sub_30
                retn
sub_29          endp

;
; ++cl
; if (bl < cl)
;       [di] &= ah
; else
;       [di] |= al
sub_30          proc    near
                inc     cl
;*              cmp     bl,cl
                db       3Ah,0D9h
                jc      loc_134
                or      [di],al
                retn
loc_134::
                and     [di],ah
                retn
sub_30          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


nwp             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      9 dup (0)

nwp             endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
                push    ds
                push    es
                xor     ax,ax
                mov     es,ax
                mov     ax,seg_a
                mov     ds,ax
                cli
                mov     ax,es:irq1_vector
                mov     ds:data_0b2a,ax
                mov     ax,es:irq1_vector+2
                mov     ds:data_0b2c,ax
                mov     ax,es:int16_vector
                mov     ds:data_0b32,ax
                mov     ax,es:int16_vector+2
                mov     ds:data_0b34,ax
                mov     ds,ds:data_0af6
                mov     ax,170h
                xchg    es:data_4e,ax
                assume  ds:seg_c
                mov     word ptr data_82,ax
                mov     ax,ds
                xchg    es:data_5e,ax
                mov     word ptr data_82+2,ax
                sti
                pop     es
                pop     ds
                retn
sub_31          endp

                db      11 dup (0)
vlm_multiplex_ptr        dw      0, 0
vlm_call_ptr3   dw      0, 0
data_131        dw      0
data_132        db      0FFh
s_nw_dos_req    db      'NETWARE DOS REQUESTER', 0
                db      'NWP', 0
                db      'DOSRQSTR.MSG', 0
                db      'NDS.VLM, BIND.VLM, PNW.VLM'
                db      0
vlm_parse_ptr   dw      0, 0
v_checksum      db      1
v_sig_level     db      1
s_checksum      db      'CHECKSUM', 0
data_03fc       dw      offset v_checksum, seg_d
                db      0, 0, 3, 0
s_lip           db      'LARGE INTERNET PACKETS', 0
data_041b       dw      offset v_lip, seg_a
                db       00h, 00h,0FFh,0FFh
s_siglevel      db      'SIGNATURE LEVEL', 0
data_0433       dw      offset v_sig_level, seg_d
                db      0, 0, 3, 0
s_msgtimeout    db      'MESSAGE TIMEOUT', 0
data_044b       dw      offset v_msg_timeout, seg_a
                db       00h, 00h, 10h, 27h

config_settings dw      offset s_checksum,   109h, 0h, offset data_03fc
                dw      offset s_lip,         17h, 4h, offset data_041b
                dw      offset s_siglevel,   110h, 0h, offset data_0433
                dw      offset s_msgtimeout, 110h, 2h, offset data_044b

data_139        dw      48Eh
                dw      494h
                dw      4DEh
                dw      4EAh
                dw      4F7h
                dw      4FDh
                dw      443h
                dw      449h
                dw      3DAh
data_140        dw      9                       ; number of entries above
                db      9 dup (0)
                db      'VeRsIoN=1.21', 0
data_049d       db      'NWP.VLM    - NetWare DOS Request'
                db      'or NetWare protocol module  v1.2'
                db      '1 (960514)', 0Dh, 0Ah
                db      0

seg_d           ends



                end     start
