# First-SmartContract
## Contracts Overview

### SimpleStorage.sol

This contract represents a simple storage contract that allows you to store and retrieve a single integer value. It includes a variable `myfavoriteNumber` to store the favorite number. The contract provides functions:

- `store(uint256 _favoriteNumber)`: Stores the `_favoriteNumber` parameter in the `myfavoriteNumber` variable.
- `retrieve()`: Retrieves the stored favorite number.
- `addPerson(string memory _name, uint256 _favoriteNumber)`: Adds a person to the `listOfPeople` dynamic array, storing their favorite number and name.
- `nameToFavoriteNumber` mapping: Maps names to favorite numbers.

### AddFiveStorage.sol

This contract extends the `SimpleStorage` contract and overrides the `store` function. The overridden function adds 5 to the `_newNumber` parameter before storing it in the `myfavoriteNumber` variable.

### StorageFactory.sol

This contract acts as a factory for creating and managing instances of the `SimpleStorage` contract. It includes an array `listOfSimpleStorageContracts` to store multiple instances of the `SimpleStorage` contract. The contract provides functions:

- `createSimpleStorageContract()`: Creates a new instance of the `SimpleStorage` contract using the `new` keyword and adds it to the `listOfSimpleStorageContracts` array.
- `sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)`: Calls the `store` function of a specific `SimpleStorage` contract from the array.
- `sfget(uint256 _simpleStorageIndex)`: Retrieves the stored value from a specific `SimpleStorage` contract.
