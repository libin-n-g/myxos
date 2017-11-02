#!/bin/sh
cd spl/
./run.sh
cd ../apl
./run.sh apl_progs/chmodtest.apl
cd ../xfs-interface/
./xfs-interface < Input.txt
cd ../xsm
./xsm 
#--debug


