// SPDX-License-Identifier: MIT


pragma solidity ^0.8.24;

import {PriceConvertor} from './PriceConverter.sol';


//old method to get pricr👇

// solhint-disable-next-line interface-starts-with-i
// interface AggregatorV3Interface {
//   function decimals() external view returns (uint8);

//   function description() external view returns (string memory);

//   function version() external view returns (uint256);

//   function getRoundData(
//     uint80 _roundId
//   ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

//   function latestRoundData()
//     external
//     view
//     returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
// }



contract FundMe {
    using PriceConvertor for uint256;
    // uint256 public myval=1;
    uint256 public minimumUSD = 5 * 1e18;
    address[] public funders;
     mapping (address funder => uint256 funded) public addressToAmountFunded;

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
        //made our own library and imported and used it 
        require(msg.value.getConversionRate() >= minimumUSD, "minimum amount required");
        //receiving sender naame
        funders.push(msg.sender);
        //getting to know about who funded how much
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
    }

// function withdraw() public{} 
 

}
