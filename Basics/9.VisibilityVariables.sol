// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Types of visibility: Public, external, public
contract FirstContract{
    
    uint private data;
    
    //Pirvate: Only can be access from this contract itself
    function setPublicFunctionPrivateVariable(uint a) public{
        data = a;
    }
    
    function getPublicFunctionPrivateVariable() public view returns(uint){
        return data; 
    }
    
    //Can be access from this contract itself and contract which derived from it
    function computerPrivateSum(uint a, uint b) private pure returns(uint){
        return a + b;
    }
    
    function computerInternalSum(uint a, uint b) internal pure returns(uint){
        return a + b;
    }
}

/***************************************************************************/

contract SecondContract{

    FirstContract first;
    
    constructor(){
        
        first = new FirstContract();
        first.setPublicFunctionPrivateVariable(3);
    }
    
    function readData() public view returns(uint){
        
        //uint local1 = first.computerPrivateSum(7,3);  //private
        uint local2 = first.getPublicFunctionPrivateVariable();
        //uint local3 = first.computerInternalSum(3,5); //private
        
        return (local2);
    }
}

/***************************************************************************/

contract ChildenOfFirst is FirstContract{
    
    function readData() public pure returns(uint){
        
        uint local = computerInternalSum(3,5);
        return local;
    }
    
    function setVariable(uint num) public{
        
        setPublicFunctionPrivateVariable(num);
    }
}
