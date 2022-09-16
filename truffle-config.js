const HDWalletProvider = require("@truffle/hdwallet-provider");
const mnemonic = process.env.BIP39_MNEMONIC;

//https://trufflesuite.com/docs/truffle/reference/configuration/
module.exports = {
  networks: {
    development: {
      network_id: "*",
      host: '127.0.0.1',
      port: 8545,
      gasPrice: 0,
    },

    mainnet: {
      //https://github.com/trufflesuite/truffle/blob/develop/packages/hdwallet-provider/README.md
      provider: () => new HDWalletProvider(
        mnemonic, "https://mainnet.infura.io/v3/" + process.env.INFURA_PROJECT_ID),
      network_id: 1,
      skipDryRun: false,
      disableConfirmationListener: true

    },

    rinkeby: {
      provider: () => new HDWalletProvider(
        mnemonic, "https://rinkeby.infura.io/v3/" + process.env.INFURA_PROJECT_ID),
      network_id: 4,
      skipDryRun: true,
      disableConfirmationListener: true
    }
  },

  compilers: {
    solc: {
      version: "pragma",  // https://github.com/trufflesuite/truffle/releases/tag/v5.2.0
      //parser: "solcjs",
      settings: {  // https://docs.soliditylang.org/en/latest/using-the-compiler.html#compiler-input-and-output-json-description
        optimizer: {
          enabled: false,
          runs: 200
        },
        //evmVersion: "london"  // london, berlin, istanbul, petersburg, constantinople, byzantium
      }
    },
  },
}