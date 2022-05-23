//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Cricket {
    uint public player1runs = 0;
    uint public ballCount = 0;
    uint public over;

    modifier runAndOver() {
        ballCount++;
        over = ballCount/6;
        _;
    }

    //for sigle run
    function single() public runAndOver {
        // ballCount++;
        // over = ballCount/6;
        player1runs += 1; // player1runs = player1runs + 1
    }

    // for four
    function four() public runAndOver {
        // ballCount++;
        // over = ballCount/6;
        player1runs += 4;
    }

    //for six
    function six() public runAndOver {
        // ballCount++;
        // over = ballCount/6;
        player1runs += 6;
    }
}
