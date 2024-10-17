// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Immutable{
    address public immutable MY_ADDR;
    uint256 public immutable MY_UINT;

    constructor(uint256 _myUint) {
        MY_ADDR = msg.sender;
        MY_UINT = _myUint;
    }
}