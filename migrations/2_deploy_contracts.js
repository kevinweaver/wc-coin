var WCCoin = artifacts.require("WCCoin");
var WCCFaucet = artifacts.require("WCCFaucet");
var owner = web3.eth.accounts[0];

module.exports = function(deployer) {
  // Deploy the WCCoin contract
  deployer.deploy(WCCoin, {from: owner}).then(function() {
    // Then the faucet
    return deployer.deploy(WCCFaucet, WCCoin.address, owner);
  });
}
