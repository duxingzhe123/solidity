// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract NestedMapping{
    mapping(address => mapping (uint256 => bool)) public nested;

    // get
     function get(address _addr,uint256 _i)public view returns(bool){
        return nested[_addr][_i];
     }
    //set
    function set(address _addr,uint256 _i, bool b)public {
        nested[_addr][_i] = b;
    }
    //remove
   function remove(address _addr,uint256 _i) public{
       delete nested[_addr][_i];
   }
}