// Version of Solidity compiler this program was written for
pragma solidity ^0.5.0;

import "./WCCoin.sol";


// A faucet for ERC20 token WCC
contract WCCFaucet {

	WCCoin public WC_Coin;
	address public WCC_Owner;

	// WCCFaucet constructor, provide the address of WCCoken contract and
	// the owner address we will be approved to transferFrom
	constructor (address _WCCoin, address _WCCOwner) public {
		// Initialize the WCCoin from the address provided
		WC_Coin = WCCoin(_WCCoin);
		WCC_Owner = _WCCOwner;
	}

	function withdraw(uint withdraw_amount) public {

   	// Limit withdrawal amount to 10 MET
   	require(withdraw_amount <= 1000);

		// Use the transferFrom function of WCCoin
		WC_Coin.transferFrom(WCC_Owner, msg.sender, withdraw_amount);
  }

	// REJECT any incoming ether
	function () external payable { revert(); }

}
