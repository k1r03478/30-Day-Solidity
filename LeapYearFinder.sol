//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract LeapYearFinder {
    function leapYear(uint year) public pure returns(bool) {
        if((year % 4 == 0) && (year % 100 == 0) || (year % 400 == 0)) {
            return true;
        }
        else {
            return false;
        }
    }
}
