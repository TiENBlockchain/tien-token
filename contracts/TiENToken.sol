pragma solidity ^0.5.0;
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract TiENToken is ERC20, ERC20Detailed, ERC20Pausable, Ownable, ERC20Burnable, ERC20Mintable, ERC20Capped{
  constructor(string memory _name,string memory symbol,uint8 _decimals,uint256 _cap) 
    ERC20Detailed(_name, _symbol, _decimals)
    ERC20Capped(_cap)

        public
        {
           
           
        }
}