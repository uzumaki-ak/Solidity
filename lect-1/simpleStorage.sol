///SPDX-License-Identifier:MIT
pragma solidity 0.8.18; //solidity version
//like we have class in oops lang in this we have contract
contract  SimpleStorage {
    //diff types of remix -string,uint,int,bytes etc
    //int and unit can be written as uint32,64,256
    //but byte is written as byte32 --max

    //uint256 favoriteNumber=0 or favoriteNumber; is same //as its initialized with 0 


    uint256 favoriteNumber;
    //function in solidity
    function store (uint256 _favoriteNumber) public {
      favoriteNumber=_favoriteNumber;
      
    }
}