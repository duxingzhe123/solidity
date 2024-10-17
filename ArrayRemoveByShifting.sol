// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract arrayRemoveByShifting{

    uint256[] public arr;

    function remove(uint256 _index) public{
        require(_index < arr.length,"index out of bound");
        for(uint256 i = _index; i < arr.length; i ++){
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }
}