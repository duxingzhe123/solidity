// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Enum{
    enum Status{
        Pending,
        Shiped,
        Accepted,
        Rejected,
        Canceled
    }

    Status status;

    // get 
    function get() public view returns(Status){
        return status;
    }
    //set
    function set(Status _status) public{
        status = _status;
    }
    //remove
    function remove() public{
        delete status;
    }
}