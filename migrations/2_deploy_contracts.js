var WCCoin = artifacts.require("WCCoin");

module.exports = function(deployer) {
  // Deploy the WCCoin contract as our only task
  deployer.deploy(WCCoin);
};
