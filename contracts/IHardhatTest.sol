// SPDX-License-Identifier: MIT

pragma solidity 0.7.3;

interface IHardhatTest {
    function wrongSelector() external;
    function sayHello() external;
    function saySmth(string memory _newText) external;
    function withdraw() external;
}
