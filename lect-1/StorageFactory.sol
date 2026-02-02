// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    // State variables
    uint256 public favoriteNumber; // Stores a single favorite number
    struct Person { // Defines a Person struct
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPeople; // Dynamic array of Person structs
    mapping(string => uint256) public nameToFavoriteNumber; // Maps names to favorite numbers

    // Stores a favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Retrieves the stored favorite number
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // Adds a person to the list and updates the mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    
}


contract StorageFactory {

SimpleStorage public simpleStorage;


    function createSimpleStorageFActory() public {
        //this deploys another smart contract the  new word
    simpleStorage = new SimpleStorage();
    }
}
