#!/usr/bin/env python3
import argparse, subprocess, os, signal, time

PIDFILE = '/tmp/tcpdump.pid'

def start(outfile='capture.pcap'):
    if os.path.exists(PIDFILE):
        print('Capture already running.')
        return
    p = subprocess.Popen(['sudo','tcpdump','-i','any','-w', outfile])
    with open(PIDFILE,'w') as f:
        f.write(str(p.pid))
    print('Capture started, pid:', p.pid)

def stop():
    if not os.path.exists(PIDFILE):
        print('No capture running.')
        return
    with open(PIDFILE) as f:
        pid = int(f.read().strip())
    try:
        os.kill(pid, signal.SIGTERM)
        print('Capture stopped.')
    except ProcessLookupError:
        print('Process not found.')
    os.remove(PIDFILE)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('action', choices=['start','stop'])
    parser.add_argument('--outfile', default='capture.pcap')
    args = parser.parse_args()
    if args.action == 'start':
        start(args.outfile)
    else:
        stop()
