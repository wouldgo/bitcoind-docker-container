#/usr/bin/env bash

docker build \
  --tag wouldgo/bitcoind \
  --force-rm \
  --memory=1g \
  --cpuset-cpus=0-2 \
  --cpuset-mems=0 \
  .
