// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract EtherUnits{
    uint256 public oneWei = 1 wei;
    // 1 wei 对应的数值就是1
    bool public isOneWei = (oneWei == 1);

    uint256 public oneGwei = 1 gwei;

    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;

    bool public isOneEther = (oneEther == 1e18);
}