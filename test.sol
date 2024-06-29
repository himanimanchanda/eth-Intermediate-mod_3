// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";  // githb repo of openZeppelin. through this 
                                                                                                              // we are getting ERC20 predeploid contracts.

contract HimaniErc20 is ERC20           // creating a contract here.
{
    address public owner;                // it will store owners address.

    modifier onlyOwner()                 // creating modifier to restrict access to the administrator
    {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor(uint256 initialSupply) ERC20("Aarya", "HA")  // this constructor is called from openZeppelin repo.
    {
        owner = msg.sender;
        _mint(owner, initialSupply * 10 ** uint256(decimals()));
    }

    function mint(address to, uint256 amount) public onlyOwner  // through function owner can mint tokens to addresses.
    {
        _mint(to, amount * 10 ** uint256(decimals()));
    }

    function burn(uint256 amount) public           // through this function tokens will be burnt.
    {
        _burn(msg.sender, amount * 10 ** uint256(decimals()));
    }

    function transferAmount(address to, uint256 amount) public returns (bool)  // through this function we can transfer tokns to another account.
    {
        return transfer(to, amount * 10 ** uint256(decimals()));
    }
}

