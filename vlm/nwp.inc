; interrupt.m, #02865

; connect
; in:   dl = resource count (nds)
;       cx = proposed conn handle
;       ds:si = server name
; out:  ax = status
;       cx = conn handle
NWP_FUNC_04         equ     4

; disconnect
; in:   cx = conn handle
; out:  ax = statuis
NWP_FUNC_05         equ     5

NWP_FUNC_07         equ     7

NWP_FUNC_08         equ     8

; logout
; in:   cx = handle
; out:  ax = status
NWP_FUNC_09         equ     9

; get bindery object / get message handler
NWP_FUNC_0A         equ     0Ah

; ordered send to all
; in:   al = ncp request code, ah = inverse request code
;       bx = #req frags, dx = #reply frags
;       ds:si = request frag list, es:di = response frag list
; out:  ax = status
NWP_FUNC_0E         equ     0Eh

; preferred handler
; in:   bx = subfunction
NWP_FUNC_0F         equ     0Fh
