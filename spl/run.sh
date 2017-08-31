#!/bin/sh
echo "Runnning"
./spl --int=1 spl_progs/system_call.spl
./spl --int=timer spl_progs/timer_interrupt.spl
./spl --os spl_progs/os_startup.spl
