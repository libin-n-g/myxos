#!/bin/sh
echo "Running"
./spl --int=1 spl_progs/interrupt1.spl
./spl --int=2 spl_progs/interrupt2.spl
./spl --int=4 spl_progs/interrupt4.spl
./spl --int=timer spl_progs/timer_interrupt.spl
./spl --os spl_progs/os_startup.spl
