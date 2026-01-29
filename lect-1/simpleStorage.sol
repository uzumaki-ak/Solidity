///SPDX-License-Identifier:MIT
pragma solidity 0.8.18; //solidity version
//like we have class in oops lang in this we have contract
contract  SimpleStorage {
    //diff types of remix -string,uint,int,bytes etc
    //int and unit can be written as uint32,64,256
    //but byte is written as byte32 --max

    //uint256 favoriteNumber=0 or favoriteNumber; is same //as its initialized with 0 

     //we can use "public" keyword to display fav no as this is internal by default 

    uint256 public favoriteNumber;
    //function in solidity
  function store (uint256 _favoriteNumber) public {
    favoriteNumber=_favoriteNumber;
      uint testvar =29;
    }
  function retrieve()  public view returns(uint256) {
    return favoriteNumber;
 }
 //this is wrong as pure does not even allow us to read another state but view does
  function retrieve()  public pure returns(uint256) {
    return favoriteNumber;
 }

 function somtething public {
  //this is wromg as we can not access func outside 
  testvar=7;
  //but thuis is correct as fav is inside SimpleStorage
  favoriteNumber=78
 }

       struct Person{
        uint256 favoriteNumber;
        string name;
      }

    //   Person public ak = Person({
    //     favoriteNumber:7,name: "ani"
    //   });

    //creating dynamc list 
    Person[] public listOfPeople;
   function addPerson(string memory _name,uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber,_name));
   }


}
