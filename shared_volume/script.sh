#!/bin/sh

# Default is not a writer
WRITER="${WRITER:=0}"

if [ "${WRITER}" -eq 1 ] ; then
  # Write in a file

  for i in 10 9 8 7 6 5 4 3 2 1 ; do
    echo $i > /xchange/data
    sleep 2
  done

  # Sleep kind of endless
  sleep 100000

else
  # Reader
  while true; do
    cat /xchange/data
    sleep 1
  done

fi