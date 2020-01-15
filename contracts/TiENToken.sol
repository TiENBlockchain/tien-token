pragma solidity ^0.5.11;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol';

contract TiENToken is ERC20, ERC20Detailed, ERC20Pausable {
  constructor(string memory _name, string memory _symbol, uint8 _decimals) 
    ERC20Detailed(_name, _symbol, _decimals)
        public
        {

        }
}

