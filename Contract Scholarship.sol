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
