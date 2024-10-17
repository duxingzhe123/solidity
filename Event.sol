// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Event{

    event Log(address indexed sender,string message);
    event Another();

    function test()public {
        emit Log(msg.sender, "hello world");
        emit Log(msg.sender,"Hello evm");
        emit Another();
    }
}