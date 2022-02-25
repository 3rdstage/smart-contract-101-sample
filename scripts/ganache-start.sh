#! /bin/bash

# https://github.com/trufflesuite/ganache#startup-options
ganache --chain.networkId 2016 \
  --chain.chainId 2016 \
  --server.host 127.0.0.1 \
  --server.port 8545 \
  --miner.blockGasLimit 50000000000 \
  --miner.defaultTransactionGasLimit 400000000 \
  --miner.blockTime 0 \
  --wallet.mnemonic "excess involve mom sick feel setup reflect elder voyage supreme evil flash" \
  --wallet.totalAccounts 15 \
  --wallet.defaultBalance 10000 \
  --wallet.unlockedAccounts 0 \
  --wallet.unlockedAccounts 1 \
  --wallet.unlockedAccounts 2 \
  --wallet.unlockedAccounts 3 \
  --wallet.unlockedAccounts 4 \
  --database.dbPath run/ganache/data