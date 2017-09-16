#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/sample.apl apl_progs/loop.apl apl_progs/even.apl
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm
./xsm --timer=1
