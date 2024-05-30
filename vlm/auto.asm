; The following equates show data references outside the range of the program.

data_1e		equ	1
data_2e		equ	9
data_3e		equ	12h
data_4e		equ	0A9h
data_5e		equ	0ABh
data_6e		equ	0AFh
data_7e		equ	400h
keybd_q_head_	equ	41Ah
keybd_q_tail_	equ	41Ch
keybd_begin_	equ	480h
keybd_end_	equ	482h
data_8e		equ	8FBh			;*

;------------------------------------------------------------  seg_a   ----

seg_a		segment	byte public
		assume cs:seg_a  , ds:seg_a

			                        ;* No entry point to code
                dw      0, seg_c
                dw      04B3h, seg_a
                dw      05AFh, seg_a
                dw      05B2h, seg_a
                dw      016Bh, seg_a
                dw      00A2h, seg_a
                dw      0,0
		db	 4Eh, 56h, 6Ch, 6Dh, 60h, 00h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,20h
		push	bp
		mov	bp,6
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_1		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,8
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_2		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,9
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_3		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Dh
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_4		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,7
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_5		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6		proc	near
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,42h
		push	bp
		mov	bp,4
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		retn
sub_6		endp

data_9		dw	offset loc_2		; Data table (indexed access)
data_10		dw	offset loc_4
data_11		dw	offset loc_5
data_12		dw	offset loc_8
		db	 83h,0FBh, 04h, 73h, 07h,0D1h
		db	0E3h, 2Eh,0FFh,0A7h, 9Ah, 00h
loc_1::
		mov	ax,8811h
		retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_2::
		push	bx
		push	dx
		push	si
		push	es
		mov	es,cs:data_34
		mov	byte ptr es:data_52,1
		mov	es:data_76,ah
		xor	ah,ah
		mov	bx,ax
		mov	ax,es:data_53
		or	ax,ax
		jz	loc_3
		mov	dx,12h
		mul	dx
		mov	si,77h
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,20h
		push	bp
		mov	bp,8
		push	bp
		call	dword ptr cs:data_35
		pop	bp
loc_3::
		mov	byte ptr es:data_52,0
		pop	es
		pop	si
		pop	dx
		pop	bx
		retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_4::
		push	ds
		mov	ds,cs:data_34
		assume	ds:seg_b
		mov	data_52,al
		pop	ds
		xor	ax,ax
		retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_5::
		push	ax
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	ds
		push	es
		push	es
		push	di
		push	cs
		pop	es
		call	sub_17
		xor	dx,dx
		call	sub_7
		mov	si,di
		assume	ds:seg_a
		add	si,cs:data_42
		inc	si
		pop	di
		pop	ds
		push	cs
		pop	es
		xchg	si,di
		xor	dx,dx
		call	sub_7
		pop	es
		pop	ds
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7		proc	near
		push	si
		push	di
		inc	di
loc_6::
		cmp	byte ptr [si],0
		je	loc_7
		mov	ax,cx
		mov	bx,1
		call	sub_16
		movsb
		xor	es:[di-1],al
		inc	dx
		jmp	short loc_6
loc_7::
		pop	di
		mov	dx,si
		pop	si
		sub	dx,si
		mov	es:[di],dl
		retn
sub_7		endp


;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_8::
		push	ds
		push	ax
		mov	ax,cs:data_34
		mov	ds,ax
		pop	ax
		assume	ds:seg_b
		mov	data_50,di
		mov	word ptr data_50+2,ax
		xor	ax,ax
		pop	ds
		retf
			                        ;* No entry point to code
		push	dx
		push	cx
		push	bx
		push	di
		push	si
		push	ds
		push	es
loc_9::
		mov	ax,seg_a
		mov	ds,ax
		assume	ds:seg_a
		inc	data_33
		cmp	byte ptr data_33,1
		je	loc_11
		mov	bh,18h
		call	sub_2
		mov	ax,8846h
loc_10::
		jmp	loc_16
loc_11::
		mov	bh,18h
		call	sub_3
		mov	bh,1
		call	sub_5
		jnz	loc_10
		mov	ax,8848h
		cmp	dx,32h
		jne	loc_12
		test	byte ptr data_40,0FFh
		jz	loc_10
		mov	es,cx
		test	byte ptr es:data_2e,20h	; ' '
		jz	loc_13
		jmp	loc_16
loc_12::
		cmp	dx,33h
		je	loc_13
		call	sub_17
		test	byte ptr [di],0FFh
		jz	loc_10
loc_13::
		xor	ax,ax
		mov	data_37,dx
		mov	es,data_34
		mov	di,0AFh
		call	sub_4
		jnz	loc_10
		xor	dx,dx
		mov	bh,14h
		call	sub_2
		xor	dx,dx
		mov	bh,0Dh
		call	sub_2
		mov	bh,0Ch
		call	sub_2
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Ch
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		push	cx
		mov	ax,1
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,43h
		push	bp
		mov	bp,4
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		mov	ax,cx
		pop	cx
		jnz	loc_14
		cmp	ax,cx
		jne	loc_14
		push	cx
		xor	cx,cx
		mov	ax,2
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,43h
		push	bp
		mov	bp,4
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	cx
loc_14::
		mov	bh,0
		call	sub_3
		call	sub_13
		jz	loc_18
		cmp	ax,8800h
		je	loc_18
		mov	si,0AFh
		push	es
		pop	ds
		push	ax
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Bh
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	ax
loc_15::
		push	ax
		mov	bh,0
		call	sub_2
		pop	ax
loc_16::
		dec	cs:data_33
		jnz	loc_17
		xor	cx,cx
		mov	bx,1800h
		mov	dx,1
		push	ax
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Ah
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	ax
		jnz	loc_17
		jmp	loc_9
loc_17::
		pop	es
		pop	ds
		pop	si
		pop	di
		pop	bx
		pop	cx
		pop	dx
		retf
loc_18::
		mov	bx,1
		mov	dx,data_37
		cmp	dx,32h
		je	loc_20
		cmp	dx,31h
		jne	loc_19
		jmp	short loc_24
loc_19::
		push	ds
		mov	ds,data_34
		mov	si,0AFh
		mov	byte ptr [si],0
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,dx
		push	bp
		mov	bp,8
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	ds
		jnz	loc_23
		jmp	short loc_22
loc_20::
		mov	bx,0Bh
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,dx
		push	bp
		mov	bp,0Ch
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		jnz	loc_23
loc_21::
		call	sub_8
loc_22::
		call	sub_9
		mov	bx,0Dh
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,1
		push	bp
		mov	bp,1
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		jmp	loc_16
loc_23::
		push	ds
		mov	ds,cx
		mov	word ptr ds:data_3e,5555h
		pop	ds
		push	ax
		xor	ax,ax
		mov	bx,ax
		mov	dx,ax
		call	sub_1
		pop	ax
		push	ds
		mov	ds,cx
		mov	word ptr ds:data_3e,2222h
		pop	ds
		jmp	loc_15
loc_24::
		mov	es,cs:data_34
		call	sub_17
		mov	si,di
		xor	ah,ah
		lodsb
		mov	di,offset data_75
		xchg	cx,ax
		mov	bx,data_42
		mov	ch,[bx+si]
		push	cx
		mov	cx,bx
		add	cx,data_43
		inc	cx
		xor	dx,dx
		mov	bx,cs:data_42
		inc	bx
		xchg	bl,bh
		mov	bl,1
		push	di

locloop_25::
		push	ax
		movsb
		call	sub_16
		xor	es:[di-1],al
		inc	dx
;*		cmp	dl,bh
		db	 3Ah,0D7h
		jnz	loc_26
		xor	dx,dx
		xor	bh,bh
loc_26::
		pop	ax
		loop	locloop_25

		pop	di
		pop	cx
		mov	bx,cx
		xor	bh,bh
		mov	byte ptr es:[bx+di],0
		mov	bl,ch
		add	bx,data_42
		inc	bx
		mov	byte ptr es:[bx+di],0
		push	es
		pop	ds
		mov	cx,ax
		mov	bx,1
		mov	si,191h
		mov	di,si
		add	di,cs:data_42
		inc	di
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,31h
		push	bp
		mov	bp,8
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		push	ax
		lahf
		push	cx
		mov	cx,cs:data_42
		add	cx,cs:data_43
		inc	cx
		xor	al,al
		xchg	si,di
		rep	stosb
		pop	cx
		push	cs
		pop	ds
		sahf
		pop	ax
		jz	loc_27
		jmp	loc_23
loc_27::
		jmp	loc_21

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8		proc	near
		push	bx
		push	si
		xor	ax,ax
		mov	si,7FBh
loc_28::
		cmp	si,data_8e
		jae	loc_30
		cmp	[si],cx
		jne	loc_29
		push	cx
		mov	bl,[si+2]
		mov	bh,[si+7]
		mov	dx,[si+3]
		mov	ax,[si+5]
		call	sub_12
		pop	cx
loc_29::
		add	si,8
		jmp	short loc_28
loc_30::
		pop	si
		pop	bx
		retn
sub_8		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9		proc	near
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	es
		push	ds
		xor	ax,ax
		mov	si,8FBh
		xor	dx,dx
loc_31::
		cmp	si,offset data_40
		jae	loc_34
		cmp	[si],cx
		jne	loc_33
		mov	ax,2Ah
		mov	es,data_34
		mov	di,0AFh
		mov	bx,1
		mov	cx,19h
		push	dx
		call	sub_6
		pop	dx
		jnz	loc_34
		test	byte ptr es:[di+1],0FFh
		jz	loc_32
		mov	ax,2Ah
		mov	bx,0
		mov	cx,2
		call	sub_10
		jnz	loc_34
loc_32::
		push	es
		pop	ds
		mov	byte ptr [di+2],0
		mov	byte ptr [di+0Ch],0
		mov	word ptr [di+15h],0
		mov	word ptr [di+1Bh],0
		push	si
		xchg	si,di
		mov	ax,2Ah
		mov	bx,0
		mov	cx,19h
		push	dx
		call	sub_6
		pop	dx
		pop	si
		jnz	loc_34
		mov	ax,77h
		mov	bx,2
		mov	cx,4
		call	sub_10
		jnz	loc_34
loc_33::
		push	cs
		pop	ds
		inc	dx
		add	si,2
		jmp	short loc_31
loc_34::
		pop	ds
		pop	es
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		retn
sub_9		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10		proc	near
		push	cx
		push	dx
		push	di
		push	si
		push	ds
		push	es
		mov	ds,cs:data_34
		push	ds
		pop	es
		mov	di,offset data_60
		push	ax
		xor	al,al
		push	di
		push	cx
		rep	stosb
		pop	cx
		pop	si
		pop	ax
		mov	di,4E57h
		call	sub_6
		pop	es
		pop	ds
		pop	si
		pop	di
		pop	dx
		pop	cx
		retn
sub_10		endp

data_17		dw	offset loc_45		; Data table (indexed access)
data_18		dw	offset loc_48
data_19		dw	offset loc_48
data_20		dw	offset loc_48
data_21		dw	offset loc_48
data_22		dw	offset loc_46
data_23		dw	offset loc_39
data_24		dw	offset loc_41
data_25		dw	offset loc_43
data_26		dw	offset loc_44
data_27		dw	offset loc_48
data_28		dw	offset loc_48
data_29		dw	offset loc_49
data_30		dw	0FB83h			; Data table (indexed access)
		db	0Dh
loc_36::
		jc	loc_38
loc_37::
		mov	ax,8811h
		retf
loc_38::
		shl	bx,1
		jmp	word ptr cs:data_17[bx]	;*13 entries

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_39::
		push	si
		push	ds
		push	bx
		push	dx
		push	cx
		mov	ax,seg_a
		mov	ds,ax
		mov	bl,dh
		sub	bl,41h			; 'A'
		cmp	bl,20h			; ' '
		ja	loc_40
		mov	al,8
		mul	bl
		mov	bx,ax
		add	bx,offset data_38
		mov	[bx],cx
		mov	[bx+2],dh
		push	bx
		call	sub_11
		mov	si,bx
		pop	bx
		or	ax,ax
		jnz	loc_40
		mov	[bx+3],cx
		mov	[bx+5],dx
		mov	dx,si
		mov	[bx+7],dl
loc_40::
		pop	cx
		pop	dx
		pop	bx
		pop	ds
		pop	si
		jmp	short loc_42

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_41::
		push	es
		push	cx
		push	dx
		mov	ax,seg_a
		mov	es,ax
		sub	dh,41h			; 'A'
		mov	al,8
		mov	cl,al
		mul	dh
		mov	di,ax
		add	di,offset data_38
		xor	ch,ch
		mov	al,ch
		cld
		rep	stosb
		pop	dx
		pop	cx
		pop	es
loc_42::
		xor	ax,ax
		retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_43::
		push	ds
		push	bx
		mov	ax,seg_a
		mov	ds,ax
		mov	al,2
		mul	dl
		mov	bx,ax
		add	bx,offset data_39
		mov	[bx],cx
		pop	bx
		pop	ds
		jmp	short loc_42

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_44::
		push	ds
		push	bx
		mov	ax,seg_a
		mov	ds,ax
		mov	al,2
		mul	dl
		mov	bx,ax
		add	bx,offset data_39
		mov	word ptr [bx],0
		pop	bx
		pop	ds
		jmp	short loc_42

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_45::
		mov	bx,data_1e
		mov	cx,15h
		jmp	short loc_42

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_46::
		push	bx
		push	di
		push	ds
		xor	bx,bx
		mov	ds,cx
		cmp	word ptr [bx],31h
		jne	loc_47
		call	sub_17
		mov	word ptr cs:[di],0
loc_47::
		pop	ds
		pop	di
		pop	bx
		jmp	short loc_42

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_48::
		mov	ax,8811h
		retf

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_49::
		cmp	cx,1
		jne	loc_48
		cmp	dx,0
		jne	loc_48
		push	cx
		push	dx
		push	ds
		mov	ax,seg_a
		mov	ds,ax
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Fh
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		mov	data_45,cx
		mov	data_46,dx
		pop	ds
		pop	dx
		pop	cx
		xor	ax,ax
		retf
			                        ;* No entry point to code
		xor	ax,ax
		retf
			                        ;* No entry point to code
		push	cx
		push	si
		push	di
		push	ds
		mov	ax,seg_a
		mov	ds,ax
		mov	si,offset data_32
		cmp	cx,[si]
		jbe	loc_50
		mov	cx,[si]
loc_50::
		rep	movsb
		pop	ds
		pop	di
		pop	si
		pop	cx
		xor	ax,ax
		retf

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11		proc	near
		push	es
		push	ds
		push	si
		push	di
		mov	ds,cs:data_34
		mov	es,cs:data_34
		push	dx
		mov	bh,10h
		mov	dx,2222h
		call	sub_2
		mov	bh,2
		call	sub_2
		mov	si,12Dh
		assume	ds:seg_b
		mov	byte ptr data_66,0
		pop	dx
		mov	data_65,dl
		mov	byte ptr data_67,0
		mov	di,133h
		mov	bx,1
		mov	dx,bx
		mov	al,57h			; 'W'
		call	sub_1
		mov	cx,data_61
		mov	dx,data_62
		mov	bl,data_63
		pop	di
		pop	si
		pop	ds
		pop	es
		retn
sub_11		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12		proc	near
		push	bp
		mov	bp,sp
		push	ax
		push	cx
		push	dx
		push	bx
		push	sp
		push	bp
		push	si
		push	di
		push	ds
		push	es
		mov	ds,cs:data_34
		mov	es,cs:data_34
		push	dx
		push	ax
		mov	bh,10h
		mov	dx,2222h
		call	sub_2
		mov	bh,2
		call	sub_2
		pop	ax
		pop	dx
		mov	si,185h
		mov	byte ptr data_73,1
		mov	data_69,0
		mov	bx,[bp-8]
		mov	data_70,bh
		mov	data_71,dx
		mov	data_72,ax
		mov	byte ptr data_74,0
		mov	di,18Bh
		mov	bl,1
		mov	bh,1
		mov	dx,1
		mov	ax,57h
		call	sub_1
		mov	bx,[bp-8]
		jz	loc_52
loc_51::
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	bp
		pop	ax
		pop	bx
		pop	dx
		pop	cx
		pop	ax
		pop	bp
		retn
loc_52::
		xchg	bx,ax
		mov	ah,ds:data_6e
		push	ax
		call	sub_15
		pop	ax
		jnz	loc_51
		push	ax
		push	si
		mov	si,bx
		inc	si
		inc	si
		mov	di,145h
		push	cx
		mov	cx,20h
		push	di
		rep	movsw
		pop	di
		xor	si,si
		inc	di
		cmp	byte ptr es:[di],0
		jne	loc_53
		jmp	short loc_58
loc_53::
		inc	si
		mov	bx,di
		mov	al,5Ch			; '\'
		xor	cx,cx
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,40h
		push	bp
		mov	bp,6
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pushf
		mov	dx,bx
		neg	dx
		add	dx,di
		dec	dx
		mov	es:[bx-1],dl
		push	di
		mov	di,bx
		mov	ah,10h
		mov	cx,dx
		jcxz	loc_57

locloop_54::
		mov	al,es:[di]
		cmp	al,0BFh
		je	loc_55
		inc	ah
		cmp	al,0AEh
		je	loc_55
		inc	ah
		cmp	al,0AAh
		jne	loc_56
loc_55::
		mov	es:[di],ah
loc_56::
		inc	di
		loop	locloop_54

loc_57::
		pop	di
		popf
		jz	loc_53
loc_58::
		push	es
		push	ds
		pop	es
		pop	ds
		mov	ax,si
		mov	bx,[bp-8]
		mov	byte ptr ds:[13Eh],bh
		mov	byte ptr ds:[144h],al
		pop	cx
		pop	si
		push	ds
		pop	es
		mov	di,18Bh
		mov	bl,1
		mov	bh,1
		mov	dx,1
		mov	ax,57h
		call	sub_1
		pop	ax
		jnz	loc_59
		mov	dl,byte ptr ds:[0AFh]
		call	sub_14
loc_59::
		jmp	loc_51
sub_12		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13		proc	near
		assume	ds:seg_a
		mov	ax,cs:data_37
		push	ds
		mov	ds,cs:data_34
		push	si
		mov	si,0AFh
		mov	dl,8
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,ax
		push	bp
		mov	bp,4
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	si
		pop	ds
		retn
sub_13		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14		proc	near
		push	bx
		push	ds
		mov	ds,cs:data_34
		push	ax
		call	sub_15
		pop	ax
		jnz	loc_60
		mov	[bx+4Ah],ah
		push	ax
		mov	bx,0
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,50h
		push	bp
		mov	bp,1
		push	bp
		call	dword ptr cs:data_35
		pop	bp
		pop	ax
		jnz	loc_60
		push	ax
		mov	ax,0EF00h
		int	21h			; ??INT Non-standard interrupt
		pop	ax
		sub	al,41h			; 'A'
		xor	ah,ah
		add	si,ax
		mov	es:[si],dl
		xor	ax,ax
loc_60::
		pop	ds
		pop	bx
		retn
sub_14		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15		proc	near
		sub	al,41h			; 'A'
		xor	ah,ah
		mul	byte ptr ds:data_4e
		lds	bx,dword ptr ds:data_5e
		lds	bx,dword ptr [bx]
		add	bx,ax
		mov	ax,883Ch
		cmp	word ptr [bx+4Dh],4E57h
		jne	loc_ret_61
		xor	ax,ax

loc_ret_61::
		retn
sub_15		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16		proc	near
		push	cx
		push	dx
		not	ax
		mul	dx
		mov	dx,0C827h
		mul	dx
		mov	cl,bl
		mov	dx,1
		shl	dx,cl
		xor	ax,dx
		pop	dx
		pop	cx
		retn
sub_16		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17		proc	near
		push	ax
		push	bx
		push	dx
		mov	ax,cx
		sub	ax,cs:data_45
		mov	dl,6
		div	dl
		mov	dx,cs:data_42
		add	dx,cs:data_43
		inc	dx
		inc	dx
		mul	dl
		mov	di,919h
		add	di,ax
		pop	dx
		pop	bx
		pop	ax
		retn
sub_17		endp

		db	10 dup (0)
data_32		db	2
		db	0
data_33		db	0
data_34		dw	seg_b
data_35		dw	0, 0
data_37		dw	0
data_38		dw	128 dup (0)
data_39		db	0
		db	17 dup (0)
data_40		db	0
data_41		db	0
data_42		dw	10h
data_43		dw	10h
data_44		dw	0
data_45		dw	0
data_46		dw	8
data_48		db	0
		db	0, 0, 0, 0, 0, 0

seg_a		ends



;------------------------------------------------------------  seg_b   ----

seg_b		segment	byte public
		assume cs:seg_b  , ds:seg_b

			                        ;* No entry point to code
		push	ax
		push	bx
		push	dx
		push	ds
		push	cs
		pop	ds
		test	byte ptr data_52,0FFh
		jz	loc_62
		jmp	short loc_66
loc_62::
		mov	ax,data_50
		or	ax,word ptr data_50+2
		jz	loc_64
		mov	ax,1600h
		int	2Fh			; Enhanced Windows install check
		test	al,7Fh
		jz	loc_63
		mov	ax,1683h
		int	2Fh			; ??INT Non-standard interrupt
		dec	bx
		jnz	loc_64
loc_63::
		call	dword ptr data_50
		jmp	short loc_66
loc_64::
		xor	ax,ax
		mov	es,ax
		mov	ax,es:keybd_q_tail_
		mov	dx,es:keybd_q_head_
		cmp	dx,ax
		jne	loc_66
		mov	bx,ax
		lea	di,ds:data_7e[bx]
		xor	ah,ah
		mov	al,data_76
		stosw
		inc	bx
		inc	bx
		cmp	bx,es:keybd_end_
		jne	loc_65
		mov	bx,es:keybd_begin_
loc_65::
		mov	es:keybd_q_tail_,bx
loc_66::
		mov	byte ptr data_52,0
		pop	ds
		pop	dx
		pop	bx
		pop	ax
		retf
		db	7 dup (0)
data_50		dw	0, 0
data_52		db	0
data_53		dw	0
		db	0, 0, 0, 0, 0, 0
		dw	seg_b
		db	38 dup (0)
data_55		dw	0
data_56		dw	0
data_57		dw	0
data_58		dw	0
data_59		dw	0			; segment storage
data_60		db	0
		db	0, 0, 0
data_61		dw	0
data_62		dw	0
data_63		db	0
		db	41 dup (0)
		db	16h
		db	0, 0, 0, 0, 0
data_65		db	0
		db	0, 0, 0
data_66		db	0
data_67		db	0
		db	64 dup (0)
		db	0E1h, 00h
		dw	seg_b
		db	 4Ch, 00h,0AFh, 00h
		dw	seg_b
		db	 09h, 00h, 0Ch, 00h
		db	0
data_69		dw	0
data_70		db	0
data_71		dw	0
data_72		dw	0
data_73		db	0
data_74		db	0
		db	64 dup (0)
		db	 39h, 01h
		dw	seg_b
		db	 4Ch, 00h,0AFh, 00h
		dw	seg_b
		db	9, 0
data_75		dw	95 dup (0)
		db	0
data_76		db	0
		db	15 dup (0)

seg_b		ends



;------------------------------------------------------------  seg_c   ----

seg_c		segment	byte public
		assume cs:seg_c  , ds:seg_c

			                        ;* No entry point to code
		push	ax
		push	bx
		mov	cs:data_78,ax
		mov	ax,seg_c
		mov	ds,ax
		call	sub_18
		cmp	byte ptr data_97,0
		je	loc_67
		mov	ax,7A20h
		mov	bx,2
		int	2Fh			; ??INT Non-standard interrupt
		mov	data_79,bx
		mov	word ptr data_79+2,es
		mov	bx,0
		mov	dx,40h
		call	dword ptr data_79
		or	ax,ax
		jz	loc_68
		push	ax
		push	bx
		push	cx
		push	si
		push	ds
		mov	ah,2
		mov	al,0
		mov	bx,6
		mov	cx,5
		mov	si,30Fh
		push	cs
		pop	ds
		call	dword ptr cs:data_79
		pop	ds
		pop	si
		pop	cx
		pop	bx
		pop	ax
		push	bx
		push	cs
		mov	ax,314h
		push	ax
		push	cs
		mov	ax,30Fh
		push	ax
		push	cs
		mov	ax,314h
		push	ax
		mov	ax,5
		push	ax
		mov	bx,6
		mov	ah,0
		mov	al,0
		call	dword ptr data_79
		add	sp,0Eh
		pop	bx
		push	bx
		push	cs
		mov	ax,30Fh
		push	ax
		push	cs
		mov	ax,314h
		push	ax
		mov	ax,6
		push	ax
		mov	bx,6
		mov	ah,0
		mov	al,0
		call	dword ptr data_79
		add	sp,0Ah
		pop	bx
loc_67::
		pop	bx
		pop	ax
		mov	ax,0FFFFh
		retf
loc_68::
		mov	bx,0
		mov	dx,34h
		call	dword ptr data_79
		or	ax,ax
		jnz	loc_69
		push	ds
		mov	ax,seg_a
		mov	ds,ax
		assume	ds:seg_a
		inc	data_40
		pop	ds
loc_69::
		pop	bx
		pop	ax
		or	ax,ax
		jz	loc_70
		jmp	loc_74
loc_70::
		mov	ax,seg_c
		mov	ds,ax
		assume	ds:seg_c
		mov	data_83,bx
		mov	ax,seg_a
		mov	es,ax
		push	bx
		push	es
		mov	ax,7A20h
		mov	bx,0
		int	2Fh			; ??INT Non-standard interrupt
		mov	ax,es
		mov	cx,seg seg_b
		mov	es,cx
		mov	es:data_55,bx
		mov	es:data_56,ax
		pop	es
		mov	word ptr es:data_35,bx
		mov	word ptr es:data_35+2,ax
		mov	data_81,bx
		mov	word ptr data_81+2,ax
		push	bp
		mov	bp,60h
		push	bp
		mov	bp,10h
		push	bp
		mov	bp,0Fh
		push	bp
		call	dword ptr cs:data_81
		pop	bp
		mov	es:data_45,cx
		mov	es:data_46,dx
		pop	bx
		mov	ax,data_83
		or	ax,ax
		jz	loc_71
		mov	es:data_34,bx
loc_71::
		push	bx
		push	ds
		mov	ax,3DDh
		push	ax
		mov	bx,6
		mov	ah,1
		mov	al,2
		call	dword ptr data_79
		add	sp,4
		pop	bx
		mov	ax,seg_b
		mov	es,ax
		mov	dx,data_83
		mov	si,offset data_85
		mov	cx,data_86
		jcxz	loc_73

locloop_72::
		lodsw
		mov	bx,ax
		mov	es:[bx],dx
		loop	locloop_72

loc_73::
		mov	es,dx
		mov	ax,seg_b
		mov	ds,ax
		mov	ax,seg_c
		sub	ax,seg_b
		mov	cl,4
		shl	ax,cl
		mov	cx,ax
		mov	si,ax
		dec	si
		mov	di,si
		mov	word ptr cs:data_90+2,es
		mov	cs:data_90,di
		mov	word ptr cs:data_92+2,ds
		mov	cs:data_92,si
		mov	cs:data_87,cx
		mov	ah,52h
		int	21h			; DOS Services  ah=function 52h
						;  get DOS data table ptr es:bx
						;*  undocumented function
		lea	di,[bx+16h]
		assume	ds:seg_b
		mov	data_58,di
		mov	data_59,es
		mov	data_57,51h
		mov	ah,30h
		int	21h			; DOS Services  ah=function 30h
						;  get DOS version number ax
		xchg	al,ah
		cmp	ax,400h
		jb	loc_74
		mov	data_57,58h
loc_74::
		mov	ax,seg_c
		mov	ds,ax
		mov	bx,60h
		mov	si,seg_a+0fch
		sub	si,seg_c
		mov	ax,seg_a
		mov	es,ax
		test	es:data_41,0FFh
		jz	loc_75
		mov	es:data_42,30h
		mov	es:data_43,80h
loc_75::
		xor	ax,ax
		assume	ds:seg_c
		test	byte ptr data_96,0FFh
		jz	loc_76
		mov	ax,es:data_42
		add	ax,es:data_43
		inc	ax
		inc	ax
		mul	es:data_46
		mov	es:data_44,ax
loc_76::
		add	ax,919h
;*		add	ax,0Fh
		db	 05h, 0Fh, 00h
		mov	cl,4
		shr	ax,cl
		mov	dx,ax
		mov	cx,seg seg_b
		sub	cx,seg_a
		sub	cx,ax
		add	si,cx
		mov	cx,seg seg_c
		sub	cx,seg_b
		test	data_78,0FFFFh
		jz	loc_77
		xor	ax,ax
		retf
loc_77::
		push	si
		push	dx
		push	cx
		add	dx,cx
		mov	ax,seg_d
		sub	ax,seg_a
		cmp	dx,ax
		jb	loc_78
		sub	dx,ax
		add	word ptr data_88+2,dx
		mov	cx,seg_a + 0fch
		sub	cx,seg_d
		mov	ax,seg_d
		mov	ds,ax
		les	di,dword ptr cs:data_88
		shl	cx,1
		shl	cx,1
		shl	cx,1
		shl	cx,1
		mov	si,cx
		dec	si
		dec	si
		mov	di,si
		shr	cx,1
		std
		rep	movsw
		cld
loc_78::
		mov	cx,cs:data_87
		lds	si,dword ptr cs:data_92
		les	di,dword ptr cs:data_90
		jmp	dword ptr cs:data_88

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18		proc	near
		push	es
		push	di
		push	si
		push	bx
		push	cx
		push	ax
		mov	ax,7A20h
		mov	bx,3
		int	2Fh			; ??INT Non-standard interrupt
		mov	data_94,bx
		mov	word ptr data_94+2,es
		mov	cx,5
		mov	si,3A8h
		mov	di,2ECh
		push	ds
		pop	es
		call	dword ptr data_94
		pop	ax
		pop	cx
		pop	bx
		pop	si
		pop	di
		pop	es
		retn
sub_18		endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program	Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


auto		proc	far

start::
		mov	ah,4Ch			; 'L'
		mov	al,6
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
copyright	db	'CoPyRiGhT=(C) Copyright 1993 - 1'
		db	'996 Novell, Inc.'
		db	'  All Rights Reserved.'
		db	7 dup (0)
data_78		dw	0FFFFh
data_79		dw	0, 0
data_81		dw	0, 0
data_83		dw	0
		db	'NETWARE DOS REQUESTER', 0
		db	'DOSRQSTR.MSG', 0
		db	'AUTO', 0
		db	'REDIR', 0
data_85		db	2Fh
		db	 01h, 35h, 01h, 87h, 01h, 8Dh
		db	 01h, 7Dh, 00h
data_86		dw	5
data_87		dw	0
data_88		dw	0, seg_d
data_90		dw	0, 0
data_92		dw	0, 0
data_94		dw	0, 0
data_96		db	0
data_97		db	1
		db	'AUTO RECONNECT'
		db	 00h, 39h, 03h
		dw	seg_c
		db	 00h, 00h,0FFh,0FFh
		db	'AUTO RETRY'
		db	 00h, 75h, 00h
		dw	seg_b
		db	 00h, 00h, 38h, 0Eh
		db	'CONNECTIONS'
		db	 00h, 17h, 09h
		dw	seg_a
		db	 02h, 00h, 32h, 00h
		db	'AUTO LARGE TABLE'
		db	 00h, 0Eh, 09h
		dw	seg_a
		db	 00h, 00h,0FFh,0FFh
		db	'BIND RECONNECT'
		db	 00h, 38h, 03h
		dw	seg_c
		db	 00h, 00h,0FFh,0FFh, 3Ah, 03h
		db	 0Fh, 00h, 04h, 00h, 49h, 03h
		db	 51h, 03h, 0Bh, 00h, 02h, 00h
		db	 5Ch, 03h, 64h, 03h, 0Ch, 00h
		db	 02h, 00h, 70h, 03h, 78h, 03h
		db	 11h, 00h, 04h, 00h, 89h, 03h
		db	 91h, 03h, 0Fh, 00h, 04h, 00h
		db	0A0h, 03h
		db	56h
		db	'eRsIoN=1.21', 0
		db	'AUTO.VLM     - NetWare auto-reco'
		db	'nnect module  v1.21 (960514)', 0Dh
		db	0Ah
		db	0, 0, 0, 0, 0

auto		endp

seg_c		ends



;------------------------------------------------------------  seg_d   ----

seg_d		segment	byte public
		assume cs:seg_d  , ds:seg_d

			                        ;* No entry point to code
		std
		rep	movsb
		cld
		push	es
		push	di
		mov	ax,seg_a
		mov	es,ax
		mov	di,offset data_48
		xor	al,al
		mov	cx,es:data_44
		rep	stosb
		pop	di
		pop	es
		pop	cx
		pop	dx
		pop	si
		xor	ax,ax
		retf

seg_d		ends



		end	start
