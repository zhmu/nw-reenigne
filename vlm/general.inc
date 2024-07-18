; interrupt.m, #02888

; general get/set primary connection
; in:	bx = 1 (get primary connection), cx = primary handle to be retrieved
;		out: cx = primary handle
; in:	bx = 2 (set primary connection), cx = primary handle to be stored
GENERAL_FUNC_04     equ     4

; general specific
; in    bx = subfunction
GENERAL_FUNC_06     equ     6

GENERAL_FUNC_08     equ     8
GENERAL_FUNC_09     equ     9
