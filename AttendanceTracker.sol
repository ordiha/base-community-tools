// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AttendanceTracker {
    mapping(address => uint256) public attendance;
    uint256 public totalEvents;

    function markAttendance() external {
        attendance[msg.sender]++;
        totalEvents++;
    }

    function getAttendance(address _user) external view returns (uint256) {
        return attendance[_user];
    }
}
