; interrupt.m, #02879

; dos to nw handle
; in:   bx = dos file handle
;       es:di = pointer to 11-byte nw handle
REDIR_FUNC_05       equ     5
REDIR_FUNC_06       equ     6
REDIR_FUNC_07       equ     7

; redir specific
; bx = subfunction (00 = get item)
REDIR_FUNC_08       equ     8
