#!/bin/bash

set -e

RELAY=$1

function XXX() {
  SEQ=$1
  ID=$(nak event --content "test $SEQ" $RELAY | jq -r .id)
  nak req -i $ID $RELAY
  nak event -k 5 -e $ID $RELAY
}

for i in `seq 5`; do XXX $i; done
