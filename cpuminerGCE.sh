#!/bin/sh
# Version:1.0
# Author : David Vazquez

while true
do
/miner/cpuminer -B && sleep 90 && sudo killall cpuminer && sleep 35 && echo "ciclo completo"
done
