// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Structs{
    
    struct Funder{
        string name;
        uint amount;
    }
    
    Funder public funder_1;
    Funder public funder_2;
    
    constructor(string memory name, uint amount) {
        
        funder_1 = Funder("name_1", 100);
        funder_2 = Funder(name, amount);
    }
    
    function getFunder1() public view returns(string memory, uint){
        
        return(funder_1.name, funder_1.amount);
    }
    
    function getFunder2() public view returns(string memory, uint){
        
        return(funder_2.name, funder_2.amount);
    }    
}