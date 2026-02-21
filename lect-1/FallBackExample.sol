// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract FallbackExample {
    uint256 public result;

    //these receove and fallback are 2 special func which are used to run func any even if that func is n ot being callled 
    receive() external payable {
        result=1;
    }

    //fallback fun
    fallback() external payable{
        result=2;
    }
}