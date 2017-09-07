#!/bin/sh
echo "Running"
./spl --int=1 spl_progs/interrupt1.spl
./spl --int=timer spl_progs/timer_interrupt.spl
./spl --os spl_progs/os_startup.spl
