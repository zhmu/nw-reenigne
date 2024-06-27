; The following equates show data references outside the range of the program.

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
data_228e       equ     8ACh                    ;*
data_229e       equ     8B2h                    ;*
data_230e       equ     8C2h                    ;*
data_231e       equ     968h                    ;*
data_232e       equ     96Eh                    ;*

include common.inc
include vlm.inc
include conn.inc

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
IPX_INIT_NET_ADDRESS    equ     0Ch
IPX_GET_PACKET_SIZE     equ     0Dh
IPX_TERMINATE_SOCKETS   equ     0Eh
IPX_GET_MAX_PACKET_SIZE equ     1Ah
IPX_GET_IPX_INFO        equ     1Fh
IPX_VERIFY_CHECKSUM     equ     22h

IPX_PTYPE_NCP           equ     11h

IPX_ECB                 struct
link                    dd      ?           ; 00 link
esr_off                 dw      ?           ; 04 event service routine
esr_seg                 dw      ?
in_use                  db      ?           ; 08 in-use flag
comp_code               db      ?           ; 09 completion code
socket_nr               dw      ?           ; 0a socket number (big endian)
ipx_workspace           db      4 dup (?)   ; 0c ipx workspace
driver_workspace        db      12 dup (?)  ; 10 driver workspace
local_node_addr         db      6 dup (?)   ; 1c immediate local node address
; payload               db      ... dup (?) ; 22 ...
IPX_ECB                 ends

CREATE_SERVICE_CONNECTION   equ     1111h
REQ_PROCESSED               equ     3333h
DESTROY_SERVICE_CONNECTION  equ     5555h
REQ_BEING_PROCESSED         equ     9999h

; interrup.m, #02894
OACB_CALLBACK       equ     04h
OACB_DEST_FUNC      equ     0Ch
OACB_REG_16         equ     16h     ; eax
OACB_REG_1B         equ     1Bh     ; bh
OACB_REG_1E         equ     1Eh
OACB_REG_22         equ     22h     ; dl or dh
OACB_REG_23         equ     23h     ; dh or dl
OACB_REG_26         equ     26h     ; si
OACB_DS             equ     2Eh

; structure used by sub_19, ncp_seqno, loc_24
; maybe refers to conn.vlm ??
;
; 00    wioord       id?
; 02    byte         flags?
; 09    byte         ???
; 0C    word         ???
; 0E    word         ???
; 10    word         ???
; 12    word         respone type (2222)
; 14    byte         sequence number
; 15    word         connection number
; 1A    10 bytes     destination IPX_INIT_NET_ADDRESS
; 24    ???
; 26    6 bytes      ??? (loc_114)
; 2C    word         ???
;

UNK_00      equ     00h     ; word (32h)
UNK_02      equ     02h     ; byte, flags (0, 2, 8)
; 3 .. 8 unused
UNK_09      equ     09h     ; byte
; A .. B unused
UNK_0C      equ     0Ch     ; word (added to)
UNK_0E      equ     0Eh     ; word
UNK_10      equ     10h     ; word
UNK_12      equ     12h     ; word, response type?
UNK_14      equ     14h     ; byte, sequence number
UNK_15      equ     15h     ; word, connection socket_number
; 17 .. 25 unused
UNK_26      equ     26h     ; 6 bytes
UNK_2C      equ     2Ch     ; word

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      offset init_fn, seg_c
                dw      offset loc_00de, seg_a
                dw      offset loc_013f, seg_a
                dw      offset ipxncp_stats, seg_a
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
                mov     bp,CONN_FUNC_LOOKUP_HANDLE		
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                retn
vcall_conn_0ah  endp

vcall_conn_7h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_GET_FIELD		
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                retn
vcall_conn_7h   endp

vcall_conn_8h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_SET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                retn
vcall_conn_8h   endp

vcall_conn_9h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_RESET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                retn
vcall_conn_9h   endp

vcall_conn_6h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_FREE_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
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
                call    dword ptr cs:vlm_call_ptr_a
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
                call    dword ptr cs:vlm_call_ptr_a
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
                call    dword ptr cs:vlm_call_ptr_a
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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

vcall2_exe_4h   proc    near
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
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
                mov     es,cs:seg_b_val
                lds     dx,dword ptr es:int_2f_prev
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
                mov     ds,es:seg_b_val
                assume  ds:seg_b
                mov     dx,data_134
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,wdog_ecb.socket_nr
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,listen_ecb_4.socket_nr
                mov     bx,IPX_CLOSE_SOCKET
                call    ipx_call
                mov     dx,[send_ecb_2.socket_nr]
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

ipxncp_stats:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset ipxncp_statistics
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
                mov     es,seg_b_val
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
                mov     es:[sap_req_ecb.socket_nr],dx
                mov     es:data_119,dx
                mov     es:[sap_recv_ecb.socket_nr],dx
                mov     si,offset data_048a
                mov     di,si
                xor     ax,ax
                stosw
                stosw
                dec     ax
                stosw
                stosw
                stosw
                mov     word ptr es:[di],5204h      ; SAP socket
                mov     di,offset sap_req_ecb.local_node_addr
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
                mov     es:sapq_servertype,400h             ; file server
                cmp     dx,32h
                jne     loc_19
                mov     es:sapq_servertype,7802h
                mov     di,43Ah
                mov     bx,0
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NDS
                push    bp
                mov     bp,0Fh
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
loc_19::
                mov     es:sapq_querytype,300h      ; find nearest server
                mov     di,offset data_129
                mov     cx,23h
                xor     ax,ax
                rep     stosw
                mov     word ptr [bp-0Ah],VLM_STATUS_NO_RESPONDING_SERVERS
                mov     si,offset sap_recv_ecb
                mov     bx,IPX_LISTEN
                call    ipx_call
                or      al,al
                jz      loc_20
                mov     ax,VLM_STATUS_SEND_RECV_ERROR
                jmp     loc_37
loc_20::
                mov     es:data_128,1
                call    sap_send_req
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
                cmp     word ptr ds:[UNK_15],0
                je      loc_22
                test    byte ptr ds:[UNK_02],8
                jnz     loc_22
                test    byte ptr ds:[UNK_02],2
                jnz     loc_23
                cmp     word ptr [bp-8],32h
                jne     loc_25
                cmp     word ptr ds:[UNK_00],32h
                je      loc_25
                test    byte ptr ds:[UNK_02],20h ; ' '
                jnz     loc_23
                mov     word ptr ds:[UNK_00],32h
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
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                pushf
                mov     ds,cx
                cmp     byte ptr ds:[UNK_02],0
                jne     loc_28
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_ALLOC_HANDLE
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                mov     ds,cx
                mov     di,[bp-8]
                mov     ds:[UNK_00],di
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
                mov     es:sapq_querytype,100h          ; general find service
loc_33::
                cmp     es:sapq_querytype,100h          ; general find service
                jne     loc_34
                cmp     es:sapq_servertype,7802h
                je      loc_35
loc_34::
                call    sap_send_req
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
                call    sap_send_req
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
                mov     es,cs:seg_b_val
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sap_send_req    proc    near
                push    bx
                push    si
                mov     si,offset sap_req_ecb
                test    byte ptr es:[si+IPX_ECB.in_use],0FFh
                jnz     loc_41
                mov     bx,IPX_SEND
                call    ipx_call
loc_40::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                test    byte ptr es:[si+IPX_ECB.in_use],0FFh
                jnz     loc_40
                cmp     byte ptr es:[si+IPX_ECB.comp_code],0
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
sap_send_req    endp

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
                mov     ax,min_time2net
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
                mov     es,seg_b_val
                add     word ptr [data_52],1
                adc     word ptr [data_52+2],0
                mov     es:ncp_compcode,al
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
                mov     dl,ds:[UNK_09]
                pop     ds
                mov     word ptr [bp+LOCAL_5],3
                cmp     byte ptr cksum_support,0
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

;ßßßß External Entry into Subroutine ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß

sub_13::
                mov     dl,1
                cmp     byte ptr es:ncp_compcode,17h
                jne     loc_57
                test    byte ptr es:data_132,1
                jnz     loc_58
                call    sub_14
                jmp     short loc_ret_59
loc_57::
                cmp     byte ptr es:ncp_compcode,68h        ; 'h'
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
                cmp     byte ptr es:ncp_compcode,17h
                jne     loc_61
                test    byte ptr es:data_132,2
                jnz     loc_62
                mov     dl,2
                call    sub_14
                jz      loc_62
                jmp     loc_64
loc_61::
                cmp     byte ptr es:ncp_compcode,68h        ; 'h'
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
                mov     dx,ds:[UNK_12]
                pop     ds
                mov     es:ncp_resptype,dx
                cmp     dx,2222h
                jne     loc_63

                ; response type 222h
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
                mov     dl,byte ptr ds:[UNK_14]
                mov     es:ncp_seqno,dl
                mov     dx,word ptr ds:[UNK_15]
                mov     es:ncp_connr,dl
                mov     es:ncp_reserved,dh
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
                mov     ax,ds:[UNK_2C]
                pop     ds
                mov     es:data_130,ax
                xor     bx,bx
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_10
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                mov     es:ncp_tasknr,bl
loc_68::
                mov     si,offset listen_ecb_3
                mov     bx,IPX_LISTEN
                call    ipx_call
                or      al,al
                jnz     loc_65
                mov     ax,retry_count
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
                mov     bp,CONN_FUNC_10
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
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
                mov     si,offset nw_reply_type
                cmp     word ptr es:[si],REQ_BEING_PROCESSED
                jne     loc_81

                inc     data_62
                mov     ax,retry_count
                mov     [bp+LOCAL_4],ax
                mov     ax,es:data_130
                add     ax,ax
                cmp     ax,168h
                ja      loc_80
                mov     es:data_130,ax
loc_80::
                mov     si,offset listen_ecb_3
                mov     bx,IPX_LISTEN
                call    ipx_call
                jmp     loc_71

loc_81::        ; not being processed (9999)
                cmp     word ptr [bp+LOCAL_5],20h
                je      loc_83
                cmp     es:nw_checksum,0FFFFh
                je      loc_84
loc_82::
                inc     data_71
                jmp     short loc_80
loc_83::
                cmp     es:ncp_resptype,DESTROY_SERVICE_CONNECTION
                je      loc_84

                push    si
                mov     si,7B8h
                mov     bx,IPX_VERIFY_CHECKSUM
                call    ipx_call
                or      ax,ax
                pop     si
                jnz     loc_82

loc_84::
                mov     al,es:nw_conn_status
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
                call    dword ptr cs:vlm_call_ptr_a
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
                mov     bh,handle_net_errors
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
                cmp     word ptr es:[si],REQ_PROCESSED
                jne     loc_85
                mov     al,es:[si+2]
                cmp     es:ncp_seqno,al
                jne     loc_90
                cmp     es:ncp_resptype,DESTROY_SERVICE_CONNECTION
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
                mov     es:ncp_connr,dl
                mov     es:ncp_reserved,dh
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     ds:[UNK_15],dx
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
                mov     dx,nw_packet_len
                xchg    dh,dl
                mov     di,dx
                sub     dx,8
                xchg    dh,dl
                mov     nw_packet_len,dx
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
                mov     al,es:ncp_connr
                mov     ah,es:ncp_reserved
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jnz     loc_96
                cmp     es:ncp_resptype,CREATE_SERVICE_CONNECTION
                jne     loc_100
                jmp     loc_93
loc_100::
                test    byte ptr es:nw_conn_status,10h
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
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                call    vcall_conn_6h
                mov     es:data_131,0
                jmp     short loc_104
loc_101::
                mov     ax,retry_count
                cmp     [bp+LOCAL_4],ax
                jne     loc_102
                mov     ax,es:data_130
                inc     ax
                inc     ax
                add     ax,[bp+LOCAL_3]
                shr     ax,1
                mov     es:data_130,ax
loc_102::
                inc     es:ncp_seqno
                mov     dl,es:ncp_seqno
                mov     cx,[bp-10h]
                push    ds
                mov     ds,cx
                mov     ds:[UNK_14],dl
                cmp     word ptr ds:[UNK_00],32h
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
                mov     al,es:nw_comp_code
                or      al,al
                jnz     loc_105
                mov     ax,es:nw_packet_len
                xchg    ah,al
;*              sub     ax,26h
                db       2Dh, 26h, 00h
                mov     [bp-12h],ax
                xor     ax,ax
                cmp     byte ptr es:listen_ecb_3.comp_code,0FDh
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
                mov     bh,handle_net_errors
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
                mov     ds:[UNK_0C],dx
                pop     ds
                push    es
                push    di
                push    si
                mov     es,cx
                mov     di,UNK_26
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
                call    dword ptr vlm_int24_ptr
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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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

;ßßßß External Entry into Subroutine ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß

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
                mov     es,seg_b_val
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_NWP
                push    bp
                mov     bp,7
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                mov     bh,5
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_CONN
                push    bp
                mov     bp,CONN_FUNC_RESET_FIELD
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_16          proc    near
                push    bx
                push    si
                push    es
                mov     es,cs:seg_b_val
loc_128::
                mov     si,offset data_133
                test    byte ptr es:[si+8],0FFh
                jz      loc_129
                mov     bx,IPX_CANCEL_EVENT
                call    ipx_call
                cmp     al,0F9h
                je      loc_128
loc_129::
                mov     si,offset listen_ecb_3
                test    byte ptr es:[si+IPX_ECB.in_use],0FFh
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
                mov     es,es:seg_b_val
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

func_tab        dw      offset loc_131          ; Data table (indexed access)
                dw      offset loc_134
                dw      offset loc_163
                dw      offset loc_187
                dw      offset loc_173

loc_0d27:
                cmp     bx,5
                jc      loc_d30
                mov     ax,8811h
                retf

loc_d30:
                add     bx,bx
                jmp     cs:[bx+offset func_tab]

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_131::
                call    ipx_get_pkt_size
                mov     dx,1Eh
                mov     bx,ax
                push    es
                mov     es,cs:seg_b_val
                mov     si,es:data_134
                pop     es
loc_132::
                xor     ax,ax
                retf

loc_133::       ; no large packets
                push    bx
                mov     dx,240h
                mov     bh,0Bh
                call    vcall_conn_8h
                pop     bx
                jmp     short loc_132

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_134::
                cmp     byte ptr cs:large_packets,0
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
                mov     ax,cs:seg_b_val
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
                mov     cx,ds:[UNK_0E]
                pop     ds
                add     cx,22h
                cmp     cx,ax
                ja      loc_136
                xchg    cx,ax
loc_136::
                mov     [bp-6],ax
                mov     word ptr [bp-10h],1
                test    cs:lip_start_size,0FFFFh
                jz      loc_137
                mov     cx,cs:lip_start_size
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
                add     dx,word ptr ds:[UNK_0C]
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
                mov     si,offset send_ecb_2

locloop_141::
                ; note: part of large packet
                push    cx
                mov     bx,IPX_SEND
                call    ipx_call
loc_142::
                test    byte ptr [si+IPX_ECB.in_use],0FFh
                jz      loc_143
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                jmp     short loc_142
loc_143::
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
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
                add     word ptr ds:[UNK_0C],2
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
                mov     ax,cs:lip_start_size
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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_163::
                push    ds
                push    es
                push    cx
                assume  ds:seg_a
                mov     ax,cs:seg_b_val
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
                call    wait_for_unk
                pop     di
                mov     es,cs:seg_b_val
                mov     si,offset send_ecb_2
                mov     bx,IPX_SEND
                call    ipx_call
loc_167::
                mov     bx,IPX_RELINQUISH_CONTROL
                call    ipx_call
                test    byte ptr [si+IPX_ECB.in_use],0FFh
                jnz     loc_167
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
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
                mov     es,cs:seg_b_val
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
                add     ax,549
                mov     bx,550
                div     bx
                mov     dx,ax
                inc     ax
                shr     ax,1
                add     dx,ax
                cmp     dx,1
                adc     dx,0
                push    ds
                mov     ds,cx
                mov     ds:[UNK_2C],dx
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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_173::
                push    cx
                push    ds
                push    es
                assume  ds:seg_a
                mov     ax,cs:seg_b_val
                mov     ds,ax
                mov     es,cx
                cmp     word ptr es:[10h],0
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
                call    wait_for_unk
                or      byte ptr data_181,2
                mov     es,cs:seg_b_val
                mov     si,offset send_ecb_2
                mov     bx,IPX_SEND
                call    ipx_call
                push    si
                call    far ptr calc_time_unk
                pop     si
loc_177::
                test    byte ptr [si+IPX_ECB.in_use],0FFh
                jnz     loc_177
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
                jnz     loc_184
                inc     data_192

loc_178::       ; some kind of delay loop ?
                push    ax
                call    far ptr calc_time_unk
                mov     cx,ax
                pop     ax
                sub     cx,ax
                cmp     cx,64h
                jb      loc_178

                mov     es,cs:seg_b_val
                mov     si,offset send_ecb_2
                mov     bx,IPX_SEND
                call    ipx_call
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                mov     di,ax
loc_179::
                test    byte ptr [si+IPX_ECB.in_use],0FFh
                jnz     loc_179
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
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

;ÄÄÄÄÄ Indexed Entry Point ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_187::
                assume  ds:seg_a
                mov     bl,cs:cksum_support
                xor     ax,ax
                retf

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_19          proc    near
                mov     di,9B4h
                mov     bh,11h
                mov     dx,0C06h
                call    vcall_conn_7h
                jnz     loc_190

                ; dest address: copy 10 bytes from cx:[1Ah] to data_188
                mov     di,offset data_188
                push    ds
                push    si
                push    cx
                mov     ds,cx
                cld
                mov     cx,5
                mov     si,1Ah
                rep     movsw
                pop     cx
                pop     si
                mov     dx,ds:[UNK_10]
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
                mov     dx,ds:[UNK_0C]
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
                mov     ds,cs:seg_b_val
                cmp     bx,1
                jb      loc_191
                jz      loc_192
                mov     ax,VLM_STATUS_FUNC_INVALID_PARAM
                pop     ds
                retf

loc_191::
                mov     word ptr ds:[data_175],di
                mov     word ptr ds:[data_175+2],es
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                pop     word ptr data_97+2
                mov     ds,seg_b_val
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
                mov     ds,seg_b_val
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

wait_for_unk    proc    near
                ; ipxncp -> exe, fn 4
                mov     bx,1
                push    bp
                mov     bp,VLMID_IPXNCP
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr_a
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
                mov     bx,offset semaphore_byte
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

loc_202::       ; wait until one timer tick expired...
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    ipx_call
                cmp     ax,di
                je      loc_202
                mov     data_177,ax
                retn
wait_for_unk    endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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
                call    dword ptr cs:vlm_call_ptr_a
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
                call    dword ptr cs:vlm_call_ptr_a
                pop     bp
                mov     bx,1
                retn
sub_24          endp

                db      11 dup (0)
seg_b_val       dw      seg_b
vlm_call_ptr_a  dw      0, 0
ipx_call_ptr2   dw      0, 0
data_49         db      0FFh
                db      0
ipxncp_statistics dw  3Bh             ; 00 size of statistics
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
data_62         dw      0           ; packets sent?
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
cksum_support   db      1
large_packets   db      1
handle_net_errors db    1
min_time2net    dw      0
lip_start_size  dw      0
data_77         dw      0
data_78         dw      0
data_79         dw      0
data_80         db      0
data_81         db      0
data_82         dw      0AA0h
data_83         dw      0, 0
data_85         dw      0
data_86         dw      0, 0
retry_count     dw      0
ipx_features    dw      0
data_90         db      0
data_91         db      0
data_92         db      0
vlm_int24_ptr   dw      0, 0
dos_sda_ptr     dw      0, 0
data_97         dw      offset schedule_ipx, seg schedule_ipx
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
                mov     bx,offset ipx_version2
                push    cs
                pop     es
                mov     al,0FFh
                iret
loc_206::
                jmp     dword ptr cs:int_2f_prev
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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_25          proc    near
                push    ax
                push    bx
                mov     bx,7
                call    sub_27
                pop     bx
                pop     ax
                retn
sub_25          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_27          proc    near
                xor     ax,ax   ; VLMID_EXE
                push    ax
                mov     ax,VLMID_CONN
                push    ax
                mov     ax,CONN_FUNC_10
                push    ax
                call    dword ptr cs:vlm_call_ptr_b
                retn
sub_27          endp

esr_0068:
                push    es
                pop     ds
                cmp     data_128,0
                je      loc_209
                test    byte ptr [si+9],0FFh
                jz      loc_210
loc_209::
                jmp     loc_217
loc_210::
                mov     dx,sapq_servertype
                cmp     word ptr [data_127],dx
                jne     loc_209
                mov     ax,sap_recv_len
                xchg    ah,al
;*              sub     ax,20h
                db       2Dh, 20h, 00h
                mov     bp,ax

                ; parse SAP entries
                mov     si,offset sap_recv_source
loc_211::
                add     si,40h
                sub     bp,40h
                jc      loc_209
                cmp     sapq_servertype,7802h
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
                cmp     sapq_querytype,100h             ; general find service
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
                mov     si,offset sap_recv_ecb
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

wdog_esr        proc
                push    cs
                pop     ds
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
                jnz     esr_0226
                cmp     byte ptr wdog_signature,'?'
                jne     esr_0226
                test    byte ptr data_114,0FFh
                jz      esr_0226
                mov     di,offset vlm_oacb
                mov     word ptr [di+OACB_REG_1E],0
loc_225::
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_LOOKUP_HANDLE
                mov     byte ptr [di+OACB_REG_1B],11h
                mov     byte ptr [di+OACB_REG_22],0Ah
                mov     byte ptr [di+OACB_REG_23],0
                jmp     dword ptr vlm_calla_ptr
esr_0226::

                ; listen for next watchdog packet
                cli
                push    cs
                pop     ds
                mov     si,offset wdog_ecb 
                mov     word ptr [si+IPX_ECB.esr_off],offset wdog_esr 
                mov     bx,IPX_LISTEN
                jmp     dword ptr ipx_call_ptr
wdog_esr        endp


esr_01bf:
                push    cs
                pop     ds
                cmp     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_GET_FIELD
                je      loc_227
                cmp     word ptr [di+OACB_REG_16],0
                jne     loc_228
                mov     byte ptr [di+OACB_REG_1B],CONN_FIELD_CONN_NUMBER
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_GET_FIELD
                jmp     dword ptr vlm_calla_ptr

loc_227::       ; dest_func 7
                mov     dl,[di+OACB_REG_22]
                cmp     es:wdog_packetslot,dl
                jne     loc_225
                mov     byte ptr es:wdog_signature,'Y'
                jmp     short loc_229
loc_228::
                mov     byte ptr es:wdog_signature,'N'
loc_229::
                mov     si,offset wdog_src_addr
                mov     di,offset wdog_dst_addr
                mov     cx,6
                rep     movsw
                mov     si,offset wdog_ecb 
                mov     word ptr [si+IPX_ECB.esr_off],offset esr_0226
                mov     bx,IPX_SEND
                jmp     dword ptr es:ipx_call_ptr

esr_020d:
                push    cs
                pop     ds
                test    byte ptr data_114,0FFh
                jz      loc_230
                test    byte ptr [si+IPX_ECB.comp_code],0FFh
                jnz     loc_230

                mov     di,offset sched_ecb_1
                mov     dl,data_172
                mov     word ptr [di+IPX_ECB.esr_off],offset loc_029e
                cmp     dl,40h                  ; '@'
                je      loc_231
                mov     word ptr [di+IPX_ECB.esr_off],offset loc_0279
                cmp     dl,21h                  ; '!'
                je      loc_231
                cmp     dl,23h                  ; '#'
                jne     loc_230
                xor     ax,ax
                mov     cx,0FFFFh
                callf   schedule_ipx

loc_230::
                cli
                push    cs
                pop     es
                mov     si,offset listen_ecb_4
                mov     bx,IPX_LISTEN
                jmp     dword ptr cs:ipx_call_ptr

loc_231::       ; dl = 40h (SFT3 inform) or 21h (broadcast waiting for workstation)
                mov     ax,7A22h                ; dos requester: broadcast/sft3 inform
                mov     bx,21h                  ; ipx
                int     2Fh
                or      ax,ax
                jz      loc_230

                ; message not handled
                mov     word ptr [di+OACB_REG_1E],0
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_LOOKUP_HANDLE
                mov     byte ptr [di+OACB_REG_1B],11h
                mov     byte ptr [di+OACB_REG_22],0Ah
                mov     byte ptr [di+OACB_REG_23],0
                jmp     dword ptr vlm_calla_ptr

loc_0279:
                push    cs
                pop     ds
                cmp     word ptr [di+OACB_REG_16],0
                jne     loc_230
                xor     ax,ax
                mov     cx,[di+1Eh]
                callf   schedule_ipx
                push    ds
                pop     es
                mov     word ptr [di+OACB_CALLBACK],offset loc_230
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_SET_FIELD
                mov     byte ptr [di+OACB_REG_1B],CONN_FIELD_BCAST_MSG_WAITING	
                jmp     dword ptr vlm_calla_ptr

loc_029e:
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
                mov     word ptr [di+OACB_CALLBACK],offset loc_02c9     ; callback ptr
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_SET_FIELD
                mov     byte ptr [di+OACB_REG_1B],CONN_FIELD_SFT3_CHANGE_STATUS
                jmp     dword ptr vlm_calla_ptr

loc_02c9:
                push    cs
                pop     ds
                push    di
                push    es
                mov     ax,2
                mov     cx,[di+1Eh]
                callf   schedule_ipx
                pop     es
                pop     di
                mov     word ptr [di+OACB_CALLBACK],offset loc_230
                mov     word ptr [di+OACB_DEST_FUNC],CONN_FUNC_SET_FIELD
                mov     byte ptr [di+OACB_REG_1B],CONN_FIELD_TRANSPORT_SPECIFIC
                mov     byte ptr [di+OACB_REG_22],6
                mov     byte ptr [di+OACB_REG_23],0Ch ; dh
                mov     [di+OACB_DS],ds
                mov     word ptr [di+OACB_REG_26],offset listen_ecb_4.local_node_addr
                jmp     dword ptr vlm_calla_ptr

; input: ax, cx
schedule_ipx    proc    far
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
                mov     ax,90               ; 90 ticks
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
schedule_ipx    endp

; main listen hook?
esr_033e        proc
                mov     ax,es
                mov     ds,ax
                push    ax
                push    si
                test    byte ptr data_181,3
                jz      esr_033e_listen_ret
                cmp     byte ptr [si+IPX_ECB.comp_code],0
                jne     esr_033e_listen_ret

                ; skip 2 bytes from payload...
                mov     bx,[si+24h]
                lea     si,[bx+16h]
                mov     di,offset data_190
                mov     cx,4                        ; check dest addr + socket
                cld
                repe    cmpsw
                jnz     esr_033e_listen_ret

                ; dest address ok
                mov     cx,[bx+20h]
                test    byte ptr data_181,2
                jnz     loc_236
                cmp     data_192,cx
                jne     esr_033e_listen_ret
                mov     ax,[bx+2]
                xchg    ah,al
;*              sub     ax,1Eh
                db       2Dh, 1Eh, 00h
                cmp     data_180,ax
                jae     esr_033e_listen_ret
                mov     data_180,ax
esr_033e_listen_ret::
                pop     si
                pop     es
                mov     bx,IPX_LISTEN
                jmp     dword ptr ipx_call_ptr

loc_236::       ; packet ok ??
                callf   calc_time_unk
                mov     dx,data_183
                cmp     dx,cx
                je      loc_238
                inc     dx
                cmp     dx,cx
                jne     esr_033e_listen_ret
                test    byte ptr data_181,4
                jz      loc_237
                sub     ax,data_184
loc_237::
                and     byte ptr data_181,0F9h
                mov     data_184,ax
                jmp     short esr_033e_listen_ret
loc_238::
                or      byte ptr data_181,4
                mov     data_184,ax
                jmp     short esr_033e_listen_ret
                db      0, 0, 0, 0
esr_033e        endp

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

calc_time_unk   proc    far
                test    byte ptr data_179,2
                jnz     loc_240

                ; get tick count in di:si
                cli
                mov     ax,40h
                mov     es,ax
                mov     si,es:timer_clk_low
                mov     di,es:timer_clk_hi
                sti

                ; bx:ax = 0FFFF'FB40h - di:si
                mov     ax,0FB40h
                mov     bx,0FFFFh
                sub     ax,si
                sbb     bx,di

                ; dx:ax / 100
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

loc_240::       ; use ipx timer
                ;
                ; returns: bx:ax = (IPX_GET_INTERVAL_TIMER() - data_177) / 550 + 1'0000
                ;
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    dword ptr ipx_call_ptr
                sub     ax,data_177
;*              cmp     ax,77h
                db       3Dh, 77h, 00h
                jc      loc_241
                mov     ax,77h
loc_241::
                mov     bx,550
                mul     bx
                mov     bx,1
                retf
calc_time_unk   endp

                db      13 dup (0)
ipx_call_ptr    dw      0, 0
int_2f_prev     dw      0, 0
data_107        dw      0, 0
vlm_call_ptr_b  dw      0, 0
vlm_calla_ptr   dw      0, 0
ipx_version2    dw      0
data_112        db      0
data_113        db      0
data_114        db      0                       ; flags?
                db      0
data_115        db      32 dup (0)

; send event control block
sap_req_ecb     IPX_ECB <0, 0, 0, 0, 0, 0>
                dw      1                       ; fragment count
                dw      offset data_0484, seg_b ; fragment pointer
                dw      22h                     ; fragment size
data_0484       dw      0FFFFh                  ; ipx checksum
                dw      0                       ; packet length
                db      0                       ; transport control
                db      IPX_PTYPE_NCP
data_048a       db      10 dup (0)              ; dest addr (set to 00:00:00:00:FF:FF:FF:FF:FF:FF)
                dw      0                       ; dest socket (452h)
                db      10 dup (0)              ; source addr
data_119        dw      0                       ; source socket
sapq_querytype  dw      0
sapq_servertype dw      0

sap_recv_ecb    IPX_ECB <0, offset esr_0068, seg_b, 0, 0, 0>
                dw      1                       ; fragment count
                dw      offset sap_recv_buf, seg_b ; fragment pointer
                dw      544                     ; fragment size

sap_recv_buf    dw      0FFFFh                  ; ipx checksum
sap_recv_len    dw      0                       ; packet length
                db      0                       ; transport control
                db      IPX_PTYPE_NCP
                db      12 dup (0)              ; dest addr + socket
sap_recv_source db      12 dup (0)              ; source addr + socket
                db      0, 0                    ; response type
data_127        db      512 dup (0)

data_128        dw      0                       ; fag
data_129        db      0
                db      69 dup (0)
data_130        dw      2
data_131        dw      0                       ; segment of ???
data_132        db      0                       ; bit 0 and 1 mean something
data_133        dw      5 dup (0)
data_134        dw      0
                db      16 dup (0)
data_135        db      6 dup (0)               ; copied from ds:[26h]
data_136        dw      0
                dw      offset data_078b, seg_b     ; fragment pointer
                dw      25h                         ; fragment size
data_137        dd      00000h
data_139        dw      0
                db      24 dup (0)
                dw      offset data_07b0, seg_b     ; fragment pointer
                dw      8                           ; fragment size

data_078b       dw      0FFFFh          ; 00 ipx checksum
                dw      0               ; 02 packet length
                db      0               ; 04 transport control
                db      IPX_PTYPE_NCP
data_140        db      10 dup (0)      ; 06 dest addr
data_142        dw      0               ; 10 dest socket
                db      12 dup (0)      ; 12 source addr + socket
ncp_resptype    dw      0               ; 1e request type
ncp_seqno       db      0               ; 20 sequence number, ds:[14h]
ncp_connr       db      0               ; 21 connection number, ds:[15h]
ncp_tasknr      db      0               ; 22 task number
ncp_reserved    db      0               ; 23 reserved, ds:[16h] (conn hi?)
ncp_compcode    db      0               ; 24 completion code
data_07b0       db      8 dup (0)       ; 25 payload

listen_ecb_3    IPX_ECB <0, 0, 0, 0, 0, 0>
data_151        dw      0                           ; fragment count
                dw      offset nw_checksum, seg_b   ; fragment pointer
                dw      38                          ; fragment size
                db      30 dup (0)

                dw      offset data_082c, seg_b     ; fragment pointer
                dw      12                          ; fragment size

nw_checksum     dw      0FFFFh                      ; 00 ipx checksum
nw_packet_len   dw      0                           ; 02 packet length
                db      0                           ; 04 transport control
                db      IPX_PTYPE_NCP
                db      12 dup (0)                  ; 06 dest addr + socket
                db      12 dup (0)                  ; 12 source addr + socket
nw_reply_type   dw      0                           ; 1e reply type
                db      0                           ; 20 sequence number
                db      0                           ; 21 connection number
                db      0                           ; 22 task number
                db      0                           ; 23 reserved
nw_comp_code    db      0                           ; 24 completion code
nw_conn_status  db      0                           ; 25 connection status

data_082c       db      12 dup (0)

; watchdog IPX event control block - used for sending and receiving
wdog_ecb        IPX_ECB <0, offset wdog_esr, seg_b, 0, 0, 0>
                dw      1                       ; fragment count
                dw      offset wdog_payload, seg_b ; fragment 1 pointer
                dw      20h                     ; fragment 1 size

wdog_payload    dw      0FFFFh                  ; ipx checksum
                dw      0                       ; length
                db      00h                     ; transport control
                db      IPX_PTYPE_NCP
wdog_dst_addr   db      12 dup (0)              ; dest address + socket
wdog_src_addr   db      12 dup (0)              ; source address + socket
wdog_packetslot db      0
wdog_signature  db      0

; VLM Overlay Asynchronous Control Block (OACB)
; interrup.m, #02894
vlm_oacb        dw      0, 0                        ; 00 link to next oacb
                dw      offset esr_01bf, seg_b      ; 04 callback address
                db      00h                         ; 08 inuse flag
                db      00h                         ; 09 flag (reserved)
                dw      VLMID_CONN                  ; 0a destination vlm
                db      42 dup (0)

; 
listen_ecb_4    IPX_ECB <0, offset esr_020d, seg_b, 0, 0, 0>
                dw      1                               ; fragment count
                dw      offset data_08e2, seg_b         ; fragment pointer
                dw      5ch                             ; fragment size

data_08e2       dw      0FFFFh                          ; 00 ipx checksum
                dw      0                               ; 02 packet length
                db      0                               ; 04 transport type
                db      IPX_PTYPE_NCP
                db      12 dup (0)                      ; 06 dest addr + socket
                db      12 dup (0)                      ; 12 source addr +socket
                db      0                               ; 1e ???
data_172        db      0
                db      60 dup (0)

; 
sched_ecb_1     IPX_ECB <0, offset loc_0279, seg_b, 0, 0, 10h>
                db      20 dup (0)

data_175        dd      00000h
                db      8 dup (0)
data_177        dw      0                               ; used for interval timing
semaphore_byte  db      0
data_179        db      0                               ; flags
                db      12 dup (0)
data_180        dw      0
data_181        db      0                               ; flags
data_182        db      0
data_183        dw      0
data_184        dw      0

; this control block seems to be the main one in use
send_ecb_2      IPX_ECB <0, 0, 0, 0, 0, 0>
                dw      2
                dw      offset send2_payload, seg_b
                db      32h
                db      0, 0, 0, 0, 0
data_187        dw      0

send2_payload   dw      0FFFFh                      ; 00 ipx checksum
                dw      0                           ; 02 packet length
                db      0                           ; 04 transport control
                db      IPX_PTYPE_NCP
data_188        db      0, 0, 0, 0                  ; 06 dest network
data_190        db      0, 0, 0, 0, 0, 0            ; 0a dest addr
data_191        dw      0                           ; 10 dest socket
                db      12 dup (0)                  ; source addr
                dw      CREATE_SERVICE_CONNECTION
data_192        dw      0
                db      'LIP Echo Data   '

loc_09fa:
                dw      0FFFFh                      ; ipx checksum
                dw      0                           ; packet length
                db      0                           ; transport type
                db      IPX_PTYPE_NCP
                db      28 dup (0)

listen_ecb_1    IPX_ECB <0, offset esr_033e, seg_b, 0, 0, 0>
                dw      16                            ; fragment count
                dw      offset loc_09fa, seg_b, 34    ; pointer and length
data_196        dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                dw      0AA0h, seg_b, 0
                ;              ^^^    ^^^^^
                ;              seg_b  ax

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

            
init_fn         proc far
                push    ax
                mov     ax,seg_c
                mov     ds,ax
                mov     data_205,bx
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     vlm_multiplex_ptr,bx
                mov     word ptr vlm_multiplex_ptr+2,es
                pop     ax
                or      ax,ax
                jz      loc_242
                call    sub_30
                call    sub_31
                call    sub_32
                mov     ax,seg_a
                mov     es,ax
                call    alloc_packet_mem
                jmp     loc_256
loc_242::
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                mov     cx,seg seg_a
                mov     es,cx
                mov     word ptr es:vlm_call_ptr_a,bx
                mov     word ptr es:vlm_call_ptr_a+2,ax
                mov     word ptr vlm_call_ptr_c,bx
                mov     word ptr vlm_call_ptr_c+2,ax
                push    es
                mov     cx,seg seg_b
                mov     es,cx
                mov     word ptr es:vlm_call_ptr_b,bx
                mov     word ptr es:vlm_call_ptr_b+2,ax

                mov     ax,7A20h                ;  vlm: get int24 address             
                mov     bx,5
                int     2Fh
                mov     ax,es
                pop     es
                mov     word ptr es:vlm_int24_ptr,bx
                mov     word ptr es:vlm_int24_ptr+2,ax
                mov     ax,data_205
                or      ax,ax
                jz      loc_243
                mov     es:seg_b_val,ax
                mov     cs:data_209,ax
loc_243::
                push    bx
                push    ds
                mov     ax,81Dh
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr vlm_multiplex_ptr
                add     sp,4
                pop     bx
                call    sub_31
                cmp     byte ptr cs:alt_sockets,0
                je      loc_244

                ; alternate sockets enabled
                mov     ax,90A8h
                mov     cs:socket_number,ax
loc_244::
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                sub     dx,dx
                assume  ds:seg_a
                mov     ax,min_time2net
                mov     cx,37h
                div     cx
                or      ax,ax
                jnz     loc_245
                inc     ax
loc_245::
                mov     min_time2net,ax
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
                mov     cs:ipx_call_ptr3,di
                mov     word ptr cs:ipx_call_ptr3+2,cx
                push    ax
                push    bx
                push    cx
                push    dx
                push    es
                push    di
                push    si
                xor     dx,dx
                mov     bx,IPX_GET_IPX_INFO
                call    dword ptr cs:ipx_call_ptr3
                pop     si
                pop     di
                pop     es
                mov     es:ipx_features,dx
                pop     dx
                pop     cx
                pop     bx
                pop     ax
                mov     ds,es:seg_b_val
                mov     si,437h
                xor     di,di
                push    es
                mov     es,di
                xor     cx,cx
                xor     dx,dx
                mov     bx,IPX_INIT_NET_ADDRESS
                call    dword ptr cs:ipx_call_ptr3
                pop     es
                mov     ax,seg_c
                mov     ds,ax
                mov     bx,IPX_GET_PACKET_SIZE
                push    es
                call    dword ptr ipx_call_ptr3
                pop     es
                mov     ax,cx
                shr     cx,1
                shr     cx,1
                sub     ax,cx
                mov     es:retry_count,ax
                cmp     es:cksum_support,1
                jbe     loc_246

                ; checksums enabled - see if the driver supports them
                mov     bx,IPX_GET_IPX_INFO
                xor     dx,dx
                push    es
                call    dword ptr ipx_call_ptr3
                pop     es
                test    dx,2                      ; checksum supported?
                jnz     loc_246

                ; no checksum support
                mov     es:cksum_support,0
                push    bx
                mov     ax,37h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx

loc_246::       ; checksum supported
                pop     es
                call    sub_33
                or      al,al
                jz      loc_248
loc_247::
                mov     dx,word ptr es:data_218
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
                call    dword ptr cs:vlm_multiplex_ptr
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
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                push    bx
                mov     ax,4
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,0
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                mov     ax,0FFFFh
                mov     bx,21h
                xor     cx,cx
                mov     dx,cx
                retf
loc_248::
                mov     word ptr es:data_218,dx
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
                mov     word ptr es:[vlm_calla_ptr],bx
                mov     word ptr es:[vlm_calla_ptr+2],ax
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
                mov     ds:[int_2f_prev],bx
                mov     ds:[int_2f_prev+2],es
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
                call    ncp_init
                mov     ax,seg_a
                mov     es,ax
                push    ds
                mov     ax,5D06h
                int     21h                     ; DOS Services  ah=function 5Dh
                                                ;  get DOS swap area ptr ds:si
                                                ;   swap sizes in cx and dx
                                                ;*  undocumented function
                add     si,10h
                mov     es:dos_sda_ptr,si
                mov     es:dos_sda_ptr+2,ds
                pop     ds
                mov     es,es:seg_b_val
                mov     si,offset wdog_ecb
                mov     bx,IPX_LISTEN
                push    es
                call    dword ptr ipx_call_ptr3
                pop     es
                mov     si,offset listen_ecb_4
                mov     bx,IPX_LISTEN
                call    dword ptr ipx_call_ptr3
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
init_fn         endp

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_30          proc    near
                push    bx
                mov     bx,0
                mov     dx,10h
                assume  ds:seg_c
                call    dword ptr vlm_multiplex_ptr
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
                call    dword ptr cs:vlm_multiplex_ptr
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
                call    dword ptr vlm_multiplex_ptr
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
                call    dword ptr vlm_multiplex_ptr
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
                call    dword ptr cs:vlm_multiplex_ptr
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
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                jmp     short loc_258
loc_260::
                mov     ipx_call_ptr3,di
                mov     word ptr ipx_call_ptr3+2,es
                pop     bx
                retn
sub_30          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

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


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_32          proc    near
                cmp     byte ptr load_low,0
                je      loc_ret_261
                mov     bx,5
                call    dword ptr vlm_multiplex_ptr

loc_ret_261::
                retn
sub_32          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_33          proc    near
                mov     bx,IPX_OPEN_SOCKET
                mov     al,0FFh
                mov     dx,cs:socket_number
                xchg    dh,dl
                call    dword ptr cs:ipx_call_ptr3
                test    cs:socket_number,0FFFFh
                jz      loc_ret_262
                inc     cs:socket_number

loc_ret_262::
                retn
sub_33          endp


;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_34          proc    near
                or      dx,dx
                jz      loc_ret_263
                mov     bx,IPX_CLOSE_SOCKET
                call    dword ptr cs:ipx_call_ptr3

loc_ret_263::
                retn
sub_34          endp


; initializes ncp IPX socket
ncp_init        proc    near
                mov     bx,IPX_OPEN_SOCKET
                mov     dx,socket_number
                xchg    dl,dh
                call    dword ptr ipx_call_ptr3
                or      al,al
                jnz     loc_265

                push    es
                mov     es,es:seg_b_val
                mov     es:[send_ecb_2.socket_nr],dx
                mov     es:[listen_ecb_1.socket_nr],dx
                push    es
                call    alloc_packet_mem
                pop     es
                mov     di,offset data_196

locloop_264::   ; update
                mov     es:[di+2],es
                mov     es:[di+4],ax
                add     di,6
                loop    locloop_264

                mov     si,offset listen_ecb_1
                mov     bx,IPX_LISTEN
                call    dword ptr ipx_call_ptr3
                pop     es
                retn

loc_265::       ; could not open IPX socket
                push    bx
                mov     ax,38h
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                push    bx
                mov     ax,4
                push    ax
                mov     bx,6
                mov     ah,0
                mov     al,1
                call    dword ptr vlm_multiplex_ptr
                add     sp,2
                pop     bx
                mov     es:large_packets,0
                retn
ncp_init        endp


; 
alloc_packet_mem  proc    near
                xor     ax,ax
                mov     bx,IPX_GET_MAX_PACKET_SIZE
                call    dword ptr ipx_call_ptr3
                or      ax,ax
                jnz     loc_266
                mov     bx,IPX_GET_PACKET_SIZE
                call    dword ptr ipx_call_ptr3
;*              add     ax,40h
                db       05h, 40h, 00h

loc_266::       ; max packet size in ax ...
                mov     cx,seg seg_a
                mov     es,cx
                xor     dx,dx
                mov     cx,0Fh
                add     ax,cx
                div     cx

                ; note: uses es = seg_a on entry...
    ;           ; this actually resolves to data_220
    ;           ; which seems to determine how much memory is consumed
                add     es:[26b2h],ax      ; (ax + 15) / 15
                retn
alloc_packet_mem  endp


;ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
;
;                       Program Entry Point
;
;ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


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

;ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
;                              SUBROUTINE
;ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ

sub_37          proc    near
                mov     ax,seg_a
                mov     ds,ax
                assume  ds:seg_a
                mov     ds,seg_b_val
                cmp     cs:pb_buffers,0
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
                mov     bx,offset semaphore_byte
                mov     byte ptr [bx],0
                int     15h                     ; General services, ah=func 83h
                                                ;  wait for event,cx:dx=microsec
                                                ;   es:bx=ptr to semaphore byte
                jc      loc_ret_273
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    dword ptr cs:ipx_call_ptr3
                mov     cx,ax
loc_271::
                assume  ds:seg_b
                test    semaphore_byte,80h
                jnz     loc_272
                push    cx
                mov     bx,IPX_GET_INTERVAL_MARKER
                call    dword ptr cs:ipx_call_ptr3
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
                mov     bx,offset semaphore_byte
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
vlm_call_ptr_c  dw      0, 0
vlm_multiplex_ptr dw    0, 0
data_205        dw      0
ipx_call_ptr3   dw      0, 0
ipx_version     dw      0
data_209        dw      0
data_210        dw      0
                db      'NETWARE DOS REQUESTER', 0
                db      'IPXNCP', 0
                db      'CONN'
                db      0
data_212        dw      0, 0
load_low        db      1
pb_buffers      dw      3
socket_number   dw      0
alt_sockets     db      0
                db      'CHECKSUM', 0
                dw      offset cksum_support, seg_a
                db      0, 0, 3, 0
                db      'LARGE INTERNET PACKETS', 0
                dw      offset large_packets, seg_a
                db       00h, 00h,0FFh,0FFh
                db      'LOAD LOW IPXNCP', 0
                dw      offset load_low, seg_c
                db       00h, 00h,0FFh,0FFh
                db      'HANDLE NET ERRORS', 0
                dw      offset handle_net_errors, seg_a
                db       00h, 00h,0FFh,0FFh
                db      'PB BUFFERS', 0
                dw      offset pb_buffers, seg_c
                db       00h, 00h,0FFh,0FFh
                db      'MI'
data_218        db      'NI'
                db      'MUM TIME TO NET'
                db       00h
                dw      offset min_time2net, seg_a
                db       01h, 00h,0FFh,0FFh
                db      'LIP START SIZE', 0
                dw      offset lip_start_size, seg_a
                db       40h, 02h,0FFh,0FFh
                db      'ALTERNATE SOCKETS', 0
                dw      offset alt_sockets, seg_c
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
data_220        dw      110h            ; used for memory additional count
; data_222 entries - used to fix up segments to seg_b
data_221        dw      480h, 4ach, 4cch, 763h
                dw      7deh, 83eh,  85eh, 888h
                dw      8b2h,  8beh,  8deh,  944h
                dw      96Eh, 9beh, 0a42h, 0a22h
                dw      787h, 802h, 9c4h
data_222        dw      13h
; data_243 entries - used to fix up segments to seg_a
data_223        dw      114h, 1094h, 10abh
data_224        dw      3
                db      12 dup (0)
                db      'VeRsIoN=1.21', 0
                db      'IPXNCP.VLM   - NetWare IPX transport '
data_227        dw      6F6Dh
                db      'dule  v1.21 (960514)', 0Dh, 0Ah
                db      0

seg_c           ends

                end     start
