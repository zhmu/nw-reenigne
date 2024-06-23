; interrup.f, 01345
FCB_DRIVENUM	equ	0
FCB_DRIVENUM	equ	0

; interrup.f, 01420
ATTR_SHAREABLE	equ	80h

; interrup.f, 01378
PSP_SIGNATURE	equ	0h
PSP_PARENT   	equ	16h
PSP_ENV_SEG	equ 	2ch

; interrup.g, 01680
SDA_CURDRIVE	equ	16h
SDA_DTA_PTR	equ	0ch

; interrupt.g, 01627
LOL_SFT_PTR	equ	4h
LOL_CDS_PTR	equ	16h
LOL_LASTDRIVE	equ	21h
LOL_FCB_PTR  	equ	22h
LOL_SHARING_RETRY_COUNT		equ	-0ch
LOL_SHARING_RETRY_DELAY		equ	-0ah

; interrupt.g, 01628
MCB_TYPE	equ	0
MCB_OWNER	equ	1
MCB_SIZE	equ	3

; interrupt.g, 01643
CDS_4A      	equ	4Ah
CDS_4B      	equ	4Bh
CDS_USERDATA	equ	4Dh

