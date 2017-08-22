pragma solidity ^0.4.0;


contract ShoneCoin {
    
    event Transfer(address indexed from, address indexed to, uint256 amount);
    
    string public name;
    string public symbol;
    uint8 public decimals;
    
    mapping (address => uint256) public balanceOf;
    
    function ShoneCoin(uint256 initialSupply, string tokenName, string tokenSymbol, uint8 tokenDecimals) {
        balanceOf[msg.sender] = initialSupply;
        name = tokenName;
        symbol = tokenSymbol;
        decimals = tokenDecimals;
    }
    
    function transfer(address _to, uint256 amount) {
        
        if(balanceOf[msg.sender] < amount || balanceOf[_to] + amount < balanceOf[_to]) {
            revert();
        }
        
        balanceOf[msg.sender] -= amount;
        balanceOf[_to] += amount;
        
        Transfer(msg.sender, _to, amount);
    }
    
}