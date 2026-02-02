// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from'./simpleStorage.sol';

contract StorageFactory {
//this stores address
SimpleStorage[] public listOfSimpleStorageContract;


    function createSimpleStorageFActory() public {
        //this deploys another smart contract the  new word
    SimpleStorage newSimpleStorageContract = new SimpleStorage();
    listOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)public{
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
