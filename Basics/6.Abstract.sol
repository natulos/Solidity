// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

abstract contract AbstractGreetings{
    
    function getValue() public view virtual returns (string memory);
    
    function setValue(string memory _value) public virtual;
    
    function returnText() public pure virtual returns (string memory){
        return "Should be overridden";
    }
}

contract Greetings is AbstractGreetings{
    
    string private greetingText;
    
    function getValue() public view override returns (string memory){
        return greetingText;
    }
    
    function setValue(string memory _value) public override{
        greetingText = _value;
    }
    
    function returnText() public pure override returns (string memory){
        return "The function has been overridden";
    }
}
