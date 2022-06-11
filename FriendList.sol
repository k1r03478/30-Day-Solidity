//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FriendList {
    string public name;
    uint public age;
    uint public presentYear = 2022;
    string public occupation;

    struct friend {
        string name;
        uint age;
        string occupation;
    }

    friend[] public friends;

    function personalInfo(string memory _name, uint _birthYear, string memory _occupation) public {
        name = _name;
        age = presentYear - _birthYear;
        occupation = _occupation;
    }

    function friendList(string memory _name, uint _birthYear, string memory _occupation) public {
        name = _name;
        age = presentYear - _birthYear;
        occupation = _occupation;
        uint newAge = presentYear - _birthYear;
        friends.push(friend(_name, newAge, _occupation));
    }
}
