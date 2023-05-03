#!/bin/bash

APP_NUM=$1
IP=$2

for i in $(seq 1 $APP_NUM)
do
  echo export PERF_READ_PORT=$((2111+($i*20)))
  export PERF_READ_PORT=$((2111+($i*20)))
  
  echo ./ib_write_bw -s 1048576 -p $(($i+10000)) --run_infinitely -D 2 --report_gbits -qps_in_thrd 1 --core_pinning=$(($i%14+3)) $IP &
  ./ib_write_bw -s 1048576 -p $(($i+10000)) --run_infinitely -D 2 --report_gbits --qps_in_thrd 1 --core_pinning=$(($i%14+3)) $IP &

  sleep 1
done
