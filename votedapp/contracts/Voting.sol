pragma solidity ^0.4.24;

contract Voting {
  /* State variable candidate */
  string public candidate;

  /* Constructor */
    constructor () public {
      addCandidate("Sinjon Santos");
      addCandidate("Phat Dat Nguyen");

    }

  /* Modeling a Candidate */
  struct Candidate {
    uint id;
    uint votecount;
    string name;
  }

/* Stores Candidates, interacts with data layer of blockchain
  Key is unsigned integer, value is
  candidate structure type */
  mapping(uint => Candidate) public candidates;

  /* Store Candidate count */
  uint public candidatesCount;

  /* Adds a Candidate to MAPPING with COUNT, _NAME, and 0 votes*/
  function addCandidate (string _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, 0, _name);
  }



}
