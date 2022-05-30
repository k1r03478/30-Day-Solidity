//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PowerCalculator {
    function powerFinder(uint n, uint p) public pure returns(uint) {
        uint pow = 1;
        for(uint i = 1; i <= p; i++) {
            pow *= n;
        }
        return pow;
    }
}
