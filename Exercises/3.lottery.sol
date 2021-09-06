// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0; 

contract Lottery{
    address public manager;
    address payable[] public players;
    uint public index;

    constructor() payable{
        manager = msg.sender;
    }

    //function modifiers
    modifier restricted(){
        require(msg.sender == manager);
        _;
    }

    function enter() public payable{
        require(msg.value == 2 ether);
        players.push(payable(msg.sender));
    }

    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players))); //generate a random number
    }

    function pickWinner() public restricted{
        index = random() % players.length;    
        players[index].transfer(address(this).balance);
        players = new address payable[](0); //Clear players array
    }

    function getPlayers() public view returns(address payable[] memory){
        return players;
    }
}