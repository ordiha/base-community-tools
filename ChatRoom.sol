// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ChatRoom {
    mapping(uint256 => string) public messages;
    uint256 public messageCount;

    function sendMessage(string memory _msg) external {
        messages[messageCount] = _msg;
        messageCount++;
    }

    function getMessage(uint256 _id) external view returns (string memory) {
        return messages[_id];
    }
}
