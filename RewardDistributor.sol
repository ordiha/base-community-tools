// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RewardDistributor {
    address payable public owner;
    mapping(address => uint256) public rewards;

    constructor() {
        owner = payable(msg.sender);
    }

    function distributeReward(address _user, uint256 _amount) external {
        require(msg.sender == owner, "Only owner");
        require(address(this).balance >= _amount, "Insufficient funds");
        rewards[_user] += _amount;
    }

    function claimReward() external {
        uint256 amount = rewards[msg.sender];
        require(amount > 0, "No rewards");
        rewards[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    function getReward(address _user) external view returns (uint256) {
        return rewards[_user];
    }
}
