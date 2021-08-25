// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Courses {
    
    struct Instructor{
        uint age;
        string fname;
        string lname;
    }
    
    mapping (address => Instructor) instructors;
    address[] public instructorsAccts;
    
    function setInstructor(address _address,
                           uint _age,
                           string memory _fname,
                           string memory _lname) public{
        
        Instructor storage instructor = instructors[_address]; 
        
        instructor.age = _age;
        instructor.fname = _fname;
        instructor.lname = _lname;
        
        instructorsAccts.push(_address);
    }
    
    function getInstructors() view public returns(address[] memory){
        return instructorsAccts;
    }
    
    function getInstructor(address _address) view public returns(uint,
                                                                 string memory,
                                                                 string memory){
    
        return(instructors[_address].age,
               instructors[_address].fname,
               instructors[_address].lname);                                                                 
    }
    
    function countInstructors() view public returns(uint){
        return instructorsAccts.length;
    }
}