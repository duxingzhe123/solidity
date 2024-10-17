// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


// view 函数的状态变量不能改变，只能读取
// pure 纯函数中状态变量不能被读取和改变
contract ViewAndPure{
    uint256 public x = 1;
    // 读取状态变量
    function addToX(uint256 y) public view returns(uint256){
        return x + y;
    }

    function add(uint i, uint j) public pure returns(uint256){
        return i + j;
    }

}