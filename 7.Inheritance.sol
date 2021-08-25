// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Functions with the same name, but diferentes parameters

contract ParentContract {
    
    uint internal simpleInteger;
    
    function setInteger(uint _value) public{
        simpleInteger = _value;
    }
    
    function getInteger() public virtual view returns (uint){
        return simpleInteger;
    }
}

contract ChildrenContract is ParentContract{
    
    function getInteger() public virtual view override returns (uint){
        return 2 * simpleInteger;
    }
}
