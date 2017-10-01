#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/shell.apl apl_progs/Prog.apl apl_progs/even.apl
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm
./xsm --debug --timer=0
