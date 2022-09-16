const HDWalletProvider = require("@truffle/hdwallet-provider");
const mnemonic = "army van defense carry jealous true garbage claim echo media make crunch";
const infuraProjectId = "9d16d2a5e90a4655b936486c58bfda77";

module.exports = {
  networks: {
    development: {
      network_id: "*",
      host: '127.0.0.1',
      port: 8545,
      gasPrice: 0
    },

    rinkeby: {
      network_id: 4,
      provider: () => new HDWalletProvider(
        mnemonic, "https://rinkeby.infura.io/v3/" + infuraProjectId),
      skipDryRun: true,
      disableConfirmationListener: true
    }
  },

  compilers: {
    solc: {
      version: "pragma"
    }
  }
}
