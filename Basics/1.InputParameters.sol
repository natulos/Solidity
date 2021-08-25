// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract DisplayNumber {
    //Comment
    //uint public num;
    
    //constructor(uint newNum) public {
    //    num = newNum;
    //}
    
    string public text;
    
    constructor(string memory newText) {
        text = newText;
    }
}