//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Table {

    uint[] data;

    function table(uint x, uint len) public returns(uint [] memory) {
        for(uint i = 1; i < len; i++) {
            uint res = x*i;
            data.push(res);
        }
        return data;
    }
}
