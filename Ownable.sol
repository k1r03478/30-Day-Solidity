//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Ownable {
    address private _owner;

    event ownershipTransfered (
        address indexed previousOwner,
        address indexed newOwner
    );

    function ownable() public {
        _owner = msg.sender;
    }

    function owner() public view returns(address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {

    }

    function _transferOwnership(address _newOwner) public {
        require(_newOwner != address(0));
        emit ownershipTransfered(_owner, _newOwner);
        _owner = _newOwner;
    }
}
