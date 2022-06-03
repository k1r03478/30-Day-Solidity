//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Bank {
    uint  bal;

    constructor(uint _bal) public  payable {
        bal = _bal;
    }

    function getBalance() public view returns(uint) {
        return bal;
    }

    function deposit(uint amt) public {
        bal = bal + amt;
    }

    function withdraw(uint amt) public {
        bal = bal - amt;
    }
}
