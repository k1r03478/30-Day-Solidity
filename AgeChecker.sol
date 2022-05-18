//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AgeChecker {
    function ageChecker(uint age) public pure returns(string memory) {
        if(age <= 13) {
            return "Kid";
        } 
        else if(age <= 18) {
            return "Boy";
        }
        else if(age <= 40) {
            return "Young";
        }
        else {
            return "Old Man";
        }

        // Or use ternart operator
        //return(age <= 13 ? "Kid" : age <= 18 ? "Boy" : age <= 40 ? "Young Man" : "Old Man" );
    }
}
