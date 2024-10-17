// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter{
    uint256 public count;

    // increase by 1
    function increase () public {
        count +=1;
    }
    // get the current coun
    function get()public  view returns(uint256){
        return count;
    }
    
    // decrement count by 1
    function decrease() public {
        count -=1;
    }
}