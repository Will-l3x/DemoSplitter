// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/finance/PaymentSplitter.sol";

contract Payments is PaymentSplitter {

    constructor(address[] memory _payees, uint256[]memory _shares) PaymentSplitter(_payees, _shares) payable {}

}

/**

    sample addresses for payments to be split to are passed as a list in an array
    our contract is splitting to 3 locations namely treasurey, RUBY and BNFT
    ["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
      "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
      "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"]


    after the locations are set, the next is the value of the percentage being splitting, treasurey, ruby and BNFT
    [ 5, 
    5, 
    90]
*/