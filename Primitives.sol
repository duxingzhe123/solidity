// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;



contract Primitives{
    bool public boo = true;

    /*
        uinit8 0 ~2^8-1
        uint16
        uint32
        uint64
        uint256
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;

    /*
        int256 ranges from -2^255 ~2^255-1
    */
    int256 a = -23;
    int256 b = 23;

    //get the max or the min of the int256

    int256 public maxInt = type(int256).max;
    int256 public minInt = type(int256).min;

    // 地址
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // bytes1 -bytes32 

    string str = "hello world";

    bool public defaultBoo; //false

    uint256 public defaultUint ;//0
    int256 public defaultInt;//0
    address public defaultAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}