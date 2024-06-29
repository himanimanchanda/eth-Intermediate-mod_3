# eth-Intermediate-mod_3
## Overview
         HimaniErc20
It is a simple ERC20 token contract built using Solidity. This contract allows the deployment of an ERC20 token named "Aarya" with the symbol "HA". The contract includes functionalities for minting new tokens, burning tokens, and transferring tokens.

## Features

ERC20 Token Standard: Inherits from OpenZeppelin's ERC20 implementation.

Ownership: Only the contract owner can mint new tokens.

Minting: Allows the owner to mint new tokens to any address.

Burning: Allows any token holder to burn their own tokens.

Transfer: Standard ERC20 transfer functionality with a custom wrapper for decimal adjustments.ERC20 Token Standard: Inherits from OpenZeppelin's ERC20 implementation.

## Contract Details
### State Variables
       address public owner 
Stores the address of the contract owner.

### Modifiers
       modifier onlyOwner() 
modifier to restrict access to the administrator

### Constructor
       constructor(uint256 initialSupply) ERC20("Aarya", "HA")  
       {
       owner = msg.sender;
       _mint(owner, initialSupply * 10 ** uint256(decimals()));
       }
This constructor is called from openZeppelin repo.

### Functions
#### 1. mint
      function mint(address to, uint256 amount) public onlyOwner  
      {
        _mint(to, amount * 10 ** uint256(decimals()));
      }
Through function owner can mint tokens to addresses.

#### 2. burn
      function burn(uint256 amount) public            
      {
        _burn(msg.sender, amount * 10 ** uint256(decimals()));
      }
Through this function tokens will be burnt.

#### 3. transferAmount
       function transferAmount(address to, uint256 amount) public returns (bool)
       {
         return transfer(to, amount * 10 ** uint256(decimals()));
       }
Through this function we can transfer tokns to another account.

### License
This project is licensed under the MIT License.

