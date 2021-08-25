pragma solidity >=0.7.0 <0.9.0;

contract Setter {
    
    uint   public num;
    string public text;
    
    function setValues(uint newNum, string memory newText) public{
        
        uint updateNum = num + newNum + 1;
        num = updateNum;
        text = newText;
      
    }
}