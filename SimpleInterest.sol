//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleInterest {
    uint p;
    uint r;
    uint t;

    function setP(uint _p) public {
        p = _p;
    }

    function setR(uint _r) public {
        r = _r;
    }

    function setT(uint _t) public {
        t = _t;
    }

    function calInt() public view returns(uint) {
        uint _res = (p * r * t) / 100;
        return _res;
    }
}
