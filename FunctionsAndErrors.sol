// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract FunctionsAndErrors {
 address public owner;
    uint256 public value;

    constructor(){
        owner = msg.sender;
    }

    // Demonstrate require() statement
    function setValue(uint256 _newValue) external {
        // Only the owner can set the value
        require(msg.sender == owner, "The User is not the Owner");
        // Value cannot be zero
        require(_newValue != 0, "The New Value Cannot Be Zero");
        value = _newValue;
    }

    // Demonstrate assert() statement
    function assertFunction(uint256 _num) external pure returns (uint256) {
        // Assert that the input number is not zero
        assert(_num != 0);
        return _num;
    }

    // Demonstrate revert() statement
    function revertFunction(uint256 _num) external pure returns (uint256){
        // Revert if the input number is zero
        if (_num == 0){
            revert(" The Number Cannot Be Zero");
        }
        return _num;
    }

    // Demonstrate a scenario where multiple error handlers are used
    function complexFunction(uint256 _num) external {
        // Require that the caller is the owner
        require(msg.sender == owner, "The User is not the Owner");
        // Assert that the input number is not zero
        assert(_num != 0);
        // Revert if the input number is negative
        if (_num < 0){
            revert(" The Number Cannot Be Negative");
        }
        value = _num;
    }
}
