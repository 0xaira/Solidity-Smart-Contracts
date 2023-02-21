// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
// Modifier - Reuse Code Before or After function
contract funcModify{
    bool public paused;
    uint public count;
    function setPause(bool _paused) external{
        paused= _paused;
    }
    //Basic Modifier 
    modifier whenNotPaused(){
        require (!paused, "Paused");
        _;
    }
    function inc() external whenNotPaused{
        count+=1;
    }
    function dec() external whenNotPaused{
        count-=1;
    }
    // Modifer to take Input as Parameter 
    modifier cap(uint _x){
        require(_x<100, "x>=100");
        _;
    }
    function incBy(uint _x) external whenNotPaused cap(_x){
        count+=_x;
    }
    // Modifier to perform operation then call the function and then again perform some operations
    modifier bank(){
        count+=10;
        _;
        count*=10;
    }
    function Loan() external bank{
        count+=2;
    }

}