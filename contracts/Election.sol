// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract Election {
    
    
    struct Candidate {
        string name;
        uint voteCount;
    }
    
    struct ElectionData {
        string name;
        address owner;
        bool isActive;
    }
    
    ElectionData[] public elections;

    struct VoterData{
        uint index;
        bool hasVoted;
    }

    mapping(uint => mapping(address => bool)) votersIdentity;
    mapping(uint => Candidate[]) candidates;



    
    event ElectionCreated(string name);
    event VoterAdded(uint electionIndex, address voter);
    event VoteCast(uint electionIndex, uint candidateIndex);
    
    function createElection(string memory name) public {
        
        elections.push(ElectionData(name, msg.sender, false));
        emit ElectionCreated(name);
    }
    
    function addVoter(uint electionIndex, address voter) public {
        ElectionData storage election = elections[electionIndex];
        require(msg.sender == election.owner, "Only the owner can add voters.");
        require(!votersIdentity[electionIndex][voter] == true, "The voter has already been added.");
        votersIdentity[electionIndex][voter] = false;
        emit VoterAdded(electionIndex, voter);
    }

    function addCandidates(uint electionIndex, string memory _name) public {
        require(msg.sender == elections[electionIndex].owner,"Only the owner can add candidates");
        candidates[electionIndex].push(Candidate(_name,0));
    }
    
    function vote(uint electionIndex, uint candidateIndex) public {
        ElectionData storage election = elections[electionIndex];
        require(!votersIdentity[electionIndex][msg.sender] == true, "The voter has already voted.");
        require(election.isActive, "This election is not active.");
        votersIdentity[electionIndex][msg.sender] = true;
       
        candidates[electionIndex][candidateIndex].voteCount++;
        emit VoteCast(electionIndex, candidateIndex);
    }
    
    function activateElection(uint electionIndex) public {
        ElectionData storage election = elections[electionIndex];
        require(msg.sender == election.owner, "Only the owner can activate the election.");
        require(!election.isActive, "This election is already active.");
        election.isActive = true;
    }

    function endElection(uint electionIndex) public {
        ElectionData storage election = elections[electionIndex];
        require(msg.sender == election.owner, "Only the owner can activate the election.");
        require(election.isActive == true, "This election has already ended.");
        election.isActive = false;
    }
    
    function getElectionCount() public view returns (uint) {
        return elections.length;
    }
    
    function getElection(uint electionIndex) public view returns (Candidate[] memory) {
        return (candidates[electionIndex]);
    }
}
