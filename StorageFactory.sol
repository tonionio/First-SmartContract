// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

import {SimpleStorage} from "./SimpleStorage.sol" ;

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // address
        // ABI (Application Binary Interface)
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfget(uint256 _simpleStorageIndex) public view returns(uint){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
