// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract BlockAndTransactionProperties {
    
    function getBlockProperties() view public returns(uint blockNum,
                                                      uint difficulty,
                                                      uint timestamp,
                                                      uint balance){
    
        blockNum = block.number;
        difficulty = block.difficulty;
        timestamp = block.timestamp;
        balance = address(this).balance;
    }   
    
    function getTransactionProperties() view public returns(address sender,
                                                            bytes memory data,
                                                            uint gasLeft,
                                                            uint gasPrice){
                                                                    
        sender = msg.sender;
        data = msg.data;
        gasLeft = gasleft();
        gasPrice = tx.gasprice;
    }
}