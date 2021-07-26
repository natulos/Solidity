pragma solidity >=0.7.0 <0.9.0;

contract Greeter {
    
    string public greeting = "Hello";
    
    function getGreeting() public view returns (string memory) {
        
        return greeting;
    }
}