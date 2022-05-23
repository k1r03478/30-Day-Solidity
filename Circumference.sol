//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CircumferenceOfCircle {
    
    function circumferenceOfCircle(uint n) public pure returns(uint) {
        // circumference 2*PI*r
        uint circumference = (2 * 22 * n)/7 ;
        return circumference;
    }
}
