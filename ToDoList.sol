//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ToDoList {
    uint public taskCount = 0;

    struct task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => task) public tasks;
    constructor() {
        createTask("My name is Dipak !");
    }

    function createTask( string memory _content) public {
        taskCount++;
        tasks[taskCount] = task(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        task memory _task = tasks[_id];
        _task.completed = !_task.completed; 
        tasks[_id] = _task;
        }
}
