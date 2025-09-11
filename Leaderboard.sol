// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Leaderboard {
    mapping(address => uint256) public scores;

    function addScore(uint256 _score) external {
        scores[msg.sender] += _score;
    }

    function getScore(address _user) external view returns (uint256) {
        return scores[_user];
    }
}
