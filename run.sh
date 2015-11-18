#/usr/bin/env bash

docker run \
  --name bitcoind \
  --detach \
  --rm \
  -h bitcoind \
  --memory=1g \
  --cpuset-cpus=0-2 \
  --cpuset-mems=0 \
  wouldgo/bitcoind \
  /bin/bash
