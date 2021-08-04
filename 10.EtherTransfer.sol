// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Recipient{
    
    receive () external payable {
    }
    
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract Sender{
    function transfer(address payable recipient) public payable{
        recipient.transfer(msg.value);
    }
    
    function getAccountBalance(address acc) public view returns(uint){
        return acc.balance;
    }
    
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    
    receive() external payable{
        //address payable recipient = payable (0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        //recipient.transfer(msg.value);
    }
    
    //destroy contract, but before, move the ethers
    function destroy(address payable recipient) public{
        selfdestruct(recipient);
    }
}
