// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*contract WorkingWithArrays{
    
    function f(uint len) public pure returns(string memory){
        string[] memory a = new string[](7);
        bytes memory b = new bytes(len);
        
        assert(a.length == 7);
        require(b.length == len);
        
        return ("good Transaction");
    }
    
}*/

contract Fruits{
    
    string[] fruits;
    
    constructor(){
        
        fruits.push('apple');
        fruits.push('orange');
        
        //storage vs memory
        string[] memory mewFruits = fruits;      //save the value mango in memory and don't override the value in position 1.

        //string[] storage mewFruits = fruits;   //override the position 1 with the value mango
        mewFruits[1] = 'mango';
    }
    
    function getFruits() view public returns (string memory, string memory){
        return(fruits[0], fruits[1]);
    }
}
