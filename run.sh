#/usr/bin/env bash

PWD=$(pwd) && \
mkdir --parents blockchain && \

docker run \
  --name bitcoind \
  -h bitcoind \
  --volume $PWD/blockchain:/blockchain \
  --publish :::8333:8333 \
  --publish :::28332:28332 \
  --publish :::28333:28333 \
  --publish :::28334:28334 \
  --publish :::28335:28335 \
  --detach \
  --memory=1g \
  --cpuset-cpus=0-2 \
  --cpuset-mems=0 \
  wouldgo/bitcoind
