//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Calculator {
    uint x;
    uint y;

    function setInput(uint _a, uint _b) public {
        x = _a;
        y = _b;
    }

    function sub() public view returns(uint) {
        if(x>y) {
            return x-y;
        }
        else {
            return y-x;
        }
    }

    function divide() public view returns(uint) {
        return x/y;
    }

    function multiply() public view returns(uint) {
        return x*y;
    }

    function modulus() public view returns(uint) {
        return x%y;
    }
}
