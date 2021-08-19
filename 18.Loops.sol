// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ControlStructures {
    
    function forLoop(uint _input) public pure returns(uint){
        
        uint num = 1;
        for(uint i = _input; i >= 1; i-- ){
            num = num * i;
        }
        return(num);
    }
    
    function ifElseLoop(uint _input) public pure returns(uint){
        
        uint num = 1;
        if(_input == 1 | 0) // | -> OR
            return(num);
        else
            for(uint i = _input; i >= 1; i-- ){
            num = num * i;
        }
        return(num);
    }
    
    function whileLoop(uint _input) public pure returns(uint){
        
        uint num = 1;
        while (_input > 0){
            num = num * _input;
            _input--;
        }
        return(num);
    }
    
    function doWhileLoop(uint _input) public pure returns(uint){
        
        uint num = 1;
        if (_input == 1)
            return(num);
        
        do{
            num = num * _input;
            _input --;
            
        }while (_input > 0);
            return(num);
    }
}