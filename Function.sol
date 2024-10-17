// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Function{
    // 返回多个数据
    function returnMany() public pure returns(uint256, bool, uint256){
        return(1,true,3);
    }

    // 返回值可以被命名
    function named() public pure returns(uint256 x ,bool b, uint256 y){
        return (1, true, 2);
    }

    // 返回值可以被赋值，这返回状态可以被省略
    // the returns statement can  be omitted

    function assigned() public pure returns(uint256 x,bool b, uint256 y){
        x = 12;
        b = true;
        y = 234;
    }
    // 在调用返回多个值的时候，需要使用解析赋值
    function dstructuringAssignments()
        public 
        pure
        returns(uint256 , bool , uint256 , uint256 , uint256 ){
        (uint256 i, bool b,uint256 j) = returnMany();
        // values 可以被跳过
        (uint256 x, ,uint256 y) = (4,5,6);
        return (i, b, j, x, y);

    }
    
    // 不能用map作为输入和输出参数

    // 可以使用数组作为输入
    function arrayInput(uint256[] memory _arr) public{}
    
    uint256[] public array;
    function arrayOutput() public view returns(uint256[] memory){
        return array;
    }
}