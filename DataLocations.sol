// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Datalocation{
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct{
        uint256 foo;
    }
    mapping (uint256 => MyStruct) myStructs;

    function f() public{

        // call _f with state
        _f(arr,map,myStructs[1]);
        // get a struct from  a mapping 
        MyStruct storage myStruct = myStructs[1];       
        // create a struct in a memory
        MyStruct memory myMemStruct = MyStruct(0);
    }
    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _mystruct
    ) internal {
        // do someting with storage varible
    }


}