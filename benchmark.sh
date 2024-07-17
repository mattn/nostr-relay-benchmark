#!/bin/bash

set -e

RELAY=$1

function XXX() {
  ID=$(nak event --quiet $RELAY | jq -r .id)
  nak req --quiet -i $ID $RELAY
  nak event --quiet -k 5 -e $ID $RELAY
}

for i in `seq 5`; do XXX; done
