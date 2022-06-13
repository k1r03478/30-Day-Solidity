//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Election {

    // Model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //  Store candidate count
    uint public candidatesCount;

    // Store candidate
    // Fetch candidate
    mapping(uint => Candidate) public candidates;

    // Store accounts that have voted
    mapping(address => bool) public votedOrNot;


    // Voted event
    event electionUpdates (uint indexed _candidateId);

    constructor() {
        // The code that we want to initiate
        addCandidate("Dipak Sharma");
        addCandidate("Balen Shah");
        addCandidate("Atrip Limbu");
    }

    // Add candidate
    function addCandidate(string memory name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
    }

    function vote(uint _candidateId) public {
        // Require that they havent't voted before
        require(!votedOrNot[msg.sender], "You already voted!");

        // Require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Candidate does not match!");

        // Update candidate vote count 
        candidates[_candidateId].voteCount += 1;

        // Record that voter has voted
        votedOrNot[msg.sender] = true;

        // Trigger voted event
        emit electionUpdates(_candidateId);

    }
}
    
