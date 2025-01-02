// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract AppleShop {
    uint256 public appleCount;
    address public owner;

    constructor() {
        owner = msg.sender;
        appleCount = 0; // 초기 사과 수량
    }

    function buyApple() public payable {
        require(msg.value == 1 ether, "Price of one apple is 1 ETH");
        appleCount += 1;
    }

    function sellApple(uint256 amount) public {
      require(msg.sender == owner, "Only the owner can sell apples");
      require(amount <= appleCount, "Not enough apples");

      appleCount -= amount;
      payable(owner).transfer(amount * 1 ether);
    }

    function getApple() public view returns(uint256) {
      return appleCount;
    }
}
