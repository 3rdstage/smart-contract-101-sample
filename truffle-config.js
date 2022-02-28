const HDWalletProvider = require("@truffle/hdwallet-provider");
const mnemonic = process.env.BIP39_MNEMONIC;

module.exports = {
  networks: {
    development: {
      host: '127.0.0.1',
      port: 8545,
      network_id: 2016,
      gas: 3E8,
      gasPrice: 0,
      websockets: false
    },
    
    mainnet: {
      provider: () => new HDWalletProvider(
        mnemonic, "https://mainnet.infura.io/v3/" + process.env.INFURA_PROJECT_ID),
      network_id: '1'
    },

    rinkeby: {
      provider: () => new HDWalletProvider(
        mnemonic, "https://rinkeby.infura.io/v3/" + process.env.INFURA_PROJECT_ID),
      network_id: '4',
    }
  },
  
  compilers: {
    solc: {
      version: "0.4.8",  // https://github.com/trufflesuite/truffle/releases/tag/v5.2.0
      //parser: "solcjs",
      settings: {
        optimizer: {
          enabled: false,
          runs: 200
        },
        evmVersion: "istanbul"  // berlin, istanbul, petersburg, constantinople, byzantium
      }
    },
  },
}