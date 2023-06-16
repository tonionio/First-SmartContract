// EVM, Ethereum Virtual Machine
// Ethereum, polygon, Arbitrum, optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // stating our version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 myfavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; //[]

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
        retrieve();
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name]= _favoriteNumber;
    }

}