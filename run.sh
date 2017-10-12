#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/shell.apl apl_progs/Prog.apl apl_progs/even.apl apl_progs/s9test2.apl apl_progs/prime.apl apl_progs/s11test.apl apl_progs/wait.apl apl_progs/test.apl apl_progs/A.apl apl_progs/B.apl
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm
./xsm 
