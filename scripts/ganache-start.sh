#! /bin/bash

# https://github.com/trufflesuite/ganache#startup-options
ganache --chain.networkId 2016 \
  --chain.chainId 2016 \
  --server.host 127.0.0.1 \
  --server.port 8545 \
  --miner.defaultGasPrice 25000000000 \
  --miner.defaultTransactionGasLimit 400000000 \
  --miner.blockTime 0 \
  --wallet.totalAccounts 15 \
  --wallet.defaultBalance 10000 \
  --wallet.unlockedAccounts 0 1 2 3 4 \
  --database.dbPath run/ganache/data
