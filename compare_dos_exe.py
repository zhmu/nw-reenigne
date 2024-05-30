#!/usr/bin/env python3

import subprocess
import struct
import sys

def read_exe(exe_file):
    with open(exe_file, 'rb') as f:
        data = f.read()

    magic, last_block_used, num_blocks, num_relocs, header_size = struct.unpack('<HHHHH', data[0:10])
    if magic != 0x5a4d:
        print(f'{exe_file} is not an exe file')
        sys.exit(1)
    data_len = num_blocks * 512
    if last_block_used != 0:
        data_len += last_block_used
    else:
        data_len += 512
    data_offset = header_size * 16

    init_ip, init_cs, reloc_offset, = struct.unpack('<HHH', data[20:26])

    relocs = []
    for n in range(num_relocs):
        offs, seg, = struct.unpack('<HH', data[reloc_offset:reloc_offset + 4])
        reloc_offset += 4
        relocs.append((seg, offs))

    return { 'data': data[data_offset:data_offset+data_len], 'cs': init_cs, 'ip': init_ip, 'relocs': sorted(relocs) }

def print_relocs(relocs):
    for (seg, offs) in sorted(relocs):
        print(f'  {seg:04x}:{offs:04x} ({(seg*16)+offs:x})')

def are_relocs_equal(your_relocs, orig_relocs):
    your_relocs = [ (seg * 16 + offs) for (seg, offs) in your_relocs ]
    orig_relocs = [ (seg * 16 + offs) for (seg, offs) in orig_relocs ]
    return set(your_relocs) == set(orig_relocs)

def show_relocation_diff(your_relocs, orig_relocs):
    your_relocs = set(your_relocs)
    orig_relocs = set(orig_relocs)

    d = list(your_relocs.difference(orig_relocs))
    if d:
        print('*** Relocations present in YOURS but not in ORIGINAL')
        print_relocs(d)
        print()

    d = list(orig_relocs.difference(your_relocs))
    if d:
        print('*** Relocations present in ORIGINAL but not in YOURS')
        print_relocs(d)
        print()

def convert_binary_dump(bindata, path):
    with open(path + '.bin', 'wb') as f:
        f.write(bindata)

    with open(path, 'w') as f:
        subprocess.run(['hd', '-v', path + '.bin'], stdout=f)

def disassemble_binary_dump(bindata, path):
    with open(path + '.bin', 'wb') as f:
        f.write(bindata)

    with open(path, 'w') as f:
        subprocess.run(['ndisasm', '-b', '16', path + '.bin'], stdout=f)

def show_binary_diff(your_data, orig_data):
    convert_binary_dump(your_data, '/tmp/your.txt')
    convert_binary_dump(orig_data, '/tmp/orig.txt')
    subprocess.run(['diff', '-u', '/tmp/orig.txt', '/tmp/your.txt'])
    print()

def show_code_diff(your_data, orig_data):
    disassemble_binary_dump(your_data, '/tmp/your.txt')
    disassemble_binary_dump(orig_data, '/tmp/orig.txt')
    subprocess.run(['diff', '-u', '/tmp/orig.txt', '/tmp/your.txt'])
    print()

def compare_exe(your_path, orig_path):
    exe_yours = read_exe(your_path)
    exe_orig = read_exe(orig_path)

    ok = False
    your_data_len = len(exe_yours['data'])
    orig_data_len = len(exe_orig['data'])
    if your_data_len == orig_data_len:
        if exe_yours['data'] == exe_orig['data']:
            ok = True
        else:
            print(f'data content mismatch!')
            show_binary_diff(exe_yours['data'], exe_orig['data'])
            show_code_diff(exe_yours['data'], exe_orig['data'])
            ok = False
    else:
        print(f'data length mismatch, yours {your_data_len} theirs {orig_data_len}')
        show_binary_diff(exe_yours['data'], exe_orig['data'])
        show_code_diff(exe_yours['data'], exe_orig['data'])
        ok = False

    your_num_relocs = len(exe_yours['relocs'])
    orig_num_relocs = len(exe_orig['relocs'])
    if your_num_relocs == orig_num_relocs:
        if are_relocs_equal(exe_yours['relocs'], exe_orig['relocs']):
            ok = ok and True
        else:
            print(f'exe relocations mismatch!')
            show_relocation_diff(exe_yours['relocs'], exe_orig['relocs'])
            print()
            ok = False
    else:
        print(f'relocation count mismatch, yours {your_num_relocs} theirs {orig_num_relocs}')
        show_relocation_diff(exe_yours['relocs'], exe_orig['relocs'])
        ok = False

    if exe_yours['cs'] == exe_orig['cs'] and exe_yours['ip'] == exe_orig['ip']:
        ok = ok and True
    else:
        print(f"entry point mismatch, yours {exe_yours['cs']:04x}:{exe_yours['ip']:04x} original {exe_orig['cs']:04x}:{exe_orig['ip']:04x}")
        ok = False

    return ok

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print(f'usage: {sys.argv[0]} yours origin')
        sys.exit(1)

    if compare_exe(sys.argv[1], sys.argv[2]):
        print('OK')
    else:
        print()
        print('ERROR(S) DETECTED!')
        sys.exit(1)
