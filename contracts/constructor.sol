// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
// Constructor is used to initialize state variables
contract Constructor{
    address public owner;
    uint public x;
    // Constructor is called only once when function is executed 
    constructor(uint _x){
        owner=msg.sender;
        x=_x;
    }
}