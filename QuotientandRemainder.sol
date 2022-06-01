//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract QandRFinder {
    uint num1;
    uint num2;

    function setNum1(uint _num1) public {
        num1 = _num1;
    }

    function setNum2(uint _num2) public {
        num2 = _num2;
    }

    function qotient() public view returns(uint) {
        uint res = num1/num2;
        return res;
    }

    function remainder() public view returns(uint) {
        uint res = num1 % num2;
        return res;
    }
}
