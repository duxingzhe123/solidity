// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Array{
    // 多种方法初始化一个数据
    uint256[] public arr;
    uint256[] public arr2=[1,2,3];
    // 固定长度
    uint256[10] public myFixedSizeArray;

    // get
    function get(uint256 i) public view returns(uint256){
        return arr[i];
    }

    // solidity可以获取一个数组，但是这个函数应该避免获取一个无限增长的数组

    function getArr() public view returns(uint256[] memory){
        return arr;
    }

    // push
    function push(uint256 _i)public {
        arr.push(_i);
    }
    // pop
    function pop()public {
     arr.pop();
    }
    // 获取长度
    function getLength() public view returns(uint256){
        return arr.length;
    }

    // 删除
    function remove(uint256 index) public{
        delete arr[index];
    }

    function example() external {
    // 创建一个内存数组，必须指定他的大小
       // uint256[] memory a= new uint256[](5);
    }
}