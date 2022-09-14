module.exports = {
  networks: {
    development: {
      network_id: "*",
      host: '127.0.0.1',
      port: 8545,
      gasPrice: 0
    }
  },

  compilers: {
    solc: {
      version: "pragma"
    }
  }
}
