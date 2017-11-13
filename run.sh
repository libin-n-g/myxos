#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/shell.apl apl_progs/File.apl apl_progs/Prog.apl apl_progs/even.apl apl_progs/sample.apl
./run.sh apl_progs/test.apl apl_progs/end.apl apl_progs/trap.apl 
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm
./xsm < Input.txt
