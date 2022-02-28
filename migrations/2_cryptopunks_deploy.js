
const Punks = artifacts.require("CryptoPunksMarket");

module.exports = function (deployer) {
  deployer.deploy(Punks);
};