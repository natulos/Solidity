// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Voter {
    
    uint[] public votes;
    string[] public options;
    mapping(address => bool) hasVoted;
    
    constructor(string[] memory _options){
        
        options = _options;
        votes = new uint[](options.length); //<- replace -> votes.length = options.length; Dynamic array
    }
    
    function vote(uint option) public{
        
        require(0 <= option && option < options.length , "invalid option");
        require(!hasVoted[msg.sender]);
        
        votes[option] = votes[option] + 1;
        hasVoted[msg.sender] = true;
    }
    
    function getOptions() public view returns(string[] memory){
        return options;
    }
    
    function getvotes() public view returns(uint[] memory){
        return votes;
    }    
} 