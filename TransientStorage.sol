// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ITest {
    function val() external view returns(uint256);

    function test() external ;
}

// Transient Storage 需要重新研究
contract Callback{
    uint256 public val;

    // fallback() external payable {
    //     val = ITest(msg.sender).val();
    //  }
     

    //  function test(address target) external {
    //     ITest(target).test();
    //  }
}

