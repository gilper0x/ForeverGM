// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ForeverGM {
    /// @notice Event emitted when a new GM is recorded
    event GM(address indexed user, address indexed recipient);

    /// @notice Function to say GM to the world
    function gm() external {
        emit GM(msg.sender, address(0));
    }

    /// @notice Function to say GM to someone specific
    function gmTo(address recipient) external {
        if (recipient == msg.sender) {
            revert();
        }

        emit GM(msg.sender, recipient);
    }
}
