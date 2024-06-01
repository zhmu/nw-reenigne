callf           macro   loc
                ; push    cs
                call    loc
endm

VLMID_EXE       equ     1h
VLMID_CONN      equ     10h
VLMID_TRANS     equ     20h
VLMID_IPXNCP    equ     21h
VLMID_NWP       equ     30h
VLMID_BIND      equ     31h
VLMID_NDS       equ     32h
VLMID_PNW       equ     33h
VLMID_RSA       equ     34h
VLMID_REDIR     equ     40h
VLMID_FIO       equ     41h
VLMID_PRINT     equ     42h
VLMID_GENERAL   equ     43h
VLMID_NETX      equ     50h
VLMID_AUTO      equ     60h
VLMID_SECURITY  equ     61h
VLMID_NMR       equ     100h

STATUS_NONEXISTANT_FUNC_CALLED      equ     8811h
