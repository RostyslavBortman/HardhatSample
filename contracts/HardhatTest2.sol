// SPDX-License-Identifier: MIT

pragma solidity 0.7.3;

import './IHardhatTest.sol';
import 'hardhat/console.sol';

contract HardhatTest2 {
    
    string public text = "";
    mapping (address => uint256) public balances;
    IHardhatTest testInstance;
    
    constructor(address _testInstance) {
        testInstance = IHardhatTest(_testInstance);
    }
    
    function sayHello() public {
        text = "say hello";
    }
    
    function saySmth(string memory _newText) public {
        console.log("Changing text from '%s' to '%s'", text, _newText);
        text = _newText;
    }
    
    function withdraw() public {
        address(uint160(msg.sender)).transfer(balances[msg.sender]);
    }
    
    function callWrongFuntion() public {
        testInstance.wrongSelector();
    }
    
    fallback() external {
        sayHello();
    }
    
    receive() payable external {
        balances[msg.sender] = msg.value;
    }
}

