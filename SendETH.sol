//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract payETH {
    uint value;

    function deposit() public payable {

    }

    function transferEth(address payable receiver, uint _value) public payable {
        _value = msg.value;
        receiver = payable(msg.sender);
        receiver.transfer(address(this).balance);
    }
}
