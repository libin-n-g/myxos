#!/bin/sh
echo "Running"
./spl --int=1 spl_progs/interrupt1.spl
./spl --int=2 spl_progs/interrupt2.spl
./spl --int=3 spl_progs/interrupt3.spl
./spl --int=4 spl_progs/interrupt4.spl
./spl --int=5 spl_progs/interrupt5.spl
./spl --int=6 spl_progs/interrupt6.spl
./spl --int=7 spl_progs/interrupt7.spl
./spl --exhandler spl_progs/exhandler.spl 
./spl --int=timer spl_progs/timer_interrupt.spl
./spl --os spl_progs/os_startup.spl
