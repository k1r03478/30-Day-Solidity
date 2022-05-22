//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract ChangeOwner {
    uint time = block.timestamp;

    address payable public owner = payable(msg.sender);

    uint public lastOwnerChange = time;

    modifier onlyBy(address _account) {
        require(msg.sender == _account);
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time);
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount);
        _;
        if(msg.value > _amount) {
            owner.transfer(msg.value - _amount);
        }
    }


    function changeOwner(address payable _newOwner) public {
        owner = _newOwner;
    }

    function buyContract() public payable onlyAfter(lastOwnerChange + 4 weeks) {
        owner = payable(msg.sender);
        lastOwnerChange = block.timestamp;
    }
}
