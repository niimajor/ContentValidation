pragma solidity >=0.4.21 <0.7.0;

contract ContentValidation {
    
    address public proposer;

    mapping (address => string) public validations;
    
    uint public numValidators;

    event Validate(address _from, string _message);

    constructor() public {
        proposer = msg.sender;
        numValidators = 0;
    }

    function validateContent(address fromAddress, string memory message) public {
        validations[fromAddress] = message;
        numValidators ++;
    }

}
