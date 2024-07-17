#!/bin/bash

RELAYS=$(cat <<-END
wss://yabu.me
wss://nos.lol
wss://cagliostr.compile-error.net
wss://nostr.compile-error.net
wss://relay-jp.nostr.wirednet.jp
wss://relay.nostr.band
wss://nrelay-jp.c-stellar.net
wss://r.kojira.io
wss://relay-jp.shino3.net
END
)

for relay in $RELAYS; do
  echo $relay
  time -p ./benchmark.sh $relay
done
