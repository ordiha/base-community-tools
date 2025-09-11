// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EventAnnouncer {
    mapping(uint256 => string) public events;
    uint256 public eventCount;

    function announceEvent(string memory _eventDetails) external {
        events[eventCount] = _eventDetails;
        eventCount++;
    }

    function getEvent(uint256 _id) external view returns (string memory) {
        return events[_id];
    }
}
