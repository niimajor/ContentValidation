pragma solidity >=0.4.21 <0.7.0;

contract ContentValidation {
    
    address public proposer;

    mapping (address => string) public validations;
    
    uint public numValidators;
    uint public content;

    event Validate(address _from, string _message);

    constructor() public {
        proposer = msg.sender;
        numValidators = 0;
        content = 0;
    }

    function validateContent(address fromAddress, string memory message, uint256 contentId) public {
       
        validations[fromAddress] = message;
        content = contentId;
        numValidators ++;
        
    }

}
