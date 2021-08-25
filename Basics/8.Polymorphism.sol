// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Functions with the same name, but different parameters

contract FunctionPolymorphism {
    
    function getData(string memory data) public pure returns(string memory){
        
        return (data);
    }
    
    function getData(int16 data) public pure returns (int16 output){
        
        return (data);
    }

}
