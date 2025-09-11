// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MemberDirectory {
    mapping(address => string) public profiles;

    function registerProfile(string memory _profile) external {
        profiles[msg.sender] = _profile;
    }

    function getProfile(address _user) external view returns (string memory) {
        return profiles[_user];
    }
}
