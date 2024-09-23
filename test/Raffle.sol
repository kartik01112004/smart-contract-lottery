// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/**
 * @title A sample Raffle Contract
 * @author Kartik Goel
 * @notice This contract is a simple implementation of a raffle contract
 * @dev Impliments Chainlink VRFv2.5
 */

contract Raffle {
    /* Errors */
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entrancefee;

    constructor(uint256 entrancefee) {
        i_entrancefee = entrancefee;
    }

    function enterRaffle() public payable {
        // require(msg.value >= i_entrancefee, "Not enough ETH Sent");
        // require(msg.value >= i_entrancefee,SendMoreToEnterRaffle()); //available aftre 0.8.26
        if (msg.value < i_entrancefee) {
            revert Raffle__SendMoreToEnterRaffle();// most gas efficient for now
        }


    }

    function picWinner() public {}

    /** Getter Functions **/

    function getEntrenceFee() public view returns (uint256) {
        return i_entrancefee;
    }
}
