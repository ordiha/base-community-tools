// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TipJar {
    address payable public owner;
    mapping(address => uint256) public tips;

    constructor() {
        owner = payable(msg.sender);
    }

    function sendTip() external payable {
        require(msg.value >= 100000, "Minimum 0.0000001 ETH");
        tips[msg.sender] += msg.value;
        owner.transfer(msg.value);
    }

    function getTip(address _user) external view returns (uint256) {
        return tips[_user];
    }
}
