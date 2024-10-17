// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Mapping{
    mapping(address => uint256) public myMap;

    //get
    function getValue(address _addr) public view returns(uint256){
        return myMap[_addr];
    }

    // set
    function setValue(address _addr,uint256 value) public{
        myMap[_addr] = value;
    } 
    // remove

    function remoeValue(address _addr)public {
        delete myMap[_addr];
    }

}