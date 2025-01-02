// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Puchase {
    address public owner;
    mapping(address => uint) public balances;

    constructor(){
        owner = msg.sender;
    }

    function buy() public payable {
        require(msg.value > 0, "You must send Ether to buy");
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}