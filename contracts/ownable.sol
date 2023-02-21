// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
// contract to claim ownership of contract
contract ownable{
    address public owner;
    constructor(){
        owner= msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"Not The Owner");
        _;
    }
    function setOwner(address _newOwner) external onlyOwner {
        require(msg.sender !=address(0), "Invalid Address");
        owner=_newOwner;
    }
    function onlyOwnerCanCall() external onlyOwner{
        //code
    }
    function anyoneCanCall() external {
        //code
    }
}