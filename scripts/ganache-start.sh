#! /bin/bash

# https://github.com/trufflesuite/ganache#startup-options
ganache --chain.networkId 2016 \
  --chain.chainId 2016 \
  --server.host 127.0.0.1 \
  --server.port 8545 \
  --miner.blockGasLimit 50000000000 \
  --miner.defaultTransactionGasLimit 400000000 \
  --miner.blockTime 0 \
  --wallet.mnemonic "army van defense carry jealous true garbage claim echo media make crunch" \
  --wallet.totalAccounts 10 \
  --wallet.lock false \
  --wallet.defaultBalance 10000 \
  --database.dbPath run/ganache/data