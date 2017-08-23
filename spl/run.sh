#!/bin/sh
echo "Runnning"
./spl --int=timer spl_progs/timer_interrupt.spl
./spl --os spl_progs/os_startup.spl
