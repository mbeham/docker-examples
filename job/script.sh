#!/bin/sh


for i in 10 9 8 7 6 5 4 3 2 1 ; do
  echo $i
  sleep "${INTERVAL:-1}"
done
