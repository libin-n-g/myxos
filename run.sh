#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/Parent.apl apl_progs/Child.apl
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm 
./xsm

