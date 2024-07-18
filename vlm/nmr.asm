; The following equates show data references outside the range of the program.

data_1e         equ     2Ch
data_2e         equ     86h
data_3e         equ     0BCh
data_4e         equ     0BEh
video_port_     equ     463h
data_5e         equ     6B0h                    ;*
equip_bits      equ     10h
hdsk_count      equ     75h
video_options   equ     87h
hdsk0_media_st  equ     90h
hdsk1_media_st  equ     91h
keybd_flags_3   equ     96h
data_46e        equ     8E0h                    ;*
data_47e        equ     8E2h                    ;*
data_175e       equ     0Ah
data_176e       equ     0E6F7h

include common.inc
include exe.inc

;------------------------------------------------------------  seg_a   ----

seg_a           segment byte public
                assume cs:seg_a  , ds:seg_a

                dw      0h, seg_c
                dw      offset loc_003d, seg_a
                dw      offset loc_0056, seg_a
                dw      offset loc_00c5, seg_a
                dw      offset loc_0480, seg_a
                dw      offset loc_049d, seg_a
                dw      offset loc_00e6, seg_a
                dw      0, 0
                db      "NVlm"
                ; note: no VLM ID present for this module!

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2           proc    near
                mov     bx,0
                push    bp
                mov     bp,VLMID_NMR
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,EXE_FUNC_04
                push    bp
                call    dword ptr cs:vlm_call_ptr
                pop     bp
                retn
sub_2           endp

data_7          dw      offset loc_1            ; Data table (indexed access)

loc_003d:
                db       83h,0FBh, 01h, 72h, 04h,0B8h
                db       11h, 88h,0CBh,0D1h,0E3h, 2Eh
                db      0FFh,0A7h, 3Bh, 00h

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_1::
                mov     bx,1
                mov     cx,15h
                xor     ax,ax
                retf

loc_0056:
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
                mov     al,28h                  ; '('
                call    sub_2
                mov     ax,0
                jz      loc_2
                mov     ax,884Eh
loc_2::
                mov     al,2Ah                  ; '*'
                call    sub_2
                mov     ax,0
                jz      loc_3
                mov     ax,884Eh
loc_3::
                or      cx,cx
                jnz     loc_4
                push    ds
                mov     ds,data_9
                push    ds
                assume  ds:seg_b
                mov     dx,data_64
                mov     ds,word ptr data_64+2
                mov     ax,2528h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                mov     dx,data_66
                mov     ds,word ptr data_66+2
                mov     ax,252Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                pop     ds
                mov     bx,1
                xor     ax,ax
                assume  ds:seg_a
                call    dword ptr data_11
                jc      loc_4
                mov     bx,1
                mov     ax,1
                call    dword ptr data_11
                jc      loc_4
                xor     ax,ax
loc_4::
                pop     es
                pop     ds
                pop     bp
                pop     si
                pop     di
                pop     dx
                pop     cx
                pop     bx
                retf

loc_00c5:
                push    cx
                push    si
                push    di
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                mov     si,offset data_8
                cmp     cx,[si]
                jbe     loc_5
                mov     cx,[si]
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

loc_00e6:
                mov     es,dx
                xchg    di,bx
                jmp     word ptr data_24[si]    ;*14 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_6::
                mov     byte ptr data_20,0FFh

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_7::
                push    di
                mov     bp,0FFFFh
                inc     di
                xor     cx,cx
                mov     data_19,cl
                mov     data_21,cx
loc_8::
                inc     bp
                mov     ax,bp
                cmp     byte ptr data_20,0FFh
                je      loc_9
                call    sub_4
                jnz     loc_11
                mov     ax,bp
                stosw
                call    sub_3
                lds     si,data_44
                lds     si,dword ptr [si+6]
                jmp     short loc_10
loc_9::
                call    sub_5
                jnz     loc_11
                mov     ax,bp
                stosw
                call    sub_6
                lds     si,dword ptr ds:data_5e
                lds     si,dword ptr [si+32h]
loc_10::
                xor     ch,ch
                mov     cl,[si]
                mov     al,cl
                stosb
                inc     si
                shr     cx,1
                push    di
                rep     movsw
                adc     cx,cx
                rep     movsb
                mov     es:[di],cl
                pop     di
                add     di,11h
                mov     ax,seg_a
                mov     ds,ax
                add     data_21,11h
                inc     data_19
                jmp     short loc_8
loc_11::
                cmp     ax,8004h
                je      loc_8
                pop     di
                mov     al,data_19
                mov     es:[di],al
                mov     dx,es
                mov     bx,di
                mov     cx,data_21
                cbw
                add     ax,ax
                add     ax,ax
                add     cx,ax
                xor     ax,ax
                mov     data_20,al
                cli
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3           proc    near
                push    es
                xor     bx,bx
                call    dword ptr data_42
                mov     word ptr data_44,si
                mov     word ptr data_44+2,es
                pop     es
                retn
sub_3           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4           proc    near
                push    bx
                push    cx
                push    di
                push    es
                mov     bx,13h
                call    dword ptr cs:data_17
                or      ax,ax
                mov     word ptr cs:data_42,si
                mov     word ptr cs:data_42+2,es
                pop     es
                pop     di
                pop     cx
                pop     bx
                retn
sub_4           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5           proc    near
                push    bx
                push    es
                mov     bx,12h
                call    dword ptr cs:data_17
                or      ax,ax
                mov     cs:data_38,si
                mov     word ptr cs:data_38+2,es
                pop     es
                pop     bx
                retn
sub_5           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6           proc    near
                push    es
                mov     bx,0
                call    dword ptr cs:data_38
                mov     cs:data_40,si
                mov     cs:data_41,es
                pop     es
                retn
sub_6           endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_12::
                push    di
                push    es
                mov     ax,es:[bx+4]
                call    sub_4
                mov     ah,0
                jnz     loc_13
                call    sub_3
                jnz     loc_13
                mov     si,word ptr data_44
                mov     ds,word ptr data_44+2
                movsw
                push    si
                push    ds
                push    di
                call    sub_7
                pop     di
                add     di,2Ah
                push    di
                call    sub_7
                pop     di
                add     di,11h
                pop     ds
                pop     si
                add     si,8
                mov     cl,9
                rep     movsw
                xor     ax,ax
                mov     cx,4Fh
loc_13::
                pop     dx
                pop     bx
                cli
                retf
loc_14::
                cmp     byte ptr data_20,0FFh
                je      loc_21
                jmp     short loc_17

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_15::
                mov     byte ptr data_20,0FFh
                push    di
                push    es

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_16::
                mov     ax,es:[bx+4]
                call    sub_4
                mov     cx,0
                mov     ah,cl
                jnz     loc_14
                mov     bx,1
                push    es
                call    dword ptr data_42
                push    es
                pop     ds
                pop     es
                mov     cx,[si+14h]
                cmp     byte ptr cs:data_20,0FFh
                je      loc_18
                add     cx,cx
                add     cx,cx
                add     cx,16h
                xor     ax,ax
loc_17::
                mov     dx,ds
                mov     bx,si
                cli
                retf
loc_18::
                mov     ax,cx
                stosw
                or      ax,ax
                jnz     loc_19
                inc     cx
                inc     cx
                jmp     short loc_20
loc_19::
                add     ax,ax
                add     ax,ax
                add     si,16h
                add     si,ax
                mov     ax,0FBh
                call    sub_8
                jc      loc_21
                mov     cx,dx
                inc     cx
                inc     cx
loc_20::
                xor     ax,ax
loc_21::
                mov     bp,seg seg_a
                mov     ds,bp
                mov     byte ptr data_20,0
                pop     dx
                pop     bx
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_22::
                push    di
                push    es
                mov     ax,es:[bx+4]
                call    sub_5
                mov     ah,0
                jnz     loc_23
                mov     ax,es:[bx+4]
                call    sub_6
                mov     si,data_40
                mov     ds,data_41
                mov     cx,2Eh
                shr     cx,1
                rep     movsw
                push    di
                call    sub_7
                pop     di
                add     di,2Ah
                push    di
                call    sub_7
                pop     di
                add     di,0Ah
                push    di
                call    sub_7
                pop     di
                add     di,2Ah
                mov     cx,3Ch
                shr     cx,1
                rep     movsw
                pop     dx
                pop     bx
                mov     cx,0C8h
                xor     ax,ax
loc_23::
                cli
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7           proc    near
                push    si
                push    ds
                lds     si,dword ptr [si]
                xor     ch,ch
                mov     cl,[si]
                mov     dx,cx
                inc     dx
                inc     dx
                inc     cl
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                xchg    al,cl
                stosb
                pop     ds
                pop     si
                add     si,4
                retn
sub_7           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8           proc    near
                push    ax
                xor     dx,dx

locloop_24::
                push    cx
                push    si
                push    ds
                lds     si,dword ptr [si]
                xor     ch,ch
                mov     cl,[si]
                add     dx,cx
                cmp     dx,20Eh
                jae     loc_26
                inc     si
                mov     al,cl
                stosb
                shr     cx,1
                rep     movsw
                adc     cx,cx
                rep     movsb
                xchg    al,cl
                stosb
                inc     dx
                inc     dx
                pop     ds
                pop     si
                add     si,4
                pop     cx
                loop    locloop_24

                clc
loc_25::
                pop     ax
                retn
loc_26::
                pop     ds
                pop     si
                pop     cx
                sub     dx,cx
                stc
                jmp     short loc_25
sub_8           endp

loc_27::
                cmp     byte ptr cs:data_20,0FFh
                je      loc_33
                jmp     short loc_30

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_28::
                mov     byte ptr data_20,0FFh
                push    di
                push    es

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29::
                mov     ax,es:[bx+4]
                call    sub_5
                mov     ah,0
                jnz     loc_27
                mov     ax,es:[bx+4]
                mov     bx,1
                push    es
                call    dword ptr data_38
                push    es
                pop     ds
                pop     es
                mov     cx,[si+3Ch]
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                cmp     byte ptr data_20,0FFh
                pop     ds
                jz      loc_31
                add     cx,cx
                add     cx,cx
                add     cx,3Eh
                xor     ax,ax
loc_30::
                mov     dx,ds
                mov     bx,si
                cli
                retf
loc_31::
                mov     ax,cx
                stosw
                or      ax,ax
                jz      loc_32
                add     ax,ax
                add     ax,ax
                add     si,3Eh
                add     si,ax
                mov     ax,0FBh
                call    sub_8
                jc      loc_33
                mov     cx,dx
                inc     cx
                inc     cx
loc_32::
                xor     ax,ax
loc_33::
                mov     si,seg seg_a
                mov     ds,si
                mov     byte ptr data_20,0
                pop     dx
                pop     bx
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_34::
                mov     ax,es:[bx+4]
                call    sub_5
                mov     bx,6
                call    dword ptr data_38
                or      ax,ax
                jz      loc_36
                cmp     ax,8005h
                jne     loc_35
                mov     al,0F9h
                jmp     short loc_37
loc_35::
                cmp     ax,8008h
                jne     loc_37
                mov     al,0FAh
                jmp     short loc_37
loc_36::
                xor     al,al
loc_37::
                xor     ah,ah
                xor     cx,cx
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_38::
                mov     byte ptr data_20,0FFh
                push    di
                push    es

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_39::
                push    es
                mov     bx,14h
                call    dword ptr data_17
                push    es
                pop     ds
                pop     es
                mov     cx,[si+30h]
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                cmp     byte ptr data_20,0FFh
                pop     ds
                jz      loc_40
                add     cx,cx
                add     cx,cx
                add     cx,32h
                xor     ax,ax
                mov     dx,ds
                mov     bx,si
                cli
                retf
loc_40::
                mov     ax,cx
                stosw
                or      cx,cx
                jnz     loc_41
                inc     cx
                inc     cx
                jmp     short loc_42
loc_41::
                mov     bx,cx
                add     bx,bx
                add     bx,bx
                lea     si,[bx+si+32h]
                mov     ax,0FBh
                call    sub_8
                jc      loc_43
loc_42::
                xor     ax,ax
loc_43::
                mov     bp,seg seg_a
                mov     ds,bp
                mov     byte ptr data_20,0
                pop     dx
                pop     bx
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_44::
                mov     bx,19h
                call    dword ptr data_17
                mov     cx,1Ch
                xor     ax,ax
                mov     dx,es
                mov     bx,si
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_45::
                mov     bx,7
                call    dword ptr data_18
                push    ds
                pop     es
                mov     di,dx
                mov     si,dx
                mov     cx,0FFh
                mov     si,cx
                xor     ax,ax
                repne   scasb
                sub     si,cx
                mov     cx,si
                mov     bx,dx
                mov     dx,ds
                xor     ax,ax
                cli
                retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
                mov     ax,es:[bx+4]
                mov     bx,2Ah
                push    di
                call    dword ptr data_17
                pop     di
                push    di
                mov     ax,bx
                stosw
                mov     ax,dx
                stosw
                mov     cx,4
                xor     ax,ax
                mov     dx,es
                pop     bx
                cli
                retf
                db       00h

loc_0480:
                db      0BEh, 7Eh, 05h, 8Eh, 0C2h
                db      0B8h
                dw      seg_a
                db       8Eh,0D8h, 8Bh,0FBh,0B9h, 6Ah
                db       00h, 51h,0D1h,0E9h,0F3h,0A5h
                db       13h,0C9h,0F3h,0A4h, 59h, 33h
                db      0C0h,0FAh,0CBh,0FCh, 8Eh,0DAh
                db      0BAh,0FFh,0FFh, 8Bh,0CAh, 8Bh
                db      0FBh
                db      53h
loc_47::
                clc
                mov     ah,4
                int     1Ah                     ; Real time clock   ah=func 04h
                                                ;  get date  cx=year, dx=mon/day
                jc      loc_47
                mov     [di],dx
                mov     [di+2],cx
loc_48::
                mov     ah,2
                int     1Ah                     ; Real time clock   ah=func 02h
                                                ;  read clock cx=hrs/min, dh=sec
                                                ;   dl=0 standrd,=1 daylight sav
                jc      loc_48
                mov     [di+4],dx
                mov     [di+6],cx
                xor     ax,ax
                mov     es,ax
                mov     ax,es:data_2e
                or      ax,ax
                jz      loc_49
                mov     bx,0FFFFh
                mov     ax,15h
                int     33h                     ; Mouse driver    ax=func 0015h
                                                ;  get state buffer size in bx
                mov     byte ptr [di+8],1
                cmp     bx,0FFFFh
                jne     loc_50
loc_49::
                mov     byte ptr [di+8],0
loc_50::
                lea     si,[di+2Eh]
                lea     di,[di+2Fh]
                mov     ah,52h
                int     21h                     ; DOS Services  ah=function 52h
                                                ;  get DOS data table ptr es:bx
                                                ;*  undocumented function
                push    di
                lea     di,[bx+21h]
                xor     ch,ch
                mov     cl,es:[di]
                pop     di
                mov     bp,51h
                push    ds
                mov     ax,seg_a
                mov     ds,ax
                cmp     byte ptr data_22+1,4
                pop     ds
                jc      loc_51
                mov     bp,58h
loc_51::
                add     bx,16h
                mov     dx,1
                push    ds
                push    es
                pop     ds
                pop     es
                lds     bx,dword ptr [bx]

locloop_52::
                test    word ptr [bx+43h],8000h
                jnz     loc_53
                test    word ptr [bx+43h],4000h
                jz      loc_53
                push    bx
                mov     bl,dl
                mov     ax,4408h
                int     21h                     ; DOS Services  ah=function 44h
                                                ;  IOctl-8 is drive bl removable
                pop     bx
                or      ax,ax
                jz      loc_53
                mov     al,dl
                cbw
                stosb
                inc     dh
                push    bx
                push    cx
                push    dx
                mov     ah,36h
                int     21h                     ; DOS Services  ah=function 36h
                                                ;  get drive info, drive dl,1=a:
                                                ;   returns ax=sectors per clust
                                                ;   bx=avail clust,cx=bytes/sect
                                                ;   dx=clusters per drive
                stosw
                xor     ax,ax
                stosw
                mov     ax,dx
                stosw
                xor     ax,ax
                stosw
                mov     ax,bx
                stosw
                xor     ax,ax
                stosw
                mov     ax,cx
                stosw
                pop     dx
                pop     cx
                pop     bx
loc_53::
                inc     dx
                add     bx,bp
                loop    locloop_52

                mov     es:[si],dh
                mov     al,dh
                cbw
                mov     cl,0Fh
                mul     cl
                add     al,dh
                inc     ax
                push    es
                pop     dx
                pop     si
                mov     cx,3Eh
                add     cx,ax
                xor     ax,ax
                retf
data_8          db      2
                db      0
data_9          dw      seg_b
data_10         db      0, 0
data_11         dw      0, 0
vlm_call_ptr    dw      0, 0
                db      256 dup (0)
data_15         dw      0, 0
data_17         dw      0, 0
data_18         dw      0, 0
data_19         db      0
data_20         db      0
data_21         dw      0
data_22         dw      0
data_24         dw      offset loc_7            ; Data table (indexed access)
data_25         dw      offset loc_12
data_26         dw      offset loc_16
data_27         dw      offset loc_15
data_28         dw      offset loc_6
data_29         dw      offset loc_22
data_30         dw      offset loc_29
data_31         dw      offset loc_28
data_32         dw      offset loc_34
data_33         dw      offset loc_39
data_34         dw      offset loc_38
data_35         dw      offset loc_44
data_36         dw      offset loc_45
data_37         dw      offset loc_46
data_38         dw      0, 0
data_40         dw      0
data_41         dw      0                       ; segment storage
data_42         dw      0, 0
data_44         dd      00000h
                db      0, 0, 0, 0

seg_a           ends



;------------------------------------------------------------  seg_b   ----

seg_b           segment byte public
                assume cs:seg_b  , ds:seg_b


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9           proc    near
                push    bp
                mov     bp,0
                push    bp
                mov     bp,VLMID_EXE
                push    bp
                mov     bp,4
                push    bp
                call    dword ptr cs:vlm_call_ptr2
                pop     bp
                retn
sub_9           endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10          proc    near
                push    ax
                push    si
                push    ds
                cld
                lds     si,cs:data_68
                lodsw
                or      ax,ax
                pop     ds
                pop     si
                pop     ax
                jnz     loc_ret_55

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_11::
                cmp     byte ptr cs:data_52,0FFh
                je      loc_54
                cmp     byte ptr cs:data_51,0FFh
                jne     loc_ret_55
loc_54::
                push    ax
                mov     al,1
                xchg    cs:data_53,al
                or      al,al
                pop     ax
                jnz     loc_ret_55
                pushf
                push    bx
                mov     bx,1
                call    sub_9
                pop     bx
                popf

loc_ret_55::
                retn
sub_10          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_2Ah_entry   proc    far
                cmp     ah,84h
                je      loc_57
loc_56::
                jmp     dword ptr cs:data_66
loc_57::
                call    sub_10
                jnz     loc_56
                call    sub_12
                jmp     short loc_56
int_2Ah_entry   endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_28h_entry   proc    far
                call    sub_11
                jz      loc_59
loc_58::
                jmp     dword ptr cs:data_64
loc_59::
                call    sub_12
                jmp     short loc_58
int_28h_entry   endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12          proc    near
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
                cmp     byte ptr cs:data_52,0FFh
                je      loc_61
                call    sub_13
                mov     bx,3
                call    dword ptr cs:data_59
loc_60::
                push    bx
                mov     bx,2
                call    sub_9
                pop     bx
                mov     byte ptr cs:data_53,0
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
loc_61::
                push    cs
                pop     ds
                mov     byte ptr data_52,0
                mov     si,10h
                mov     bp,6
                mov     di,data_55
                mov     bx,data_56
                mov     ds,data_57
                callf   sub_15
                jmp     short loc_60
sub_12          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13          proc    near
                mov     ax,0
                push    ax
                mov     ax,VLMID_NMR
                push    ax
                mov     ax,5
                push    ax
                push    cs
                pop     ds
                mov     dx,data_57
                mov     di,data_55
                mov     bx,data_56
                inc     data_51
                call    dword ptr vlm_call_ptr2
                retn
sub_13          endp

                                                ;* No entry point to code
                call    sub_10
                jnz     loc_64
                call    sub_13
                cmp     ax,8846h
                je      loc_64
                mov     byte ptr cs:data_54,12h
loc_62::
                mov     bx,3
                call    dword ptr cs:data_59
                mov     bx,2
                call    sub_9
                mov     byte ptr cs:data_53,0

loc_ret_63::
                retf
loc_64::
                cmp     byte ptr cs:data_51,0FFh
                jne     loc_ret_63
                dec     cs:data_54
                jnz     loc_65
                xor     ah,ah
                mov     al,93h
                jmp     short loc_62
loc_65::
                call    sub_14
                jmp     short loc_ret_63

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14          proc    near
                push    ds
                push    cs
                pop     ds
                push    di
                xor     ax,ax
                mov     di,offset data_76
                mov     [di+30h],ds
                mov     word ptr [di+26h],2D4h
                mov     word ptr [di+16h],3
                mov     word ptr [di+1Ah],0
                call    dword ptr data_49
                pop     di
                pop     ds
                retn
sub_14          endp

                                                ;* No entry point to code
                or      al,al
                jnz     loc_66
                cmp     word ptr [di],0
                jne     loc_71
                cmp     word ptr [di+2],0
                jne     loc_69
                sti
                mov     bp,4
                jmp     short loc_73
loc_66::
                dec     al
                jnz     loc_67
                retf
loc_67::
                dec     al
                jnz     loc_68
                mov     ax,0
                retf
loc_68::
                mov     al,0FDh
                retf
loc_69::
                cmp     word ptr [di+2],1
                jne     loc_68
                mov     byte ptr cs:data_51,0FFh
                mov     cs:data_56,bx
                mov     cs:data_55,di
                mov     cs:data_57,ds
                call    sub_14
loc_70::
                mov     ax,0FF00h
                retf
loc_71::
                cmp     word ptr [di],1
                jne     loc_68
                or      al,al
                jnz     loc_66
                sti
                mov     si,[di+2]
                cmp     si,8
                jne     loc_72
                mov     byte ptr cs:data_52,0FFh
                mov     cs:data_56,bx
                mov     cs:data_55,di
                mov     cs:data_57,ds
                jmp     short loc_70
loc_72::
                add     si,si
                mov     bp,6

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15          proc    far
loc_73::
                mov     dx,ds
                push    di
                mov     ax,seg_a
                mov     ds,ax
                mov     es,cs:data_58
                mov     di,offset data_70
                mov     ax,bp
                stosw
                add     di,0Ch
                mov     ax,bx
                stosw
                add     di,6
                mov     ax,dx
                stosw
                inc     di
                inc     di
                mov     ax,si
                stosw
                inc     di
                inc     di
                pop     ax
                stosw
                inc     di
                inc     di
                push    ds
                pop     ax
                stosw
                mov     di,268h
                xor     ax,ax
                call    dword ptr cs:data_49
                xor     al,al
                mov     ah,0FFh
                retf
sub_15          endp

                                                ;* No entry point to code
                mov     ds,cs:data_58
                mov     dx,data_75
                mov     si,data_73
                mov     cx,data_74
                mov     ax,data_72
                mov     bx,3
                call    dword ptr data_59
                retf
                db      7 dup (0)
data_49         dw      0, 0
                db       00h, 00h, 00h, 00h, 4Ch, 01h
                dw      seg_b
                db       00h, 00h, 01h, 00h, 15h
                db      7 dup (0)
                db       4Ch, 01h
                dw      seg_b
                db       01h, 00h, 01h, 00h, 15h, 00h
                db       00h, 00h
data_51         db      0
data_52         db      0
data_53         db      0
data_54         db      0Ch
data_55         dw      0
data_56         dw      0
data_57         dw      0                       ; segment storage
data_58         dw      seg_b
data_59         dw      0, 0
vlm_call_ptr2   dw      0, 0
                db      0, 0, 0, 0
data_64         dw      0, 0
data_66         dw      0, 0
data_68         dd      00000h
                db       00h, 00h, 00h, 00h,0FDh, 01h
                dw      seg_b
                db      0, 0, 0, 1
data_70         db      0
                db      9 dup (0)
data_72         dw      0
                db      0, 0
data_73         dw      0
                db      0, 0
data_74         dw      0
                db      0, 0
data_75         dw      0
                db      18 dup (0)
data_76         db      0
                db      9 dup (0)
                db       20h, 00h, 08h, 00h
                db      44 dup (0)
                db      0E8h, 00h
                dw      seg_b
                db      36 dup (0)

seg_b           ends



;------------------------------------------------------------  seg_c   ----

seg_c           segment byte public
                assume cs:seg_c  , ds:seg_c

                                                ;* No entry point to code
                push    ax
                push    bx
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,7A20h
                mov     bx,2
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     data_101,bx
                mov     word ptr data_101+2,es
                pop     bx
                pop     cx
                mov     ax,0FFFFh
                push    ds
                mov     ax,1442h
                push    ax
                mov     ax,115h
                push    ax
                mov     ax,0
                push    ax
                push    ds
                mov     ax,143Ah
                push    ax
                call    sub_20
                add     sp,0Ch
                or      ax,ax
                jz      loc_74
                jmp     loc_87
loc_74::
                mov     ax,cx
                or      ax,ax
                jz      loc_75
                jmp     loc_82
loc_75::
                mov     ax,seg_a
                mov     es,ax
                push    bx
                push    es
                mov     ax,7A20h
                mov     bx,0
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     cx,es
                pop     es
                mov     word ptr es:vlm_call_ptr,bx
                mov     word ptr es:vlm_call_ptr+2,cx
                mov     data_99,bx
                mov     data_100,cx
                mov     ax,seg_b
                mov     es,ax
                mov     word ptr es:vlm_call_ptr2,bx
                mov     word ptr es:vlm_call_ptr2+2,cx
                mov     ax,seg_a
                mov     es,ax
                push    es
                mov     ax,7A20h
                mov     bx,1
                int     2Fh                     ; ??INT Non-standard interrupt
                mov     ax,es
                pop     es
                mov     es:data_46e,bx
                mov     es:data_47e,ax
                pop     bx
                mov     data_103,bx
                or      bx,bx
                jz      loc_76
                mov     es:data_9,bx
                mov     ax,seg_b
                mov     es,ax
                mov     es:data_58,bx
loc_76::
                mov     ax,seg_c
                mov     ds,ax
                push    bx
                push    ds
                mov     ax,147Dh
                push    ax
                mov     bx,6
                mov     ah,1
                mov     al,2
                call    dword ptr data_101
                add     sp,4
                pop     bx
                mov     bx,data_103
                or      bx,bx
                jz      loc_79
                mov     ax,seg_b
                mov     es,ax
                mov     dx,bx
                mov     si,offset data_112
                mov     cx,data_113
                jcxz    loc_78
                cld

locloop_77::
                lodsw
                mov     bx,ax
                mov     es:[bx],dx
                loop    locloop_77

loc_78::
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
                adc     cl,0
                rep     movsb
loc_79::
                mov     ax,3528h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     dx,es
                mov     ax,seg_a
                mov     es,ax
                push    es
                mov     ds,es:data_9
                assume  ds:seg_b
                mov     data_64,bx
                mov     word ptr data_64+2,dx
                mov     dx,offset int_28h_entry
                mov     ax,2528h
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ax,352Ah
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     dx,es
                pop     es
                mov     data_66,bx
                mov     word ptr data_66+2,dx
                mov     dx,offset int_2Ah_entry
                mov     ax,252Ah
                int     21h                     ; DOS Services  ah=function 25h
                                                ;  set intrpt vector al to ds:dx
                mov     ah,34h
                int     21h                     ; DOS Services  ah=function 34h
                                                ;  get DOS critical ptr es:bx
                                                ;*  undocumented function
                dec     bx
                mov     word ptr data_68,bx
                mov     word ptr data_68+2,es
                call    sub_18
                mov     ax,seg_a
                mov     ds,ax
                mov     ax,7A2Fh
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jz      loc_80
                jmp     loc_87
loc_80::
                assume  ds:seg_a
                mov     word ptr data_11,di
                mov     word ptr data_11+2,es
                mov     word ptr data_10,bx
                push    ds
                mov     ds,data_9
                assume  ds:seg_b
                mov     word ptr data_59,di
                mov     word ptr data_59+2,es
                push    ds
                pop     es
                pop     ds
                xor     bx,bx
                mov     si,224h
                push    bx
                assume  ds:seg_a
                call    dword ptr data_11
                pop     bx
                jnc     loc_81
                jmp     loc_87
loc_81::
                mov     si,234h
                call    dword ptr data_11
                jnc     loc_82
                jmp     loc_87
loc_82::
                mov     ax,7A2Fh
                int     2Fh                     ; ??INT Non-standard interrupt
                or      ax,ax
                jz      loc_83
                mov     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,4
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,2
                mov     ax,4
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,0FFFFh
                jmp     loc_87
loc_83::
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                mov     bx,ax
                xchg    bl,bh
                mov     ax,seg_a
                mov     es,ax
                mov     es:data_22,bx
                cmp     bh,3
                ja      loc_84
                jnz     loc_84
                cmp     bl,1
                jae     loc_84
                mov     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,3
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,2
                mov     ax,3
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,0FFFEh
                jmp     short loc_87
loc_84::
                call    sub_17
                jz      loc_85
                jmp     short loc_87
loc_85::
                mov     ax,1600h
                int     2Fh                     ; Enhanced Windows install check
                test    al,7Fh
                jz      loc_86
                mov     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,5
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,2
                mov     ax,5
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,2
                mov     ax,0FFFDh
                jmp     short loc_87
loc_86::
                mov     ax,seg_c
                mov     ds,ax
                mov     si,seg_a+223h
                sub     si,seg_c
                mov     cx,seg seg_c
                sub     cx,seg_b
                mov     dx,seg seg_b
                sub     dx,seg_a
                xor     ax,ax
loc_87::
                push    ax
                push    cs
                pop     ds
                mov     ah,3Eh                  ; '>'
                assume  ds:seg_c
                mov     bx,data_146
                int     21h                     ; DOS Services  ah=function 3Eh
                                                ;  close file, bx=file handle
                mov     bx,100h
                pop     ax
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16          proc    near
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
                mov     ax,seg_c
                mov     ds,ax
                pushf
                pop     bx
                mov     ax,0FFFh
                and     ax,bx
                push    ax
                popf
                pushf
                pop     ax
                and     ax,0F000h
                cmp     ax,0F000h
                mov     byte ptr data_105,1
                jz      $+43h
                or      bx,0F000h
                push    bx
                popf
                pushf
                pop     ax
                and     ax,0F000h
                mov     byte ptr data_105,2
                jz      $+31h
                db       66h, 9Ch, 8Bh,0DCh, 83h,0E4h
                db      0FCh, 66h, 9Ch, 66h, 58h, 66h
                db       8Bh,0C8h, 66h, 35h, 00h, 00h
                db       04h, 00h, 66h, 50h, 66h, 9Dh
                db       66h, 9Ch, 66h, 58h, 66h, 33h
                db      0C1h,0C6h, 06h, 46h, 14h, 03h
                db       8Bh,0E3h, 74h, 05h,0C6h, 06h
                db       46h, 14h, 04h, 66h, 9Dh,0DBh
                db      0E3h,0C7h, 06h, 48h, 14h, 5Ah
                db       5Ah,0DDh, 3Eh, 48h, 14h,0A1h
                db       48h, 14h, 0Ah,0C0h, 75h, 6Dh
                db      0D9h, 3Eh, 48h, 14h,0A1h, 48h
                db       14h, 25h, 3Fh, 10h, 3Dh, 3Fh
                db       00h, 75h, 5Eh, 80h, 3Eh, 46h
                db       14h, 04h, 75h, 07h,0C6h, 06h
                db       47h, 14h, 04h,0EBh, 50h, 80h
                db       3Eh, 46h, 14h, 03h, 75h, 2Dh
                db       9Bh,0D9h,0E8h, 9Bh,0D9h,0EEh
                db       9Bh,0DEh,0F9h, 9Bh,0D9h,0C0h
                db       9Bh,0D9h,0E0h, 9Bh,0DEh,0D9h
                db       9Bh,0DDh, 3Eh, 48h, 14h,0C6h
                db       06h, 47h, 14h, 02h,0A1h, 48h
                db       14h, 9Eh, 74h, 05h,0C6h, 06h
                db       47h, 14h, 03h, 66h, 51h, 66h
                db       9Dh,0EBh, 1Ch, 80h, 3Eh, 46h
                db       14h, 02h, 75h, 07h,0C6h, 06h
                db       47h, 14h, 02h,0EBh, 0Eh, 80h
                db       3Eh, 46h, 14h, 01h, 75h, 07h
                db      0C6h, 06h, 47h, 14h, 01h,0EBh
                db       00h
loc_88::
                mov     ax,data_105
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
                retn
sub_16          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17          proc    near
                push    dx
                push    ds
                xor     ax,ax
                mov     ds,ax
                mov     ax,ds:data_3e
                mov     dx,ds:data_4e
                or      ax,dx
                jz      loc_91
                mov     ax,seg_c
                mov     ds,ax
                mov     ax,0BF00h
loc_89::
                inc     ah
                jz      loc_91
                push    ax
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                pop     ax
                jnz     loc_89
                mov     di,si
                mov     si,offset data_109      ; ('LINKSUP')
                mov     cx,4
                repe    cmpsw
                jnz     loc_89
                mov     ax,seg_a
                mov     ds,ax
                push    ds
                pop     es
                assume  ds:seg_a
                mov     data_15,bx
                mov     word ptr data_15+2,dx
                mov     si,682h
                mov     bx,2
                call    dword ptr data_15
                xor     ax,ax
                or      ax,ax
loc_90::
                pop     ds
                pop     dx
                or      ax,ax
                retn
loc_91::
                mov     ax,1
                jmp     short loc_90
sub_17          endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


nmr             proc    far

start::
                mov     ah,4Ch                  ; 'L'
                mov     al,6
                int     21h                     ; DOS Services  ah=function 4Ch
                                                ;  terminate with al=return code
copyright       db      'CoPyRiGhT=(C) Copyright 1993 - 1'
                db      '996 Novell, Inc.'
                db      '  All Rights Reserved.'
                db      11 dup (0)

nmr             endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18          proc    near
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
                mov     bx,57Eh
                mov     ax,seg_a
                mov     ds,ax
loc_92::
                mov     ah,4
                int     1Ah                     ; Real time clock   ah=func 04h
                                                ;  get date  cx=year, dx=mon/day
                jc      loc_92
                mov     [bx],dx
                mov     [bx+2],cx
loc_93::
                mov     ah,2
                int     1Ah                     ; Real time clock   ah=func 02h
                                                ;  read clock cx=hrs/min, dh=sec
                                                ;   dl=0 standrd,=1 daylight sav
                jc      loc_93
                mov     [bx+4],dx
                mov     [bx+6],cx
                push    bx
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                pop     bx
                mov     [bx+8],ax
                mov     word ptr [bx+0Ah],1
                push    bx
                mov     ax,4452h
                int     21h                     ; ??INT Non-standard interrupt
                pop     bx
                jc      loc_94
                mov     word ptr [bx+0Ah],3
                and     al,0F0h
                mov     cl,4
                shr     al,cl
                cbw
                mov     [bx+8],ax
loc_94::
                mov     ax,40h
                mov     es,ax
                mov     ax,es:equip_bits
                test    ax,4
                jz      loc_95
                mov     byte ptr [bx+2Dh],1
loc_95::
                test    ax,2
                jz      loc_96
                mov     byte ptr [bx+18h],1
loc_96::
                push    ax
                pop     dx
                and     dh,0C0h
                rol     dh,1
                rol     dh,1
                mov     [bx+0Dh],dh
                push    ax
                pop     dx
                and     dh,0Eh
                shr     dh,1
                mov     [bx+0Ch],dh
                push    ax
                pop     dx
                and     dl,0C0h
                rol     dl,1
                rol     dl,1
                or      dl,dl
                inc     dl

loc_049d:
                mov     [bx+0Eh],dl
                call    sub_19
                mov     [bx+13h],al
                mov     al,es:hdsk0_media_st
                mov     [bx+0Fh],al
                mov     al,es:hdsk1_media_st
                mov     [bx+10h],al
                mov     al,es:hdsk_count
                mov     [bx+11h],al
                mov     al,es:keybd_flags_3
                and     al,10h
                mov     cl,4
                shr     al,cl
                mov     [bx+12h],al
                mov     al,es:video_options
                and     al,60h                  ; '`'
                mov     cl,4
                shr     al,cl
                xor     ah,ah
                mov     [bx+14h],ax
                xor     ax,ax
                mov     [bx+16h],ax
                lea     di,[bx+1Dh]
                push    ds
                pop     es
                mov     ax,40h
                mov     ds,ax
                xor     si,si
                mov     cx,8
                rep     movsw
                mov     ax,seg_a
                mov     ds,ax
                call    sub_16
                mov     [bx+1Ah],al
                mov     [bx+19h],ah
                mov     ax,0F000h
                mov     es,ax
                mov     al,es:data_176e
                mov     [bx+1Ch],al
                int     12h                     ; Put (memory size)/1K in ax
                mov     [bx+2Eh],ax
                xor     bp,bp
                mov     ax,4300h
                int     2Fh                     ; HIMEM.SYS installed state, al
                cmp     al,80h
                jne     loc_97
                push    bx
                mov     ax,4310h
                int     2Fh                     ; Get HIMEM entrypoint ptr,es:bx
                dec     bp
                mov     cs:data_107,bx
                mov     word ptr cs:data_107+2,es
                mov     ah,8
                call    dword ptr cs:data_107
                test    bl,80h
                pop     bx
                jnz     loc_97
                mov     [bx+4Ch],dx
                mov     [bx+4Eh],ax
                and     byte ptr [bx+4Bh],1
loc_97::
                push    bx
                push    ds
                mov     ax,3567h
                int     21h                     ; DOS Services  ah=function 35h
                                                ;  get intrpt vector al in es:bx
                mov     di,data_175e
                mov     ax,seg_c
                mov     ds,ax
                mov     si,offset data_110      ; ('EMMXXXX0')
                xor     cx,cx
                assume  ds:seg_c
                mov     cl,data_111
                cld
                repe    cmpsb
                pop     ds
                pop     si
                jnz     loc_98
                mov     ah,42h
                int     67h                     ; EMS Memory        ah=func 42h
                                                ;  get pages, bx=unused,dx=total
                or      ah,ah
                jnz     loc_98
                mov     [si+50h],dx
                mov     [si+52h],bx
                or      byte ptr [si+4Bh],2
loc_98::
                or      bp,bp
                jnz     loc_99
                mov     ax,1588h
                int     15h                     ; ??INT Non-standard interrupt
                jc      loc_99
                mov     [si+4Ch],dx
                mov     [si+4Eh],ax
                or      byte ptr [si+4Bh],1
loc_99::
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
sub_18          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19          proc    near
                push    bx
                push    cx
                push    dx
                push    si
                push    di
                push    bp
                push    es
                mov     dh,ah
                xor     bx,bx
                mov     es,bx
                mov     dl,3
                mov     ax,1A00h
                int     10h                     ; Video display   ah=functn 1Ah
                                                ;  get display type in bx
                cmp     al,1Ah
                jne     loc_100
                xchg    bx,ax
                cmp     al,8
                je      loc_101
                cmp     al,7
                je      loc_101
                mov     dl,4
                cmp     al,0Ah
                jb      loc_100
                cmp     al,0Ch
                jbe     loc_101
loc_100::
                mov     dl,2
                mov     ah,12h
                mov     bl,10h
                int     10h                     ; Video display   ah=functn 12h
                                                ;  EGA/VGA special, bl=function
                cmp     bl,10h
                jb      loc_101
                dec     dx
                cmp     word ptr es:video_port_,3B4h
                jne     loc_101
                dec     dx
loc_101::
                xchg    dx,ax
                pop     es
                pop     bp
                pop     di
                pop     si
                pop     dx
                pop     cx
                pop     bx
                retn
sub_19          endp

                db      0, 0, 0, 0
data_81         dw      0                       ; segment storage
data_82         db      1                       ; Data table (indexed access)
                db      255 dup (1)
data_84         db      0, 0
data_85         dw      0
data_86         dw      0, 0
data_88         dw      0
data_89         dw      0
data_90         dw      0
data_91         dw      0
                db      0, 0
data_92         dw      0, 0
data_94         dw      0, 0
data_96         dw      0, 0
                db      0CBh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20          proc    near
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    di
                push    ds
                push    es
                push    cs
                pop     ds
                mov     cs:data_81,ds
                cld
                push    bp
                mov     ah,62h
                int     21h                     ; DOS Services  ah=function 62h
                                                ;  get Program Segment Prefix bx
                mov     data_129,bx
                call    sub_39
                call    sub_40
                call    sub_42
                call    sub_41
                pop     bp
                call    sub_43
                call    sub_44
                mov     ax,0
                jnc     loc_102
                dec     ax
loc_102::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn
sub_20          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    bx
                push    es
                les     bp,dword ptr [bp+PARAMETER_1]
                sub     bx,bx
                mov     bl,es:[bp]
                mov     bl,cs:data_82[bx]
                mov     ax,bx
                pop     es
                pop     bx
                pop     bp
                retn
sub_21          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    bx
                push    si
                push    ds
                lds     si,dword ptr [bp+PARAMETER_1]
                sub     bx,bx
                or      bl,[si]
                jz      loc_103
                mov     bl,cs:data_82[bx]
loc_103::
                lea     ax,[bx+si]
                mov     dx,ds
                pop     ds
                pop     si
                pop     bx
                pop     bp
                retn
sub_22          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    ds
                push    es
                lds     si,dword ptr [bp+PARAMETER_1]
                les     ax,dword ptr [bp+PARAMETER_3]
                mov     dx,es
                mov     cx,ds
                cmp     cx,dx
                jne     loc_106
                cmp     si,ax
                jae     loc_106
                sub     bx,bx
loc_104::
                mov     bl,[si]
                mov     bl,cs:data_82[bx]
                add     si,bx
                cmp     si,ax
                jb      loc_104
                jz      loc_105
                dec     ax
                mov     si,[bp+PARAMETER_1]
                jmp     short loc_104
loc_105::
                sub     ax,bx
loc_106::
                pop     es
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn
sub_23          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah

                push    bp
                mov     bp,sp
                push    ds
                sub     ax,ax
                mov     ds,cs:data_81
                test    byte ptr data_116,8
                jz      loc_107
                mov     ax,[bp+PARAMETER_1]
                sub     ax,[bp+PARAMETER_3]
                jz      loc_107
                push    word ptr [bp+PARAMETER_4]
                push    word ptr [bp+PARAMETER_3]       ; PARAMETER_3
                push    word ptr [bp+PARAMETER_2]       ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_23
                add     sp,8
                push    dx
                push    ax                      ; PARAMETER_1
                call    sub_22
                add     sp,4
                sub     ax,[bp+PARAMETER_3]
loc_107::
                pop     ds
                pop     bp
                retn
sub_24          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    ds
                lds     si,dword ptr [bp+4]
                mov     cx,[bp+8]
                sub     bx,bx
loc_108::
                sub     cx,1
                jc      loc_110
                mov     bl,[si]
                or      bl,bl
                jz      loc_109
                mov     bl,cs:data_82[bx]
                add     si,bx
                jmp     short loc_108
loc_109::
                sub     si,si
                mov     ds,si
loc_110::
                mov     dx,ds
                mov     ax,si
                pop     ds
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8

                push    bp
                mov     bp,sp
                push    bx
                push    es
                les     bp,dword ptr [bp+PARAMETER_1]
                push    bp
                sub     bx,bx
loc_111::
                mov     al,es:[bp]
                or      al,al
                jz      loc_112
                call    sub_26
                mov     es:[bp],al
                add     bp,bx
                jmp     short loc_111
loc_112::
                mov     dx,es
                pop     ax
                pop     es
                pop     bx
                pop     bp
                retn
sub_25          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    di
                push    ds
                push    es
                cld
                les     di,dword ptr [bp+4]
                lds     si,dword ptr [bp+8]
                mov     dx,di
                mov     al,0
                or      cx,0FFFFh
                repne   scasb
                not     cx
                mov     bx,cx
                cmp     [bx+si-1],al
                mov     ax,cx
                jnz     loc_113
                mov     di,dx
                repe    cmpsb
                jnz     loc_113
                sub     ax,ax
loc_113::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn
                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    di
                push    ds
                push    es
                cld
                les     di,dword ptr [bp+4]
                lds     si,dword ptr [bp+8]
                mov     dx,di
                sub     ax,ax
                or      cx,0FFFFh
                repne   scasb
                not     cx
                mov     bx,cx
                mov     di,dx
                sub     dx,dx
                cmp     [bx+si-1],al
                jne     loc_116
                sub     bx,bx
loc_114::
                dec     cx
                jz      loc_117
                mov     bl,[si]
                cmp     cs:data_82[bx],1
                jne     loc_115
                cmpsb
                jz      loc_114
                mov     al,[si-1]
                call    sub_26
                mov     ah,al
                mov     al,es:[di-1]
                call    sub_26
;*              cmp     al,ah
                db       3Ah,0C4h
                jz      loc_114
                jmp     short loc_116
loc_115::
                dec     cx
                cmpsw
                jz      loc_114
loc_116::
                dec     dx
loc_117::
                mov     ax,dx
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26          proc    near
                mov     bl,al
                mov     bl,cs:data_82[bx]
                cmp     bl,1
                jne     loc_ret_118
                cmp     al,7Fh
                ja      loc_119
                cmp     al,61h                  ; 'a'
                jb      loc_ret_118
                cmp     al,7Ah                  ; 'z'
                ja      loc_ret_118
                sub     al,20h                  ; ' '

loc_ret_118::
                retn
loc_119::
                call    dword ptr cs:data_96
                retn
sub_26          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    cx
                push    di
                push    es
                cld
                les     di,dword ptr [bp+PARAMETER_1]
                mov     al,0
                or      cx,0FFFFh
                repne   scasb
                not     cx
                dec     cx
                mov     ax,cx
                pop     es
                pop     di
                pop     cx
                pop     bp
                retn
sub_27          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    es
                les     bp,dword ptr [bp+4]
                sub     bx,bx
                sub     ax,ax
loc_120::
                mov     bl,es:[bp]
                or      bl,bl
                jz      loc_121
                inc     ax
                mov     bl,cs:data_82[bx]
                add     bp,bx
                jmp     short loc_120
loc_121::
                pop     es
                pop     bx
                pop     bp
                retn
                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    di
                push    ds
                push    es
                cld
                les     di,dword ptr [bp+8]
                push    es
                push    di                      ; PARAMETER_1
                call    sub_27
                add     sp,4
                or      ax,ax
                jz      loc_130
                mov     cx,ax
                sub     bx,bx
                lds     si,dword ptr [bp+4]
                mov     ax,ds
                or      ax,si
                jz      loc_122
                mov     cs:data_94,si
                mov     word ptr cs:data_94+2,ds
loc_122::
                lds     si,dword ptr cs:data_94
loc_123::
                lodsb
                or      al,al
                jz      loc_130
                mov     bl,al
                cmp     cs:data_82[bx],1
                jne     loc_124
                push    cx
                push    di
                repne   scasb
                pop     di
                pop     cx
                jz      loc_123
loc_124::
                lea     dx,[si-1]
loc_125::
                mov     bl,cs:data_82[bx]
                lea     si,[bx+si-1]
loc_126::
                lodsb
                or      al,al
                jz      loc_127
                mov     bl,al
                cmp     cs:data_82[bx],1
                jne     loc_125
                push    cx
                push    di
                repne   scasb
                pop     di
                pop     cx
                jnz     loc_126
                mov     byte ptr [si-1],0
                jmp     short loc_128
loc_127::
                dec     si
loc_128::
                mov     cs:data_94,si
                mov     ax,ds
                xchg    dx,ax
loc_129::
                pop     es
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn
loc_130::
                sub     ax,ax
                sub     dx,dx
                jmp     short loc_129

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    di
                push    es
                mov     ax,[bp+PARAMETER_1]
                mov     cx,[bp+PARAMETER_2]
                mov     di,[bp+PARAMETER_5]
                mov     bx,sp
                jcxz    loc_132
loc_131::
                sub     dx,dx
                xchg    cx,ax
                div     di
                xchg    cx,ax
                div     di
                push    dx
                or      cx,cx
                jnz     loc_131
loc_132::
                sub     dx,dx
                div     di
                push    dx
                or      ax,ax
                jnz     loc_132
                mov     es,cs:data_81
                mov     dl,es:data_171
                sub     dl,3Ah                  ; ':'
                les     di,dword ptr [bp+PARAMETER_3]
                mov     cx,di
loc_133::
                pop     ax
                add     al,30h                  ; '0'
                cmp     al,39h                  ; '9'
                jbe     loc_134
                add     al,dl
loc_134::
                stosb
                cmp     bx,sp
                jne     loc_133
                mov     al,0
                stosb
                mov     ax,cx
                mov     dx,es
                pop     es
                pop     di
                pop     cx
                pop     bx
                pop     bp
                retn
sub_28          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah
PARAMETER_5     =       0Ch                     ; bp+0Ch

                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    si
                push    di
                push    ds
                lds     si,dword ptr [bp+PARAMETER_1]
                push    ds
                push    si                      ; PARAMETER_1
                call    sub_38
                add     sp,4
                mov     si,ax
                cmp     word ptr [si],7830h
                je      loc_135
                cmp     word ptr [si],5830h
                jne     loc_136
loc_135::
                mov     word ptr [bp+PARAMETER_5],10h
                add     si,2
loc_136::
                sub     bx,bx
                sub     ax,ax
                sub     cx,cx
                mov     di,[bp+PARAMETER_5]
loc_137::
                mov     cl,[si]
                sub     cl,30h                  ; '0'
                jc      loc_140
                cmp     cl,0Ah
                jb      loc_138
                add     cl,30h                  ; '0'
                or      cl,20h                  ; ' '
                sub     cl,61h                  ; 'a'
                jc      loc_140
                add     cl,0Ah
loc_138::
                cmp     cx,di
                jae     loc_140
                mul     di
                xchg    bx,ax
                jc      loc_139
                mul     di
                xchg    bx,ax
                add     bx,cx
                adc     ax,dx
                inc     si
                jnc     loc_137
loc_139::
                mov     si,[bp+PARAMETER_1]
                sub     bx,bx
                sub     ax,ax
loc_140::
                mov     dx,ax
                mov     ax,bx
                mov     bx,ds
                lds     di,dword ptr [bp+PARAMETER_3]
                mov     cx,ds
                or      cx,di
                jz      loc_141
                mov     [di],si
                mov     [di+2],bx
loc_141::
                pop     ds
                pop     di
                pop     si
                pop     cx
                pop     bx
                pop     bp
                retn
sub_29          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    ds
;*              or      ax,0FFFFh
                db       0Dh,0FFh,0FFh
                mov     ds,cs:data_81
                mov     dx,[bp+PARAMETER_1]
                cmp     data_151,dx
                jb      loc_143
                sub     cx,cx
                add     dx,dx
                add     dx,dx
                add     dx,data_149
                adc     cx,word ptr data_150
                mov     ax,4200h
                mov     bx,data_146
                int     21h                     ; DOS Services  ah=function 42h
                                                ;  move file ptr, bx=file handle
                                                ;   al=method, cx,dx=offset
                jc      loc_143
                mov     ah,3Fh                  ; '?'
                mov     dx,offset data_154
                mov     cx,8
                int     21h                     ; DOS Services  ah=function 3Fh
                                                ;  read file, bx=file handle
                                                ;   cx=bytes to ds:dx buffer
                jc      loc_143
                cmp     ax,cx
                jne     loc_143
                mov     ax,data_156
                mov     dx,data_157
                sub     ax,data_154
                sbb     dx,data_155
loc_142::
                pop     ds
                pop     cx
                pop     bx
                pop     bp
                retn
loc_143::
;*              or      ax,0FFFFh
                db       0Dh,0FFh,0FFh
                jmp     short loc_142
sub_30          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31          proc    near

PARAMETER_1     =       4                       ; bp+4
PARAMETER_2     =       6                       ; bp+6
PARAMETER_3     =       8                       ; bp+8
PARAMETER_4     =       0Ah                     ; bp+0Ah

                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    ds
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_30
                add     sp,2
;*              cmp     ax,0FFFFh
                db       3Dh,0FFh,0FFh
                jz      loc_145
                cmp     [bp+PARAMETER_4],ax
                jb      loc_146
                push    ax
                mov     ds,cs:data_81
                mov     dx,data_154
                mov     cx,data_155
                add     dx,data_149
                adc     cx,word ptr data_150
                mov     ax,4200h
                mov     bx,data_146
                int     21h                     ; DOS Services  ah=function 42h
                                                ;  move file ptr, bx=file handle
                                                ;   al=method, cx,dx=offset
                pop     cx
                jc      loc_145
                mov     ah,3Fh                  ; '?'
                lds     dx,dword ptr [bp+PARAMETER_2]
                int     21h                     ; DOS Services  ah=function 3Fh
                                                ;  read file, bx=file handle
                                                ;   cx=bytes to ds:dx buffer
                jc      loc_145
                cmp     ax,cx
                jne     loc_145
                mov     ax,cx
loc_144::
                pop     ds
                pop     cx
                pop     bx
                pop     bp
                retn
loc_145::
                mov     ax,0FFFFh
                jmp     short loc_144
loc_146::
                mov     ax,0FFFEh
                jmp     short loc_144
sub_31          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    bx
                push    cx
                push    ds
                mov     ax,[bp+4]
                sub     bx,bx
                mov     bl,al
                mov     cl,cs:data_82[bx]
                mov     ch,0
                mov     ds,cs:data_81
                mov     data_167,ax
                mov     dx,offset data_167
                mov     bx,1
                mov     ah,40h
                int     21h                     ; DOS Services  ah=function 40h
                                                ;  write file  bx=file handle
                                                ;   cx=bytes from ds:dx buffer
                pop     ds
                pop     cx
                pop     bx
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                mov     ds,cs:data_81
                mov     si,data_174
                mov     ax,0Ah
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                push    si                      ; PARAMETER_3
                mov     ax,0
                push    ax                      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_28
                add     sp,0Ah
loc_147::
                inc     si
                cmp     byte ptr [si],0
                jne     loc_147
                mov     word ptr [si],203Ah
                mov     byte ptr [si+2],0
                lea     di,[si+2]
                mov     si,184Eh
                callf   sub_36
                pop     ds
                pop     di
                pop     si
                pop     bp
                retn
sub_32          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                mov     ds,cs:data_81
                mov     si,1634h
                mov     ax,200h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                push    si                      ; PARAMETER_2
                push    word ptr [bp+PARAMETER_1]       ; PARAMETER_1
                call    sub_31
                add     sp,8
                cmp     ah,0FFh
                je      loc_148
                add     bp,6
                call    sub_37
                mov     dx,cs
                mov     di,0EF9h
                call    sub_35
loc_148::
                pop     ds
                pop     di
                pop     si
                pop     bp
                retn
sub_33          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                lds     si,dword ptr [bp+PARAMETER_1]
                add     bp,8
                call    sub_37
                mov     dx,cs
                mov     di,0EF9h
                call    sub_35
                pop     ds
                pop     di
                pop     si
                pop     bp
                retn
sub_34          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                mov     ds,cs:data_81
                mov     si,1634h
                mov     ax,200h
                push    ax                      ; PARAMETER_4
                push    ds                      ; PARAMETER_3
                push    si                      ; PARAMETER_2
                push    word ptr [bp+8]         ; PARAMETER_1
                call    sub_31
                add     sp,8
                cmp     ah,0FFh
                je      loc_149
                mov     ax,[bp+4]
                mov     dx,[bp+6]
                mov     cs:data_92,ax
                mov     word ptr cs:data_92+2,dx
                add     bp,0Ah
                call    sub_37
                mov     dx,cs
                mov     di,0F12h
                call    sub_35
loc_149::
                pop     ds
                pop     di
                pop     si
                pop     bp
                retn
                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    si
                push    di
                push    ds
                mov     ax,[bp+4]
                mov     dx,[bp+6]
                mov     cs:data_92,ax
                mov     word ptr cs:data_92+2,dx
                lds     si,dword ptr [bp+8]
                add     bp,0Ch
                call    sub_37
                mov     dx,cs
                mov     di,0F12h
                call    sub_35
                pop     ds
                pop     di
                pop     si
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35          proc    near
                cld
                push    bx
                push    cx
                push    es
                mov     cs:data_90,0
                mov     cs:data_86,si
                mov     word ptr cs:data_86+2,ds
                mov     word ptr cs:data_84,di
                mov     cs:data_85,dx
loc_150::
                sub     bx,bx
                lds     si,dword ptr cs:data_86
loc_151::
                mov     bl,[si]
                or      bl,bl
                jz      loc_153
                cmp     bl,25h                  ; '%'
                je      loc_152
                mov     bl,cs:data_82[bx]
                add     si,bx
                jmp     short loc_151
loc_152::
                cmp     byte ptr [si+1],25h     ; '%'
                jne     loc_155
                lea     di,[si+1]
                add     si,2
                xchg    cs:data_86,si
                call    dword ptr cs:data_84
                jmp     short loc_150
loc_153::
                mov     di,si
                mov     si,cs:data_86
                call    dword ptr cs:data_84
                mov     ax,cs:data_90
loc_154::
                pop     es
                pop     cx
                pop     bx
                retn
loc_155::
                mov     di,si
                mov     si,cs:data_86
                call    dword ptr cs:data_84
                inc     si
                cmp     byte ptr [si],2Dh       ; '-'
                jne     loc_156
                or      bh,1
                inc     si
loc_156::
                mov     ax,0Ah
                push    ax                      ; PARAMETER_5
                push    cs                      ; PARAMETER_4
                mov     ax,6F0h
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_29
                add     sp,0Ah
                cmp     cs:data_91,si
                je      loc_157
                mov     si,cs:data_91
                mov     cs:data_88,ax
                or      bh,2
loc_157::
                cmp     byte ptr [si],2Eh       ; '.'
                jne     loc_158
                inc     si
                mov     ax,0Ah
                push    ax                      ; PARAMETER_5
                push    cs                      ; PARAMETER_4
                mov     ax,6F0h
                push    ax                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_29
                add     sp,0Ah
                mov     si,cs:data_91
                mov     cs:data_89,ax
                or      bh,4
loc_158::
                lodsb
                cmp     al,68h                  ; 'h'
                jne     loc_159
                or      bh,8
                lodsb
loc_159::
                cmp     al,6Ch                  ; 'l'
                jne     loc_160
                or      bh,10h
                lodsb
loc_160::
                mov     cs:data_86,si
                cmp     al,73h                  ; 's'
                je      loc_164
                cmp     al,63h                  ; 'c'
                je      loc_161
                mov     di,0Ah
                cmp     al,75h                  ; 'u'
                je      loc_162
                cmp     al,64h                  ; 'd'
                je      loc_162
                cmp     al,69h                  ; 'i'
                je      loc_162
                mov     di,10h
                mov     bl,61h                  ; 'a'
                cmp     al,78h                  ; 'x'
                je      loc_162
                mov     bl,41h                  ; 'A'
                cmp     al,58h                  ; 'X'
                je      loc_162
                cmp     al,6Eh                  ; 'n'
                je      loc_163
                mov     ax,0FFFDh
                jmp     loc_154
loc_161::
                jmp     loc_172
loc_162::
                jmp     loc_173
loc_163::
                lds     si,dword ptr [bp]
                add     bp,4
                mov     ax,cs:data_90
                mov     [si],ax
                jmp     loc_150
loc_164::
                mov     ds,cs:data_81
                push    word ptr [bp+2]
                push    word ptr [bp]           ; PARAMETER_1
                call    sub_27
                add     sp,4
                test    bh,4
                jz      loc_165
                cmp     cs:data_89,ax
                jb      loc_166
loc_165::
                mov     cs:data_89,ax
loc_166::
                sub     cx,cx
                test    bh,2
                jz      loc_168
                mov     ax,cs:data_88
                sub     ax,cs:data_89
                jbe     loc_168
                mov     cx,ax
                test    bh,1
                jnz     loc_168
                mov     ds,cs:data_81

locloop_167::
                mov     si,1834h
                lea     di,[si+1]
                call    dword ptr cs:data_84
                loop    locloop_167

loc_168::
                lds     si,dword ptr [bp]
                add     bp,4
                mov     di,si
                add     di,cs:data_89
                push    ds                      ; PARAMETER_4
                push    di                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_24
                add     sp,8
                or      ax,ax
                jz      loc_169
                dec     di
                inc     cx
loc_169::
                call    dword ptr cs:data_84
                jcxz    loc_171
                mov     ds,cs:data_81

locloop_170::
                mov     si,offset data_166
                lea     di,[si+1]
                call    dword ptr cs:data_84
                loop    locloop_170

loc_171::
                jmp     loc_150
loc_172::
                push    ss
                push    bp                      ; PARAMETER_1
                call    sub_21
                add     sp,4
                push    ss
                pop     ds
                mov     si,bp
                mov     di,si
                add     di,ax
                call    dword ptr cs:data_84
                add     bp,2
                jmp     loc_150
loc_173::
                mov     ds,cs:data_81
                xchg    data_171,bl
                mov     cx,[bp]
                add     bp,2
                test    bh,8
                jz      loc_174
                mov     ch,0
loc_174::
                sub     dx,dx
                test    bh,10h
                jz      loc_175
                mov     dx,[bp]
                add     bp,2
loc_175::
                push    di                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                mov     ax,183Eh
                push    ax                      ; PARAMETER_3
                push    dx                      ; PARAMETER_2
                push    cx                      ; PARAMETER_1
                call    sub_28
                add     sp,0Ah
                push    dx
                push    ax                      ; PARAMETER_1
                call    sub_27
                add     sp,4
                mov     cx,ax
                mov     data_170,cx
                mov     ax,cs:data_89
                test    bh,4
                jz      loc_177
                cmp     data_169,30h
                jne     loc_176
                or      ax,ax
                jnz     loc_176
                sub     cx,cx
                mov     byte ptr data_169,al
                mov     data_170,cx
loc_176::
                cmp     cx,ax
                jb      loc_178
loc_177::
                mov     cs:data_89,cx
                mov     ax,cx
loc_178::
                sub     cx,cx
                test    bh,2
                jz      loc_179
                cmp     ax,cs:data_88
                jae     loc_179
                mov     cx,cs:data_88
                sub     cx,ax
loc_179::
                test    bh,1
                jnz     loc_181
                jcxz    loc_181

locloop_180::
                mov     si,1834h
                lea     di,[si+1]
                call    dword ptr cs:data_84
                loop    locloop_180

loc_181::
                mov     di,cs:data_89
                sub     di,data_170
                jz      loc_183
                jc      loc_183
                push    cx
                mov     cx,di

locloop_182::
                mov     si,1836h
                lea     di,[si+1]
                call    dword ptr cs:data_84
                loop    locloop_182

                pop     cx
loc_183::
                mov     si,183Eh
                mov     di,si
                add     di,data_170
                call    dword ptr cs:data_84
                jcxz    loc_185

locloop_184::
                mov     si,1834h
                lea     di,[si+1]
                call    dword ptr cs:data_84
                loop    locloop_184

loc_185::
                mov     data_171,bl
                jmp     loc_150
sub_35          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36          proc    far
                push    bx
                push    cx
                xchg    si,di
                mov     cx,si
                sub     cx,di
                add     cs:data_90,cx
                mov     dx,di
                mov     bx,1
                mov     ah,40h
                int     21h                     ; DOS Services  ah=function 40h
                                                ;  write file  bx=file handle
                                                ;   cx=bytes from ds:dx buffer
                pop     cx
                pop     bx
                retf
sub_36          endp

                                                ;* No entry point to code
                push    cx
                mov     cx,di
                sub     cx,si
                add     cs:data_90,cx
                les     di,dword ptr cs:data_92
                shr     cx,1
                rep     movsw
                adc     cl,cl
                rep     movsb
                mov     cs:data_92,di
                mov     es:[di],cl
                pop     cx
                retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37          proc    near
                cmp     word ptr [si],444Ch
                jne     loc_ret_186
                cmp     word ptr [si+2],2148h
                je      loc_187

loc_ret_186::
                retn
loc_187::
                push    bx
                push    cx
                push    bp
                mov     dx,sp
                add     si,5
                sub     cx,cx
                mov     cl,[si-1]
                mov     bx,si
                add     si,cx
                jcxz    loc_191

locloop_188::
                or      di,0FFFFh
loc_189::
                inc     di
                cmp     [bx+di],cl
                jne     loc_189
                add     di,di
                push    word ptr [bp+di]
                loop    locloop_188

loc_190::
                pop     word ptr [bp]
                add     bp,2
                cmp     sp,dx
                jne     loc_190
loc_191::
                pop     bp
                pop     cx
                pop     bx
                retn
sub_37          endp

                                                ;* No entry point to code
                push    bp
                mov     bp,sp
                push    ds
;*              or      ax,0FFFFh
                db       0Dh,0FFh,0FFh
                lds     bp,dword ptr [bp+4]
                mov     dl,ds:[bp]
                or      dl,dl
                jz      loc_192
                cmp     dl,20h                  ; ' '
                jbe     loc_193
                cmp     dl,2Ch                  ; ','
                je      loc_193
loc_192::
                inc     ax
loc_193::
                pop     ds
                pop     bp
                retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38          proc    near

PARAMETER_1     =       4                       ; bp+4

                push    bp
                mov     bp,sp
                push    ds
                lds     bp,dword ptr [bp+PARAMETER_1]
loc_194::
                mov     dl,ds:[bp]
                inc     bp
                or      dl,dl
                jz      loc_195
                cmp     dl,20h                  ; ' '
                jbe     loc_194
                cmp     dl,2Ch                  ; ','
                je      loc_194
loc_195::
                lea     ax,[bp-1]
                mov     dx,ds
                pop     ds
                pop     bp
                retn
sub_38          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39          proc    near
                push    sp
                pop     ax
                cmp     ax,sp
                jne     loc_ret_197
                pushf
                pushf
                pop     ax
                or      ah,60h                  ; '`'
                push    ax
                popf
                pushf
                pop     ax
                test    ah,60h                  ; '`'
                jz      loc_196
                or      byte ptr data_116,4
loc_196::
                popf

loc_ret_197::
                retn
sub_39          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40          proc    near
                mov     ax,0C000h
loc_198::
                push    ax
                int     2Fh                     ; ??INT Non-standard interrupt
                cmp     al,0FFh
                pop     ax
                jz      loc_200
loc_199::
                inc     ah
                jnz     loc_198
                mov     ds,cs:data_81
                retn
loc_200::
                mov     ds,cs:data_81
                mov     di,si
                mov     si,offset data_117      ; ('LINKSUP')
                mov     cx,4
                cld
                repe    cmpsw
                jnz     loc_199
                mov     data_118,bx
                mov     word ptr data_118+2,dx
                push    ds
                pop     es
                mov     si,14DEh
                mov     bx,2
                call    dword ptr data_118
                mov     bx,19h
                call    dword ptr data_121
                mov     data_124,si
                mov     data_125,es
                mov     al,3
                jnz     loc_202
                cmp     byte ptr es:[si+0Ah],1
                ja      loc_201
                jc      loc_202
                cmp     byte ptr es:[si+0Bh],0Ah
                jb      loc_202
loc_201::
                mov     bx,3
                call    dword ptr data_118
                mov     data_122,si
                mov     data_123,es
                mov     al,1
loc_202::
                or      data_116,al
                retn
sub_40          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41          proc    near
                mov     ah,30h
                int     21h                     ; DOS Services  ah=function 30h
                                                ;  get DOS version number ax
                cmp     al,4
                jb      loc_206
                push    ds
                pop     es
                mov     di,offset data_158
                mov     cx,200h
                or      dx,0FFFFh
                mov     bx,dx
                mov     ax,6507h
                int     21h                     ; DOS Services  ah=function 65h
                                                ;  get DBCS vector, bx=code page
                                                ;   cx=size, dx=ID, es:di=ptr
                jc      loc_206
                lds     si,dword ptr [di+1]
                lodsw
                mov     cx,ax
                shr     cx,1
loc_203::
                mov     bx,offset data_130

locloop_204::
                lodsw
                or      al,al
                jz      loc_205
                jns     loc_205
                push    ds
                mov     ds,cs:data_81
                or      byte ptr data_116,8
                mov     [bx],ax
                add     bx,2
                pop     ds
                push    cx
                push    cs
                pop     es
                mov     di,ax
                and     di,0FFh
                add     di,offset data_82
                mov     cl,ah
                sub     cl,al
                inc     cx
                mov     al,2
                rep     stosb
                pop     cx
                cmp     bx,151Ah
                jae     loc_205
                loop    locloop_204

loc_205::
                mov     ds,cs:data_81
                retn
loc_206::
                mov     ax,data_126
                mov     si,offset data_130
                mov     cx,1
;*              cmp     ax,51h
                db       3Dh, 51h, 00h
                jnz     loc_207
                mov     word ptr [si],9F81h
                mov     word ptr [si+2],0FCE0h
                inc     cx
                jmp     short loc_203
loc_207::
;*              cmp     ax,52h
                db       3Dh, 52h, 00h
                jnz     loc_208
                mov     word ptr [si],0FEA1h
                jmp     short loc_203
loc_208::
;*              cmp     ax,56h
                db       3Dh, 56h, 00h
                jnz     loc_209
                mov     word ptr [si],0FFA1h
                jmp     short loc_203
loc_209::
                cmp     ax,376h
                jne     loc_205
                mov     word ptr [si],0FE81h
                jmp     short loc_203
sub_41          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42          proc    near
                mov     bx,offset data_127
                mov     word ptr [bx+12h],700h
                mov     [bx+14h],cs
                mov     dx,bx
                mov     ax,3800h
                int     21h                     ; DOS Services  ah=function 38h
                                                ;  get/set country code info
                                                ;   ds:dx=ptr for returned info
                                                ;   dx=-1 to set bx country code
                jc      loc_210
                mov     data_126,bx
loc_210::
                mov     bx,dx
                mov     ax,[bx+12h]
                mov     cx,[bx+14h]
                mov     word ptr cs:data_96,ax
                mov     word ptr cs:data_96+2,cx
                retn
sub_42          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43          proc    near
                lds     si,dword ptr [bp+0Ch]
                mov     ax,ds
                or      ax,si
                jnz     loc_211
                jmp     short loc_ret_217
loc_211::
                push    ds
                push    si                      ; PARAMETER_1
                call    sub_27
                add     sp,4
;*              cmp     ax,8
                db       3Dh, 08h, 00h
                jbe     loc_212
                mov     ax,8
loc_212::
                mov     cx,ax
                mov     di,offset data_173
                mov     es,cs:data_81
                rep     movsb
                mov     al,2Dh                  ; '-'
                stosb
                push    es
                pop     ds
                mov     bx,[bp+0Ah]
                cmp     bh,63h                  ; 'c'
                ja      loc_215
                cmp     bl,63h                  ; 'c'
                ja      loc_215
                mov     cl,bh
                mov     ch,0
                mov     ax,0Ah
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                push    di                      ; PARAMETER_3
                mov     ax,0
                push    ax                      ; PARAMETER_2
                push    cx                      ; PARAMETER_1
                call    sub_28
                add     sp,0Ah
                inc     di
                cmp     cl,0Ah
                jb      loc_213
                inc     di
loc_213::
                push    di
                mov     cl,bl
                cmp     cl,0Ah
                jae     loc_214
                mov     al,30h                  ; '0'
                stosb
loc_214::
                mov     ax,0Ah
                push    ax                      ; PARAMETER_5
                push    ds                      ; PARAMETER_4
                push    di                      ; PARAMETER_3
                mov     ax,0
                push    ax                      ; PARAMETER_2
                push    cx                      ; PARAMETER_1
                call    sub_28
                add     sp,0Ah
                pop     di
                add     di,2
                jmp     short loc_216
loc_215::
                mov     si,offset data_168
                movsw
                movsb
loc_216::
                mov     al,2Dh                  ; '-'
                stosb
                mov     data_174,di

loc_ret_217::
                retn
sub_43          endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44          proc    near
                les     si,dword ptr [bp+4]
                mov     data_141,si
                mov     word ptr data_141+2,es
                mov     data_139,158Ah
                mov     word ptr data_139+2,ds
                mov     es,data_129
                mov     es,es:data_1e
                sub     di,di
                cmp     byte ptr es:[di],0
                jne     loc_218
                inc     di
                jmp     short loc_221
loc_218::
                push    es
                push    di                      ; PARAMETER_1
                call    sub_27
                add     sp,4
                or      ax,ax
                jz      loc_221
;*              cmp     ax,0Bh
                db       3Dh, 0Bh, 00h
                jbe     loc_219
                push    di
                mov     si,offset data_134      ; ('NWLANGUAGE=MsGtAcK=')
                mov     cx,0Bh
                repe    cmpsb
                mov     si,di
                pop     di
                jz      loc_220
loc_219::
                inc     ax
                add     di,ax
                jmp     short loc_218
loc_220::
                mov     data_139,si
                mov     word ptr data_139+2,es
                jmp     short loc_219
loc_221::
                lea     ax,[di+3]
                mov     data_143,ax
                mov     word ptr data_143+2,es
                mov     si,offset data_138
                lea     bx,[si-1]
loc_222::
                inc     bx
                inc     di
                mov     al,es:[di+2]
                mov     [bx],al
                or      al,al
                jnz     loc_222
loc_223::
                cmp     si,bx
                je      loc_225
                push    ds
                push    bx                      ; PARAMETER_3
                push    ds                      ; PARAMETER_2
                push    si                      ; PARAMETER_1
                call    sub_23
                add     sp,8
                mov     bx,ax
                push    ds
                push    bx                      ; PARAMETER_1
                call    sub_21
                add     sp,4
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jnz     loc_223
                cmp     byte ptr [bx],5Ch       ; '\'
                je      loc_224
                cmp     byte ptr [bx],3Ah       ; ':'
                jne     loc_223
loc_224::
                inc     bx
loc_225::
                mov     data_145,bx
                lds     dx,dword ptr [bp+4]
                mov     ax,3D00h
                int     21h                     ; DOS Services  ah=function 3Dh
                                                ;  open file, al=mode,name@ds:dx
                jc      loc_226
                push    ax
                mov     es,cs:data_81
                push    es
                mov     di,offset data_138
                mov     si,dx
                push    ds
                push    si                      ; PARAMETER_1
                call    sub_27
                add     sp,4
                rep     movsb
                movsb
                pop     ds
                pop     ax
                jmp     loc_234
loc_226::
                mov     es,cs:data_81
                lds     si,dword ptr es:data_139
                push    ds
                push    si
                call    sub_25
                add     sp,4
                mov     di,es:data_145
                mov     ax,4C4Eh
                stosw
                mov     ax,5C53h
                stosw
                mov     bx,di
loc_227::
                push    ds
                push    si                      ; PARAMETER_1
                call    sub_21
                add     sp,4
;*              cmp     ax,1
                db       3Dh, 01h, 00h
                jnz     loc_228
                lodsb
                cmp     al,0
                je      loc_230
                cmp     al,3Bh                  ; ';'
                je      loc_229
                cmp     al,2Ch                  ; ','
                je      loc_229
                cmp     al,20h                  ; ' '
                je      loc_229
                cmp     al,9
                je      loc_229
                stosb
                jmp     short loc_227
loc_228::
                movsw
                jmp     short loc_227
loc_229::
                cmp     di,bx
                je      loc_227
loc_230::
                cmp     di,bx
                je      loc_232
                dec     si
                mov     es:data_139,si
                lds     si,dword ptr es:data_141
                mov     al,5Ch                  ; '\'
                stosb
loc_231::
                lodsb
                stosb
                or      al,al
                jnz     loc_231
                mov     ds,cs:data_81
                mov     dx,offset data_138
                mov     ax,3D00h
                int     21h                     ; DOS Services  ah=function 3Dh
                                                ;  open file, al=mode,name@ds:dx
                jc      loc_226
                jmp     short loc_234
loc_232::
                les     si,dword ptr [bp+4]
                mov     ds,cs:data_81
                mov     bx,data_145
loc_233::
                mov     al,es:[si]
                mov     [bx],al
                inc     si
                inc     bx
                or      al,al
                jnz     loc_233
                mov     dx,offset data_138
                mov     ax,3D00h
                int     21h                     ; DOS Services  ah=function 3Dh
                                                ;  open file, al=mode,name@ds:dx
                jc      loc_235
loc_234::
                mov     data_146,ax
                sub     dx,dx
                sub     cx,cx
                call    sub_45
                jnc     loc_238
                mov     byte ptr data_137,0FFh
loc_235::
                mov     ds,cs:data_81
                push    ds
                lds     dx,dword ptr data_143
                mov     ax,3D00h
                int     21h                     ; DOS Services  ah=function 3Dh
                                                ;  open file, al=mode,name@ds:dx
                pop     ds
                jc      loc_239
                mov     data_146,ax
                mov     dx,data_135
                mov     cx,word ptr data_136
                call    sub_45
                jc      loc_239
                cmp     byte ptr data_137,0
                je      loc_236
                mov     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,2
                push    ds
                mov     ax,158Ch
                push    ax
                mov     ax,1
                push    ax                      ; PARAMETER_1
                call    sub_33
                add     sp,6
                stc
                retn
loc_236::
                push    ds
                pop     es
                lds     si,dword ptr data_143
                mov     di,offset data_138
loc_237::
                lodsb
                stosb
                or      al,al
                jnz     loc_237
                push    es
                pop     ds
loc_238::
                clc
                retn
loc_239::
                push    ds
                mov     ax,1535h
                push    ax                      ; PARAMETER_1
                call    sub_34
                add     sp,4
                mov     ax,0
                push    ax                      ; PARAMETER_1
                call    sub_32
                add     sp,2
                push    word ptr data_141+2
                push    data_141
                push    ds
                mov     ax,1538h
                push    ax                      ; PARAMETER_1
                call    sub_34
                add     sp,8
                stc
                retn
sub_44          endp

loc_240::
                jmp     loc_241

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45          proc    near
                mov     data_147,dx
                mov     data_148,cx
                mov     ax,4200h
                mov     bx,data_146
                int     21h                     ; DOS Services  ah=function 42h
                                                ;  move file ptr, bx=file handle
                                                ;   al=method, cx,dx=offset
                jc      loc_240
                mov     dx,offset data_158
                mov     cx,78h
                mov     ah,3Fh
                int     21h                     ; DOS Services  ah=function 3Fh
                                                ;  read file, bx=file handle
                                                ;   cx=bytes to ds:dx buffer
                jc      loc_240
                cmp     ax,cx
                jb      loc_240
                push    ds
                pop     es
                mov     si,dx
                mov     di,offset data_131      ; ('DOS Client Message File:')
                mov     cx,19h
                repe    cmpsb
                jnz     loc_240
                cmp     data_163,cx
                jne     loc_241
                cmp     data_160,1
                jne     loc_241
                mov     ax,[bp+8]
                cmp     data_161,ax
                jne     loc_241
                mov     ax,data_162
                mov     data_151,ax
                mov     ax,data_147
                mov     dx,data_148
                add     data_149,ax
                adc     word ptr data_150,dx
                mov     dx,data_151
                add     dx,dx
                add     dx,dx
                sub     cx,cx
                add     dx,data_149
                adc     cx,word ptr data_150
                mov     bx,data_146
                mov     ax,4200h
                int     21h                     ; DOS Services  ah=function 42h
                                                ;  move file ptr, bx=file handle
                                                ;   al=method, cx,dx=offset
                jc      loc_241
                mov     dx,offset data_158
                mov     cx,4
                mov     ah,3Fh
                int     21h                     ; DOS Services  ah=function 3Fh
                                                ;  read file, bx=file handle
                                                ;   cx=bytes to ds:dx buffer
                jc      loc_241
                cmp     ax,cx
                jb      loc_241
                mov     ax,data_158
                mov     dx,data_159
                sub     ax,data_164
                sbb     dx,data_165
                mov     data_152,ax
                mov     data_153,dx
                clc
                retn
loc_241::
                mov     bx,data_146
                mov     ah,3Eh
                int     21h                     ; DOS Services  ah=function 3Eh
                                                ;  close file, bx=file handle
                stc
                retn
sub_45          endp

                db      0, 0, 0, 0, 0
data_99         dw      0
data_100        dw      0
data_101        dw      0, 0
data_103        dw      seg_b
                db      "NMR.MSG",0
                db      "NMR",0
data_105        dw      0
                db      0, 0
data_107        dw      0, 0
data_109        db      'LINKSUP$'
data_110        db      'EMMXXXX0'
data_111        db      8
data_112        db      2Ah
                db       02h, 3Ah, 02h, 6Eh, 02h,0DAh
                db       02h
data_113        dw      4
                db      7 dup (0)
                db      'VeRsIoN=1.21', 0
                db      'NMR.VLM      - NetWare managemen'
                db      't responder  v1.21 (960514)', 0Dh
                db      0Ah
                db      0, 0, 0, 0, 0, 0
                db      'NWASMLIB = v2.00'
                db      0
data_116        db      0
data_117        db      'LINKSUP$'
data_118        dw      0, 0
data_121        dw      0, 0
                db      0, 0, 0, 0
data_122        dw      0
data_123        dw      0                       ; segment storage
data_124        dw      0
data_125        dw      0                       ; segment storage
data_126        dw      1
data_127        db      0
                db       00h, 24h, 00h, 00h, 00h, 00h
                db       2Ch, 00h, 2Eh, 00h, 2Dh, 00h
                db       3Ah, 00h, 00h, 02h, 00h
                db      16 dup (0)
data_129        dw      0
data_130        db      0
                db      0, 0, 0, 0, 0, 0
                db      0
data_131        db      'DOS Client Message File: ', 0Dh, 0Ah
                db      0
                db      7
                db      'Unable to loca'
                db      'te message file %s', 0Dh, 0Ah, 'P'
                db      'rogram load aborted.', 0Dh, 0Ah, 0
data_134        db      'NWLANGUAGE=MsGtAcK='
data_135        dw      2426h
data_136        db      0, 0, 0
data_137        db      0
data_138        db      0
                db      129 dup (0)
data_139        dw      0, 0
data_141        dw      0, 0
data_143        dw      0, 0
data_145        dw      158Ch
data_146        dw      0
data_147        dw      0
data_148        dw      0
data_149        dw      70h
data_150        db      0, 0
data_151        dw      0
data_152        dw      0
data_153        dw      0
data_154        dw      0
data_155        dw      0
data_156        dw      0
data_157        dw      0
data_158        dw      0
data_159        dw      0
                db      98 dup (0)
data_160        dw      0
                db      0, 0
data_161        dw      0
data_162        dw      0
data_163        dw      0
                db      0, 0, 0, 0
data_164        dw      0
data_165        dw      0
                db      392 dup (0)
data_166        db      20h
                db       00h, 30h, 00h
data_167        dw      0
                db      0
data_168        db      44h
                db       4Fh, 53h
data_169        dw      6 dup (0)
data_170        dw      0
data_171        db      41h
                db      0
data_173        db      0
                db      21 dup (0)
data_174        dw      0

seg_c           ends



                end     start
