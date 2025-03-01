
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract Errors {
    function testRequire(uint256 _i) public pure {
        require(_i > 10 ,"Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure{
        if(_i < 10){
            revert("input must be greater than 10");
        }
    }

    uint256 public num;

    function testAssert() public view{
        assert(num == 0);
    }
    // 自定义错误

    error InsufficientBalance (uint256 balance, uint256 withDrawAmount);

    function testConstomError(uint256 _withdrawAmount) public view{
        uint256 bal = address(this).balance;
        if(bal < _withdrawAmount){
            revert InsufficientBalance({
                balance:bal,
                withDrawAmount:_withdrawAmount
            });
        }
    }

    function receiveMoney() external payable { }

}