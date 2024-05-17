# Functions-and-Errors---ETH-AVAX
First Module Assement For MetaCrafters ETH + AVAX PROOF: Intermediate EVM Course

# Description
This Solidity code defines a contract named FunctionsAndErrors that demonstrates the use of error handlers in Solidity. The contract includes several functions that showcase the functionality of require, assert, and revert statements to validate input and ensure that the contract's state is updated correctly and securely.

# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Functions.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile FunctionsAndErrors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "FunctionsAndErrors" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it.

# Functions Of Error Handlers
* Require
>The first require statement checks if the caller of the function is the owner of the contract. If the caller is not the owner, the function will revert and the state of the contract will not be updated. The error message "The User is not the Owner" will be displayed to the user.

>The second require statement checks if the input value is not zero. If the input value is zero, the function will revert and the state of the contract will not be updated. The error message "The New Value Cannot Be Zero" will be displayed to the user.

* Assert
>The contract also includes an assertFunction function that takes a single argument _num of type uint256. This function returns the input value _num if it is not zero. However, before returning the value, the function includes an assert statement to validate the input and ensure that the contract's state is updated correctly and securely. If the input value is zero, the function will throw an exception and the state of the contract will not be updated.

* Revert
>The contract includes a revertFunction function that takes a single argument _num of type uint256. This function returns the input value _num if it is not zero. However, if the input value is zero, the function includes a revert statement to revert the state of the contract and display an error message "The Number Cannot Be Zero".

# Authors
Keana Aliza C. Perez

Student of National Trachers College - BSIT 
