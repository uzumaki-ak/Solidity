// SPDX-License-Identifier: MIT


pragma solidity ^0.8.24;

contract FundMe {
    // uint256 public myval=1;
    function fund() public payable {
        //alllow user ot send money
        //have a minimum usd dol  sent
        //to get the value of that bc 
        //1e18 is 1000000000000000000
        //1e18 is 1 eth
        //1e17 is 0.1 eth
        // require is used to set min amout which is needed ot be  sent
         // if the amount is less than 1e18 it will revert
         // msg.value is the amount of eth sent by the user
        //  myval = myval+2;
        require(msg.value > 1e18, "minimum amount required");
    }

// function withdraw() public{} 
}
