pragma solidity ^0.4.0;

contract Hello {
    
    uint counter;
    
    function store(uint howmuch) {
        counter = howmuch;
    }
    
    function getCounter() constant returns(uint) {
        return counter;
    }
    
}