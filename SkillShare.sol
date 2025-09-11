// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SkillShare {
    mapping(address => string[]) public skills;

    function addSkill(string memory _skill) external {
        skills[msg.sender].push(_skill);
    }

    function getSkills(address _user) external view returns (string[] memory) {
        return skills[_user];
    }
}
