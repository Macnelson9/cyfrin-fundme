// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// What will this code/contract do? Well...
// 1. Get funds from users
// 2. Withdraw funds
// 3. Set a minimum funding value in USD

contract FundMe {

    uint256 public minimalUsd = 5;

    function fund() public payable {
        // Allow users to send money
        // Have a minimum amount sent $5
        require (msg.value >= minimalUsd, "Didn't send enough ETH");
    }

    // function withdraw() public {}
}