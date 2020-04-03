pragma solidity ^0.4.4;

contract  Sample {
    uint amount =0;
    address partyOne;
    address partyTwo;
    bool isSatisfied;
    
    constructor(address _partyTwo) public
    {
    partyOne = msg.sender;
    partyTwo = _partyTwo;
    isSatisfied = false;
    }
    
    function addMonies() public payable{
        amount += msg.value;
    }
    
    function satisfied() public
    {
    require(msg.sender == partyOne);
    isSatisfied = true;
    address(partyTwo).transfer(amount);
    }
    
    
}
