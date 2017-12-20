pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Junior is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Junior(address _owner)  UpgradeableToken(_owner) {
    name = "Junior";
    symbol = "KKOO";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}