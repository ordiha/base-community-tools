// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IdeaBoard {
    mapping(uint256 => string) public ideas;
    mapping(uint256 => uint256) public votes;
    uint256 public ideaCount;

    function submitIdea(string memory _idea) external {
        ideas[ideaCount] = _idea;
        votes[ideaCount] = 0;
        ideaCount++;
    }

    function upvoteIdea(uint256 _id) external {
        votes[_id]++;
    }

    function getIdea(uint256 _id) external view returns (string memory, uint256) {
        return (ideas[_id], votes[_id]);
    }
}
