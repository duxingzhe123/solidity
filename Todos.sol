// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Todos{
    struct Todo{
        string text;
        bool completed;
    }
    Todo[] public todos;
    function create(string calldata _text) public{
        // 3种方式初始化一个结构体
        //调用像一个函数
        todos.push(Todo(_text,false));
        //key value mapping
        todos.push(Todo({text:_text,completed:false}));
      

        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function get(uint256 _index) public view returns(string memory text, bool completed){
        Todo storage todo = todos[_index];
        return (todo.text,todo.completed);
    }
    // 更新text
    function set(uint256 _index, string calldata _text)public{
         Todo storage todo = todos[_index];
         todo.text = _text;
    }

    // 更新completed

    function toggleCompleted (uint256 _index)public{
        Todo storage todo = todos[_index];
         todo.completed = !todo.completed;
    }
}