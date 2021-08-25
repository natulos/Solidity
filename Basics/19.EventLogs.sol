// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SimpleAction{

    //Event
    event EventTrigger(address bidder, uint amount); 

    // Trigger event 
    function bid() public payable{
        emit EventTrigger(msg.sender, msg.value);
    }
}