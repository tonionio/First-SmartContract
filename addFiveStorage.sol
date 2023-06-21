// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorge is SimpleStorage {
    // Virtual Overrides
    function store(uint256 _newNumber) public override  {
        myfavoriteNumber = _newNumber + 5;
    }
}