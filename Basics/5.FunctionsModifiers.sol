pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifiers{
    
    uint public value;
    
    function setValue(uint newValue) public{
        
        value = newValue;
    }
    
    function getValue() public view returns(uint){
        
        return value;
    }
    
    function getSum(uint newVal1, uint newVal2) public pure returns(uint){
        
        uint sum = newVal1 + newVal2;
        return sum;
    }
}
