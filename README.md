# First-SmartContract

SimpleStorage is a SmartContract written in Solidity version 0.8.19. It's deployed on the EVM and provides a basic example of data storage and retrieval in a blockchain context.

Here's a rundown of its main elements:

myfavoriteNumber: A uint256 variable that serves as a storage for a favorite number. It's initialized to 0 if no value is provided.

store: A function that takes a uint256 argument _favoriteNumber and assigns its value to myfavoriteNumber. After this assignment, it calls the retrieve function.

retrieve: A view function that returns the value of myfavoriteNumber.

Person: A struct that contains two fields: favoriteNumber (a uint256) and name (a string).

listOfPeople: A dynamic public array that stores Person structs.

nameToFavoriteNumber: A public mapping that links a string (name) to a uint256 (favorite number).

addPerson: A function that takes two arguments: _name (a string) and _favoriteNumber (a uint256). It creates a new Person struct with these values and adds it to the listOfPeople array. It also updates the nameToFavoriteNumber mapping.

This SmartContract demonstrates fundamental concepts of Solidity and blockchain programming including basic data types, functions, structs, arrays, and mappings, as well as the use of memory in function arguments. It serves as a solid foundation for understanding how to create more complex contracts.
