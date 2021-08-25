// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Voter {

    struct OptionPos{
        uint pos;
        bool exists;
    }
    
    uint[] public votes;
    string[] public options;
    mapping(address => bool) hasVoted;
    mapping(string => OptionPos) posOfOption;
    
    constructor(string[] memory _options){
        
        options = _options;
        votes = new uint[](options.length); //<- replace -> votes.length = options.length; Dynamic array

        for(uint i = 0; i < options.length; i++){
            OptionPos memory _OptionPos = OptionPos(i, true);
            string memory optionName = options[i];
            posOfOption[optionName] = _OptionPos;
        }
    }
    
    function vote(uint option) public{
        
        require(0 <= option && option < options.length , "invalid option");
        require(!hasVoted[msg.sender], "Account has alrredy voted");
        
        votes[option] = votes[option] + 1;
        hasVoted[msg.sender] = true;
    }

    function vote(string memory optionName) public{
        
        require(!hasVoted[msg.sender], "Account has alrredy voted");

        OptionPos memory _OptionPos = posOfOption[optionName];
        require(_OptionPos.exists, "Option does no exist");

        votes[_OptionPos.pos] = votes[_OptionPos.pos] + 1;
        hasVoted[msg.sender] = true;
    }

    function getOptions() public view returns(string[] memory){
        return options;
    }
    
    function getvotes() public view returns(uint[] memory){
        return votes;
    }    
} 