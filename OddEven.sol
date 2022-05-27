//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OddEven {
    function oddEven(uint x) public pure returns(bool) {
        // if(x % 2 == 0) {
        //     return true;
        // }
        // else {
        //     return false;
        // }
        return ( x % 2 == 0 ? true : false);
    }
}
