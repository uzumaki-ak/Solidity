 // SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {SimpleStorage} from "./simpleStorage.sol";

contract AddFiveToStorage  is SimpleStorage {
function store(uint256 _newNumber) public override {
    favoriteNumber = _newNumber + 5;
}
}