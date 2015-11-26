#!/bin/bash

/bitcoin/bin/bitcoind -conf=/opt/bitcoin.conf -zmqpubhashtx=tcp://127.0.0.1:28332 -zmqpubhashblock=tcp://127.0.0.1:28333 -zmqpubrawblock=tcp://127.0.0.1:28334 -zmqpubrawtx=tcp://127.0.0.1:28335 -debug=
