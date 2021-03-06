pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract WCCoin is ERC20, ERC20Detailed {
  string public constant NAME = 'Water Closet Coin';
  string public constant SYMBOL = 'WCC';
  uint8 public constant DECIMALS = 18;
  uint constant INITIAL_SUPPLY = 100000 * (10 ** uint256(DECIMALS));

  constructor () public ERC20Detailed(NAME, SYMBOL, DECIMALS){
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}
