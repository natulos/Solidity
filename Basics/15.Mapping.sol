// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Mapping {
    
    mapping (string => uint) myMapping;
    
    constructor(uint amount1, uint amount2){
        myMapping["Name1"] = amount1;
        myMapping["Name2"] = amount2;
    }
    
    function returnFirstOption() public view returns(uint){
        uint amount = myMapping["Name1"];
        return(amount);
    }
    
    function returnSecondOption() public view returns(uint){
        uint amount = myMapping["Name2"];
        return(amount);
    }  
    
    function returnNonOption() public view returns(uint){
        uint nonOption = myMapping["nonExistOption"];
        return(nonOption);
    }    
}