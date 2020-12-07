// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

contract HardhatTest1 {
    
    string public text = "";

    function sayHello() public {
        text = "say hello";
    }
    
    function saySmth(string memory _newText) public {
        text = _newText;
    }
}
