
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    local: 声明在函数内部，不在区块上
    state:声明在函数外部，在区块链上
    global: 提供关于区块的信息
*/
contract Variables{
    // state
    string public text = "hello world";
    uint256 public num = 1234;

    function doSomething() public view {
        //local参数不在区块上
        // uint256  num = 1234;

        // global
        // uint256 timestamp = block.timestamp; 
        
        // address add = msg.sender;
    }
    
}