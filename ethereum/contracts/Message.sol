// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.8.0;



contract Message {
    
    string public message;
    
    // In the Message smart contract when it will run for the first time, 
    // that time the constructorwill set the message as the initial message.
    constructor(string memory _message) {
        message = _message;
    }
    
    function setMessage (string memory _newMessage) public {
        message = _newMessage;
    }
    // Is a view function and it’ll return the value of the message variable 
    // which was set either by constructor or setMessage.
    function getMessage() public view returns(string memory) {
        return message;
    }
}