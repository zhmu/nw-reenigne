; The following equates show data references outside the range of the program.

data_1e         equ     0
data_2e         equ     2
data_3e         equ     9
data_4e         equ     0Ch
data_5e         equ     0Eh
data_6e         equ     10h
data_7e         equ     15h
data_8e         equ     1Ah
data_9e         equ     26h
data_10e        equ     2Ch
data_11e        equ     424h
data_12e        equ     426h
data_13e        equ     428h
data_14e        equ     42Ah
data_15e        equ     436h
data_16e        equ     140Eh                   ;*
data_17e        equ     4EEh                    ;*
data_18e        equ     759h                    ;*
data_19e        equ     13F2h                   ;*
data_20e        equ     142Bh                   ;*
data_21e        equ     142Dh                   ;*
timer_clk_low   equ     9Ch
timer_clk_hi    equ     9Eh
data_22e        equ     0Bh                     ;*
data_99e        equ     26B2h                   ;*
data_228e       equ     8ACh                    ;*
data_229e       equ     8B2h                    ;*
data_230e       equ     8C2h                    ;*
data_231e       equ     968h                    ;*
data_232e       equ     96Eh                    ;*
data_233e       equ     0
data_235e       equ     12h
data_236e       equ     14h
data_237e       equ     15h
data_238e       equ     2Ch

include common.inc
include vlm.inc

; interrup.q, INT 7A
IPX_OPEN_SOCKET         equ     0
IPX_CLOSE_SOCKET        equ     1
IPX_GET_LOCAL_TARGET    equ     2
IPX_SEND                equ     3
IPX_LISTEN              equ     4
IPX_SCHEDULE            equ     5
IPX_CANCEL_EVENT        equ     6
IPX_GET_INTERVAL_MARKER equ     8h
IPX_RELINQUISH_CONTROL  equ     0Ah
IPX_GET_PACKET_SIZE     equ     0Dh
IPX_TERMINATE_SOCKETS   equ     0Eh
IPX_GET_MAX_PACKET_SIZE equ     1Ah
IPX_VERIFY_CHECKSUM     equ     22h

TYPE_3333               equ     3333h
TYPE_5555               equ     5555h
TYPE_9999               equ     9999h

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0h, seg_c
                dw      offset loc_00de, seg_a
                dw      offset loc_013f, seg_a
                dw      offset loc_01f7, seg_a
                dw      offset loc_0218, seg_a
                dw      offset loc_04b6, seg_a
                dw      offset sub_12, seg_a
                dw      offset loc_0cf7, seg_a
                dw      offset loc_0cfb, seg_a
                dw      offset loc_0d27, seg_a
                dw      offset loc_11d1, seg_a
                dw      offset loc_1218, seg_a
                dw      0, 0
                db      "NVlm"
                dw      VLMID_IPXNCP

; vcall_[target]_[func]
vcall_conn_0ah  proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
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
                mov     bp,VLMID_IPXNCP
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
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,8
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_8h   endp

vcall_conn_9h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_9h   endp

vcall_conn_6h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_conn_6h   endp


vcall_exe_4h    proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_exe_4h    endp


vcall_security_4h proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_SECURITY
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_security_4h endp

vcall_nwp_10h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall_nwp_10h   endp

data_29         dw      offset loc_3            ; Data table (indexed access)
data_30         dw      offset loc_4

loc_00de:
                dw      0FB83h                  ; Data table (indexed access)
                db       02h, 72h, 04h,0B8h, 11h, 88h
                db      0CBh, 03h,0DBh, 2Eh,0FFh,0A7h
                db      0DAh, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_3::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jnz     loc_ret_6
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
                mov     ax,1683h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     bx,1
                je      loc_5
                cli
                call    far ptr sub_26
                mov     bx,IPX_TERMINATE_SOCKETS
                call    dword ptr cs:ipx_call_ptr2
                sti
loc_5::
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

loc_ret_6::
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

vcall2_exe_4h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
vcall2_exe_4h   endp


loc_ret_7::
                retf

loc_013f:
                cmp     byte ptr cs:data_49,0
                je      loc_ret_7
                push    bx
                push    cx
                push    dx
                push    di
                push    si
                push    bp
                push    ds
                push    es
                mov     ax,seg_a
                mov     ds,ax
                mov     al,2Fh                  ; '/'
                mov     bx,0
                call    vcall2_exe_4h
                mov     ax,0
                jz      loc_8
                mov     ax,VLM_STATUS_UNABLE_TO_UNLOAD
loc_8::
                or      cx,cx
                jz      loc_9
                jmp     loc_14
loc_9::
                mov     es,cs:data_44
                lds     dx,es:data_106
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,es:data_107
                or      ax,ax
                jz      loc_11
                lds     dx,dword ptr es:data_107
                test    byte ptr es:data_112,1
                jz      loc_10
                mov     ax,257Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
loc_10::
                test    byte ptr es:data_112,2
                jz      loc_11
                mov     ax,2564h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
loc_11::
                mov     ax,seg_a
                mov     es,ax
                mov     ds,es:data_44
                assume  ds:seg_b
                mov     dx,data_134
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,data_161
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,data_170
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,data_185
                or      dx,dx
                jz      loc_12
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
loc_12::
                mov     dx,es:data_77
                or      dx,dx
                jz      loc_13
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     byte ptr cs:data_49,0
loc_13::
                xor     ax,ax
loc_14::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                retf

loc_01f7:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_50
                cmp     cx,[si]
                jbe     loc_15
                mov     cx,[si]
loc_15::
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

loc_0218:
                push    bp
                mov     bp,sp
                sub     sp,8
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
                assume  ds:seg_a
                mov     es,data_44
                mov     word ptr [bp-6],4
                mov     es:data_119,0
                mov     bx,IPX_OPEN_SOCKET
                mov     al,0FFh
                mov     dx,0
                call    ipx_call
                cmp     al,0
                je      loc_16
                mov     ax,VLM_STATUS_SOCKET_NOT_OPEN
                jmp     loc_37
loc_16::
                mov     es:data_117,dx
                mov     es:data_119,dx
                mov     es:data_123,dx
                mov     si,48Ah
                mov     di,si
                xor     ax,ax
                stosw
                stosw
                dec     ax
                stosw
                stosw
                stosw
                mov     word ptr es:[di],5204h
                mov     di,476h
                mov     bx,IPX_GET_LOCAL_TARGET
                call    ipx_call
                or      al,al
                jz      loc_17
                mov     ax,VLM_STATUS_NO_ROUTE_TO_SERVER
                jmp     loc_37
loc_17::
                add     cx,cx
                add     cx,cx
                add     cx,0Ah
                mov     [bp-4],cx
                mov     cx,[bp-0Ch]
                mov     bh,1
                call    vcall_conn_7h
                jz      loc_18
                jmp     loc_37
loc_18::
                mov     byte ptr es:data_115,0
                mov     [bp-8],dx
                mov     es:data_121,400h
                cmp     dx,32h
                jne     loc_19
                mov     es:data_121,7802h
                mov     di,43Ah
                mov     bx,0
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
loc_19::
                mov     es:data_120,300h
                mov     di,offset data_129
                mov     cx,23h
                xor     ax,ax
                rep     stosw
                mov     word ptr [bp-0Ah],VLM_STATUS_NO_RESPONDING_SERVERS
                mov     si,4A6h
                mov     bx,IPX_LISTEN
                call    ipx_call
                or      al,al
                jz      loc_20
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
                jmp     loc_37
loc_20::
                mov     es:data_128,1
                call    sub_10
                mov     [bp-2],ax
                mov     di,6F2h
loc_21::
                push    di
                push    es
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                pop     es
                pop     di
                cmp     word ptr es:[di+0Ah],0
                jne     loc_24
                jmp     loc_31
loc_22::
                pop     ds
                jmp     short loc_27
loc_23::
                pop     ds
                jmp     loc_30
loc_24::
                push    es
                pop     ds
                xor     cx,cx
                mov     bx,1100h
                mov     dx,0Ch
                call    vcall_conn_0ah
                jnz     loc_27
                push    ds
                mov     ds,cx
                cmp     word ptr ds:data_7e,0
                je      loc_22
                test    byte ptr ds:data_2e,8
                jnz     loc_22
                test    byte ptr ds:data_2e,2
                jnz     loc_23
                cmp     word ptr [bp-8],32h
                jne     loc_25
                cmp     word ptr ds:data_1e,32h
                je      loc_25
                test    byte ptr ds:data_2e,20h ; ' '
                jnz     loc_23
                mov     word ptr ds:data_1e,32h
                xor     ax,ax
loc_25::
                pop     ds
                mov     word ptr [bp-0Ah],VLM_STATUS_8800
                cmp     cx,[bp-0Ch]
                je      loc_26
                xchg    [bp-0Ch],cx
                call    vcall_conn_6h
loc_26::
                jmp     loc_38
loc_27::
                push    di
                mov     si,di
                mov     cx,[bp-0Ch]
                mov     dx,[bp-0Eh]
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,6
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                pushf
                mov     ds,cx
                cmp     byte ptr ds:data_2e,0
                jne     loc_28
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     ds,cx
                mov     di,[bp-8]
                mov     ds:data_1e,di
loc_28::
                mov     [bp-0Ch],cx
                mov     di,seg seg_a
                mov     ds,di
                popf
                pop     di
                jnz     loc_29
                jmp     loc_37
loc_29::
                mov     [bp-0Ah],ax
loc_30::
                add     di,0Eh
                cmp     di,738h
                jae     loc_26
                jmp     loc_21
loc_31::
                mov     bx,IPX_GET_INTERVAL_MARKER
                push    di
                push    es
                call    ipx_call
                pop     es
                pop     di
                sub     ax,[bp-2]
                cmp     [bp-4],ax
                jbe     loc_32
                jmp     loc_21
loc_32::
                dec     word ptr [bp-6]
                jz      loc_38
                cmp     word ptr [bp-6],2
                jne     loc_33
                mov     es:data_120,100h
loc_33::
                cmp     es:data_120,100h
                jne     loc_34
                cmp     es:data_121,7802h
                je      loc_35
loc_34::
                call    sub_10
                mov     [bp-2],ax
                jmp     loc_21
loc_35::
                cli
                mov     di,offset data_129
                mov     cx,23h
                xor     ax,ax
                rep     stosw
                sti
                mov     es:data_128,1
                call    sub_10
                mov     [bp-2],ax
loc_36::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,[bp-2]
                cmp     [bp-4],ax
                ja      loc_36
                mov     es:data_128,0
                mov     di,6F2h
                jmp     loc_21
loc_37::
                mov     [bp-0Ah],ax
loc_38::
                mov     es,cs:data_44
                mov     dx,es:data_119
                or      dx,dx
                jz      loc_39
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
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
                add     sp,8
                pop     bp
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    bx
                push    si
                mov     si,offset data_116
                test    byte ptr es:[si+8],0FFh
                jnz     loc_41
                mov     bx,IPX_SEND
                call    ipx_call
loc_40::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                test    byte ptr es:[si+8],0FFh
                jnz     loc_40
                cmp     byte ptr es:[si+9],0
                je      loc_41
                pop     si
                pop     bx
                pop     ax
                mov     ax,VLM_STATUS_NO_ROUTE_TO_SERVER
                jmp     short loc_37
loc_41::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                pop     si
                pop     bx
                retn
sub_10          endp

loc_04b6:
                push    bp
                mov     bp,sp
                sub     sp,18h
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
                mov     bh,11h
                mov     dh,0
                mov     dl,0Ch
                call    sub_11
                push    cx
                push    ss
                pop     es
                mov     cx,6
                lea     di,[bp-18h]
                rep     movsw
                lea     di,[bp-0Ch]
                lea     si,[bp-18h]
                mov     bx,IPX_GET_LOCAL_TARGET
                call    ipx_call
                pop     dx
                xchg    dx,cx
                or      al,al
                mov     ax,seg_a
                mov     ds,ax
                jz      loc_42
                inc     data_64
                mov     ax,VLM_STATUS_NO_ROUTE_TO_SERVER
                jmp     short loc_45
loc_42::
                mov     ax,data_75
                cmp     ax,dx
                jbe     loc_43
                xchg    dx,ax
loc_43::
                push    dx
                mov     bh,0Ah
                call    sub_11
                mov     bh,11h
                mov     dh,0Ch
                mov     dl,6
                push    es
                pop     ds
                xchg    si,di
                call    sub_11
                mov     bh,11h
                mov     dh,12h
                mov     dl,2
                pop     ax
                add     ax,ax
                add     ax,ax
;*              add     ax,0Ah
                db       05h, 0Ah, 00h
                mov     [si],ax
                call    sub_11
                mov     bh,0Fh
                mov     dx,21h
                call    sub_11
                jmp     short loc_45

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11          proc    near
                call    vcall_conn_8h
                jnz     loc_44
                retn
loc_44::
                pop     bx
loc_45::
                mov     [bp-1Ah],ax
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
                add     sp,18h
                pop     bp
                retf
sub_11          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    far

LOCAL_6         =       -0Ch                    ; bp+0FFF4h
LOCAL_5         =       -0Ah                    ; bp+0FFF6h
LOCAL_4         =       -8                      ; bp+0FFF8h
LOCAL_3         =       -6                      ; bp+0FFFAh
LOCAL_2         =       -4                      ; bp+0FFFCh
LOCAL_1         =       -2                      ; bp+0FFFEh

                push    bp
                mov     bp,sp
                sub     sp,0Ch
                mov     word ptr [bp+LOCAL_6],0
loc_46::
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
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                mov     bx,1
                call    vcall_exe_4h
                mov     al,1
                xchg    data_90,al
                or      al,al
                pop     ax
                jnz     loc_50
                mov     es,data_44
                add     data_52,1
                adc     data_53,0
                mov     es:data_148,al
                mov     bh,0
                call    vcall_conn_7h
                jnz     loc_49
                mov     ax,VLM_STATUS_8809
                or      dl,dl
                jz      loc_47
                jmp     loc_109
loc_47::
                push    ds
                mov     ds,cx
                xor     dx,dx
                mov     dl,ds:data_3e
                pop     ds
                mov     word ptr [bp+LOCAL_5],3
                cmp     byte ptr data_72,0
                je      loc_48
                test    dl,1
                jz      loc_48
                mov     word ptr [bp+LOCAL_5],20h
loc_48::
                mov     es:data_132,dl
                mov     dl,[bp-12h]
                xor     dh,dh
                mov     cx,dx
                cmp     dx,5
                jbe     loc_51
                mov     ax,VLM_STATUS_TOO_MANY_REPLY_FRAGS
loc_49::
                jmp     loc_106
loc_50::
                mov     word ptr [bp-0Eh],VLM_STATUS_ASYNC_WHILE_BUSY
                jmp     loc_110
loc_51::
                mov     di,7E2h
                add     cx,dx
                add     cx,dx
                push    ds
                mov     ds,[bp-20h]
                mov     si,[bp-1Ch]
                test    byte ptr cs:data_80,0FFh
                jz      loc_52
                mov     byte ptr cs:data_81,0
                or      dx,dx
                jz      loc_52
                call    sub_21
loc_52::
                rep     movsw
                test    byte ptr es:data_132,20h        ; ' '
                jz      loc_53
                mov     ax,82Ch
                stosw
                mov     ax,es
                stosw
                mov     ax,0Ch
                stosw
                inc     dx
loc_53::
                pop     ds
                inc     dx
                mov     es:data_151,dx
                mov     bl,[bp-14h]
                xor     bh,bh
                mov     cx,bx
                mov     ax,VLM_STATUS_TOO_MANY_REQ_FRAGS
                cmp     bx,5
                ja      loc_49
                push    ds
                mov     di,offset data_137
                mov     ds,[bp-1Eh]
                mov     si,[bp-1Ah]
                add     cx,bx
                add     cx,bx
                rep     movsw
                pop     ds
                test    byte ptr es:data_132,1
                jnz     loc_54
                call    sub_13
                jz      loc_54
                jmp     loc_106
loc_54::
                test    byte ptr es:data_132,20h        ; ' '
                jz      loc_60
                push    es
                pop     ds
                mov     ax,7B0h
                stosw
                mov     ax,es
                stosw
                mov     ax,8
                stosw
                mov     cx,bx
                inc     bx
                push    bx
                mov     di,25h
                mov     bx,offset data_137
                jcxz    loc_56

locloop_55::
                add     di,[bx+4]
                add     bx,6
                loop    locloop_55

loc_56::
                mov     si,761h
                sub     bx,si
                mov     bh,bl
                mov     bl,24h                  ; '$'
                lea     dx,[di-1Eh]
                mov     cx,[bp-10h]
                mov     al,2
                call    vcall_security_4h
                pop     bx
                jmp     short loc_62

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_13::
                mov     dl,1
                cmp     byte ptr es:data_148,17h
                jne     loc_57
                test    byte ptr es:data_132,1
                jnz     loc_58
                call    sub_14
                jmp     short loc_ret_59
loc_57::
                cmp     byte ptr es:data_148,68h        ; 'h'
                jne     loc_58
                test    byte ptr es:data_132,1
                jnz     loc_58
                call    sub_15
                jmp     short loc_ret_59
loc_58::
                xor     dl,dl

loc_ret_59::
                retn
loc_60::
                cmp     byte ptr es:data_148,17h
                jne     loc_61
                test    byte ptr es:data_132,2
                jnz     loc_62
                mov     dl,2
                call    sub_14
                jz      loc_62
                jmp     loc_64
loc_61::
                cmp     byte ptr es:data_148,68h        ; 'h'
                jne     loc_62
                test    byte ptr es:data_132,2
                jnz     loc_62
                mov     dl,2
                call    sub_15
                jnz     loc_64
loc_62::
                mov     ax,seg_a
                mov     ds,ax
                inc     bx
                mov     es:data_136,bx
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     dx,ds:data_235e
                pop     ds
                mov     es:data_143,dx
                cmp     dx,2222h
                jne     loc_63
                cmp     es:data_131,cx
                jne     loc_63
                add     data_68,1
                adc     data_69,0
                jmp     short loc_67
loc_63::
                mov     di,offset data_135
                push    ds
                push    si
                mov     ds,cx
                cld
                mov     si,26h
                movsw
                movsw
                movsw
                pop     si
                mov     dl,byte ptr ds:[14h]
                mov     es:data_144,dl
                mov     dx,word ptr ds:[15h]
                mov     es:data_145,dl
                mov     es:data_147,dh
                mov     di,offset data_140
                push    si
                push    cx
                cld
                mov     si,1Ah
                mov     cx,6
                rep     movsw
                xor     ax,ax
                pop     cx
                pop     si
                pop     ds
                test    es:data_142,0FFFFh
                jnz     loc_66
                mov     ax,VLM_STATUS_INVALID_CONN_HANDLE
loc_64::
                jmp     loc_106
loc_65::
                mov     ax,VLM_STATUS_SOCKET_NOT_OPEN
                jmp     loc_106
loc_66::
                mov     es:data_131,cx
loc_67::
                push    ds
                mov     ds,cx
                mov     ax,ds:data_238e
                pop     ds
                mov     es:data_130,ax
                xor     bx,bx
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     es:data_146,bl
loc_68::
                mov     si,7B8h
                mov     bx,IPX_LISTEN
                call    ipx_call
                or      al,al
                jnz     loc_65
                mov     ax,data_88
                mov     [bp+LOCAL_4],ax
                mov     word ptr [bp+LOCAL_3],0
loc_69::
                mov     si,73Dh
                mov     bx,[bp+LOCAL_5]
                call    ipx_call
loc_70::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                test    byte ptr es:[si+8],0FFh
                jnz     loc_70
                cmp     byte ptr es:[si+9],0
                je      loc_71
                inc     data_57
                call    sub_16
                mov     ax,VLM_STATUS_UNKNOWN_NET_ERROR
                jmp     loc_106
loc_71::
                mov     ax,es:data_130
                mov     [bp+LOCAL_2],ax
                inc     word ptr [bp+LOCAL_2]
                mov     ax,[bp-10h]
                mov     bx,7
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,10h
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
loc_72::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     [bp+LOCAL_1],ax
                mov     si,7B8h
loc_73::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                mov     bx,word ptr es:data_175
                or      bx,word ptr es:data_175+2
                jz      loc_74
                mov     cx,[bp-10h]
                push    es
                les     bx,es:data_175
                cmp     es:[bx+2],cx
                pop     es
                jnz     loc_74
                test    byte ptr data_91,0FFh
                jnz     loc_74
                jmp     loc_120
loc_74::
                test    byte ptr es:[si+8],0FFh
                jz      loc_78
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                cmp     ax,[bp+LOCAL_1]
                je      loc_73
                inc     word ptr [bp+LOCAL_3]
                dec     word ptr [bp+LOCAL_2]
                jnz     loc_72
                inc     es:data_130
                inc     es:data_130
                dec     word ptr [bp+LOCAL_4]
                jz      loc_75
                jmp     loc_69
loc_75::
                call    sub_16
loc_76::
                cmp     byte ptr es:[si+9],0FDh
                jne     loc_77
                inc     data_61
                jmp     short loc_79
loc_77::
                inc     data_56
                jmp     loc_112
loc_78::
                cmp     byte ptr es:[si+9],0
                jne     loc_76
loc_79::
                mov     si,offset data_156
                cmp     word ptr es:[si],TYPE_9999
                jne     loc_81

                ;
                inc     data_62
                mov     ax,data_88
                mov     [bp+LOCAL_4],ax
                mov     ax,es:data_130
                add     ax,ax
                cmp     ax,168h
                ja      loc_80
                mov     es:data_130,ax
loc_80::
                mov     si,7B8h
                mov     bx,IPX_LISTEN
                call    ipx_call
                jmp     loc_71
loc_81::
                cmp     word ptr [bp+LOCAL_5],20h
                je      loc_83
                cmp     es:data_153,0FFFFh
                je      loc_84
loc_82::
                inc     data_71
                jmp     short loc_80
loc_83::
                cmp     es:data_143,5555h
                je      loc_84
                push    si
                mov     si,7B8h
                mov     bx,IPX_VERIFY_CHECKSUM
                call    ipx_call
                or      ax,ax
                pop     si
                jnz     loc_82
loc_84::
                mov     al,es:data_158
                test    al,1
                jz      loc_91
                inc     data_59
                mov     cx,[bp-10h]
                mov     bh,0
                call    vcall_conn_8h
                mov     byte ptr data_90,0
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_AUTO
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                jnz     loc_86
                jmp     loc_117
loc_85::
                inc     data_58
                jmp     short loc_80
loc_86::
                mov     bh,[bp-13h]
                or      bh,bh
                jnz     loc_87
                mov     bh,data_74
loc_87::
                cmp     bh,2
                jne     loc_88
                push    ax
                mov     bh,0
                call    vcall_conn_9h
                pop     ax
loc_88::
                cmp     ax,VLM_STATUS_ASYNC_WHILE_BUSY
                je      loc_89
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
loc_89::
                jmp     loc_106
loc_90::
                inc     data_60
                jmp     loc_80
loc_91::
                test    al,40h                  ; '@'
                jz      loc_92
                mov     bh,12h
                call    vcall_conn_8h
                xor     ax,ax
                call    dword ptr data_97
loc_92::
                cmp     word ptr es:[si],TYPE_3333
                jne     loc_85
                mov     al,es:[si+2]
                cmp     es:data_144,al
                jne     loc_90
                cmp     es:data_143,TYPE_5555
                je      loc_94
                jmp     loc_99
loc_93::
                test    byte ptr es:[si+6],0FFh
                jz      loc_95
                inc     data_65
loc_94::
                jmp     loc_100
loc_95::
                mov     dl,es:[si+3]
                mov     dh,es:[si+5]
                mov     es:data_145,dl
                mov     es:data_147,dh
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     ds:data_237e,dx
                xor     ax,ax
                pop     ds
                jmp     short loc_100
loc_96::
                cmp     es:[si+3],al
                jne     loc_98
                cmp     es:[si+5],ah
                jne     loc_98
                test    byte ptr es:data_132,20h        ; ' '
                jz      loc_97
                push    ds
                push    es
                pop     ds
                mov     al,4
                mov     bx,24h
                mov     cx,[bp-10h]
                assume  ds:seg_b
                mov     dx,data_154
                xchg    dh,dl
                mov     di,dx
                sub     dx,8
                xchg    dh,dl
                mov     data_154,dx
                lea     dx,[di-26h]
                mov     si,7DCh
                call    vcall_security_4h
                pop     ds
                jz      loc_97
                assume  ds:seg_a
                inc     data_67
                jmp     loc_80
loc_97::
                mov     word ptr [bp-14h],0
                jmp     short loc_100
loc_98::
                inc     data_63
                jmp     loc_80
loc_99::
                mov     al,es:data_145
                mov     ah,es:data_147
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jnz     loc_96
                cmp     es:data_143,1111h
                jne     loc_100
                jmp     loc_93
loc_100::
                test    byte ptr es:data_158,10h
                jz      loc_101
                inc     data_66
                mov     bx,3
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,1
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                call    vcall_conn_6h
                mov     es:data_131,0
                jmp     short loc_104
loc_101::
                mov     ax,data_88
                cmp     [bp+LOCAL_4],ax
                jne     loc_102
                mov     ax,es:data_130
                inc     ax
                inc     ax
                add     ax,[bp+LOCAL_3]
                shr     ax,1
                mov     es:data_130,ax
loc_102::
                inc     es:data_144
                mov     dl,es:data_144
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     ds:data_236e,dl
                cmp     word ptr ds:data_233e,32h
                pop     ds
                jnz     loc_103
                mov     bh,0Ch
                call    vcall_conn_8h
loc_103::
                push    ds
                push    es
                pop     es
                pop     ds
loc_104::
                mov     al,es:data_157
                or      al,al
                jnz     loc_105
                mov     ax,es:data_154
                xchg    ah,al
;*              sub     ax,26h
                db       2Dh, 26h, 00h
                mov     [bp-12h],ax
                xor     ax,ax
                cmp     byte ptr es:data_150,0FDh
                jne     loc_109
                mov     ax,VLM_STATUS_INVALID_BUFFER_LEN
                jmp     short loc_109
loc_105::
                mov     ah,89h
loc_106::
                call    sub_22
                cmp     ax,VLM_STATUS_UNKNOWN_NET_ERROR
                je      loc_111
                cmp     ax,VLM_STATUS_SEND_RECV_ERROR
                jne     loc_109
loc_107::
                mov     bh,[bp-13h]
                or      bh,bh
                jnz     loc_108
                mov     bh,data_74
                inc     bh
loc_108::
                cmp     bh,2
                jne     loc_109
                jmp     loc_115
loc_109::
                call    sub_22
                mov     [bp-0Eh],ax
                mov     ax,seg_a
                mov     ds,ax
                mov     byte ptr data_90,0
loc_110::
                mov     bx,2
                call    vcall_exe_4h
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
                add     sp,0Ch
                pop     bp
                retf
loc_111::
                test    word ptr ds:data_21e,20h
                jz      loc_109
                push    ax
                mov     ax,ds:data_20e
                cmp     ax,[bp+LOCAL_4]
                pop     ax
                jnz     loc_107
                test    word ptr [bp+LOCAL_6],0FFFFh
                jnz     loc_107
                mov     bh,[bp-13h]
                cmp     bh,3
                jne     loc_109
                mov     ax,VLM_STATUS_8816
                jmp     short loc_109
loc_112::
                mov     bx,IPX_GET_LOCAL_TARGET
                mov     si,791h
                mov     di,4EEh
                call    ipx_call
                mov     dx,cx
                or      al,al
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
                jz      loc_113
                inc     word ptr ds:data_19e
                jmp     loc_106
loc_113::
                push    ds
                push    es
                pop     ds
                mov     si,data_18e
                mov     di,data_17e
                mov     cx,3
                push    si
                push    di
                repe    cmpsw
                pop     si
                pop     di
                pop     ds
                jnz     loc_114
                jmp     loc_106
loc_114::
                push    es
                pop     ds
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     ds:data_4e,dx
                pop     ds
                push    es
                push    di
                push    si
                mov     es,cx
                mov     di,data_9e
                movsw
                movsw
                movsw
                pop     si
                pop     di
                pop     es
                movsw
                movsw
                movsw
                mov     ax,seg_a
                mov     ds,ax
                inc     data_70
                jmp     loc_68
loc_115::
                mov     byte ptr data_90,0
                mov     ax,21h
                push    ax
                mov     cx,[bp-10h]
                push    cx
                inc     data_54
                call    dword ptr data_93
                dec     data_54
                pop     cx
                pop     ax
                jcxz    loc_116
                inc     data_55
                or      word ptr [bp+LOCAL_6],1
                mov     bx,2
                call    vcall_exe_4h
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
                jmp     loc_46
loc_116::
                inc     word ptr ds:data_16e
                mov     ax,VLM_STATUS_INVALID_CONN_HANDLE
                jmp     loc_106
loc_117::
                mov     bx,2
                call    vcall_exe_4h
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
                jmp     loc_46
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                cmp     es:data_139,3
                jb      loc_118
                push    ds
                lds     si,es:data_137
                mov     al,[si+2]
                pop     ds
                cmp     al,18h
                je      loc_119
                cmp     al,14h
                je      loc_119
loc_118::
                xor     ax,ax
                retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_15::
                cmp     es:data_139,3
                jb      loc_118
                push    ds
                lds     si,es:data_137
                mov     al,[si]
                pop     ds
                cmp     al,2
                je      loc_119
                push    ds
                lds     si,es:data_137
                mov     al,[si+11h]
                pop     ds
                cmp     al,3Ch                  ; '<'
                jne     loc_118
loc_119::
                mov     al,1
                push    bx
                call    vcall_nwp_10h
                pop     bx
                test    cl,dl
                jz      loc_118
                mov     ax,89FFh
                or      ax,ax
                retn
sub_14          endp

loc_120::
                inc     data_91
                mov     al,byte ptr es:[7AFh]
                mov     data_92,al
                call    sub_16
                mov     al,data_92
                mov     [bp-0Eh],ax
                cmp     al,48h                  ; 'H'
                je      loc_121
                cmp     al,49h                  ; 'I'
                jne     loc_124
loc_121::
                mov     di,data_22e
                mov     bx,767h
                mov     cx,word ptr es:[75Fh]

locloop_122::
                cmp     di,es:[bx+4]
                jb      loc_123
                sub     di,es:[bx+4]
                add     bx,6
                loop    locloop_122

                jmp     short loc_124
loc_123::
                push    es
                les     bx,dword ptr es:[bx]
                mov     word ptr es:[bx+di],100h
                pop     es
loc_124::
                mov     byte ptr data_90,0
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
                callf   sub_12
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
                push    ax
                mov     ax,seg_a
                mov     ds,ax
                mov     es,data_44
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     bh,5
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,9
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     bx,500h
                mov     dl,1
                call    vcall_conn_0ah
                jz      loc_125
                xor     cx,cx
loc_125::
                push    es
                les     bx,es:data_175
                mov     es:[bx+2],cx
                pop     es
                dec     data_91
                mov     al,data_92
                cmp     al,48h                  ; 'H'
                je      loc_126
                cmp     al,49h                  ; 'I'
                jne     loc_127
loc_126::
                pop     ax
                mov     ax,VLM_STATUS_SFT_III_SWITCH
                jmp     loc_106
loc_127::
                pop     ax
                jmp     loc_106

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
                push    bx
                push    si
                push    es
                mov     es,cs:data_44
loc_128::
                mov     si,offset data_133
                test    byte ptr es:[si+8],0FFh
                jz      loc_129
                mov     bx,IPX_CANCEL_EVENT
                call    ipx_call
                cmp     al,0F9h
                je      loc_128
loc_129::
                mov     si,offset data_149
                test    byte ptr es:[si+8],0FFh
                jz      loc_130
                mov     bx,IPX_CANCEL_EVENT
                call    ipx_call
                cmp     al,0F9h
                je      loc_129
loc_130::
                pop     es
                pop     si
                pop     bx
                xor     ax,ax
                retn
sub_16          endp

loc_0cf7:
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                retf

loc_0cfb:
                push    bx
                push    es
                mov     bx,seg seg_a
                mov     es,bx
                mov     es,es:data_44
                mov     bx,es:data_134
                pop     es
                mov     es:[si+0Ah],bx
                pop     bx
                push    bx
                add     bx,IPX_SCHEDULE
                call    ipx_call
                pop     bx
                xor     ax,ax
                retf
data_38         dw      offset loc_131          ; Data table (indexed access)
data_39         dw      offset loc_134
data_40         dw      offset loc_163
data_41         dw      offset loc_187
data_42         dw      offset loc_173

loc_0d27:
                db       83h,0FBh, 05h, 72h, 04h,0B8h
                db       11h, 88h,0CBh, 03h,0DBh, 2Eh
                db      0FFh,0A7h, 1Dh
                db      0Dh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_131::
                call    ipx_get_pkt_size
                mov     dx,1Eh
                mov     bx,ax
                push    es
                mov     es,cs:data_44
                mov     si,es:data_134
                pop     es
loc_132::
                xor     ax,ax
                retf
loc_133::
                push    bx
                mov     dx,240h
                mov     bh,0Bh
                call    vcall_conn_8h
                pop     bx
                jmp     short loc_132

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_134::
                cmp     byte ptr cs:data_73,0
                je      loc_133
                push    bp
                mov     bp,sp
                sub     sp,10h
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
                mov     ax,cs:data_44
                mov     es,ax
                mov     ds,ax
                call    sub_19
                jnc     loc_135
                jmp     loc_162
loc_135::
                assume  ds:seg_b
                or      byte ptr data_181,1
                mov     [bp-0Ch],dx
                mov     word ptr [bp-2],200h
                call    ipx_get_pkt_size
;*              sub     ax,1Eh
                db       2Dh, 1Eh, 00h
                mov     [bp-0Ah],cx
                push    ds
                mov     ds,cx
                mov     cx,ds:data_5e
                pop     ds
                add     cx,22h
                cmp     cx,ax
                ja      loc_136
                xchg    cx,ax
loc_136::
                mov     [bp-6],ax
                mov     word ptr [bp-10h],1
                test    cs:data_76,0FFFFh
                jz      loc_137
                mov     cx,cs:data_76
                sub     cx,1Eh
                cmp     ax,cx
                jbe     loc_137
                mov     ax,cx
                or      word ptr [bp-10h],8000h
loc_137::
                mov     [bp-4],ax
                mov     [bp-8],ax
                push    ax
                sub     ax,200h
                mov     dx,[bp-0Ch]
                push    ds
                mov     ds,[bp-0Ah]
loc_138::
                sub     ax,100h
                jc      loc_139
                add     dx,word ptr ds:[0Ch]
                jmp     short loc_138
loc_139::
                mov     [bp-0Ch],dx
                pop     ds
                pop     ax
loc_140::
                mov     ax,[bp-8]
;*              sub     ax,14h
                db       2Dh, 14h, 00h
                mov     data_187,ax
                mov     cx,[bp-10h]
                xor     ch,ch
                mov     si,998h

locloop_141::
                push    cx
                mov     bx,IPX_SEND
                call    ipx_call
loc_142::
                test    byte ptr [si+8],0FFh
                jz      loc_143
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                jmp     short loc_142
loc_143::
                test    byte ptr [si+9],0FFh
                jz      loc_144
                jmp     loc_156
loc_144::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                pop     cx
                mov     ax,[bp-8]
                cmp     data_180,ax
                jae     loc_146
                loop    locloop_141

                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     [bp-0Eh],ax
loc_145::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                mov     ax,[bp-8]
                cmp     data_180,ax
                jae     loc_146
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,[bp-0Eh]
                cmp     ax,[bp-0Ch]
                jbe     loc_145
                jmp     loc_153
loc_146::
                cmp     word ptr [bp-8],222h
                jne     loc_147
                add     word ptr [bp-8],10h
                jmp     short loc_140
loc_147::
                mov     ax,data_180
                mov     [bp-2],ax
                mov     word ptr [bp-4],0
                cmp     ax,[bp-6]
                jb      loc_148
                push    ds
                mov     ds,[bp-14h]
                add     word ptr ds:[0Ch],2
                pop     ds
                jmp     loc_161
loc_148::
                test    word ptr [bp-10h],8000h
                jz      loc_150
                mov     ax,[bp-10h]
                or      word ptr [bp-10h],1000h
                or      word ptr [bp-10h],4000h
                test    ax,4000h
                jnz     loc_149
                mov     ax,[bp-8]
;*              add     ax,64h
                db       05h, 64h, 00h
                cmp     ax,[bp-6]
                ja      loc_150
                mov     [bp-8],ax
                or      word ptr [bp-10h],2000h
                jmp     short loc_151
loc_149::
                test    word ptr [bp-10h],2000h
                jz      loc_150
                and     word ptr [bp-10h],0DFFFh
                mov     ax,[bp-6]
                mov     [bp-8],ax
                jmp     short loc_151
loc_150::
                call    sub_17
                jz      loc_152
loc_151::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,[bp-0Eh]
                inc     ax
                mov     [bp-0Ch],ax
                jmp     loc_140
loc_152::
                mov     ax,[bp-2]
                jmp     short loc_161
loc_153::
                cmp     byte ptr [bp-10h],1
                jne     loc_154
                mov     byte ptr [bp-10h],2
                jmp     loc_140
loc_154::
                test    word ptr [bp-10h],8000h
                jz      loc_155
                test    word ptr [bp-10h],2000h
                jnz     loc_152
                mov     ax,cs:data_76
                mov     [bp-6],ax
                and     word ptr [bp-10h],7FFFh
loc_155::
                mov     ax,[bp-8]
                cmp     ax,222h
                ja      loc_158
                mov     ax,[bp-0Ch]
                add     ax,ax
                add     ax,ax
                mov     [bp-0Ch],ax
                mov     ax,[bp-8]
                sub     word ptr [bp-8],10h
                cmp     ax,21Ah
                jb      loc_157
                jmp     loc_140
loc_156::
                pop     cx
                mov     ax,VLM_STATUS_UNKNOWN_NET_ERROR
                jmp     short loc_162
loc_157::
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
                jmp     short loc_162
loc_158::
                mov     [bp-6],ax
                cmp     word ptr [bp-4],0
                je      loc_159
                mov     word ptr [bp-4],0
                mov     word ptr [bp-8],222h
                jmp     loc_140
loc_159::
                call    sub_17
                jz      loc_160
                jmp     loc_140
loc_160::
                mov     ax,[bp-2]
loc_161::
                mov     cx,[bp-14h]
;*              sub     ax,22h
                db       2Dh, 22h, 00h
                mov     [bp-16h],ax
                mov     bh,0Bh
                mov     dx,ax
                call    vcall_conn_8h
loc_162::
                and     byte ptr data_181,0FEh
                mov     [bp-12h],ax
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
                add     sp,10h
                pop     bp
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_163::
                push    ds
                push    es
                push    cx
                assume  ds:seg_a
                mov     ax,cs:data_44
                mov     es,ax
                mov     ds,ax
                assume  ds:seg_b
                mov     byte ptr data_182,5
                mov     bh,0Bh
                call    vcall_conn_7h
                add     dx,0Eh
                mov     data_187,dx
loc_164::
                call    sub_19
                jnc     loc_165
                jmp     loc_172
loc_165::
                or      byte ptr data_181,1
                cmp     byte ptr data_182,5
                je      loc_166
                cmp     dx,5Ah
                ja      loc_166
                mov     dl,5Ah                  ; 'Z'
loc_166::
                mov     bp,dx
                push    di
                call    sub_23
                pop     di
                mov     es,cs:data_44
                mov     si,998h
                mov     bx,IPX_SEND
                call    ipx_call
loc_167::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                test    byte ptr [si+8],0FFh
                jnz     loc_167
                test    byte ptr [si+9],0FFh
                jnz     loc_169
loc_168::
                sub     ax,ax
                cmp     data_180,ax
                jne     loc_170
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,di
                cmp     ax,bp
                jbe     loc_168
                dec     data_182
                jz      loc_169
                call    sub_24
                mov     es,cs:data_44
                pop     cx
                push    cx
                jmp     short loc_164
loc_169::
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
loc_170::
                and     byte ptr data_181,0FEh
                push    ax
                call    sub_24
                pop     ax
                test    ax,ax
                jnz     loc_171
                pop     cx
                push    cx
                push    ax
                push    dx
                push    bx
                mov     ax,dx
                xor     dx,dx
                add     ax,225h
                mov     bx,226h
                div     bx
                mov     dx,ax
                inc     ax
                shr     ax,1
                add     dx,ax
                cmp     dx,1
                adc     dx,0
                push    ds
                mov     ds,cx
                mov     ds:data_10e,dx
                pop     ds
                pop     bx
                pop     dx
                pop     ax
loc_171::
                pop     cx
                pop     es
                pop     ds
                retf
loc_172::
                mov     ax,VLM_STATUS_INVALID_CONN_HANDLE
                pop     cx
                pop     es
                pop     ds
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_173::
                push    cx
                push    ds
                push    es
                assume  ds:seg_a
                mov     ax,cs:data_44
                mov     ds,ax
                mov     es,cx
                cmp     word ptr es:data_6e,0
                jne     loc_174
                jmp     loc_184
loc_174::
                mov     bh,0Bh
                call    vcall_conn_7h
                add     dx,0Eh
                assume  ds:seg_b
                mov     data_187,dx
                push    ds
                pop     es
                call    sub_19
                jnc     loc_175
                jmp     loc_186
loc_175::
                mov     bp,dx
                mov     byte ptr data_182,3
loc_176::
                mov     ax,data_192
                mov     data_183,ax
                call    sub_23
                or      byte ptr data_181,2
                mov     es,cs:data_44
                mov     si,998h
                mov     bx,IPX_SEND
                call    ipx_call
                push    si
                call    far ptr sub_29
                pop     si
loc_177::
                test    byte ptr [si+8],0FFh
                jnz     loc_177
                test    byte ptr [si+9],0FFh
                jnz     loc_184
                inc     data_192
loc_178::
                push    ax
                call    far ptr sub_29
                mov     cx,ax
                pop     ax
                sub     cx,ax
                cmp     cx,64h
                jb      loc_178
                mov     es,cs:data_44
                mov     si,998h
                mov     bx,IPX_SEND
                call    ipx_call
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     di,ax
loc_179::
                test    byte ptr [si+8],0FFh
                jnz     loc_179
                test    byte ptr [si+9],0FFh
                jnz     loc_184
loc_180::
                test    byte ptr data_181,2
                jz      loc_181
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,di
                cmp     ax,bp
                jbe     loc_180
                jmp     short loc_184
loc_181::
                sub     ax,ax
                mov     dx,data_184
                sub     dx,5Ah
                jc      loc_183
                test    byte ptr data_179,1
                jnz     loc_182
                sub     dx,226h
                jnc     loc_182
                mov     dx,226h
                clc
loc_182::
                jnc     loc_185
loc_183::
                dec     data_182
                jz      loc_184
                call    sub_24
                mov     byte ptr data_181,0
                inc     data_192
                jmp     loc_176
loc_184::
                mov     ax,0FFFFh
loc_185::
                mov     byte ptr data_181,0
                push    ax
                push    dx
                call    sub_24
                pop     dx
                pop     ax
                pop     es
                pop     ds
                pop     cx
                retf
loc_186::
                mov     ax,VLM_STATUS_INVALID_CONN_HANDLE
                pop     es
                pop     ds
                pop     cx
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_187::
                assume  ds:seg_a
                mov     bl,cs:data_72
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                mov     ax,[bp-6]
                sub     ax,[bp-2]
;*              cmp     ax,0Fh
                db       3Dh, 0Fh, 00h
                jbe     loc_188
                shr     ax,1
                adc     ax,[bp-2]
                inc     ax
;*              and     ax,0FFFEh
                db       25h,0FEh,0FFh
                mov     [bp-8],ax
                or      ax,ax
                retn
loc_188::
                xor     ax,ax
                mov     [bp-8],ax
                retn
sub_17          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

ipx_get_pkt_size proc    near
                push    cx
                xor     ax,ax
                mov     bx,IPX_GET_MAX_PACKET_SIZE
                call    ipx_call
                or      ax,ax
                jnz     loc_189
                mov     bx,IPX_GET_PACKET_SIZE
                call    ipx_call
;*              add     ax,40h
                db       05h, 40h, 00h
loc_189::
                pop     cx
                retn
ipx_get_pkt_size endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                mov     di,9B4h
                mov     bh,11h
                mov     dx,0C06h
                call    vcall_conn_7h
                jnz     loc_190
                mov     di,offset data_188
                push    ds
                push    si
                push    cx
                mov     ds,cx
                cld
                mov     cx,5
                mov     si,data_8e
                rep     movsw
                pop     cx
                pop     si
                mov     dx,ds:data_6e
                xor     ax,ax
                pop     ds
                or      dx,dx
                jz      loc_190
                assume  ds:seg_b
                mov     data_191,dx
                mov     data_180,0
                push    cx
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     di,ax
                pop     cx
                inc     data_192
                push    ds
                mov     ds,cx
                mov     dx,ds:data_4e
                xor     ax,ax
                pop     ds
                add     dx,dx
                add     dx,4
                clc
                retn
loc_190::
                stc
                retn
sub_19          endp

loc_11d1:
                push    ds
                assume  ds:seg_a
                mov     ds,cs:data_44
                cmp     bx,1
                jb      loc_191
                jz      loc_192
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                pop     ds
                retf
loc_191::
                mov     word ptr ds:[974h],di
                mov     word ptr ds:[976h],es
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                pop     word ptr data_97+2
                mov     ds,data_44
                assume  ds:seg_b
                mov     byte ptr data_114,0FFh
                pop     ds
                mov     ax,0FFFFh
                retf
loc_192::
                push    cx
                push    si
                push    di
                mov     cx,1Eh
                mov     si,902h
                rep     movsw
                xor     ax,ax
                mov     word ptr ds:[902h],ax
                pop     di
                pop     si
                pop     cx
                pop     ds
                retf

loc_1218:
                or      bx,bx
                jz      loc_193
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                jmp     short loc_ret_194
loc_193::
                assume  ds:seg_a
                mov     bx,cs:data_77
                mov     cs:data_77,0
                xor     ax,ax

loc_ret_194::
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

ipx_call        proc    near
                push    si
                push    di
                push    bp
                push    es
                sti
                call    dword ptr cs:ipx_call_ptr2
                pop     es
                pop     bp
                pop     di
                pop     si
                retn
ipx_call        endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near
                push    ax
                push    bx
                push    cx
                push    dx
                push    di
                push    si
                mov     cl,4
loc_195::
                mov     ax,[si+2]
                mov     bx,[si]
                shr     bx,cl
                add     ax,bx
                cmp     ax,cs:data_78
                jb      loc_196
                cmp     ax,cs:data_79
                ja      loc_196
                jmp     short loc_198
loc_196::
                dec     dx
                jz      loc_197
                add     si,6
                add     di,6
                jmp     short loc_195
loc_197::
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                retn
loc_198::
                inc     cs:data_81
                mov     cs:data_86,si
                mov     word ptr cs:data_86+2,ds
                mov     ax,[si]
                mov     cs:data_83,ax
                mov     ax,[si+2]
                mov     word ptr cs:data_83+2,ax
                mov     ax,[si+4]
                mov     cs:data_85,ax
                mov     ax,cs:data_82
                mov     [si],ax
                mov     [si+2],es
                jmp     short loc_197
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near
                test    byte ptr data_81,0FFh
                jnz     loc_199
                retn
loc_199::
                push    cx
                push    si
                push    di
                push    es
                push    ds
                mov     si,data_82
                les     di,dword ptr data_83
                mov     cx,data_85
                mov     ds,data_44
                push    di
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                pop     di
                lds     si,dword ptr cs:data_86
                mov     [si],di
                mov     [si+2],es
                mov     byte ptr cs:data_81,0
                pop     ds
                pop     es
                pop     di
                pop     si
                pop     cx
                retn
sub_22          endp

                db      0, 0, 0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near
                mov     bx,1
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                assume  ds:seg_b
                and     byte ptr data_179,0FDh
                test    byte ptr data_179,1
                jz      loc_201
                mov     ax,8300h
                mov     cx,0FFFFh
                mov     dx,0FF10h
                push    ds
                pop     es
                mov     bx,offset data_178
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                jc      loc_201
                mov     ax,40h
                mov     es,ax
loc_200::
                cmp     word ptr es:timer_clk_low,0FF10h
                je      loc_200
                retn
loc_201::
                or      byte ptr data_179,2
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     di,ax
loc_202::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                cmp     ax,di
                je      loc_202
                mov     data_177,ax
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near
                test    byte ptr data_179,2
                jnz     loc_204
                cli
                mov     ax,40h
                mov     es,ax
                mov     si,es:timer_clk_low
                mov     di,es:timer_clk_hi
                sti
                mov     ax,8301h
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                mov     ax,0FB40h
                mov     bx,0FFFFh
                sub     ax,si
                sbb     bx,di
                mov     si,64h
                sub     dx,dx
                xchg    bx,ax
                div     si
                xchg    bx,ax
                div     si
                or      bx,bx
                jz      loc_203
                mov     ax,0FFFFh
loc_203::
                mov     bx,2
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     dx,ax
                sub     bx,bx
                retn
loc_204::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                sub     ax,data_177
;*              cmp     ax,77h
                db       3Dh, 77h, 00h
                jc      loc_205
                mov     ax,77h
loc_205::
                mov     bx,226h
                mul     bx
                mov     dx,ax
                mov     bx,2
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                mov     bx,1
                retn
sub_24          endp

                db      11 dup (0)
data_44         dw      seg_b
vlm_call_ptr    dw      0, 0
ipx_call_ptr2   dw      0, 0
data_49         db      0FFh
                db      0
data_50         db      3Bh
                db      0
data_52         dw      0
data_53         dw      0
data_54         dw      0
data_55         dw      0
data_56         dw      0
data_57         dw      0
data_58         dw      0
data_59         dw      0
data_60         dw      0
data_61         dw      0
                db      0, 0
data_62         dw      0
                db      0, 0
data_63         dw      0
                db      0, 0, 0, 0
data_64         dw      0
data_65         dw      0
data_66         dw      0
data_67         dw      0
data_68         dw      0
data_69         dw      0
data_70         dw      0
data_71         dw      0
                db      0, 0
data_72         db      1
data_73         db      1
data_74         db      1
data_75         dw      0
data_76         dw      0
data_77         dw      0
data_78         dw      0
data_79         dw      0
data_80         db      0
data_81         db      0
data_82         dw      0AA0h
data_83         dw      0, 0
data_85         dw      0
data_86         dw      0, 0
data_88         dw      0
data_89         dw      0
data_90         db      0
data_91         db      0
data_92         db      0
data_93         dw      0, 0
data_95         dw      0
data_96         dw      0                       ; segment storage
data_97         dw      offset sub_28, seg sub_28
                db      0, 0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b

int_2f_entry:
                cmp     ax,7A00h
                jne     loc_206

                ; ipx installation check
                mov     di,offset ipx_impl      ; call pointer
                mov     bx,434h                 ; version number pointer
                push    cs
                pop     es
                mov     al,0FFh
                iret
loc_206::
                jmp     dword ptr cs:data_106
                                                ;* No entry point to code

ipx_impl:
                cmp     bx,0
                jne     loc_207
                call    sub_25
                callf   sub_26
loc_207::
                jmp     dword ptr cs:ipx_call_ptr
                db      "IPX", 0
ipx_version_val dw      0
                db      83h,0FBh, 00h, 75h, 07h
                db      0E8h, 09h, 00h, 0Eh,0E8h, 10h
                db       00h
loc_208::
                jmp     dword ptr cs:data_107

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near
                push    ax
                push    bx
                mov     bx,7
                call    sub_27
                pop     bx
                pop     ax
                retn
sub_25          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    far
                push    ax
                push    bx
                xor     bx,bx
                call    sub_27
                mov     cs:data_113,bl
                pop     bx
                pop     ax
                retf
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near
                xor     ax,ax
                push    ax
                mov     ax,10h
                push    ax
                mov     ax,10h
                push    ax
                call    dword ptr cs:vlm_call_ptr2
                retn
sub_27          endp

                                                ;* No entry point to code
                push    es
                pop     ds
                cmp     data_128,0
                je      loc_209
                test    byte ptr [si+9],0FFh
                jz      loc_210
loc_209::
                jmp     loc_217
loc_210::
                mov     dx,data_121
                cmp     data_127,dx
                jne     loc_209
                mov     ax,data_124
                xchg    ah,al
;*              sub     ax,20h
                db       2Dh, 20h, 00h
                mov     bp,ax
                mov     si,offset data_126
loc_211::
                add     si,40h
                sub     bp,40h
                jc      loc_209
                cmp     data_121,7802h
                jne     loc_215
                cmp     byte ptr data_115,0
                je      loc_212
                push    si
                mov     di,offset data_115
                sub     si,30h
                mov     cx,10h
                repe    cmpsw
                pop     si
                jnz     loc_211
loc_212::
                push    si
                mov     di,si
                sub     si,10h
                mov     cx,0C00h
                xor     bx,bx
loc_213::
                xor     ax,ax
                lodsb
                sub     al,40h                  ; '@'
                cmp     al,1Bh
                jbe     loc_214
                sub     al,25h                  ; '%'
                cmp     al,45h                  ; 'E'
                jbe     loc_214
                sub     al,16h
loc_214::
                shl     ax,cl
                or      bx,ax
                add     cl,7
                cmp     cl,7
                jbe     loc_213
                xor     ax,ax
                xchg    bx,ax
                stosb
                mov     bl,ah
                sub     cl,8
                dec     ch
                jnz     loc_213
                pop     si
                cmp     data_120,100h
                je      loc_221
loc_215::
                mov     di,offset data_129
loc_216::
                mov     ax,[di]
                or      ax,[di+2]
                jz      loc_219
                push    si
                push    di
                mov     cx,6
                repe    cmpsw
                pop     di
                pop     si
                jz      loc_211
                add     di,0Eh
                cmp     di,738h
                jae     loc_ret_218
                jmp     short loc_216
loc_217::
                mov     si,4A6h
                mov     bx,IPX_LISTEN
                call    dword ptr ipx_call_ptr

loc_ret_218::
                retf
loc_219::
                push    si
                mov     cx,6
                rep     movsw
                pop     si
loc_220::
                jmp     loc_211
loc_221::
                mov     di,offset data_129
                mov     bx,di
                mov     dx,[si+0Ch]
                xchg    dh,dl
                mov     [si+0Ch],dx
loc_222::
                mov     ax,[di]
                or      ax,[di+2]
                jz      loc_224
                push    si
                push    di
                mov     cx,6
                repe    cmpsw
                pop     di
                pop     si
                jz      loc_220
                add     di,0Eh
                cmp     [di-2],dx
                ja      loc_223
                mov     bx,di
loc_223::
                cmp     di,offset data_130
                jne     loc_222
                sub     di,0Eh
loc_224::
                cmp     bx,738h
                je      loc_220
                mov     cx,di
                sub     cx,bx
                jz      loc_219
                std
                push    si
                add     di,0Ch
                lea     si,[di-0Eh]
                shr     cx,1
                rep     movsw
                pop     si
                cld
                mov     di,bx
                jmp     short loc_219
                                                ;* No entry point to code
                push    cs
                pop     ds
                test    byte ptr [si+9],0FFh
                jnz     loc_226
                cmp     byte ptr data_166,3Fh   ; '?'
                jne     loc_226
                test    byte ptr data_114,0FFh
                jz      loc_226
                mov     di,offset data_167
                mov     word ptr [di+1Eh],0
loc_225::
                mov     word ptr [di+0Ch],0Ah
                mov     byte ptr [di+1Bh],11h
                mov     byte ptr [di+22h],0Ah
                mov     byte ptr [di+23h],0
                jmp     dword ptr data_110
loc_226::
                cli
                push    cs
                pop     ds
                mov     si,offset data_159
                mov     word ptr [si+4],17Ah
                mov     bx,IPX_LISTEN
                jmp     dword ptr ipx_call_ptr
                                                ;* No entry point to code

                ;; TODO: I think this may send watchdog packets
                push    cs
                pop     ds
                cmp     word ptr [di+0Ch],7
                je      loc_227
                cmp     word ptr [di+16h],0
                jne     loc_228
                mov     byte ptr [di+1Bh],0Dh
                mov     word ptr [di+0Ch],7
                jmp     dword ptr data_110
loc_227::
                mov     dl,[di+22h]
                cmp     es:data_165,dl
                jne     loc_225
                mov     byte ptr es:data_166,59h        ; 'Y'
                jmp     short loc_229
loc_228::
                mov     byte ptr es:data_166,4Eh        ; 'N'
loc_229::
                mov     si,offset data_164
                mov     di,offset data_162
                mov     cx,6
                rep     movsw
                mov     si,offset data_159
                mov     word ptr [si+4],1ADh
                mov     bx,IPX_SEND
                jmp     dword ptr es:ipx_call_ptr

                                                ;* No entry point to code
                push    cs
                pop     ds
                test    byte ptr data_114,0FFh
                jz      loc_230
                test    byte ptr [si+9],0FFh
                jnz     loc_230
                mov     di,offset data_173
                mov     dl,data_172
                mov     word ptr [di+4],29Eh
                cmp     dl,40h                  ; '@'
                je      loc_231
                mov     word ptr [di+4],279h
                cmp     dl,21h                  ; '!'
                je      loc_231
                cmp     dl,23h                  ; '#'
                jne     loc_230
                xor     ax,ax
                mov     cx,0FFFFh
                callf   sub_28
loc_230::
                cli
                push    cs
                pop     es
                mov     si,8B8h
                mov     bx,IPX_LISTEN
                jmp     dword ptr cs:ipx_call_ptr

loc_231::
                mov     ax,7A22h                ; dos requester: broadcast
                mov     bx,21h                  ; ipx
                int     2Fh
                or      ax,ax
                jz      loc_230

                ; mesage not handled
                mov     word ptr [di+1Eh],0
                mov     word ptr [di+0Ch],0Ah
                mov     byte ptr [di+1Bh],11h
                mov     byte ptr [di+22h],0Ah
                mov     byte ptr [di+23h],0
                jmp     dword ptr data_110
                                                ;* No entry point to code
                push    cs
                pop     ds
                cmp     word ptr [di+16h],0
                jne     loc_230
                xor     ax,ax
                mov     cx,[di+1Eh]
                callf   sub_28
                push    ds
                pop     es
                mov     word ptr [di+4],245h
                mov     word ptr [di+0Ch],8
                mov     byte ptr [di+1Bh],12h
                jmp     dword ptr data_110
                                                ;* No entry point to code
                push    cs
                pop     ds
                mov     cx,[di+1Eh]
                cmp     data_131,cx
                jne     loc_232
                mov     data_131,0
loc_232::
                cmp     word ptr [di+16h],0
                je      loc_233
                jmp     short loc_230
loc_233::
                mov     word ptr [di+4],2C9h
                mov     word ptr [di+0Ch],8
                mov     byte ptr [di+1Bh],5
                jmp     dword ptr data_110
                                                ;* No entry point to code
                push    cs
                pop     ds
                push    di
                push    es
                mov     ax,2
                mov     cx,[di+1Eh]
                callf   sub_28
                pop     es
                pop     di
                mov     word ptr [di+4],245h
                mov     word ptr [di+0Ch],8
                mov     byte ptr [di+1Bh],11h
                mov     byte ptr [di+22h],6
                mov     byte ptr [di+23h],0Ch
                mov     [di+2Eh],ds
                mov     word ptr [di+26h],8D4h
                jmp     dword ptr data_110

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    far
                push    es
                pushf
                cli
                push    cs
                pop     es
                mov     bx,word ptr es:data_175
                or      bx,word ptr es:data_175+2
                jz      loc_234
                les     bx,es:data_175
                add     bx,ax
                cmp     word ptr es:[bx],0
                jne     loc_234
                mov     es:[bx],cx
                sub     bx,ax
                add     bx,6
                test    byte ptr es:[bx+8],0FFh
                jnz     loc_234
                push    si
                push    di
                push    bp
                mov     ax,5Ah
                mov     si,bx
                mov     bx,IPX_SCHEDULE
                call    dword ptr cs:ipx_call_ptr
                pop     bp
                pop     di
                pop     si
loc_234::
                popf
                pop     es
                retf
sub_28          endp

                                                ;* No entry point to code
                mov     ax,es
                mov     ds,ax
                push    ax
                push    si
                test    byte ptr data_181,3
                jz      loc_235
                cmp     byte ptr [si+9],0
                jne     loc_235
                mov     bx,[si+24h]
                lea     si,[bx+16h]
                mov     di,offset data_190
                mov     cx,4
                cld
                repe    cmpsw
                jnz     loc_235
                mov     cx,[bx+20h]
                test    byte ptr data_181,2
                jnz     loc_236
                cmp     data_192,cx
                jne     loc_235
                mov     ax,[bx+2]
                xchg    ah,al
;*              sub     ax,1Eh
                db       2Dh, 1Eh, 00h
                cmp     data_180,ax
                jae     loc_235
                mov     data_180,ax
loc_235::
                pop     si
                pop     es
                mov     bx,IPX_LISTEN
                jmp     dword ptr ipx_call_ptr
loc_236::
                callf   sub_29
                mov     dx,data_183
                cmp     dx,cx
                je      loc_238
                inc     dx
                cmp     dx,cx
                jne     loc_235
                test    byte ptr data_181,4
                jz      loc_237
                sub     ax,data_184
loc_237::
                and     byte ptr data_181,0F9h
                mov     data_184,ax
                jmp     short loc_235
loc_238::
                or      byte ptr data_181,4
                mov     data_184,ax
                jmp     short loc_235
                db      0, 0, 0, 0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    far
                test    byte ptr data_179,2
                jnz     loc_240
                cli
                mov     ax,40h
                mov     es,ax
                mov     si,es:timer_clk_low
                mov     di,es:timer_clk_hi
                sti
                mov     ax,0FB40h
                mov     bx,0FFFFh
                sub     ax,si
                sbb     bx,di
                mov     si,64h
                sub     dx,dx
                xchg    bx,ax
                div     si
                xchg    bx,ax
                div     si
                or      bx,bx
                jz      loc_239
                mov     ax,0FFFFh
loc_239::
                sub     bx,bx
                retf
loc_240::
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    dword ptr ipx_call_ptr
                sub     ax,data_177
;*              cmp     ax,77h
                db       3Dh, 77h, 00h
                jc      loc_241
                mov     ax,77h
loc_241::
                mov     bx,226h
                mul     bx
                mov     bx,1
                retf
sub_29          endp

                db      13 dup (0)
ipx_call_ptr    dw      0, 0
data_106        dd      00000h
data_107        dw      0, 0
vlm_call_ptr2   dw      0, 0
data_110        dw      0, 0
ipx_version2    dw      0
data_112        db      0
data_113        db      0
data_114        db      0
                db      0
data_115        db      0
                db      31 dup (0)
data_116        db      0
                db      9 dup (0)
data_117        dw      0
                db      22 dup (0)
                db       01h, 00h, 84h, 04h
                dw      seg_b
                db       22h, 00h,0FFh,0FFh, 00h, 00h
                db       00h, 11h, 00h
                db      21 dup (0)
data_119        dw      0
data_120        dw      0
data_121        dw      0
                db       00h, 00h, 00h, 00h, 68h, 00h
                dw      seg_b
                db      0
                db      0
data_123        dw      0
                db      22 dup (0)
                db       01h, 00h,0D0h, 04h
                dw      seg_b
                db       20h, 02h,0FFh,0FFh
data_124        dw      0
                db       00h, 11h, 00h
                db      11 dup (0)
data_126        db      0
                db      13 dup (0)
data_127        dw      0
                db      510 dup (0)
data_128        dw      0
data_129        db      0
                db      69 dup (0)
data_130        dw      2
data_131        dw      0
data_132        db      0
data_133        dw      5 dup (0)
data_134        dw      0
                db      16 dup (0)
data_135        db      0
                db      0, 0, 0, 0, 0
data_136        dw      0
                db       8Bh, 07h
                dw      seg_b
                db       25h, 00h
data_137        dd      00000h
data_139        dw      0
                db      24 dup (0)
                db      0B0h, 07h
                dw      seg_b
                db       08h, 00h,0FFh,0FFh, 00h, 00h
                db       00h, 11h
data_140        db      0
                db      9 dup (0)
data_142        dw      0
                db      12 dup (0)
data_143        dw      0
data_144        db      0
data_145        db      0
data_146        db      0
data_147        db      0
data_148        db      0
                db      8 dup (0)
data_149        db      0
                db      8 dup (0)
data_150        db      0
                db      24 dup (0)
data_151        dw      0
                db      6, 8
                dw      seg_b
                db      26h
                db      31 dup (0)
                db       2Ch, 08h
                dw      seg_b
                db       0Ch, 00h
data_153        dw      0FFFFh
data_154        dw      0
                db       00h, 11h, 00h
                db      23 dup (0)
data_156        db      0
                db      0, 0, 0, 0, 0
data_157        db      0
data_158        db      0
                db      12 dup (0)

; ipx send event control block
data_159        dw      0, 0                    ; link
                dw      17Ah, seg_b             ; event service routine
                db      0                       ; in-use flag
                db      0                       ; completion code
data_161        dw      0                       ; socket number
                db      4 dup (0)               ; ipx workspace
                db      12 dup (0)              ; driver workspace
                db      6 dup (0)               ; local node address
                dw      1                       ; fragment count
                dw      862h, seg_b             ; fragment 1 pointer
                dw      20h                     ; fragment 1 size

                db      0FFh,0FFh, 00h, 00h
                db       00h, 11h
data_162        db      0
                db      11 dup (0)
data_164        db      0
                db      11 dup (0)
data_165        db      0
data_166        db      0
data_167        db      0
                db       00h, 00h, 00h,0BFh, 01h
                dw      seg_b
                db       00h, 00h, 10h, 00h
                db      46 dup (0)
                db       0Dh, 02h
                dw      seg_b
                db      0, 0
data_170        dw      0
                db      22 dup (0)
                db       01h, 00h,0E2h, 08h
                dw      seg_b
                db       5Ch, 00h,0FFh,0FFh, 00h, 00h
                db       00h, 11h, 00h
                db      24 dup (0)
data_172        db      0
                db      60 dup (0)
data_173        db      0
                db       00h, 00h, 00h, 79h, 02h
                dw      seg_b
                db       00h, 00h, 10h, 00h
                db      42 dup (0)
data_175        dd      00000h
                db      8 dup (0)
data_177        dw      0
data_178        db      0
data_179        db      0
                db      12 dup (0)
data_180        dw      0
data_181        db      0
data_182        db      0
data_183        dw      0
data_184        dw      0
                db      10 dup (0)
data_185        dw      0
                db      22 dup (0)
                db       02h, 00h,0C8h, 09h
                dw      seg_b
                db      32h
                db      0, 0, 0, 0, 0
data_187        dw      0
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
data_188        db      0
                db      0, 0, 0
data_190        db      0
                db      0, 0, 0, 0, 0
data_191        dw      0
                db      12 dup (0)
                db       11h, 11h
data_192        dw      0
                db      'LIP Echo Data   '
                db      0FFh,0FFh, 00h, 00h, 00h, 11h
                db       00h
                db      31 dup (0)
                db       3Eh, 03h
                dw      seg_b
                db      0
                db      0
data_195        dw      0
                db      22 dup (0)
                db       10h, 00h,0FAh, 09h
                dw      seg_b
                db       22h, 00h
data_196        db      0A0h
                db      0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db       00h, 00h,0A0h, 0Ah
                dw      seg_b
                db      0, 0

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_205,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_203,bx
                mov     word ptr data_203+2,es
                pop     ax
                or      ax,ax
                jz      loc_242
                call    sub_30
                call    sub_31
                call    sub_32
                mov     ax,seg_a
                mov     es,ax
                call    sub_36
                jmp     loc_256
loc_242::
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     cx,seg seg_a
                mov     es,cx
                mov     word ptr es:vlm_call_ptr,bx
                mov     word ptr es:vlm_call_ptr+2,ax
                mov     data_201,bx
                mov     data_202,ax
                push    es
                mov     cx,seg seg_b
                mov     es,cx
                mov     word ptr es:vlm_call_ptr2,bx
                mov     word ptr es:vlm_call_ptr2+2,ax
                mov     ax,7A20h
                mov     bx,5
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     word ptr es:data_93,bx
                mov     word ptr es:data_93+2,ax
                mov     ax,data_205
                or      ax,ax
                jz      loc_243
                mov     es:data_44,ax
                mov     cs:data_209,ax
loc_243::
                push    bx
                push    ds
                mov     ax,81Dh
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_203
                add     sp,4
                pop     bx
                call    sub_31
                cmp     byte ptr cs:data_217,0
                je      loc_244
                mov     ax,90A8h
                mov     cs:data_216,ax
loc_244::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                sub     dx,dx
                assume  ds:seg_a
                mov     ax,data_75
                mov     cx,37h
                div     cx
                or      ax,ax
                jnz     loc_245
                inc     ax
loc_245::
                mov     data_75,ax
                pop     ds
                mov     ax,7A00h                ; ipx: installation check
                int     2Fh
                mov     bx,es:[bx]
                assume  ds:seg_c
                mov     cs:ipx_version,bx
                mov     cx,es
                mov     ax,seg_b
                mov     es,ax
                mov     word ptr es:ipx_call_ptr,di
                mov     word ptr es:ipx_call_ptr+2,cx
                mov     es:ipx_version2,bx
                push    di
                mov     di,offset ipx_version_val
                mov     ax,bx
                stosw
                pop     di
                push    es
                mov     ax,seg_a
                mov     es,ax
                mov     word ptr es:ipx_call_ptr2,di
                mov     word ptr es:ipx_call_ptr2+2,cx
                mov     cs:data_206,di
                mov     word ptr cs:data_206+2,cx
                push    ax
                push    bx
                push    cx
                push    dx
                push    es
                push    di
                push    si
                xor     dx,dx
                mov     bx,1Fh
                call    dword ptr cs:data_206
                pop     si
                pop     di
                pop     es
                mov     es:data_89,dx
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     ds,es:data_44
                mov     si,437h
                xor     di,di
                push    es
                mov     es,di
                xor     cx,cx
                xor     dx,dx
                mov     bx,0Ch
                call    dword ptr cs:data_206
                pop     es
                mov     ax,seg_c
                mov     ds,ax
                mov     bx,0Dh
                push    es
                call    dword ptr data_206
                pop     es
                mov     ax,cx
                shr     cx,1
                shr     cx,1
                sub     ax,cx
                mov     es:data_88,ax
                cmp     es:data_72,1
                jbe     loc_246
                mov     bx,1Fh
                xor     dx,dx
                push    es
                call    dword ptr data_206
                pop     es
                test    dx,2
                jnz     loc_246
                mov     es:data_72,0
                push    bx
                mov     ax,37h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr data_203
                add     sp,2
                pop     bx
loc_246::
                pop     es
                call    sub_33
                or      al,al
                jz      loc_248
loc_247::
                mov     dx,es:data_218
                call    sub_34
                mov     dx,es:data_227
                call    sub_34
                mov     dx,es:data_230e
                call    sub_34
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,36h
                mov     si,6BAh
                push    cs
                pop     ds
                call    dword ptr cs:data_203
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,36h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_203
                add     sp,2
                pop     bx
                push    bx
                mov     ax,4
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_203
                add     sp,2
                pop     bx
                mov     ax,0FFFFh
                mov     bx,21h
                xor     cx,cx
                mov     dx,cx
                retf
loc_248::
                mov     es:data_218,dx
                mov     es:data_219,dx
                call    sub_33
                or      al,al
                jnz     loc_247
                mov     es:data_227,dx
                call    sub_33
                or      al,al
                jnz     loc_249
                mov     es:data_230e,dx
                call    sub_33
                or      al,al
                jz      loc_250
loc_249::
                jmp     loc_247
loc_250::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     data_77,dx
                pop     ds
                mov     ax,es
                mov     es:data_229e,ax
                mov     word ptr es:data_228e,874h
                mov     es:data_232e,ax
                mov     word ptr es:data_231e,8F4h
                push    es
                mov     ax,7A20h
                mov     bx,1
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     word ptr es:[430h],bx
                mov     word ptr es:[432h],ax
                assume  ds:seg_c
                mov     bx,data_205
                or      bx,bx
                jz      loc_253
                mov     dx,bx
                mov     si,offset data_221
                mov     cx,data_222

locloop_251::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_251

                mov     ax,seg_a
                mov     es,ax
                mov     si,offset data_223
                mov     cx,data_224

locloop_252::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_252

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
loc_253::
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     di,es
                mov     ax,352Fh
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ds,cs:data_205
                mov     ds:data_11e,bx
                mov     ds:data_12e,es
;*              mov     dx,offset int_2f_entry ;*
                db      0BAh, 00h, 00h
                mov     ax,252Fh
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,3564h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ax,es
                cmp     ax,di
                jne     loc_254
                or      byte ptr ds:data_15e,2
                mov     ds:data_13e,bx
                mov     ds:data_14e,ax
;*              mov     dx,offset loc_2         ;*
                db      0BAh, 2Ch, 00h
                mov     ax,2564h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
loc_254::
                mov     ax,357Ah
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     ax,es
                cmp     ax,di
                jne     loc_255
                or      byte ptr ds:data_15e,1
                mov     ds:data_13e,bx
                mov     ds:data_14e,es
;*              mov     dx,offset loc_2         ;*
                db      0BAh, 2Ch, 00h
                mov     ax,257Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
loc_255::
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                call    sub_35
                mov     ax,seg_a
                mov     es,ax
                push    ds
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                add     si,10h
                mov     es:data_95,si
                mov     es:data_96,ds
                pop     ds
                mov     es,es:data_44
                mov     si,838h
                mov     bx,4
                push    es
                call    dword ptr data_206
                pop     es
                mov     si,8B8h
                mov     bx,4
                call    dword ptr data_206
                call    sub_37
loc_256::
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,seg_a
                mov     es,ax
                mov     si,seg_a+274h
                sub     si,seg_c
                push    si
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                mov     ax,ds
                mov     bx,seg seg_a
                mov     ds,bx
                mov     cl,4
                shr     si,cl
                add     ax,si
                assume  ds:seg_a
                mov     data_78,ax
;*              add     ax,40h
                db       05h, 40h, 00h
                mov     data_79,ax
                mov     ax,0D880h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                jne     loc_257
                mov     data_80,0FFh
                mov     cs:data_210,19h
loc_257::
                pop     si
                mov     ax,cs:data_220
;*              add     ax,0Fh
                db       05h, 0Fh, 00h
;*              and     ax,0FFF0h
                db       25h,0F0h,0FFh
                add     data_82,ax
                mov     cl,4
                shr     ax,cl
                add     ax,cs:data_210
                mov     cx,seg seg_c
                sub     cx,seg_b
                add     cx,ax
                mov     dx,seg seg_b
                sub     dx,seg_a
                mov     bx,21h
                xor     ax,ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near
                push    bx
                mov     bx,0
                mov     dx,10h
                assume  ds:seg_c
                call    dword ptr data_203
                or      ax,ax
                jz      loc_259
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,5
                mov     si,6BAh
                push    cs
                pop     ds
                call    dword ptr cs:data_203
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                push    cs
                mov     ax,6C1h
                push    ax
                push    cs
                mov     ax,6BAh
                push    ax
                push    cs
                mov     ax,6C1h
                push    ax
                mov     ax,5
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_203
                add     sp,0Eh
                pop     bx
                push    bx
                push    cs
                mov     ax,6BAh
                push    ax
                push    cs
                mov     ax,6C1h
                push    ax
                mov     ax,6
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_203
                add     sp,0Ah
                pop     bx
loc_258::
                pop     ax
                pop     ax
                mov     ax,0FFFFh
                retf
loc_259::
                mov     ax,7A00h
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                je      loc_260
                push    ax
                push    bx
                push    cx
                push    si
                push    ds
                mov     ah,2
                mov     al,0
                mov     bx,6
                mov     cx,35h
                mov     si,6BAh
                push    cs
                pop     ds
                call    dword ptr cs:data_203
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     ax
                push    bx
                mov     ax,35h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr data_203
                add     sp,2
                pop     bx
                jmp     short loc_258
loc_260::
                mov     data_206,di
                mov     word ptr data_206+2,es
                pop     bx
                retn
sub_30          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near
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
                mov     ax,7A20h
                mov     bx,3
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_212,bx
                mov     word ptr data_212+2,es
                mov     cx,8
                mov     si,792h
                mov     di,6A4h
                push    ds
                pop     es
                call    dword ptr data_212
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
sub_31          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near
                cmp     byte ptr data_214,0
                je      loc_ret_261
                mov     bx,5
                call    dword ptr data_203

loc_ret_261::
                retn
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near
                mov     bx,0
                mov     al,0FFh
                mov     dx,cs:data_216
                xchg    dh,dl
                call    dword ptr cs:data_206
                test    cs:data_216,0FFFFh
                jz      loc_ret_262
                inc     cs:data_216

loc_ret_262::
                retn
sub_33          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near
                or      dx,dx
                jz      loc_ret_263
                mov     bx,1
                call    dword ptr cs:data_206

loc_ret_263::
                retn
sub_34          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near
                mov     bx,0
                mov     dx,data_216
                xchg    dl,dh
                call    dword ptr data_206
                or      al,al
                jnz     loc_265
                push    es
                mov     es,es:data_44
                mov     es:data_185,dx
                mov     es:data_195,dx
                push    es
                call    sub_36
                pop     es
                mov     di,offset data_196

locloop_264::
                mov     es:[di+2],es
                mov     es:[di+4],ax
                add     di,6
                loop    locloop_264

                mov     si,0A1Ch
                mov     bx,4
                call    dword ptr data_206
                pop     es
                retn
loc_265::
                push    bx
                mov     ax,38h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr data_203
                add     sp,2
                pop     bx
                push    bx
                mov     ax,4
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr data_203
                add     sp,2
                pop     bx
                mov     es:data_73,0
                retn
sub_35          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    near
                xor     ax,ax
                mov     bx,1Ah
                call    dword ptr data_206
                or      ax,ax
                jnz     loc_266
                mov     bx,0Dh
                call    dword ptr data_206
;*              add     ax,40h
                db       05h, 40h, 00h
loc_266::
                mov     cx,seg seg_a
                mov     es,cx
                xor     dx,dx
                mov     cx,0Fh
                add     ax,cx
                div     cx
                add     es:data_99e,ax
                retn
sub_36          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


ipxncp          proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
                db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.  All Rights Res'
                db      'erved.'
                db      0, 0, 0, 0, 0, 0

ipxncp          endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     ds,data_44
                cmp     cs:data_215,0
                je      loc_267
                mov     ah,0C0h
                int     15h                     ; General services, ah=func C0h
                                                ;  get system config ptr, es:bx
                jnc     loc_268
loc_267::
                jmp     loc_ret_273
loc_268::
                test    byte ptr es:[bx+5],20h  ; ' '
                jz      loc_267
                xor     di,di
                mov     ax,0F000h
                mov     es,ax
                mov     al,38h                  ; '8'
                mov     cx,100h
                cld
loc_269::
                jcxz    loc_270
                repne   scasb
                jnz     loc_270
                cmp     byte ptr es:[di],36h    ; '6'
                jne     loc_269
                cmp     byte ptr es:[di+1],41h  ; 'A'
                je      loc_ret_273
                cmp     byte ptr es:[di+1],45h  ; 'E'
                je      loc_ret_273
                cmp     word ptr es:[di+1],412Dh
                je      loc_ret_273
                jmp     short loc_270
loc_270::
                mov     ax,8300h
                sub     cx,cx
                mov     dx,2902h
                push    ds
                pop     es
                mov     bx,offset data_178
                mov     byte ptr [bx],0
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                jc      loc_ret_273
                mov     bx,8
                call    dword ptr cs:data_206
                mov     cx,ax
loc_271::
                assume  ds:seg_b
                test    data_178,80h
                jnz     loc_272
                push    cx
                mov     bx,8
                call    dword ptr cs:data_206
                pop     cx
                sub     ax,cx
;*              cmp     ax,3
                db       3Dh, 03h, 00h
                jbe     loc_271
                jmp     short loc_ret_273
loc_272::
                mov     ax,8300h
                mov     cx,0FFFFh
                mov     dx,cx
                push    ds
                pop     es
                mov     bx,offset data_178
                mov     byte ptr [bx],0
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                jc      loc_ret_273
                mov     ax,8301h
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                jc      loc_ret_273
                or      data_179,1

loc_ret_273::
                retn
sub_37          endp

                db      0, 0, 0, 0, 0
data_201        dw      0
data_202        dw      0
data_203        dw      0, 0
data_205        dw      0
data_206        dw      0, 0
ipx_version     dw      0
data_209        dw      0
data_210        dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'IPXNCP', 0
                db      'CONN'
                db      0
data_212        dw      0, 0
data_214        db      1
data_215        dw      3
data_216        dw      0
data_217        db      0
                db      'CHECKSUM'
                db       00h, 10h, 14h
                dw      seg_a
                db      0, 0, 3, 0
                db      'LARGE INTERNET PACKETS'
                db       00h, 11h, 14h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'LOAD LOW IPXNCP'
                db       00h,0CAh, 06h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh
                db      'HANDLE NET ERRORS'
                db       00h, 12h, 14h
                dw      seg_a
                db       00h, 00h,0FFh,0FFh
                db      'PB BUFFERS'
                db       00h,0CBh, 06h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh, 4Dh, 49h
data_218        dw      494Eh
                db      'MUM TIME TO NET'
                db       00h, 13h, 14h
                dw      seg_a
                db       01h, 00h,0FFh,0FFh
                db      'LIP START SIZE'
                db       00h, 15h, 14h
                dw      seg_a
                db       40h, 02h,0FFh,0FFh
                db      'ALTERNATE SOCKETS'
                db       00h,0CFh, 06h
                dw      seg_c
                db       00h, 00h,0FFh,0FFh,0D0h, 06h
                db       09h, 01h, 00h, 00h,0D9h, 06h
                db      0E1h, 06h, 17h, 00h, 04h, 00h
                db      0F8h, 06h, 00h, 07h, 10h, 00h
                db       04h, 00h, 10h, 07h, 18h, 07h
                db       12h, 00h, 04h, 00h, 2Ah, 07h
                db       32h, 07h, 0Bh, 01h, 02h, 00h
                db       3Dh, 07h, 45h, 07h, 14h, 00h
                db       02h, 00h, 59h, 07h
data_219        dw      761h
                db       0Fh, 00h, 02h, 00h, 70h, 07h
                db       78h, 07h, 12h, 00h, 04h, 00h
                db       8Ah, 07h
data_220        dw      110h
data_221        db      80h
                db       04h,0ACh, 04h,0CCh, 04h, 63h
                db       07h,0DEh, 07h, 3Eh, 08h, 5Eh
                db       08h, 88h, 08h,0B2h, 08h,0BEh
                db       08h,0DEh, 08h, 44h, 09h, 6Eh
                db       09h,0BEh, 09h, 42h, 0Ah, 22h
                db       0Ah, 87h, 07h, 02h, 08h,0C4h
                db      9
data_222        dw      13h
data_223        db      14h
                db       01h, 94h, 10h,0ABh, 10h
data_224        dw      3
                db      12 dup (0)
                db      'VeRsIoN=1.21', 0
                db      'IPXNCP.VLM   - NetWare IPX trans'
                db      'port '
data_227        dw      6F6Dh
                db      'dule  v1.21 (960514)', 0Dh, 0Ah
                db      0

seg_c           ends



                end     start
