// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ShoutoutHub {
    mapping(uint256 => string) public shoutouts;
    mapping(uint256 => address) public recipients;
    uint256 public shoutoutCount;

    function sendShoutout(address _recipient, string memory _message) external payable {
        require(msg.value >= 1000000000000000, "Minimum 0.001 ETH"); // 0.001 ETH
        shoutouts[shoutoutCount] = _message;
        recipients[shoutoutCount] = _recipient;
        payable(_recipient).transfer(msg.value);
        shoutoutCount++;
    }

    function getShoutout(uint256 _id) external view returns (string memory, address) {
        return (shoutouts[_id], recipients[_id]);
    }
}
