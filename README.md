# Scholarship Smart Contract

The Scholarship smart contract is designed to manage the scholarship eligibility and disbursement process based on student income and fees. This contract aims to streamline the process of determining student eligibility for scholarships, calculating the scholarship amounts, and handling any errors that may arise during the disbursement process.

## Description 
The contract is divided into three main functions:

#### Income Eligibility Check: 
Ensures that the student's income does not exceed the maximum allowable limit for eligibility.
#### Scholarship Amount Calculation: 
Calculates the scholarship amount as a percentage of the student's fees.
#### Scholarship Disbursement: 
Manages the scholarship disbursement process and handles disbursement errors.

### Features
#### 1. Income Eligibility Check
The contract includes a function to verify if a student's income is within the eligibility criteria for receiving a scholarship. The maximum allowable income for eligibility is set to 50,000 units. This ensures that only students with a demonstrated financial need are considered for the scholarship.

#### 2. Scholarship Amount Calculation
The contract provides a function to calculate the scholarship amount based on the student's fees. The scholarship amount is determined as 30% of the student's fees. This calculation is intended to provide significant financial support while encouraging students to contribute towards their education.

#### 3. Scholarship Disbursement
The contract includes a function to handle the disbursement of the scholarship. Currently, this function always reverts the transaction, simulating a disbursement failure. This could be used as a placeholder for integrating actual disbursement logic in a production environment.


## Get Started
### Executing Program 
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at Remix Ethereum.


``` Solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Scholarship {
    uint public maxIncome = 50000;

    // Function to check income eligibility
    function getIncome(uint income) public view {
        require(income <= maxIncome, "Income exceeds eligibility criteria");
    }

    // Function to calculate scholarship amount
    function calculateAmount(uint studentFee) public pure {
        uint amount = studentFee * 30 / 100;
        assert( amount >0); 
    }

    // Function for scholarship disbursement 
    function disseminate() public pure {
        revert("Scholarship disbursement failed");
    }
}

```

## Author
Name: Gurnoor Oberoi

## License
This project is licensed under the MIT License - see the LICENSE.md file for details


