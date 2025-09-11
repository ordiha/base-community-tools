// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CommunityPoll {
    mapping(address => bool) public hasVoted;
    uint256 public yesVotes;
    uint256 public noVotes;

    function vote(bool _yes) external {
        require(!hasVoted[msg.sender], "Already voted");
        hasVoted[msg.sender] = true;
        if (_yes) yesVotes++; else noVotes++;
    }

    function getResults() external view returns (uint256, uint256) {
        return (yesVotes, noVotes);
    }
}
