// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract erc20 is ERC20{
    constructor(string memory name, string memory symbol, uint8 decimals, uint totalSupply)

    ERC20(name, symbol) public {
        _mint(msg.sender, totalSupply);
    }
}