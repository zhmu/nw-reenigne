#!/usr/bin/env python3

import os
import sys
import subprocess
import compare_dos_exe

def build_item(source_file, out_file, orig_file, append_file=None):
    with open('t.bat', 'wt') as f:
        f.write('set path=%path%;c:\\masm611\\bin\n')
        source_file_dos = source_file.replace('/', '\\')
        out_obj = os.path.splitext(os.path.basename(source_file))[0] + '.obj'
        f.write(f'del out\\{out_obj}\n')
        f.write(f'del out\\{out_file}\n')
        f.write(f'masm {source_file_dos},out\\{out_obj}\n')
        f.write(f'link out\\{out_obj},out\\{out_file},,,,\n')
        if append_file:
            # append binary data
            append_path_dos = append_file.replace('/', '\\')
            f.write(f'copy /b out\\{out_file}+{append_path_dos}\n')

    subprocess.run(['dosbox', '-exit', '-conf', 'dosbox.conf', 't.bat'], stdout=subprocess.DEVNULL)
    os.remove('t.bat')
    out_path_dos = 'out/' + out_file.upper()
    if not os.path.isfile(out_path_dos):
        print('*** BUILD FAILURE!!!')
        sys.exit(1)
    out_path = 'out/' + out_file
    os.rename(out_path_dos, out_path)

    if compare_dos_exe.compare_exe(out_path, orig_file):
        print(f'{out_file} build ok!')
        return 0
    else:
        print(f'*** UNABLE TO BUILD {out_file} !!!')
        return 1

if not os.path.isfile('MASM611/BIN/MASM.EXE'):
    print('*** MASM 6.11 not available - please grab it from Archive.org and extract to MASM611 directory')
    sys.exit(1)

n = 0
n += build_item('vlm/vlm.asm', 'vlm.exe', 'vlm/orig/vlm.exe', 'vlm/vlmmsg.bin')
n += build_item('vlm/tran.asm', 'tran.vlm', 'vlm/orig/tran.vlm')
n += build_item('vlm/bind.asm', 'bind.vlm', 'vlm/orig/bind.vlm')
n += build_item('vlm/auto.asm', 'auto.vlm', 'vlm/orig/auto.vlm')
n += build_item('vlm/conn.asm', 'conn.vlm', 'vlm/orig/conn.vlm')
n += build_item('vlm/fio.asm', 'fio.vlm', 'vlm/orig/fio.vlm')
n += build_item('vlm/general.asm', 'general.vlm', 'vlm/orig/general.vlm')
n += build_item('vlm/ipxncp.asm', 'ipxncp.vlm', 'vlm/orig/ipxncp.vlm')
n += build_item('vlm/nds.asm', 'nds.vlm', 'vlm/orig/nds.vlm')
n += build_item('vlm/netx.asm', 'netx.vlm', 'vlm/orig/netx.vlm')
n += build_item('vlm/nmr.asm', 'nmr.vlm', 'vlm/orig/nmr.vlm', 'vlm/nmrlang.bin')
n += build_item('vlm/nwp.asm', 'nwp.vlm', 'vlm/orig/nwp.vlm')
n += build_item('vlm/pnw.asm', 'pnw.vlm', 'vlm/orig/pnw.vlm')
n += build_item('vlm/print.asm', 'print.vlm', 'vlm/orig/print.vlm')
n += build_item('vlm/redir.asm', 'redir.vlm', 'vlm/orig/redir.vlm')
n += build_item('vlm/rsa.asm', 'rsa.vlm', 'vlm/orig/rsa.vlm')
n += build_item('vlm/security.asm', 'security.vlm', 'vlm/orig/security.vlm')
sys.exit(n)
